Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59548C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyiAnOmq1BFLwJznJF+3ONszEsWOAwfWFqJyQ3brsaU=; b=1RgJjCAf+7CuNe
	CzFtaMQB3rPuaI7zBxueGtnDXMxI4tk4/dA60UOiu9PFKnOEmFM9t7yFhcBFdmFNX6tP6kvhdAegv
	Zduy/FA5rcc0a6Jqm0248bqLXkFmie53BMuaI3NFWC/J7i+KNTp11n4ieki468whxLX6r2ZYyQzp3
	tZWU0UBAaWB0Zcf+xEDD2P1KnJm3pGjhVsgnAH+4/xbwxxm4NWjQ6J1c3bjO1PlEbYvKxw7gxkcQO
	9PVufopqKjwh1+BY85ThQD5h92VmexiFb2yto21Dyxda0ckPRgUxAovNOhp/zE7+qumws48+b/4JX
	8TmW3epyuVY3rOZ6uW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3rp-00AzW1-Vb; Mon, 25 Apr 2022 18:55:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3rm-00AzU6-L4
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:55:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 328231F42FFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912919;
 bh=UeDlmqQj8a7ajqfg6WiA/qN0a19sf47WMImO06/MAHQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=bfRYX0DKAOr83SgdDu+dNiIGZNolkLDWunS2dPJPcoNGKDvOBzhMm9e5czLmV8KRW
 EcAmqFXa16zRv57Ue0x/rPB/sPH1BJtCdNNf3oEeUcK/0jTfpMsrXMjquR+pVECaM7
 H55o0X7+E8wwXqq3KNC/C08+cUSBPgNJbh4baJ/GdFh3bCdT53eQuYaYIY3J10EyTH
 QdBiDm/xxABXYxKgd6wphCB1MvrEoGORZiGkgUGzmvBhvXwi56pPlx7CFisBa1lITs
 wo6l1tmHjA/LSK/di44KHjdQLPIMsaoO2KrmTh8qS/KuKP8OfXLJLue1RKa3obJm3+
 iBJqo/Lt647qw==
Message-ID: <0780cc3ddd985f580a5513e5222cdde852e6aaab.camel@collabora.com>
Subject: Re: [PATCH v3 17/24] media: rkvdec: h264: Fix reference frame_num
 wrap for second field
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, Jonas Karlman
 <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Sebastian
 Fricke <sebastian.fricke@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Date: Mon, 25 Apr 2022 14:55:04 -0400
In-Reply-To: <8f6c8a5c-200d-fbbd-0b8a-966d94467aad@xs4all.nl>
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-18-nicolas.dufresne@collabora.com>
 <8f6c8a5c-200d-fbbd-0b8a-966d94467aad@xs4all.nl>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_115522_872174_7196B1D5 
X-CRM114-Status: GOOD (  20.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgdmVuZHJlZGkgMjIgYXZyaWwgMjAyMiDDoCAwOTo0MyArMDIwMCwgSGFucyBWZXJrdWlsIGEg
w6ljcml0wqA6Cj4gT24gMDUvMDQvMjAyMiAyMjo0NCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiA+IEZyb206IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiA+IAo+ID4gV2hlbiBk
ZWNvZGluZyB0aGUgc2Vjb25kIGZpZWxkIGluIGEgY29tcGxlbWVudGFyeSBmaWVsZCBwYWlyIHRo
ZSBzZWNvbmQKPiA+IGZpZWxkIGlzIHNoYXJpbmcgdGhlIHNhbWUgZnJhbWVfbnVtIHdpdGggdGhl
IGZpcnN0IGZpZWxkLgo+ID4gCj4gPiBDdXJyZW50bHkgdGhlIGZyYW1lX251bSBmb3IgdGhlIGZp
cnN0IGZpZWxkIGlzIHdyYXBwZWQgd2hlbiBpdCBtYXRjaGVzIHRoZQo+ID4gZmllbGQgYmVpbmcg
ZGVjb2RlZCwgdGhpcyBjYXVzZSBpc3N1ZXMgdG8gZGVjb2RlIHRoZSBzZWNvbmQgZmllbGQgaW4g
YQo+IAo+IGNhdXNlIGlzc3VlcyB0byBkZWNvZGUgLT4gY2F1c2VkIGlzc3VlcyBkZWNvZGluZwo+
IAo+ID4gY29tcGxlbWVudGFyeSBmaWVsZCBwYWlyLgo+ID4gCj4gPiBGaXggdGhpcyBieSB1c2lu
ZyBpbmNsdXNpdmUgY29tcGFyaXNvbiwgbGVzcyB0aGFuIG9yIGVxdWFsLgo+IAo+IEkgd291bGQg
Y2hhbmdlIHRoaXMgbGFzdCBzZW50ZW5jZSB0bzoKPiAKPiAJRml4IHRoaXMgYnkgdXNpbmcgaW5j
bHVzaXZlIGNvbXBhcmlzb246ICdsZXNzIHRoYW4gb3IgZXF1YWwnLgo+IAo+IEl0IG1ha2VzIGl0
IGEgYml0IGVhc2llciB0byBwYXJzZS4KPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm9uYXMg
S2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+ID4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IEV6
ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBT
ZWJhc3RpYW4gRnJpY2tlIDxzZWJhc3RpYW4uZnJpY2tlQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0K
PiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMgfCAyICstCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+IGluZGV4IGYw
ODFiNDc2MzQwZi4uNjBlYWYwNmI2ZTI1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+IEBAIC03ODEsNyArNzgxLDcgQEAgc3RhdGljIHZv
aWQgYXNzZW1ibGVfaHdfcnBzKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gPiAgCQkJY29udGlu
dWU7Cj4gPiAgCj4gPiAgCQlpZiAoZHBiW2ldLmZsYWdzICYgVjRMMl9IMjY0X0RQQl9FTlRSWV9G
TEFHX0xPTkdfVEVSTSB8fAo+ID4gLQkJICAgIGRwYltpXS5mcmFtZV9udW0gPCBkZWNfcGFyYW1z
LT5mcmFtZV9udW0pIHsKPiA+ICsJCSAgICBkcGJbaV0uZnJhbWVfbnVtIDw9IGRlY19wYXJhbXMt
PmZyYW1lX251bSkgewo+IAo+IEkgd29uZGVyIGlmIGEgY29tbWVudCBzaG91bGQgYmUgYWRkZWQg
aGVyZSwgZXhwbGFpbmluZyB0aGUgcmVhc29uIGZvciAnPD0nLgo+IAo+IEl0IGRvZXNuJ3Qgc2Vl
bSBvYnZpb3VzIHRvIG1lLiBVcCB0byB5b3UsIHRob3VnaC4KCkkgZ3Vlc3MgSSBjb3VsZCwgdGhl
IGFsZ28gZm9yIHdyYXBwaW5nIGluIHRoZSBzcGVjIGlzIChmb3JtdWxhIDgtMjcpOgoKICAgIGlm
KCBGcmFtZU51bSA+IGZyYW1lX251bSApCiAgICAgICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0g
4oiSIE1heEZyYW1lTnVtCiAgICBlbHNlCiAgICAgICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0K
Ck91ciBpbXBsZW1lbnRhdGlvbiBoYXMgdGhlIGJyYW5jaCBjb25kaXRpb24gZmxpcCBvdmVyLCBh
bmQgdGhlIGZsaXBwZWQgdmVyc2lvbiBvZiB0aGF0IGlzOgoKICAgIGlmKCBGcmFtZU51bSA8PSBm
cmFtZV9udW0gKQogICAgICAgIEZyYW1lTnVtV3JhcCA9IEZyYW1lTnVtCiAgICBlbHNlCiAgICAg
ICAgRnJhbWVOdW1XcmFwID0gRnJhbWVOdW0g4oiSIE1heEZyYW1lTnVtCgpUaGVyZSBpcyBubyBk
ZWVwZXIgcmF0aW9uYWxlIHNpbmNlIHdlIHNpbXBseSBmb2xsb3cgdGhlIHJlY2lwZSBkZXNjcmli
ZWQgaW4gdGhlCnNwZWMuIFRoaXMgaXMgZG9uZSBzbyB0aGF0IHdlIGNhbiBzaGFyZSB0aGF0IGNv
bmRpdGlvbiB3aXRoIHRoYXQgbG9uZyB0ZXJtCnJlZmVyZW5jZSBoYW5kbGluZy4KCj4gCj4gPiAg
CQkJcFtpXSA9IGRwYltpXS5mcmFtZV9udW07Cj4gPiAgCQkJY29udGludWU7Cj4gPiAgCQl9Cj4g
Cj4gUmVnYXJkcywKPiAKPiAJSGFucwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

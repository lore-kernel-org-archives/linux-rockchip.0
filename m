Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFE1C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 16:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhmVpoSN/Nw/O48OqA9OdclyM3f9vxAa/qS7GzqAA6g=; b=vw0BGwHvabyVUr
	i5ZUOV7vWbnwoCraY8Aiq/6V1RvuZIusmwdxca5V+v4xhARmng7foSVmPYmmCpePOqVsRiB9amjJZ
	xakoOr3U5q0GM7pozm8PuWBUU4sj/o6gWoQ0+5HcCBfINbfm593Drvy5ZkFnnYEcdEf1bK1xHSnQr
	q0JYlB9cjKclQv7nnTkmpw82gJRxfLfc0Raqe3AFdaxh+rIyfBqbVVEJD3qfXksxIkW80Yh67MHYb
	Wq2wJYhRJAjut+7A4/+Iyj9YDGhC6DAVG+K1Ew2imFn1GFXgjv6j1RKCklKo3iLSm8XRQ1OZ2hQkm
	o63t9L9nyAqzrnUV/ruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nblir-001pbt-0Z; Tue, 05 Apr 2022 16:08:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nblie-001pZ9-T6; Tue, 05 Apr 2022 16:07:50 +0000
Received: from [IPV6:2a01:e0a:120:3210:cf29:3f0:be4d:7211] (unknown
 [IPv6:2a01:e0a:120:3210:cf29:3f0:be4d:7211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 511F61F43BDC;
 Tue,  5 Apr 2022 17:07:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649174864;
 bh=Y7AMfmbF+pTW6heGBBOtMSPe72VwTuirLOp6bmUM2l8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=YdiGwf54xZ2SQaL3Kg7d0z6H9yFy3jkfu5wqfmvXDG3Yoo43FV4nvSf8M7bozm3vQ
 VVZW2A3dSj2jG45xLSvt3K2OZwoa/XmIf31XNDejfWFZ4JEAtRNyxWjl7M38ydvyLK
 B/ELY4LHhInWRfNGtOqjHaytIuFg5ccxSSMzxTDcelnc1USAD0Ay5gysapFchtZ19D
 tGy4YnI0AxLEchVvhSDflRaVbn8ISxd+soOSaX/Bu+cTN4ObX5nvsybHapgxlzoCdJ
 vr+c8fj31gKs28+vpiZDH/FzwrxgFzYoJ41xyTDKpuPMLsqRupBjcVQjMZTf6IQroH
 vvGU7AI/NHllA==
Message-ID: <b6987a9a-56af-f63f-b60a-37df141d6e89@collabora.com>
Date: Tue, 5 Apr 2022 18:07:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Content-Language: en-US
To: Jernej Skrabec <jernej.skrabec@gmail.com>, ezequiel@vanguardiasur.com.ar, 
 p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_090749_109253_E91C5EB4 
X-CRM114-Status: GOOD (  16.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI3LzAyLzIwMjIgw6AgMTU6NDksIEplcm5laiBTa3JhYmVjIGEgw6ljcml0wqA6Cj4gRmly
c3QgdHdvIHBhdGNoZXMgYWRkIDEwLWJpdCBmb3JtYXRzIHRvIFVBUEksIHRoaXJkIGV4dGVuZHMg
ZmlsdGVyaW5nCj4gbWVjaGFuaXNtLCBmb3VydGggZml4ZXMgaW5jb3JyZWN0IGFzc3VtcHRpb24s
IGZpZnRoIG1vdmVzIHJlZ2lzdGVyCj4gY29uZmlndXJhdGlvbiBjb2RlIHRvIHByb3BlciBwbGFj
ZSwgc2l4dGggYW5kIHNldmVudGggZW5hYmxlIDEwLWJpdAo+IFZQOSBkZWNvZGluZyBvbiBBbGx3
aW5uZXIgSDYgYW5kIGxhc3QgaW5jcmVhc2VzIGNvcmUgZnJlcXVlbmN5IG9uCj4gQWxsd2lubmVy
IEg2Lgo+Cj4gSSdtIHNlbmRpbmcgdGhpcyBhcyBSRkMgdG8gZ2V0IHNvbWUgY29tbWVudHM6Cj4g
MS4gZm9ybWF0IGRlZmluaXRpb25zIC0gYXJlIGZvdXJjYydzIG9rPyBhcmUgY29tbWVudHMvZGVz
Y3JpcHRpb25zIG9rPwo+IDIuIGlzIGV4dGVuZGVkIGZpbHRlcmluZyBtZWNoYW5pc20gb2s/Cj4K
PiBJIHdvdWxkIGFsc28gbGlrZSBpZiB0aGVzZSBwYXRjaGVzIGFyZSB0ZXN0ZWQgb24gc29tZSBt
b3JlIEhXLgo+IEFkZGl0aW9uYWxseSwgY2FuIHNvbWVvbmUgdGVzdCB0aWxlZCBQMDEwPwo+Cj4g
UGxlYXNlIHRha2UgYSBsb29rLgoKSGkgSmVybmVqLAoKSSBoYXZlIGNyZWF0ZSBhIGJyYW5jaCB0
byB0ZXN0IHRoaXMgc2VyaWVzIHdpdGggVlA5IGFuZCBIRVZDOgpodHRwczovL2dpdGxhYi5jb2xs
YWJvcmEuY29tL2JlbmphbWluLmdhaWduYXJkL2Zvci11cHN0cmVhbS8tL3RyZWUvMTBiaXRfaW14
OG0KRmVlbCBmcmVlIHRvIHBpY2sgd2hhdCBJIG1heSBuZWVkIGluIGl0LgoKVGhhdCBkb2Vzbid0
IGltcHJvdmUgZmx1c3RlciBzY29yZXMsIEkgdGhpbmsgbW9yZSBkZXYgYXJlIHN0aWxsIG5lZWRl
ZCBpbiBHU1QKYmVmb3JlIGdldHRpbmcgc29tZXRoaW5nIGZ1bGx5IGZ1bmN0aW9uYWwuCkFueXdh
eSBJIGFibGUgdG8gc2VsZWN0IFAwMTAgcGl4ZWwgZm9ybWF0IGlmIHRoZSBpbnB1dCBpcyBhIDEw
Yml0IGJpdHN0cmVhbS4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gQmVzdCByZWdhcmRzLAo+IEpl
cm5lago+Cj4gRXplcXVpZWwgR2FyY2lhICgxKToKPiAgICBtZWRpYTogQWRkIFAwMTAgdGlsZWQg
Zm9ybWF0Cj4KPiBKZXJuZWogU2tyYWJlYyAoNyk6Cj4gICAgbWVkaWE6IEFkZCBQMDEwIGZvcm1h
dAo+ICAgIG1lZGlhOiBoYW50cm86IFN1cHBvcnQgZm9ybWF0IGZpbHRlcmluZyBieSBkZXB0aAo+
ICAgIG1lZGlhOiBoYW50cm86IHBvc3Rwcm9jOiBGaXggYnVmZmVyIHNpemUgY2FsY3VsYXRpb24K
PiAgICBtZWRpYTogaGFudHJvOiBwb3N0cHJvYzogRml4IGxlZ2FjeSByZWdzIGNvbmZpZ3VyYXRp
b24KPiAgICBtZWRpYTogaGFudHJvOiBTdG9yZSBWUDkgYml0IGRlcHRoIGluIGNvbnRleHQKPiAg
ICBtZWRpYTogaGFudHJvOiBzdW54aTogRW5hYmxlIDEwLWJpdCBkZWNvZGluZwo+ICAgIG1lZGlh
OiBoYW50cm86IHN1bnhpOiBJbmNyZWFzZSBmcmVxdWVuY3kKPgo+ICAgZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvdjRsMi1jb21tb24uYyAgICAgICAgIHwgIDMgKysKPiAgIGRyaXZlcnMvbWVkaWEv
djRsMi1jb3JlL3Y0bDItaW9jdGwuYyAgICAgICAgICB8ICAyICsKPiAgIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvLmggICAgICAgICB8ICA0ICsrCj4gICBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAgICAgfCAyMyArKysrKysrKysKPiAgIC4uLi9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfdnA5X2RlYy5jICB8ICA4IC0tLQo+ICAgLi4u
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19wb3N0cHJvYy5jICAgIHwgMzQgKysrKysrKysr
Ky0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jICAgIHwg
NTAgKysrKysrKysrKysrKysrKystLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fdjRsMi5oICAgIHwgIDMgKysKPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
c3VueGlfdnB1X2h3LmMgICB8IDEzICsrKystCj4gICBpbmNsdWRlL3VhcGkvbGludXgvdmlkZW9k
ZXYyLmggICAgICAgICAgICAgICAgfCAgMiArCj4gICAxMCBmaWxlcyBjaGFuZ2VkLCAxMjIgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

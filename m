Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F37AAEE0206
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 17:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGXQr/cTXllkuCfKLRUqYoD0N+PfCh4AMxSVd/LHvTI=; b=YV/51tJA7VgP/N
	bEBVVz0UggzyLpceLcwfnlB2eR1Nu8uGln8/KDacVXjSQnNH19UCsUkeUK7nfX/DLLLQDXxn/AAx3
	/i4VddT+w6GNc9V6HkIU8gEYoTCuXvA+52EFmxw1aGFOXi2zB9iP/PnMAN6xRFCEtrm61Eq81JJQf
	Dy+2Bqo0JAa9AdCN3rzcFvg2TFBNXlYK90YOQ6UBauCB9GeMG7DISkQPPN6S9hJ1gPI6KIFJkUUB5
	5mZyBZNc0i2ESU5gkvltYvhvqIhnP05py9HjN24Zba6F8Em7FZgfsWRgG64W+7wONt4eZQBKol45o
	Z8qi75q0tav02EftZumg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soRc0-0000000AZjI-09YK;
	Wed, 11 Sep 2024 17:58:40 +0000
Received: from a7-29.smtp-out.eu-west-1.amazonses.com ([54.240.7.29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soRbw-0000000AZiQ-1Mje
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 17:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1726077512;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding;
	bh=Ff7iKYGlVbSF6DaBm7NIGdh6zqbmjk/yg4IdTPwheH4=;
	b=C9pV6sfQVXSGatsOQqSuHHwpjU0dTUvKvV+FxPj/M7VSmvIpmSwYLjTGu8K4UyYk
	zzsaesoy7vV8ZUKoJ2HQv6NLqiKT6EHdOKNcdpkl2cZ8NYknDicb8GCyERkgTcCLjXi
	8VBAfwAQHXwT2kvNH0dkIVbEwBr2HPP5M3HOv8DllDXf/Opwh8X/ZOvlaxjzQUdfQ7+
	Ld66pbRPvHqVpH1/nnTMewbHNFyBhwMkf6b5DIsU8KkQi/UE6sKf47T7Ptdpq6MkaEJ
	50tXsU9lE3+tNga34Whl9gWC1Cj/Y7ZctqS6PhL5kbZtIt/bxa7aczkhbqrkNUFOEyr
	3Jyjnw6YkA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1726077512;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=Ff7iKYGlVbSF6DaBm7NIGdh6zqbmjk/yg4IdTPwheH4=;
	b=Dea6c8bwybcfPEkvDfnN8zkAeoxP8bVAbVlGPXoD4oEt0HJXnwznYzbZIKWkTh/h
	rGEpZhd8TA9agWOX7RhALKQEzqOa+u48NW4nbqM4mapYZaloCdhvcqjBu1fP242FMwe
	cLQearfBp8Feug5ABkN/EADr03eBxGSHN6arKXgU=
Message-ID: <01020191e23cab4b-5c86e038-d835-4dca-8dcb-1936066c488e-000000@eu-west-1.amazonses.com>
Subject: Re: [PATCH 2/2] media: verisilicon: add WebP decoding support
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Fritz Koenig <frkoenig@chromium.org>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Date: Wed, 11 Sep 2024 17:58:32 +0000
In-Reply-To: <20240911135011.161217-3-hugues.fruchet@foss.st.com>
References: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
	 <20240911135011.161217-3-hugues.fruchet@foss.st.com>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.11-54.240.7.29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_105836_534575_AB44A849 
X-CRM114-Status: GOOD (  16.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

SGkgSHVndWVzLAoKTGUgbWVyY3JlZGkgMTEgc2VwdGVtYnJlIDIwMjQgw6AgMTU6NTAgKzAyMDAs
IEh1Z3VlcyBGcnVjaGV0IGEgw6ljcml0wqA6Cj4gQWRkIFdlYlAgcGljdHVyZSBkZWNvZGluZyBz
dXBwb3J0IHRvIFZQOCBzdGF0ZWxlc3MgZGVjb2Rlci4KClVubGVzcyB3aGVuIGl0cyBvYnZpb3Vz
LCB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIGV4cGxhaW4gd2hhdCBpcyBiZWluZwpjaGFuZ2Vk
LgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBIdWd1ZXMgRnJ1Y2hldCA8aHVndWVzLmZydWNoZXRAZm9z
cy5zdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX2cxX3JlZ3MuaCAgICB8IDEgKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19nMV92cDhfZGVjLmMgfCA3ICsrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fZzFfcmVncy5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzFfcmVncy5oCj4gaW5kZXggYzYyM2IzYjBiZTE4Li5lN2Q0ZGI3ODhl
NTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fZzFfcmVncy5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fZzFfcmVncy5oCj4gQEAgLTIzMiw2ICsyMzIsNyBAQAo+ICAjZGVmaW5lICAgICBHMV9S
RUdfREVDX0NUUkw3X0RDVDdfU1RBUlRfQklUKHgpCQkoKCh4KSAmIDB4M2YpIDw8IDApCj4gICNk
ZWZpbmUgRzFfUkVHX0FERFJfU1RSCQkJCQkweDAzMAo+ICAjZGVmaW5lIEcxX1JFR19BRERSX0RT
VAkJCQkJMHgwMzQKPiArI2RlZmluZSBHMV9SRUdfQUREUl9EU1RfQ0hST01BCQkJCTB4MDM4Cj4g
ICNkZWZpbmUgRzFfUkVHX0FERFJfUkVGKGkpCQkJCSgweDAzOCArICgoaSkgKiAweDQpKQo+ICAj
ZGVmaW5lICAgICBHMV9SRUdfQUREUl9SRUZfRklFTERfRQkJCUJJVCgxKQo+ICAjZGVmaW5lICAg
ICBHMV9SRUdfQUREUl9SRUZfVE9QQ19FCQkJQklUKDApCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuYwo+IGluZGV4IDg1
MWViNjdmMTlmNS4uYzZhNzU4NGI3MTZhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuYwo+IEBAIC00MjcsNiAr
NDI3LDExIEBAIHN0YXRpYyB2b2lkIGNmZ19idWZmZXJzKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgs
Cj4gIAo+ICAJZHN0X2RtYSA9IGhhbnRyb19nZXRfZGVjX2J1Zl9hZGRyKGN0eCwgJnZiMl9kc3Qt
PnZiMl9idWYpOwo+ICAJdmRwdV93cml0ZV9yZWxheGVkKHZwdSwgZHN0X2RtYSwgRzFfUkVHX0FE
RFJfRFNUKTsKPiArCj4gKwlpZiAoaGRyLT5mbGFncyAmIFY0TDJfVlA4X0ZSQU1FX0ZMQUdfV0VC
UCkKPiArCQl2ZHB1X3dyaXRlX3JlbGF4ZWQodnB1LCBkc3RfZG1hICsKPiArCQkJCSAgIGN0eC0+
ZHN0X2ZtdC5oZWlnaHQgKiBjdHgtPmRzdF9mbXQud2lkdGgsCgpJJ20gbm90IHJlYWxseSBub3Qg
ZmFuIG9mIHRoYXQgdHlwZSBvZiBmb3JtdWxhIHVzaW5nIHBhZGRlZCB3aWR0aC9oZWlnaHQuIE5v
dApzdXJlIGlmIGl0cyBzdXBwb3J0ZWQgYWxyZWFkeSwgYnV0IGlmIHdlIGhhdmUgZm9yZWlnbiBi
dWZmZXJzIHdpdGggYSBiaWdnZXIKYnl0ZXNwZXJsaW5lLCB0aGUgSVAgbWF5IGVuZHVwIG92ZXJ3
cml0aW5nIHRoZSBsdW1hLiBQbGVhc2UgdXNlIHRoZSBwZXItcGxhbmUKYnl0ZXNwZXJsaW5lLCB3
ZSBoYXZlIHY0bDItY29tbW9uIHRvIGhlbHAgd2l0aCB0aGF0IHdoZW4gbmVlZGVkLgo+ICsJCQkJ
ICAgRzFfUkVHX0FERFJfRFNUX0NIUk9NQSk7CgpJIGhhdmUgYSBzdHJvbmcgaW1wcmVzc2lvbiB0
aGlzIHBhdGNoIGlzIGluY29tcGxldGUgKG5vdCBnZW5lcmljIGVub3VnaCkuIFRoZQpkb2N1bWVu
dGF0aW9uIEkgaGF2ZSBpbmRpY2F0ZXMgdGhhdCB0aGUgcmVzb2x1dGlvbiByYW5nZSBmb3IgV2Vi
UCBjYW4gYmUKZGlmZmVyZW50IGZvciBkaWZmZXJlbnQgc3ludGhlc2lzLiBTZWUgc3dyZWc1NCAo
MHhkOCksIGlmIGJpdCAxOSBpcyBzZXQsIHRoZW4gaXQKY2FuIHN1cHBvcnQgMTZLIHggMTZLIHJl
c29sdXRpb24uIFRoZXJlIGlzIG5vIG90aGVyIHdheSBhcm91bmQgdGhhdCB0aGVuCnNpZ25hbGxp
bmcgZXhwbGljaXRseSBhdCB0aGUgZm9ybWF0IGxldmVsIHRoYXQgdGhpcyBpcyB3ZWJwLCBzaW5j
ZSBvdGhlcndpc2UgeW91CmNhbid0IGtub3cgZnJvbSB1c2Vyc3BhY2UgYW5kIGNhbid0IGVudW1l
cmF0ZSB0aGUgZGlmZmVyZW50IHJlc29sdXRpb24uIEknbQpjdXJpb3VzIHdoYXQgaXMgdGhlIGRp
ZmZlcmVuY2UgYXQgYml0c3RyZWFtIGxldmVsLCB3b3VsZCBiZSBuaWNlIHRvIGNsYXJpZnkgdG9v
LgoKT24gR1N0cmVhbWVyIHNpZGUsIHRoZSBmb3JtYXRzIGFyZSBlbnRpcmVseSBzZXBlcmF0ZSwg
aW1hZ2Uvd2VicCB2cyB2aWRlby94LXZwOAphcmUgdGhlIG1pbWUgdHlwZXMuIFNlZW1zIGEgbG90
IHNhZmUgdG8ga2VlcCB0aGVzZSB0d28gYXMgc2VwZXJhdGUgZm9ybWF0cy4gVGhleQpjYW4gY2Vy
dGFpbmx5IHNoYXJlIHRoZSBzYW1lIHN0YXRlbGVzcyBmcmFtZSBzdHJ1Y3R1cmUsIHdpdGggdGhl
IGFkZGl0aW9uYWwgZmxhZwppbWhvLgoKTmljb2xhcwoKPiAgfQo+ICAKPiAgaW50IGhhbnRyb19n
MV92cDhfZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+IEBAIC00NzEsNiArNDc2LDgg
QEAgaW50IGhhbnRyb19nMV92cDhfZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAJ
CXJlZyB8PSBHMV9SRUdfREVDX0NUUkwwX1NLSVBfTU9ERTsKPiAgCWlmIChoZHItPmxmLmxldmVs
ID09IDApCj4gIAkJcmVnIHw9IEcxX1JFR19ERUNfQ1RSTDBfRklMVEVSSU5HX0RJUzsKPiArCWlm
IChoZHItPmZsYWdzICYgVjRMMl9WUDhfRlJBTUVfRkxBR19XRUJQKQo+ICsJCXJlZyB8PSBHMV9S
RUdfREVDX0NUUkwwX1dFQlBfRTsKPiAgCXZkcHVfd3JpdGVfcmVsYXhlZCh2cHUsIHJlZywgRzFf
UkVHX0RFQ19DVFJMMCk7Cj4gIAo+ICAJLyogRnJhbWUgZGltZW5zaW9ucyAqLwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

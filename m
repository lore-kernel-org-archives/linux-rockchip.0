Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40852CA101F
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Sep 2025 17:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAjBGo3nX9nbdnuB0YXcMp4OZLtZ487ZB6mcMZ0gps0=; b=d/f2dsCTYA/434
	FJWraEtXsMs11NSZXYKX56UQw+KsSRxFH6jySIKQptYAvNwMl+nAGRfqurmuVvtG4j1NVSBV0Me2l
	P4kzedoB9WZdavDZpDBt6vgTfrW5PNV/N+VKe48cshtexXq5iBwaKUVLZX5e3u0QgxL34zdtzuHgE
	Gra8/fumsu5nSmF7UmD6lewxphh3AhcAIvsTdb5X9B3Hw4nHTv0UlhP23RbO1jhpKgKVVFYCPJBmS
	hlRkJM2gPZNO9tREAQtmXWkpEcx9AzDC6Fb+/cpcbeSFYBWmvlLt2on0fOOVC9Xiwi6htsqjtHNfe
	+DOEw13RF9l/p24ZFwkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvJF8-0000000C6ba-2XC1;
	Sun, 07 Sep 2025 17:31:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvJCI-0000000C5xf-0G6H;
	Sun, 07 Sep 2025 17:29:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HI7cBrf/VB0tvEUFj8M36AcWOsz9VdohrYv1q3umpTQ=; b=LDvPL+9w8nffgf51qfs60Ztwj/
	SjwY2Qk0KC/THjpsUX/8//wPP9CySwk7/KOAX7S4J2UTGyX2Zst3xjpsekLLhMutltVyAIxGHEd4S
	aJ3z466Q5+VdG8h/Car/C3QCy88WoX6yYqwH5o7o65ByqutRcOhuz/1UEq7UDuHveqwpseOaba8z3
	2ozi1TpRxZ9F7IBFM/HVKBpPwFWK1u3MTZdHhEJPUMy9T0minU5+KWCd4o1Krw6rR7fjdawfT35mr
	fnpkUKJ3ZrHdLM5CguuRxplZnjkpVpI6faWfKmCM3fBCSs9u7zFdB8B3KUWf8Ax5XhRWNDQdwfy9r
	vBYKsJaw==;
Received: from [61.8.147.163] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uvJC8-0004IN-3o; Sun, 07 Sep 2025 19:28:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] pinctrl: rockchip: fix NULL ptr deref in
 rockchip_pinctrl_parse_groups()
Date: Sun, 07 Sep 2025 19:28:50 +0200
Message-ID: <6789547.RUnXabflUD@phil>
In-Reply-To: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru>
References: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_102902_105391_27271D19 
X-CRM114-Status: GOOD (  23.83  )
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

QW0gTWl0dHdvY2gsIDMuIFNlcHRlbWJlciAyMDI1LCAyMTo0ODo1NCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIFNlcmdleSBTaHR5bHlvdjoKPiBJbiB0aGUgUm9ja2NoaXAg
ZHJpdmVyLCByb2NrY2hpcF9waW5jdHJsX3BhcnNlX2dyb3VwcygpIGFzc3VtZXMgdGhhdCB0aGUK
PiAicm9ja2NoaXAscGlucyIgcHJvcGVydHkgd2lsbCBhbHdheXMgYmUgcHJlc2VudCBpbiB0aGUg
RFQgbm9kZSBpdCBwYXJzZXMKPiBhbmQgc28gZG9lc24ndCBjaGVjayB0aGUgcmVzdWx0IG9mIG9m
X2dldF9wcm9wZXJ0eSgpIGZvciBOVUxMLiBJZiB0aGUgRFQKPiBwYXNzZWQgdG8gdGhlIGtlcm5l
bCBoYXBwZW5zIHRvIGhhdmUgc3VjaCBwcm9wZXJ0eSBtaXNzaW5nLCB0aGVuIHdlIHdpbGwKPiBn
ZXQgYSBrZXJuZWwgb29wcyB3aGVuIHRoZSBwb2ludGVyIGlzIGRlcmVmZXJlbmNlZCBpbiB0aGUg
KmZvciogbG9vcCBqdXN0Cj4gYSBmZXcgbGluZXMgYWZ0ZXIgdGhlIGNhbGwuICBJIHRoaW5rIGl0
J3MgYmV0dGVyIHRvIHBsYXkgc2FmZSBieSBjaGVja2luZwo+IHRoZSBsaXN0IHZhcmlhYmxlIGZv
ciBOVUxMIChhbmQgcmVwb3J0aW5nIGVycm9yIGlmIHNvKSwgbGlrZSB3ZSBjaGVjayB0aGUKPiBz
aXplIHZhcmlhYmxlIGZvciB2YWxpZGl0eSBmdXJ0aGVyIGRvd24uLi4KPiAKPiBGb3VuZCBieSBM
aW51eCBWZXJpZmljYXRpb24gQ2VudGVyIChsaW51eHRlc3Rpbmcub3JnKSB3aXRoIHRoZSBTdmFj
ZSBzdGF0aWMKPiBhbmFseXNpcyB0b29sLgo+IAo+IEZpeGVzOiBkM2U1MTE2MTE5YmQgKCJwaW5j
dHJsOiBhZGQgcGluY3RybCBkcml2ZXIgZm9yIFJvY2tjaGlwIFNvQ3MiKQo+IFNpZ25lZC1vZmYt
Ynk6IFNlcmdleSBTaHR5bHlvdiA8cy5zaHR5bHlvdkBvbXAucnU+CgpBc3N1bWluZyB0aGF0IHRo
ZSBEVCBpcyBvdXIgZnJpZW5kLCByZWFsbHkgaXMgYSBiYWQgYXNzdW1wdGlvbiA6LSkgLgoKV2hp
bGUgSSBjYW4ndCBpbWFnaW5lIHdoYXQgMTIteWVhci1hZ28tbWUgd2FzIHRoaW5raW5nIHRoZW4s
IHNpbXBseQpjaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlIHJlYWxseSBpcyB0aGUgYmV0dGVyIHdh
eQoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKPiAKPiAt
LS0KPiBUaGUgcGF0Y2ggaXMgYWdhaW5zdCB0aGUgbWFzdGVyIGJyYW5jaCBvZiBMaW51cyBUb3J2
YWxkcycgbGludXguZ2l0IHJlcG8uCj4gCj4gIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMgfCAgICA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IEluZGV4OiBsaW51eC9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2Nr
Y2hpcC5jCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQo+IC0tLSBsaW51eC5vcmlnL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXJvY2tjaGlwLmMKPiArKysgbGludXgvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2No
aXAuYwo+IEBAIC0zNDg4LDcgKzM0ODgsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BpbmN0cmxf
cGFyc2VfZ3JvdXBzCj4gIAkgKiBkbyBzYW5pdHkgY2hlY2sgYW5kIGNhbGN1bGF0ZSBwaW5zIG51
bWJlcgo+ICAJICovCj4gIAlsaXN0ID0gb2ZfZ2V0X3Byb3BlcnR5KG5wLCAicm9ja2NoaXAscGlu
cyIsICZzaXplKTsKPiAtCS8qIHdlIGRvIG5vdCBjaGVjayByZXR1cm4gc2luY2UgaXQncyBzYWZl
IG5vZGUgcGFzc2VkIGRvd24gKi8KPiArCWlmICghbGlzdCkKPiArCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZShkZXYsIC1FSU5WQUwsCj4gKwkJCQkgICAgICIlcE9GOiBubyByb2NrY2hpcCxwaW5zIHBy
b3BlcnR5XG4iLCBucCk7Cj4gIAlzaXplIC89IHNpemVvZigqbGlzdCk7Cj4gIAlpZiAoIXNpemUg
fHwgc2l6ZSAlIDQpCj4gIAkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCAtRUlOVkFMLAo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

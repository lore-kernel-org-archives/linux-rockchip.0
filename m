Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB586CD5BB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 07:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QJShRGeFpw8RC25CYn4eGHqpkrKIps8Iyqz73CEiDQ=; b=B58lhuCTSCVu5T
	oH3+vyHeDvFKs5jZRnXNsf+1PT0z+wwXjE5fLOEdyGAj2Z4qCxKoV1R2ftCaZQrkOQpA7zba4xLMz
	aG6468laMqWHpkO7sy7ZJc46dmuWOI0Z9EqTrc4GaE/uh7X2HU3wbq7LLqF654FB3ae/VJG373e+G
	jwtXnrcT/9Xm/9mAYlR7BS5XTGJI1YYDA6Ze0f1OhkZA1c+v+U3MxpKVs6w3LMQ930V5wEYuwQ46V
	IqEamopdM1BVPxcVahTPbaLIhpRQZSKbYeEbDegfPpuP8y2otIf9Wpszd11/c+li1ZxIIlzhQ8zLM
	UmhjbMwdfsjzMwFTxE2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKBN-0000000A43H-0RGn;
	Fri, 22 May 2026 07:20:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKBK-0000000A421-1Bci;
	Fri, 22 May 2026 07:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+2URYXFsdVZ7zfE6UHaRcVDaEOGeqXpHsK6sM6HYXxw=; b=UV9FlgTJ+SpBVSlQknaczKW1He
	0KdJMHYQO06VGWA2ke80QVYABG29Wjp2+inK0WpjBCWHQWKWu51yEzHk4cnqUpXgCr9LHdEZzAND4
	HixlCGro6pQBcX/IKZOlsY86FmBmLLWnDQglnk06zfl6wi4BrW7sWDPDjAlvcR+HGShk3FTAjdvf9
	vp+JBtgg59CjIs9vKc0bqvhv5OJQ0pTzdyXYCMJXVc2fHkDwiIMKhJsUX7xtEFCYYrVBqC/m8tESA
	EeKM5Q7FICE+UhXPl1y4pKqiMgFTzLI5+fq0WjqLWnDXyc2rxqv5JOueMCiqD1BoUGe949aLeNJQV
	4AXKitKQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Steven Price <steven.price@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH] ARM: rockchip: keep reset control around
Date: Fri, 22 May 2026 09:20:23 +0200
Message-ID: <7845032.1B3tZ46Xf9@phil>
In-Reply-To: <20260521210915.2331176-1-heiko@sntech.de>
References: <20260521210915.2331176-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_002030_349355_7DA308A6 
X-CRM114-Status: GOOD (  22.00  )
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

QW0gRG9ubmVyc3RhZywgMjEuIE1haSAyMDI2LCAyMzowOToxNSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+IERvIG5vdCBwdXQgdGhlIHJlc2V0
IGNvbnRyb2wsIHJldGFpbiBleGNsdXNpdmUgY29udHJvbCBvdmVyIGl0Lgo+IEFmdGVyIHR1cm5p
bmcgb24gYSBDUFUsIHRoZSBjb3JyZXNwb25kaW5nIHJlc2V0IGxpbmUgbXVzdCBzdGF5Cj4gZGVh
c3NlcnRlZC4KPiAKPiBUaGlzIGFsc28gYXZvaWRzIGNhbGxpbmcgcmVzZXRfY29udHJvbF9wdXQo
KSBiZWZvcmUgd29ya3F1ZXVlcwo+IGFyZSBvcGVyYXRpb25hbC4KPiAKPiBGaXhlczogNzhlYmJm
ZjZkMWEwICgicmVzZXQ6IGhhbmRsZSByZW1vdmluZyBzdXBwbGllciBiZWZvcmUgY29uc3VtZXJz
IikKPiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRl
Pgo+IFRlc3RlZC1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+IC0tLQo+ICBhcmNo
L2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYyB8IDE2ICsrKysrKysrKystLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIGIvYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC9wbGF0c21wLmMKPiBpbmRleCBmNDMyZDIyYmZlZDguLmY2NTlkODk0YmZhZSAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwo+ICsrKyBiL2FyY2gv
YXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RhdGljIGlu
dCBuY29yZXM7Cj4gIAo+ICBzdGF0aWMgc3RydWN0IHJlZ21hcCAqcG11Owo+ICBzdGF0aWMgaW50
IGhhc19wbXUgPSB0cnVlOwo+ICtzdGF0aWMgc3RydWN0IHJlc2V0X2NvbnRyb2wgKmNwdV9yc3Rj
WzRdOwoKQWZ0ZXIgc2xlZXBpbmcgb24gdGhhdCwgdGhpcyBzaG91bGQgYmUgY3B1X3JzdGNbNV07
CgpDb3JldHgtQTkgU29DcyBuZWVkIHRvIGVuYWJsZSB0aGUgU0NVIHBvd2VyLWRvbWFpbiB3aGlj
aCB0aGFua2Z1bGx5CnNpdHMgYXQgaW5kZXggNCBvZiB0aGUgcG93ZXItZG9tYWluIHJlZ2lzdGVy
LgoKU28gd2hpbGUgd2UgKGFscmVhZHkpIGV4cGVjdCBubyByZXNldCBjb250cm9sIGZvciB0aGF0
LCB3ZSBuZWVkIGF0IGxlYXN0Cm1ha2Ugc3VyZSwgaXQncyBub3QgcmVhZGluZyBpbnRvIHVuZGVm
aW5lZCBtZW1vcnkgYW5kIHRodXMgbmVlZCB0aGF0CmVtcHR5IGZpZWxkIGluIHRoZSBhcnJheS4K
CgpIZWlrbwoKPiAgCj4gIHN0YXRpYyBpbnQgcG11X3Bvd2VyX2RvbWFpbl9pc19vbihpbnQgcGQp
Cj4gIHsKPiBAQCAtNjQsOSArNjUsMTEgQEAgc3RhdGljIHN0cnVjdCByZXNldF9jb250cm9sICpy
b2NrY2hpcF9nZXRfY29yZV9yZXNldChpbnQgY3B1KQo+ICBzdGF0aWMgaW50IHBtdV9zZXRfcG93
ZXJfZG9tYWluKGludCBwZCwgYm9vbCBvbikKPiAgewo+ICAJdTMyIHZhbCA9IChvbikgPyAwIDog
QklUKHBkKTsKPiAtCXN0cnVjdCByZXNldF9jb250cm9sICpyc3RjID0gcm9ja2NoaXBfZ2V0X2Nv
cmVfcmVzZXQocGQpOwo+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdGM7Cj4gIAlpbnQgcmV0
Owo+ICAKPiArCXJzdGMgPSBwZCA8IEFSUkFZX1NJWkUoY3B1X3JzdGMpID8gY3B1X3JzdGNbcGRd
IDogRVJSX1BUUigtRUlOVkFMKTsKPiArCj4gIAlpZiAoSVNfRVJSKHJzdGMpICYmIHJlYWRfY3B1
aWRfcGFydCgpICE9IEFSTV9DUFVfUEFSVF9DT1JURVhfQTkpIHsKPiAgCQlwcl9lcnIoIiVzOiBj
b3VsZCBub3QgZ2V0IHJlc2V0IGNvbnRyb2wgZm9yIGNvcmUgJWRcbiIsCj4gIAkJICAgICAgIF9f
ZnVuY19fLCBwZCk7Cj4gQEAgLTEwMCwxMSArMTAzLDggQEAgc3RhdGljIGludCBwbXVfc2V0X3Bv
d2VyX2RvbWFpbihpbnQgcGQsIGJvb2wgb24pCj4gIAkJfQo+ICAJfQo+ICAKPiAtCWlmICghSVNf
RVJSKHJzdGMpKSB7Cj4gLQkJaWYgKG9uKQo+IC0JCQlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHJz
dGMpOwo+IC0JCXJlc2V0X2NvbnRyb2xfcHV0KHJzdGMpOwo+IC0JfQo+ICsJaWYgKCFJU19FUlIo
cnN0YykgJiYgb24pCj4gKwkJcmVzZXRfY29udHJvbF9kZWFzc2VydChyc3RjKTsKPiAgCj4gIAly
ZXR1cm4gMDsKPiAgfQo+IEBAIC0zMTIsNiArMzEyLDEwIEBAIHN0YXRpYyB2b2lkIF9faW5pdCBy
b2NrY2hpcF9zbXBfcHJlcGFyZV9jcHVzKHVuc2lnbmVkIGludCBtYXhfY3B1cykKPiAgCQluY29y
ZXMgPSAoKGwyY3RsciA+PiAyNCkgJiAweDMpICsgMTsKPiAgCX0KPiAgCj4gKwkvKiBDb2xsZWN0
IGNwdSBjb3JlIHJlc2V0IGNvbnRyb2wgZm9yIGVhY2ggY29yZSAqLwo+ICsJZm9yIChpID0gMDsg
aSA8IG5jb3JlczsgaSsrKQo+ICsJCWNwdV9yc3RjW2ldID0gcm9ja2NoaXBfZ2V0X2NvcmVfcmVz
ZXQoaSk7Cj4gKwo+ICAJLyogTWFrZSBzdXJlIHRoYXQgYWxsIGNvcmVzIGV4Y2VwdCB0aGUgZmly
c3QgYXJlIHJlYWxseSBvZmYgKi8KPiAgCWZvciAoaSA9IDE7IGkgPCBuY29yZXM7IGkrKykKPiAg
CQlwbXVfc2V0X3Bvd2VyX2RvbWFpbigwICsgaSwgZmFsc2UpOwo+IAoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

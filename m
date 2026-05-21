Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9766CD5BAF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 21:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7umvkPZl/SaT75e+qANB2iN5S0EvEWOnv4xzOiHNdQ=; b=G5tgvSmOF2jY6J
	SuuQVpBu8owhIm5Mr4amfZC+zMbRzLFDtBRy1PYGLIXEVFMrKDx6EFvo0zrVQwHzZNHHdJvd1Md5O
	PUgovwikx9XDMlcymIYb7z4HMWhgM+KJ5stjiq2QU7rZrr96QeGyp1FTDvNhk6xl1+xe4SdHdBZcc
	ypisBBgL2XZ+WPf9mCy/7IQrRtwHsE37zD5+i+uC+UThFaXw+CCfAv5ExnGybV7IBfF/l+qVbH38l
	/NP0oU7NfwddqatNYxhT1PLJSFloohnKscn4vf28HPTDwH+CRxTbAXbLf4D6PvyE/OuneiiCwmfkS
	gx3XClvTdICG1Du0spCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQAiI-000000096dt-140P;
	Thu, 21 May 2026 21:13:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQAiG-000000096dT-1IFD;
	Thu, 21 May 2026 21:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Sy4BKpHNHM+d+C5MQaz0Pfp3rV7HUmKvJcZNuYOmGCA=; b=dRlk4x/TVNfepMEunR/XV2wW7L
	+WXTOyoyTUWwOxrmoxDIbupQ6QBb7znQJlAD3qmn1PhbXU34c9c4XpvLGIIz4kYGmiPpFk88o4jVF
	NGN4JtqfKA3NGtTCtb1+Wq/KIHlbJWtJobTsFhmnPGrHlRpdIAqo2ihKpryJXmjGiOfpUVrOsqsrt
	VQbQE9ThBCrzU+vqwxg4seKk3Fq3PWvuD+GttqyZopEwDBNhETZnimPE7Ecr1hUqDcleooMIdyFvG
	/se18GXFughT6PzGlk5+phHuHJTjRyUa8gGT3wN4LEwVxOBCCrY/3GAv4upZVXuyvWXaau9eGXQ7d
	CRKoR7fg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQAiC-00000002xRu-0ey0;
	Thu, 21 May 2026 21:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Sy4BKpHNHM+d+C5MQaz0Pfp3rV7HUmKvJcZNuYOmGCA=; b=M5tdlvk2EZxV1mvppezSooHfQG
	VAniydlKL1Ot1Fgfr0pur2EWaHcb4YnxDtLKOYP25T8rmUcf9rmzdxIp51bRlmCC6GYWtIzC0XLBp
	rbP/jf8iJHYXlpLxYqiJic8r8+umWHLXnHHzAYpDyhHRxIWDmwwPnOLZUaIODWy/9aZKgz4i9vY/P
	SJiRxJHRFZV+s127ZrNwDhldbuD01dtGLeeB9r5micviUE8Cgoqax2oWhtRs1oT+3vw1Hx/jz+/Wv
	+F0fOWjU1j675w03m96k90rAakIbhc69K55T8o5j9KYp3UjotNiR+6zkgGoyFVKkh0wXXsfPBaYhz
	bXfqFfiw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Steven Price <steven.price@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH] ARM: rockchip: keep reset control around
Date: Thu, 21 May 2026 23:13:46 +0200
Message-ID: <12983716.zapYfy813O@phil>
In-Reply-To: <20260521210915.2331176-1-heiko@sntech.de>
References: <20260521210915.2331176-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_221348_740854_F79AE2BD 
X-CRM114-Status: GOOD (  21.16  )
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
ZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKRm9yZ290IHRvIGFk
ZCBCYXJ0b3N6IHRvIHRoZSBDYyBsaXN0LCBzb3JyeQoKCkhlaWtvCgo+IC0tLQo+ICBhcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYyB8IDE2ICsrKysrKysrKystLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIGIvYXJjaC9hcm0vbWFjaC1yb2Nr
Y2hpcC9wbGF0c21wLmMKPiBpbmRleCBmNDMyZDIyYmZlZDguLmY2NTlkODk0YmZhZSAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwo+ICsrKyBiL2FyY2gvYXJt
L21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RhdGljIGludCBu
Y29yZXM7Cj4gIAo+ICBzdGF0aWMgc3RydWN0IHJlZ21hcCAqcG11Owo+ICBzdGF0aWMgaW50IGhh
c19wbXUgPSB0cnVlOwo+ICtzdGF0aWMgc3RydWN0IHJlc2V0X2NvbnRyb2wgKmNwdV9yc3RjWzRd
Owo+ICAKPiAgc3RhdGljIGludCBwbXVfcG93ZXJfZG9tYWluX2lzX29uKGludCBwZCkKPiAgewo+
IEBAIC02NCw5ICs2NSwxMSBAQCBzdGF0aWMgc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJvY2tjaGlw
X2dldF9jb3JlX3Jlc2V0KGludCBjcHUpCj4gIHN0YXRpYyBpbnQgcG11X3NldF9wb3dlcl9kb21h
aW4oaW50IHBkLCBib29sIG9uKQo+ICB7Cj4gIAl1MzIgdmFsID0gKG9uKSA/IDAgOiBCSVQocGQp
Owo+IC0Jc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdGMgPSByb2NrY2hpcF9nZXRfY29yZV9yZXNl
dChwZCk7Cj4gKwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0YzsKPiAgCWludCByZXQ7Cj4gIAo+
ICsJcnN0YyA9IHBkIDwgQVJSQVlfU0laRShjcHVfcnN0YykgPyBjcHVfcnN0Y1twZF0gOiBFUlJf
UFRSKC1FSU5WQUwpOwo+ICsKPiAgCWlmIChJU19FUlIocnN0YykgJiYgcmVhZF9jcHVpZF9wYXJ0
KCkgIT0gQVJNX0NQVV9QQVJUX0NPUlRFWF9BOSkgewo+ICAJCXByX2VycigiJXM6IGNvdWxkIG5v
dCBnZXQgcmVzZXQgY29udHJvbCBmb3IgY29yZSAlZFxuIiwKPiAgCQkgICAgICAgX19mdW5jX18s
IHBkKTsKPiBAQCAtMTAwLDExICsxMDMsOCBAQCBzdGF0aWMgaW50IHBtdV9zZXRfcG93ZXJfZG9t
YWluKGludCBwZCwgYm9vbCBvbikKPiAgCQl9Cj4gIAl9Cj4gIAo+IC0JaWYgKCFJU19FUlIocnN0
YykpIHsKPiAtCQlpZiAob24pCj4gLQkJCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocnN0Yyk7Cj4g
LQkJcmVzZXRfY29udHJvbF9wdXQocnN0Yyk7Cj4gLQl9Cj4gKwlpZiAoIUlTX0VSUihyc3RjKSAm
JiBvbikKPiArCQlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHJzdGMpOwo+ICAKPiAgCXJldHVybiAw
Owo+ICB9Cj4gQEAgLTMxMiw2ICszMTIsMTAgQEAgc3RhdGljIHZvaWQgX19pbml0IHJvY2tjaGlw
X3NtcF9wcmVwYXJlX2NwdXModW5zaWduZWQgaW50IG1heF9jcHVzKQo+ICAJCW5jb3JlcyA9ICgo
bDJjdGxyID4+IDI0KSAmIDB4MykgKyAxOwo+ICAJfQo+ICAKPiArCS8qIENvbGxlY3QgY3B1IGNv
cmUgcmVzZXQgY29udHJvbCBmb3IgZWFjaCBjb3JlICovCj4gKwlmb3IgKGkgPSAwOyBpIDwgbmNv
cmVzOyBpKyspCj4gKwkJY3B1X3JzdGNbaV0gPSByb2NrY2hpcF9nZXRfY29yZV9yZXNldChpKTsK
PiArCj4gIAkvKiBNYWtlIHN1cmUgdGhhdCBhbGwgY29yZXMgZXhjZXB0IHRoZSBmaXJzdCBhcmUg
cmVhbGx5IG9mZiAqLwo+ICAJZm9yIChpID0gMTsgaSA8IG5jb3JlczsgaSsrKQo+ICAJCXBtdV9z
ZXRfcG93ZXJfZG9tYWluKDAgKyBpLCBmYWxzZSk7Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

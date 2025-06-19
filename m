Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16405C7115C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 15:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVFp/OTCem3Rsy/Qr1KGULTuaqYreYZDeogwdi9qtqc=; b=WEFro1Jj+OSD4G
	c0T5DldT0juA7UinvY2mKrh3c1PsjPpHs+NfmeV59gFHCtXVAZ8PoEfuHiqIYgZmYwbyHOfJF8nB0
	CdAG40VwdLSo06otP9alObKu5zzPf7s834Brh73KGpVBZMDjL6J2Me9yfAYf+3DZa1W3Us70mdaao
	hxAHyPGX8dNSKFdiRHPsC32sG4SFeGpZpgyWH8oMuNnWCN55fhq2EGHXOOdHM3naODdpyHbriAp/9
	ynEuRqrQHTvo4ylgW5iMIWBRCV6UuwRAqrGHajSHNOhIisb/sWxsGtpnkjNTImNhWPj0FwjqRACgl
	YbihA9UKLMLgIMMGAfDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHT3-0000000DTzt-3sBX;
	Thu, 19 Jun 2025 15:46:21 +0000
Received: from mail-10629.protonmail.ch ([79.135.106.29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDqX-0000000CxZ8-2PjF
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 11:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=itb3llscg5chjipokufu5vmc4u.protonmail; t=1750334056; x=1750593256;
	bh=Iz0J/KCDZc0l+Va2OMeieFNBnxG4UEBoIuugIS4vfeQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=km3bVzcHZg3BwGBm6/0yFFDtJOgSmPsr9f19NHWXq0rGo4y3zfyTibsiER2DzSDLY
	 WvKp9NaQVeqCIcJCibg5Uq9gbO9ebT1w5rN2aj9kWLAxSDBmGzaNfqcrF6PzYFa/WC
	 7q1cFaH1q01Eg0bgYeHtDy/Lz1M46EqYwBgireY8v+Vt4kmWTT+low5KxgnPc5nDSJ
	 S5rmpHRF4ASOmQ6Pu0quwfRHr3apiuXJsq7CXJmI5pIlyey2WMneugPt3aDL8uAn5G
	 lyDbBmvLiBeEu2HKRdwY0Pr1CWIVKxwBNFrbo2Pr08sLW8I6o0Wd0yEB5/u2OdUWnI
	 I52n+oMdgtZCA==
Date: Thu, 19 Jun 2025 11:54:12 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Diederik de Haas <didi.debian@cknow.org>, hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, Dang Huynh <danct12@riseup.net>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH drm-misc-next] rockchip/drm: vop2: don't check color_mgmt_changed in atomic_enable
Message-ID: <oT4pI24an4vFCCysHCInNVi7B-jsgNUVKs4olmiuQ4lWzdd0FS_nwMs-ja40ofjDElVARdad8I_eTG9tRXkgJos48eQmsWo13V5mgc-dXEg=@proton.me>
In-Reply-To: <562b38e5.a496.1975f09f983.Coremail.andyshrk@163.com>
References: <20241206192013.342692-3-pZ010001011111@proton.me> <DAI0A1Y753FJ.B0NMT8L5VPEH@cknow.org> <4b380a57.8ab2.197591815a8.Coremail.andyshrk@163.com> <DAISW8MXEU0G.3AMRSKNYQUJY8@cknow.org> <4e600374.6dc7.1975df03a2d.Coremail.andyshrk@163.com> <DAJNEG81JCU5.35KVU8KAT5MDU@cknow.org> <b25ddc.a29c.1975eea8033.Coremail.andyshrk@163.com> <DAJPBG7GPPH2.3BDCMH0U3FU0E@cknow.org> <562b38e5.a496.1975f09f983.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 8e2fa2b68f5f05b4114d9aa2c31446fe0646ed33
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_045422_373170_772761B9 
X-CRM114-Status: GOOD (  17.43  )
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

SGkgQW5keQoKPiAKPiBUaGUgcm9vdCBjYXNlIGZvciB0aGUgcHJvYmxlbSBpcyBub3cgY2xlYXLj
gIIKPiAKPiBNb3N0IG9mIHRoZSByZWdpc3RlcnMgaW4gVk9QIG5lZWQgdG8gd3JpdGUgdGhlIGNm
ZF9kb25lIHJlZ2lzdGVyKGNhbGwgdm9wMl9jZmdfZG9uZSkKPiBhZnRlciB5b3UgaGF2ZSBjb25m
aWd1cmVkIHRoZSByZWdpc3RlcnMuIFRoZW4sIHRoZXkgd2lsbCB0YWtlIGVmZmVjdCBvbmx5IHdo
ZW4gdGhlIFZTWU5DIGV2ZW50IG9jY3VycyhJdCBkb2Vzbid0IHRha2UgZWZmZWN0IGltbWVkaWF0
ZWx5IGFmdGVyIHlvdSBmaW5pc2ggd3JpdGluZy4pLgo+IFRoaXMgYWxzbyBpbmNsdWRlcyBhbGwg
dGhlIFZQX0RTUF9DVFJMIHJlZ2lzdGVycy4KPiAKPiBzZWUgdGhlIGNvZGU6Cj4gCj4gdm9wMl92
cF93cml0ZSh2cCwgUkszNTY4X1ZQX0RTUF9DVFJMLCBkc3BfY3RybCk7Cj4gCj4gdm9wMl9jcnRj
X2F0b21pY190cnlfc2V0X2dhbW1hKHZvcDIsIHZwLCBjcnRjLCBjcnRjX3N0YXRlKTsKPiAtLT4K
PiAKPiBzdGF0aWMgdm9pZCB2b3AyX3ZwX2RzcF9sdXRfZGlzYWJsZShzdHJ1Y3Qgdm9wMl92aWRl
b19wb3J0IHZwKQo+IHsKPiB1MzIgZHNwX2N0cmwgPSB2b3AyX3ZwX3JlYWQodnAsIFJLMzU2OF9W
UF9EU1BfQ1RSTCk7Cj4gCj4gCj4gV2hlbiB3ZSByZWFkIHRoaXMgcmVnaXN0ZXIsIHdlIGFyZSBy
ZWFkaW5nIHRoZSBhY3R1YWwgZWZmZWN0aXZlIHZhbHVlLAo+IG5vdCB0aGUgb25lKGRzcF9jdHJs
KSB0aGF0IHdhcyBqdXN0IHdyaXR0ZW4gaW4gYmVmb3JlIChpdCBoYXMgbm90IHlldCB0YWtlbiBl
ZmZlY3QpCj4gCj4gU28gd2hlbiB3ZSBjb250aW51ZSB0byB3cml0ZSBhYm91dCB0aGlzIHJlZ2lz
dGVyIGhlcmUsIHdlIG92ZXJ3cml0ZSB0aGUgYWN0dWFsCj4gdmFsdWUgd2Ugb3JpZ2luYWxseSBp
bnRlbmRlZCB0byBwdXQgaW4uCj4gCj4gCj4gZHNwX2N0cmwgJj0gflJLMzU2OF9WUF9EU1BfQ1RS
TF9fRFNQX0xVVF9FTjsKPiB2b3AyX3ZwX3dyaXRlKHZwLCBSSzM1NjhfVlBfRFNQX0NUUkwsIGRz
cF9jdHJsKTsKPiB9Cj4gCj4gSSB0aGluayB0aGUgY29ycmVjdCBzb2x1dGlvbiBzaG91bGQgYmUg
c2ltaWxhciB0byB0aGUgV2luZG93cy1yZWxhdGVkIHJlZ2lzdHJ5IHNldHRpbmdzLgo+IEFsbCB0
aGUgcmVnaXN0ZXJzIHJlbGF0ZWQgdG8gVmlkZW8gUG9ydHMgc2hvdWxkIGJlIHNldCBhcyBub24t
dm9sYXRpbGUsIHNlZToKPiAKPiAvCj4gKiBUaGUgd2luZG93IHJlZ2lzdGVycyBhcmUgb25seSB1
cGRhdGVkIHdoZW4gY29uZmlnIGRvbmUgaXMgd3JpdHRlbi4KPiAqIFVudGlsIHRoYXQgdGhleSBy
ZWFkIGJhY2sgdGhlIG9sZCB2YWx1ZS4gQXMgd2UgcmVhZC1tb2RpZnktd3JpdGUKPiAqIHRoZXNl
IHJlZ2lzdGVycyBtYXJrIHRoZW0gYXMgbm9uLXZvbGF0aWxlLiBUaGlzIG1ha2VzIHN1cmUgd2Ug
cmVhZAo+ICogdGhlIG5ldyB2YWx1ZXMgZnJvbSB0aGUgcmVnbWFwIHJlZ2lzdGVyIGNhY2hlLgo+
ICovCj4gc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfcmFuZ2Ugdm9wMl9ub252b2xhdGlsZV9y
YW5nZVtdID0gewo+IHJlZ21hcF9yZWdfcmFuZ2UoMHgxMDAwLCAweDIzZmYpLAo+IH07Cj4gCj4g
c3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYWNjZXNzX3RhYmxlIHZvcDJfdm9sYXRpbGVfdGFi
bGUgPSB7Cj4gLm5vX3JhbmdlcyA9IHZvcDJfbm9udm9sYXRpbGVfcmFuZ2UsCj4gLm5fbm9fcmFu
Z2VzID0gQVJSQVlfU0laRSh2b3AyX25vbnZvbGF0aWxlX3JhbmdlKSwKPiB9OwoKRm9sbG93aW5n
IHlvdXIgc3VnZ2VzdGlvbiBJIGFkZGVkIHZvcDIgdmlkZW8gcG9ydCByZWdpc3RlcnMgYXMgbm90
CnZvbGF0aWxlIGFuZCBpdCBmaXhlZCB0aGUgaXNzdWUuIEkgdG9vayB0aGUgdmFsdWVzIGZyb20g
UkszNTg4IFRSTQpQYXJ0MiBWMS4xLiBTZWUgdGhlIHBhdGNoIGJlbG93IGFuZCBjb25maXJtIGlm
IGl0IGlzIGNvcnJlY3QuCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYwppbmRleCBkMGY1ZmVhMTVlMjEuLmM1YzE5MTBmYTVjYSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKQEAgLTI1OTYsNiArMjU5Niw3IEBA
IHN0YXRpYyBpbnQgdm9wMl93aW5faW5pdChzdHJ1Y3Qgdm9wMiAqdm9wMikKICAqLwogc3RhdGlj
IGNvbnN0IHN0cnVjdCByZWdtYXBfcmFuZ2Ugdm9wMl9ub252b2xhdGlsZV9yYW5nZVtdID0gewog
CXJlZ21hcF9yZWdfcmFuZ2UoMHgxMDAwLCAweDIzZmYpLAorCXJlZ21hcF9yZWdfcmFuZ2UoMHgw
QzAwLCAweDBmZmYpLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYWNjZXNzX3Rh
YmxlIHZvcDJfdm9sYXRpbGVfdGFibGUgPSB7CgoKPiBBY3R1YWxseSwgdGhlcmUgaXMgYW5vdGhl
ciBxdWVzdGlvbi4gSSBzdGlsbCBoYXZlbid0IGZpZ3VyZWQgb3V0IHdoeQo+IHRoaXMgcHJvYmxl
bSBkb2Vzbid0IG9jY3VyIHdoZW4gY29tcGlsaW5nIHJvY2tjaGlwZHJtPXkgLgoKQ291bGRuJ3Qg
cmVhc29uIG91dCB3aHkgdGhpcyBvbmx5IGhhcHBlbnMgd2l0aCBkcm09bSB5ZXQKdW5mb3J0dW5h
dGVseS4KCkJlc3QgcmVnYXJkcywgUGlvdHIgWmFsZXdza2kKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976A4C282D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 12:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB867+B/VkmOWO3Nr+A9yjuMaAQHOrsg2CS527ec3iQ=; b=s064iXGZ28dcVq
	URc3Fpv017vcsu/ze7H409pwZLoXaoUQQFYokuLRfIObuhkS1Yh73Rfm/KIB4V8UfEE44Io3zsrEN
	EEXJdQT7MMJJb9MCOQlSUAKDLhipHIITLxosfZYRk7LDqeDpDG8Drbiq2uZ5nh9/uTyK3yhwwQn0a
	kUEFshKIorpr7KfefvMhL7AD3mAnFmlWVEEscqnJj3wMsbBJkg3fuXPwDeV3QHX5MW5rTYtWmZr4B
	wG95SYSqHkRBcvOD0LxuMIWto3kpAvkFjT7tvbMMA1XH8VAfwLX2ZGLGgqSZvHrxVap/X+4TwKHoq
	hY9AvvB99xOSrb514usQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRZ1-00000004fLR-3BVl;
	Tue, 04 Mar 2025 12:39:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRXR-00000004f7w-0hig;
	Tue, 04 Mar 2025 12:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uLskld3j/+jGE72aUEs0X5g8/a3WioUWDpwH6b83L3Y=; b=U7pImbBWMCBcZdY6HtiTtG9Qiv
	hZXAmQxGGxL/wpSqvoAJwLfkxmNxFLX+PcRZEIGYFMb+ZXPB3I81woBaKSNTKEflxFq7DmnkjjfBE
	iveMv0iQMn8SOl5LgaPTzBfaFt/dd5iewtIhxh1x+3GYQpkxHP0csVelI+awuONwDwW5ckcRx8+PW
	MYejp09LT3p4Z4uhEow8TMa4M3rJ7Q+YldTLPjm0PgvrP/oRrf43ofpBPsilCrKc7Ik/N5ZRC5PeT
	hMWDTE06C+kXl13B6KjhFNw/2a29T+HXHXzMOsEgIgz9jYAGg999K3n6unNhqJJ3g/qfEJuupm6Mg
	YwAhTPZg==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpRX9-00037w-P6; Tue, 04 Mar 2025 13:38:03 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/2] drm/rockchip: lvds: Hide scary error messages on probe
 deferral
Date: Tue, 04 Mar 2025 13:38:02 +0100
Message-ID: <9817880.CDJkKcVGEf@diego>
In-Reply-To: <0e54f70a-0b07-4ead-96fb-add2bbdaf787@cherry.de>
References: <20250301173547.710245-1-heiko@sntech.de>
 <20250301173547.710245-3-heiko@sntech.de>
 <0e54f70a-0b07-4ead-96fb-add2bbdaf787@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_043821_203820_DC8FB0F9 
X-CRM114-Status: GOOD (  18.69  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDEyOjQ2OjU5IE1FWiBzY2hyaWViIFF1ZW50aW4g
U2NodWx6Ogo+ID4gQEAgLTQ2NSwxNCArNDY0LDE0IEBAIHN0YXRpYyBpbnQgcmszMjg4X2x2ZHNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+ICAgCj4gPiAgIAlsdmRzLT5w
aW5zLT5wID0gZGV2bV9waW5jdHJsX2dldChsdmRzLT5kZXYpOwo+ID4gICAJaWYgKElTX0VSUihs
dmRzLT5waW5zLT5wKSkgewo+ID4gLQkJRFJNX0RFVl9FUlJPUihsdmRzLT5kZXYsICJubyBwaW5j
dHJsIGhhbmRsZVxuIik7Cj4gPiArCQlkZXZfZXJyKGx2ZHMtPmRldiwgIm5vIHBpbmN0cmwgaGFu
ZGxlXG4iKTsKPiA+ICAgCQlkZXZtX2tmcmVlKGx2ZHMtPmRldiwgbHZkcy0+cGlucyk7Cj4gPiAg
IAkJbHZkcy0+cGlucyA9IE5VTEw7Cj4gPiAgIAl9IGVsc2Ugewo+ID4gICAJCWx2ZHMtPnBpbnMt
PmRlZmF1bHRfc3RhdGUgPQo+ID4gICAJCQlwaW5jdHJsX2xvb2t1cF9zdGF0ZShsdmRzLT5waW5z
LT5wLCAibGNkYyIpOwo+ID4gICAJCWlmIChJU19FUlIobHZkcy0+cGlucy0+ZGVmYXVsdF9zdGF0
ZSkpIHsKPiA+IC0JCQlEUk1fREVWX0VSUk9SKGx2ZHMtPmRldiwgIm5vIGRlZmF1bHQgcGluY3Ry
bCBzdGF0ZVxuIik7Cj4gPiArCQkJZGV2X2VycihsdmRzLT5kZXYsICJubyBkZWZhdWx0IHBpbmN0
cmwgc3RhdGVcbiIpOwo+ID4gICAJCQlkZXZtX2tmcmVlKGx2ZHMtPmRldiwgbHZkcy0+cGlucyk7
Cj4gPiAgIAkJCWx2ZHMtPnBpbnMgPSBOVUxMOwo+IAo+IFNob3VsZCB0aG9zZSBiZSBkZXZfZXJy
IGlmIHRoZXkgYXJlIG5vdCBicmVha2luZyBhbnl0aGluZz8gQWZ0ZXIgYWxsLCAKPiB0aGUgZGV2
aWNlIHdpbGwgYWN0dWFsbHkgcHJvYmU/IE1heWJlIGRldl93YXJuIHdvdWxkIGJlIG1vcmUgYXBw
cm9wcmlhdGU/Cj4gCj4gTWF5YmUgYSBzZXBhcmF0ZSBwYXRjaCBzaW5jZSB3ZSBoYWQgRFJNX0RF
Vl9FUlJPUiBhbHJlYWR5LCBzbyBzd2l0Y2hpbmcgCj4gdG8gZGV2X2VyciBpbiBvbmUgYW5kIHRo
ZW4gbG93ZXJpbmcgdGhlIGxvZyBsZXZlbCBpbiBhIHNlY29uZCB3b3VsZCBtYWtlIAo+ICJtb3Jl
IiBzZW5zZT8KCkkgZGlkIGRlYmF0ZSBhIGJpdCB3aGV0aGVyIHRvIGlnbm9yZSBoZXJlIGFuZCBn
byBkaXJlY3RseSB0byBkZXZfd2FybiwKYnV0IG9wdGVkIGZvciBEUk1fREVWX0VSUk9SIC0+IGRl
dl9lcnIgLT4gZGV2X3dhcm4sIHRvIGtlZXAgdGhlIGNvbW1pdApkZXNjcmlwdGlvbiBpbnRhY3Qu
IE90aGVyd2lzZSBwZW9wbGUgbG9va2luZyBhdCB0aGlzIHBhdGNoIGFsb25lIG1pZ2h0IGFzawpp
ZiB0aGlzIHBhcnQgd2FzIGZvcmdvdHRlbiwgd2hlbiB0aGUgY29tbWl0IG1lc3NhZ2UgaW5kaWNh
dGVzICJhbGwiLgoKU28gZXhwZWN0IGFuIGFkZGl0aW9uYWwgcGF0Y2ggaW4gdjMgOi0pIC4KCgo+
ID4gQEAgLTU5Myw3ICs1ODksNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2x2ZHNfYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwKPiA+ICAgCQlsdmRzLT5mb3Jt
YXQgPSByb2NrY2hpcF9sdmRzX25hbWVfdG9fZm9ybWF0KG5hbWUpOwo+ID4gICAKPiA+ICAgCWlm
IChsdmRzLT5mb3JtYXQgPCAwKSB7Cj4gPiAtCQlEUk1fREVWX0VSUk9SKGRldiwgImludmFsaWQg
ZGF0YS1tYXBwaW5nIGZvcm1hdCBbJXNdXG4iLCBuYW1lKTsKPiA+ICsJCWRldl9lcnIoZGV2LCAi
aW52YWxpZCBkYXRhLW1hcHBpbmcgZm9ybWF0IFslc11cbiIsIG5hbWUpOwo+ID4gICAJCXJldCA9
IGx2ZHMtPmZvcm1hdDsKPiAKPiBuaXBpdGNrOgo+IAo+IHJldCA9IGRldl9lcnJfcHJvYmUoZGV2
LCBsdmRzLT5mb3JtYXQsICJpbnZhbGlkIGRhdGEtbWFwcGluZyBmb3JtYXQgCj4gWyVzXVxuIiwg
bmFtZSk7Cgp5b3UncmUgcmlnaHQgb2YgY291cnNlCgouLi4KCj4gPiAgIAlyZXQgPSBjb21wb25l
bnRfYWRkKCZwZGV2LT5kZXYsICZyb2NrY2hpcF9sdmRzX2NvbXBvbmVudF9vcHMpOwo+ID4gICAJ
aWYgKHJldCA8IDApCj4gPiAtCQlEUk1fREVWX0VSUk9SKGRldiwgImZhaWxlZCB0byBhZGQgY29t
cG9uZW50XG4iKTsKPiA+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVk
IHRvIGFkZCBjb21wb25lbnRcbiIpOwo+ID4gICAKPiAKPiBTaG91bGQgdGhpcyByYXRoZXIgYmUg
ZHJtX2Vycm9yPyBJIGJlbGlldmUgdGhpcyBpcyByZWxhdGVkIHRvIHRoZSAKPiBSb2NrY2hpcCBE
Uk0gbWFpbiBkZXZpY2U/CgpJIHdvdWxkIGdyb3VwIHRoaXMgbW9yZSB0byBnZW5lcmFsIGRldmlj
ZSBlcnJvci4KQ29tcG9uZW50X2FkZCBoYXBwZW5zIHdheSBiZWZvcmUgdGhlIGNvbXBvbmVudCBt
YXN0ZXIgYmluZHMgYW55dGhpbmcuCgpkcm1fZXJyIGlzIHN1cHBvc2VkIHRvIGFsc28gcG9pbnQg
dG8gdGhlIG1haW4gZHJtX2RldmljZSBhcyBpdHMgcGFyYW1ldGVyLAp3aGljaCBkb2VzIG5vdCBl
dmVuIGV4aXN0IGF0IHRoaXMgcG9pbnQuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

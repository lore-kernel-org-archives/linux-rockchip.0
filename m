Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B2CFD65C44
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 12:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spLxvCCbVcPsmds7/R969YUjxjC0rdFAs9guL/rz2p4=; b=txCQ7MOliUJWyo
	GtmkmnedBdDfCRY6uA3KmpQvoUQs03Ve90Bgv0sxtBpwGNjIg9R3Cs8zFsTw+WIYdAE8Tti9pALEl
	VDfZQB5aRmZxmr1J1Ekf7DL2v9Jr+asBjxfEsce2iBvmdMV4oBF6UpwE2dNw44cikMQtNa/5TvOjz
	FuFYRZgSp/08URWQoq0KrY80wlktyYiewtZL2ytcobzAQUi1qbJXoWf3WNWTKPU3w8pL1w0RiqvMX
	uRJEx3JPj+/mBAD4fTkpwWMcZEpMRlgFeL9qEtwyoJ1uQDzKXJiZpc7DUGm0ez7gLXP/XoEE1XLDw
	m/2O/f0UB8rR3Il7zOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVr6U-00000006pCN-04Fg;
	Wed, 17 Dec 2025 12:58:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVr6S-00000006pBY-01DS;
	Wed, 17 Dec 2025 12:58:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765976272; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FoqdNb4g5Gtkd8jGGwm/maHLrre5WN7i25q/udEcMHPG48TC9bLlCuMRzI/R2OL3+rZ5wyKhHhUFtGYvFGHyO7iOVxPzUsmzICdTrehXVXBXpZwAhTbhMad58FSf8ph3Bz/MCwLEsuNAGxWP8a6P7SFuBa/i9PVoaKWyF9m+u7Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765976272; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LrvfmBmzDcA3GwDRV7f9xZnGQTMmRHRy9Ho1m8R+Wok=; 
	b=eh9MgmX/bEjXh147aGbIug8Y9zOvoJ6XmSyCwjAocNyXKnExbeCLAO4y7axvDxOwHbLzV1/iK57cBwhIJFU5mBUo1VpdlrXK1PlMiyxSi/ZnbGjMy9nwanRPOh506t0BoGAc+xxaq+GVaKVFIcpUNpk4WEX/CsfNeoxDcz3fwos=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765976272;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=LrvfmBmzDcA3GwDRV7f9xZnGQTMmRHRy9Ho1m8R+Wok=;
	b=foeIRv8TCls/G5ux4frn10VOXe7im29PLKscuAUx8H/eXtXbu12qaJwIrkzY+Bw8
	SK5/4DflcoPyCMD0aCdHI8guUqFPK2B1uCoirliEZxH8z1JCp4A+T9DcnN3RlGPnVzt
	iTidSd6zWY1Ti8lK+kar6VvLQCR3nLR4mS7Dc/lI=
Received: by mx.zohomail.com with SMTPS id 1765976271997185.16439333799497;
	Wed, 17 Dec 2025 04:57:51 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: input: adc-keys: allow linux,input-type
 property
Date: Wed, 17 Dec 2025 13:57:46 +0100
Message-ID: <6778765.lOV4Wx5bFT@workhorse>
In-Reply-To: <20251217-tough-ultra-junglefowl-f1a9ae@quoll>
References: <20251215-rock4d-audio-v2-0-82a61de39b4c@collabora.com>
 <20251215-rock4d-audio-v2-1-82a61de39b4c@collabora.com>
 <20251217-tough-ultra-junglefowl-f1a9ae@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_045804_097794_BFFCB7D3 
X-CRM114-Status: GOOD (  14.64  )
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

T24gV2VkbmVzZGF5LCAxNyBEZWNlbWJlciAyMDI1IDA5OjMxOjE1IENlbnRyYWwgRXVyb3BlYW4g
U3RhbmRhcmQgVGltZSBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIE1vbiwgRGVjIDE1
LCAyMDI1IGF0IDAxOjI5OjI5UE0gKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+
IGFkYy1rZXlzLCB1bmxpa2UgZ3Bpby1rZXlzLCBkb2VzIG5vdCBhbGxvdyBsaW51eCxpbnB1dC10
eXBlIGFzIGEgdmFsaWQKPiA+IHByb3BlcnR5LiBUaGlzIG1ha2VzIGl0IGltcG9zc2libGUgdG8g
bW9kZWwgZGV2aWNlcyB0aGF0IGhhdmUgQURDIGlucHV0cwo+ID4gdGhhdCBzaG91bGQgZ2VuZXJh
dGUgc3dpdGNoIGV2ZW50cy4KPiAKPiBUaGUgc29sdXRpb24gaXMgdG8gdXNlIHVuZXZhbHVhdGVk
UHJvcHMgaW5zdGVhZCwgd2hpY2ggYWxzbyBhbGxvd3MKPiBkcm9wcGluZyBvdGhlciBwcm9wZXJ0
aWVzLgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKPiAKCkhpIEtyenlzenRvZiwK
CnRvIHVuZGVyc3RhbmQgdGhlIG1vdGl2YXRpb24gYmVoaW5kIHRoaXMgc3VnZ2VzdGlvbiBjb3Jy
ZWN0bHk6CmFyZSB0aGUgImxpbnV4LCIgdmVuZG9yIHByZWZpeGVkIHByb3BlcnRpZXMsIGVzcGVj
aWFsbHkgd2l0aCByZWdhcmRzCnRvIGtleSBjb2RlcywgZ2VuZXJhbGx5IGEgYml0IG9mIGEgdGhv
cm4gaW4gdGhlIHNpZGUgb2YgRFQgYmluZGluZ3MKbWFpbnRhaW5lcnM/CgpJJ2QgaW1hZ2luZSBz
byBzaW5jZSB0aGV5IHRlY2huaWNhbGx5IHRpZSB0aGUgRFQgdG8gYSBzcGVjaWZpYyBPUwprZXJu
ZWwgKHRob3VnaCBvZiBjb3Vyc2UsIG90aGVycyBhcmUgZnJlZSB0byB0cmFuc2xhdGUgdGhvc2Ug
a2V5CmNvZGVzKS4gQW5kIHRoZSB3aG9sZSBpZGVhIG9mIGNvbmZpZ3VyaW5nIHdoaWNoIGNvZGUg
aXMgZW1pdHRlZApmcm9tIHNvbWV0aGluZyBpcyBiYXNpY2FsbHkgYWJ1c2luZyBEVCBmb3IgY29u
ZmlndXJpbmcgc29mdHdhcmUKcmF0aGVyIHRoYW4gZGVzY3JpYmluZyBoYXJkd2FyZS4KCkknbSBt
YWlubHkgaW50ZXJlc3RlZCBiZWNhdXNlIHRoaXMgaXMgYSB0aG91Z2h0IHRoYXQgaGFzIGJlZW4g
aW4KdGhlIGJhY2sgb2YgbXkgbWluZCBmb3IgYSB3aGlsZSBub3csIGFuZCBJJ20gY3VyaW91cyBp
ZiB0aGUgRFQKYmluZGluZyBtYWludGFpbmVycyBoYXBwZW4gdG8gaGF2ZSBhcnJpdmVkIGF0IHRo
ZSBzYW1lIGltcGFzc8OpLAp3aGVyZSBsaW51eCxpbnB1dC10eXBlIGV0IGFsIGFidXNlIHRoZSBE
VCBtb2RlbCBmb3Igc29tZXRoaW5nIHdlCndvdWxkIHRlbGwgYW55IG90aGVyIHZlbmRvciBub3Qg
dG8gYWJ1c2UgaXQgZm9yLCBidXQgbm8gYmV0dGVyCnNvbHV0aW9uIGV4aXN0cyByaWdodCBub3cg
dG8gYWNoaWV2ZSB0aGUgc2FtZSB0aGluZy4KCktpbmQgcmVnYXJkcywKTmljb2xhcyBGcmF0dGFy
b2xpCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

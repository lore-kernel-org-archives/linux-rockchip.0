Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D05CCD1BC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 06:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlMbij8zBgMSFvFZ6c2zr//4eM+6RTa/FhHMPtwroSo=; b=c0bWQbORgdmCdF
	JYpWrsyOB2cU4BrQz7i+Cf1tgc7d8N0W6ohZSZddx8y9TApwHCEsS+Tlg8byo2Mzn4WcCaogwcoaz
	Li/JWEBHoBVWlVR1X2RNFGLHnDtalXmO6dy5IsH3OmBecMNucDDazPIpN49ZcKtoXBjtY0TzWK/n7
	Kpk9ljothNEWN1UPqPcoUuAyc0qFmvyKlTvVDf3oAnWm5pZHykr+8U3yZqMZzhOaKft+J80t5umHV
	dNLcy6Auq6TyU0z1hkKaTd2I9+OYRKbfZlTy8JKMncsegfxOoSHw8vVcGeiHjB5/YgCdnSE4HH2Aq
	qcEbAc8Lq3a5hdrbnDlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpFC-00000005Go1-1DJG;
	Thu, 23 Oct 2025 06:56:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpF9-00000005Gm9-3GRw;
	Thu, 23 Oct 2025 06:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=aGbadfXdorcMPnmwNXVNWcPnkf3aCIvQIT89nWPARCE=; b=T/8BvbbNQi3+HZMJPGmEbCHmyT
	JeNGN4T0dBe94psOisbpS0o9rYIy/9QivrB4Jy9MeNNr0VR19zDlZEbBcMPi2uXypKnL2sa1GvZpo
	zNlpniVrfyAIiZs2hitv9JDMuVVli3HwOCL0C25x7fdaDaDZ9U1VwSM6JQtwD9FCeM9CiW7sxDzco
	xODj0rOPyNB5HIpZLVLzQIqUcyfMrllRp8BCeut8stOYg/uajRMn4H+I6zi1LqHq8B1RUozWPU7B5
	+rUAYBK8uZ2Yhy2t0zq/0EQFNt72VZrALhYC+1EU7z1o6A5bTZUl/hL+dgmzsMTHHNuWcjoOsDdow
	fH2ZFsWw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBoNQ-000000018fD-10Wz;
	Thu, 23 Oct 2025 06:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aGbadfXdorcMPnmwNXVNWcPnkf3aCIvQIT89nWPARCE=; b=xtr/5YZlHNoxBEPSRG93Jpb/9z
	/pNZd5Xgf1O4YmC64aLItyQI3crzt54lkDeYg2xBWhUDcyy6t/Qq/ZLObRj8pVhTTpUcsLlyT6ZMf
	zjvMUEy0Nn59qkLFt0f7B468C4xVfQy/K3QPwAdHsxBmtbsBHsWl2FcbfVB4R/ZC6+otj4nln3+KZ
	PbKZLuWBui8eSn2yXXuDMnaCRYa1HA23PSzg0q7rPzDNyIbn9GwSmA5r1FXk2SuqP1GBl8i1TZ2B4
	eHze05UMkDQWRgBA2v0w3mbpnyKdgARzG0YVHoH5B4+Hkx7avsZUJ18JvFVIdFL25T49EoYhufKgP
	ahCsokVA==;
Received: from i53875a07.versanet.de ([83.135.90.7] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBpEv-0001An-Ui; Thu, 23 Oct 2025 08:56:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Stone <daniels@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v1] drm/rockchip: Set VOP for the DRM DMA device
Date: Thu, 23 Oct 2025 08:56:00 +0200
Message-ID: <3705026.LM0AJKV5NW@phil>
In-Reply-To: <20251022161948.199731-1-dmitry.osipenko@collabora.com>
References: <20251022161948.199731-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_070045_433424_61BA5280 
X-CRM114-Status: GOOD (  11.99  )
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

SGkgRG1pdHJ5LAoKQW0gTWl0dHdvY2gsIDIyLiBPa3RvYmVyIDIwMjUsIDE4OjE5OjQ4IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRG1pdHJ5IE9zaXBlbmtvOgo+IFVzZSBW
T1AgZm9yIERNQSBvcGVyYXRpb25zIHBlcmZvcm1lZCBieSBEUk0gY29yZS4gUm9ja2NoaXAgRFJN
IGRyaXZlcgo+IGlzIGJhY2tlZCBieSBhIHZpcnR1YWwgZGV2aWNlIHRoYXQgaXNuJ3QgSU9NTVUt
Y2FwYWJsZSwgd2hpbGUgVk9QIGlzIHRoZQo+IGFjdHVhbCBkaXNwbGF5IGNvbnRyb2xsZXIgZGV2
aWNlIGJhY2tlZCBieSBJT01NVS4gRml4ZXMgInN3aW90bGIgYnVmZmVyCj4gaXMgZnVsbCIgd2Fy
bmluZyBtZXNzYWdlcyBvcmlnaW5hdGVkIGZyb20gR0VNIHByaW1lIGNvZGUgcGF0aHMuCj4gCj4g
Tm90ZSwgdGhhdCBiYWNrcG9ydGluZyBpcyBub24tdHJpdmlhbCBhcyB0aGlzIGRlcGVuZHMgb24g
MTQzZWM4ZDNmOTM5Ngo+ICgiZHJtL3ByaW1lOiBTdXBwb3J0IGRlZGljYXRlZCBETUEgZGV2aWNl
IGZvciBkbWEtYnVmIGltcG9ydHMiKSwgd2hpY2gKPiBsYW5kZWQgaW4gdjYuMTYgYW5kIDQyMWJl
M2VlMzZhNCAoImRybS9yb2NrY2hpcDogUmVmYWN0b3IgSU9NTVUKPiBpbml0aWFsaXNhdGlvbiIp
LCB3aGljaCBsYW5kZWQgaW4gdjUuMTkuCj4gCj4gUmVwb3J0ZWQtYnk6IERhbmllbCBTdG9uZSA8
ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgo+IEZpeGVzOiAyMDQ4ZTMyODZmMzQgKCJkcm06IHJvY2tj
aGlwOiBBZGQgYmFzaWMgZHJtIGRyaXZlciIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcg
IyB2Ni4xNisKPiBSZXZpZXdlZC1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0
cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KCmp1c3QgYSBwcm9jZXNzIHJlbWFyayBmb3Igbm93
LiBUaGlzIHYxIHNvIGl0IGRlZmluaXRseSBzaG91bGRuJ3QgY29tZQp3aXRoIGFueSBSZXZpZXdl
ZC1ieS1zIHByZS1hcHBsaWVkLCBiZWNhdXNlIHRoaXMgc2hvdWxkIGhhcHBlbiBpbiBwdWJsaWMu
CgpJdCdzIG5vdCBhIGh1Z2UgaXNzdWUgaGVyZSwgYmVjYXVzZSBJIGRvIHRydXN0IHRoZSBwZW9w
bGUgaW52b2x2ZWQgKHlvdSwKU2ViYXN0aWFuLCBEYW5pZWwpIGFuZCB0aGUgY2hhbmdlIGlzIHNt
YWxsIGVub3VnaCwgYnV0IHBsZWFzZSBmb3IgZnV0dXJlCmNoYW5nZXMsIGxldCBSZXZpZXcgaGFw
cGVuIG9uIHRoZSBsaXN0LCBub3Qgb24gcHJpdmF0ZSBjaGFubmVscy4KCgpXaWxsIGxvb2sgYXQg
dGhlIGNoYW5nZSBpdHNlbGYgd2hlbiBiYWNrIGhvbWUuCgoKVGhhbmtzCkhlaWtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

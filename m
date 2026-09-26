Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF7ABC9831E
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBmnLnC5omcHomc1tdqXEc5BxJwd48qLHeqn0FlEs3w=; b=JuxD0NW39i0iVd
	q5Tir6C/5N8ivXVF0piwysNuVbfeoU2Sv3sVD48NvvPJ4yyEzLAeCYHG5OHipXCCxk6AmmVrTa9Fi
	LZZ073WugCjimQQXNZ3MZ7QqB2NTmm155Pd2dhFI8PIKwAlLZ70ETbm155V5HQIRbdRZM0xolpMJZ
	i7RoLqf6vn4ZpvULquHMFIWntmrqz+XqDjPE2+WWtRSDypLH5QIbeQJQD0SJVYljr/yYRZfdisGpA
	noe0UyrD4cJCNMIVOdqLI5wpI+JX9Zy1UZyAiPa4akqn5mAETmjGJprvhvNYuRFolBxmll2sCiyf5
	TQOlRpGbux4gKOs7biZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKrz-0000000F16i-0Aos;
	Sat, 26 Sep 2026 05:22:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKrx-0000000F16O-2fTS;
	Sat, 26 Sep 2026 05:22:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0BCAA4399E;
	Sat, 26 Sep 2026 05:22:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C8641F000FF;
	Sat, 26 Sep 2026 05:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790400160;
	bh=V4Uv0cSAB9UTyUWue5M6jsVbXMzQgfUfM+GObQtw8C0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XhJmakD9rdsQmnm2CWbG95Z1z+2qjKqCcKx2EuRXqj7artFwYutKt3vY76nBQy/RH
	 2ZYGPuLKIJwD1ztMY33CK8jaGOnp4mvkBim/qKPUikGi/8M8JQVmVe2APgskOeBq5u
	 QspDVa/+mJfO6zMLbMBnti9g2bYxgQGR+GzzP2Z2Zyj6gw0s1Pmag/LUF78d1TunxV
	 Fy3OerQv5i11q4tJtFSnEcX5yJLofso5MoSZ0zuD+865mtSMSzG08CxkmgyCMGQpHL
	 0UydsJ/OI2IuBiQfAbTY4qVYOL2vXV7Gue7UmXi9VluCxFhcUwtasoerSncszCy0Ks
	 gGGP/DxO5/GBA==
Date: Sat, 26 Sep 2026 07:22:23 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 09/11] phy: rockchip: usbdp: Avoid xHCI SErrors
Message-ID: <ystdx2e7no6pepijitdwpqopt2k2lm7ubawzko6o2fr52oqzwk@qqaqsnrgrag3>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-9-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-9-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTJQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIFVTQkRQIFBIWSBwcm92aWRlcyB0aGUgUElQRSBjbG9jayB0byB0aGUg
VVNCMyBjb250cm9sbGVyLCB3aGljaAo+IG1lYW5zIHRoZSBQSFkgbXVzdCBiZSBmdWxseSBydW5u
aW5nIHdoZW4gYW55dGhpbmcgdHJpZXMgdG8gYWNjZXNzCj4gdGhlIHhIQ0kgcmVnaXN0ZXJzLgo+
IAo+IFdoZW4gc3dpdGNoaW5nIGJldHdlZW4gVVNCMy1vbmx5LCBVU0IzICsgRFAgYW5kIERQLW9u
bHkgbW9kZSwgdGhlCj4gUEhZIG11c3QgYmUgcmUtaW5pdGlhbGl6ZWQgcmVzdWx0aW5nIGluIGEg
c2hvcnQgcGVyaW9kIG9mIHRoZSBQSFkKPiBiZWluZyBkaXNhYmxlZC4gSWYgdGhlIERXQzMgZHJp
dmVyIGRlY2lkZXMgdG8gYWNjZXNzIHRoZSB4SENJIGF0Cj4gdGhpcyBwb2ludCB0aGUgc3lzdGVt
IHdpbGwgZmFpbCB3aXRoIGFuIFNFcnJvci4KPiAKPiBUaGlzIHBhdGNoIGF2b2lkcyB0aGUgcHJv
YmxlbXMgYnkgZGlzYWJsaW5nIHRoZSBVU0IzIHBvcnQgYmVmb3JlCj4gcmUtaW5pdGlhbGl6aW5n
IGl0LiBUaGlzIGRvZXMgYSBjb3VwbGUgb2YgdGhpbmdzOgo+IAo+IC0gZm9yY2VzIHBoeXN0YXR1
cyB0byAwIGZyb20gR1JGIChub3QgZnJvbSBQSFkpCj4gLSBzd2l0Y2hlcyBQSVBFIGNsb2NrIHNv
dXJjZSBmcm9tIFBIWSB0byBVVE1JIChzYWZlIGZhbGxiYWNrIGNsb2NrKQo+IC0gbnVtX3UzX3Bv
cnQ9MAo+IAo+IFRoZSBsYXN0IHBhcnQgd2lsbCBiZSBpZ25vcmVkLCBhcyBEV0MzIGFscmVhZHkg
cHJvYmVkLCBidXQgdGhlCj4gY2xvY2sgcmUtcm91dGluZyB3aWxsIGF2b2lkIHRoZSBTRXJyb3Iu
IFRoZXJlIGlzIGEgc21hbGwgZGVsYXkKPiBhZnRlcndhcmRzIHRvIG1ha2Ugc3VyZSB0aGUgbXV4
IGhhcHBlbmVkLiBUaGUgZGF0YXNoZWV0IGdpdmVzCj4gbm8gaGludHMgaG93IGxvbmcgaXQgdGFr
ZXMsIHNvIGRlbGF5IHRpbWUgaXMgYSBndWVzcy4KPiAKPiBGaXhlczogMmY3MGJiZGRlYjQ1ICgi
cGh5OiByb2NrY2hpcDogYWRkIHVzYmRwIGNvbWJvIHBoeSBkcml2ZXIiKQo+IFRlc3RlZC1ieTog
SWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMK
PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

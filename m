Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 547B5C98335
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 08:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTCkQnOCsk8NVaMLx4m8AR9kda0xNGGq00mrpKZ/cJ4=; b=FSm1+JKfMexoXq
	N5Q69Z6Rxy93+14MO/3umgkatvSM+CIdq+39KDTJI6+jZajhm4ljiKHCDKafANE9eniyNsxWx4xWN
	GSQks03uvSd896MsFF+u17r5+DruEn8sUKo5FfVC00GKLyL3Kb3v1wyDofKp9/YhH6lKwEyKH3YyC
	aOezBzfdaLbiFcxv0cO/4AmOJJ5Bz//r0DuGr+ZMyyp0Ci7WqNWTkhvyzz6iWIG0JeCgI+X4aDtFP
	TjeEmMi/wlfl6lfA2iLlu895GDtSOGvH+kjX8V+LvWQNZmBE5RjXMjKa8b1VEaE9EcF2Y6wSBG05y
	Da2IZPe4qoNCEaVQS2pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANLE-0000000F91i-3yz6;
	Sat, 26 Sep 2026 08:01:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANLD-0000000F913-2x6j;
	Sat, 26 Sep 2026 08:01:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2EC6D601E4;
	Sat, 26 Sep 2026 08:01:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B771F000FF;
	Sat, 26 Sep 2026 08:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409661;
	bh=QK32ylyDoH0zAV4vwyAyLOZNTmoVdUY+VttMWRrH5ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jBH2GJ7TlAbuheZ6f41Ha5r5OuPJBAKdtbR7zFb51DfgxlYVjB+KOTXLoN+MIeSGa
	 A6oM80uvpfX+5F/Ct9kLzOyoHcQ5skBmxCMBj4uiyG1Zi+CyJYmGKTnpHhXvy1o9NJ
	 H1+ji0PTns1m+JixHXGSiXWoktZmnYZTDxCbm1ExkZK73vwhghEt/D89Vl1FOuWSa+
	 kNM1XVhXB7XTSL7zchwmJOkJcDw4getq2OkP7DCdBUTpDLyzukur3cnJLjVfse5/2l
	 qRHydKSXcoG0luBEDAacKNRW5qUpFlr3BXxa9qczM0sRqYbKwFTZHYzvNgMZ0A1Jrt
	 TPSUB5wC0lqMA==
Date: Sat, 26 Sep 2026 10:00:47 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 5/6] phy: rockchip: usbdp: Re-init PHY on mux change
Message-ID: <j4mqvu3tjzcjb2ghnwhwiyaf3qjdmwqvqtcary5tm4ni3dhbyk@yvqphx5drlmc>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-5-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-5-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NTJQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRW5zdXJlIHRoYXQgdGhlIHJpZ2h0IHBhcnQgb2YgdGhlIFBIWSBhcmUgcG93
ZXJlZCB1cCB3aGVuIHRoZQo+IG1vZGUgY2hhbmdlcy4gVGhpcyBlbnN1cmVzIHRoZSBQSFkgaXMg
cmUtaW5pdGlhbGl6ZWQgaW4gdGhlCj4gZm9sbG93aW5nIHR3byBzY2VuYXJpb3MsIHdoaWNoIGFy
ZSBjdXJyZW50bHkgYnJva2VuOgo+IAo+ICAtIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMgd2l0
aG91dCBEUCBiZWluZyBpbnZvbHZlZAo+ICAtIHN3aXRjaGluZyBmcm9tIERQLW9ubHkgaW50byBh
IG1vZGUgd2l0aCBVU0Igc3VwcG9ydAo+IAo+IEZpeGVzOiAyZjcwYmJkZGViNDUgKCJwaHk6IHJv
Y2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gVGVzdGVkLWJ5OiBJZ29yIFBh
dW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRo
YXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

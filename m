Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFEC2C98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4zw0BxtYVPpNzXyChGqZaGcp1v6cFPM/hk7HWPR/+0=; b=5A2dxT+TX88qt1
	ZClxf3unH7og7lp3hxjkeErXZ3RBBSwr4QTiU4W3/sWuKoarKQ46zSXq8XnoTRtgN6MZ7xh2KrthF
	uSam8UXxGYQ+2Y8EQ0RKLbshgdoTfXlNsXXPDWlnoT1RcZdmVkTzb5b5R67t7hpg2eKCjA5WioqFB
	aJSYJGdfn/Aj8OUL8kim/EfTMPtBbBO+4reCIVKvMukAcDQ78hPuXH60Wopwqvryxqffibi3akPN9
	ZVgcuC3Jk0bN94XPYuWTWVM4bl6Mp/BPGhCX78Dp7PrBfGNrdsWHw+nvDfqPcJ50TaKyrgTmIDQ8z
	bLrEyySrPb/AwOd/3pJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKmf-0000000F0gl-4BL6;
	Sat, 26 Sep 2026 05:17:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKme-0000000F0g8-0A8K;
	Sat, 26 Sep 2026 05:17:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9804E60136;
	Sat, 26 Sep 2026 05:17:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 753381F000FF;
	Sat, 26 Sep 2026 05:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399830;
	bh=dmbsubwsJv6grfemhX1Zv6FjAqGw9tQVhCke8CNIAq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YoAA97ZjK1QOxsWw63FzE5sARM6ZMj8DWFBc+7bzzT1Djt2Rez+xGc+w/GMo9xSf5
	 HcEDCUZlv9IPocsHFMOFaYjt81l9F1tincOwDWr5gS5uzoXS9DMaSrx5hHslvabVLw
	 GNS3UULju4WMGNWPRGwc7FuR1iA1XFHekg5EA2U0kA1ZLcInzYEfhAnDcAvobBplZl
	 bqqwHKz6k3PaUo+jhIoxjBb5XDXS54nY15BZUEZeXjOiaqGKzOcNxTsYnSyQJpajM1
	 q9GD6fg3Vsrf01cjqUIfD3AGMb9jyiJu/ZWh4pTgQgwyMuJHf1zpmZu22ZMdE2p3Ff
	 NFTMyL+kP5QLw==
Date: Sat, 26 Sep 2026 07:16:52 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 08/11] phy: rockchip: usbdp: Add some extra debug
 messages
Message-ID: <wqvcii3xylpu6e4kfvvundtj2v6x5nhe7hhxdlw6j7njtv7gm3@pdhlgezhpcem>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-8-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-8-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSXQncyB1c2VmdWwgdG8gbG9nIFBIWSByZWluaXQgdG8gZWFzZSBkZWJ1Z2dp
bmcgaXNzdWVzIGFyb3VuZAo+IFVTQi1DIGhvdHBsdWdnaW5nLgo+IAo+IFRlc3RlZC1ieTogSWdv
ciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBT
aWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

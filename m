Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED222C98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SCVFJaP65UnuFpIhjd1QK/ipyX6KMKLMVBt/9qG7RY=; b=J3Yd9IyJyu+Utm
	/fxb7hfqom9dWwebY6b5nlCU4zbJ6njMc4HOdcJqgiFa30d822ks0wgpMS1h8+0flTRxvSQUgi1nu
	ZOYOIqBJ45BZ5RJUa2nQyB4NHcGhdlJ1RKOPaoNi03IxlrWkMpQDgwZUw2fIt68ZeUYyZb2EUFdlM
	lhG8xHtNzBX7PrQaJtBUhJ3dJZIaEP5fpttpsntaBhXpYmI/+FEKvNay83dCJeyrm3qe15FMO0UD4
	FBG2mfE/eA+kgyAIjExdvPDQQxDTaSSpZK5Qa6OD35UCJi6wVzSSmW6iccbYBzRwi/D2OsMM1+X7R
	9FU9BVuKPiEdB3xujWpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJuN-0000000Ewfv-3TlJ;
	Sat, 26 Sep 2026 04:21:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJuM-0000000EwfZ-0kD6;
	Sat, 26 Sep 2026 04:21:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 84132436EE;
	Sat, 26 Sep 2026 04:21:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA5511F000FF;
	Sat, 26 Sep 2026 04:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790396465;
	bh=zVg6kyIA3oQ5VRc7uY2GimtumPTbXkZayceo4DWR9Zc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oY+D7toNMIjgUTAssuya5MlJM155tCtb/vLMkULL9ubASUSrNz1w/xoHlDMDxDiH8
	 oGddMEDod89gxU+ErfMzAD7B4BpHbhrWw7hv68N2pbHWQM7cyYBdXRSfXJy0mydK9G
	 BiIOsiCt/QnCO3F8UXkqJVrERvaEbHybqrv+ddKbjsOG4FWRzGzwmystZcTAla7ggm
	 hp0px1SVdqPZxNfh+M+3VFBc0P/g+lsD4Y7X9hWVmGbqvS3JWWpNXRqEAE4tEPxQbc
	 46bWOl8zlmOSdtKtfOf0/DORSJgB9KtuMNkDFeIH0eBp5FUeGYAlUFAlsJQMj5jYc2
	 CRhfJ9lVNQ3XA==
Date: Sat, 26 Sep 2026 06:20:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 15/16] phy: rockchip: usbdp: Cleanup DP lane
 selection function
Message-ID: <udkvgo2hdwnynae7fndztk56k7cxb2xt7onbqbe7qtti3qzqw3@y5hzgs6g4dvr>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-15-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-15-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NTA6MDJQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVXNlIEZJRUxEX1BSRVBfV00xNigpIGhlbHBlcnMgdG8gc2ltcGxpZnkgdGhl
IERQIGxhbmUgc2VsZWN0aW9uCj4gbG9naWMuCj4gCj4gUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ry
b25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IFRlc3RlZC1ieTogSWdvciBQYXVub3Zp
YyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBTaWduZWQtb2Zm
LWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
ClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZh
bUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

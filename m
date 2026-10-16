Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 649EBCCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 14:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ts+RtcmAMpbQfP1amo3SjLwN5EHMy9c8/SzDsjfwKKw=; b=gOWPX+6f0JPxfe
	JIWGOkkev989ZYZFBqo4t2YOz//+LUfgXo2CsVLa4ElkVwD4lNEORbIUjefCZwOtAKp+MzCuUd9M+
	T/DbsYSxzUcTl8VKNrX7vrJyTEABsRFALjsWZ2Vyooda4PSK+H21SB9sD1tuBIYqDCTnJdVPUL55i
	gIK8TdRUoknJGbT+njvOzDHslunJmHa4nzSDP3KAnyxFoKiB/RNrE2qDCkwKJcNVavidPs+95tqNj
	wJpf+ptlZ4eGbmrTBrKCl6HxQBE2JAHV3iEK99+baj6VzU0uco1XSk967xhx/TY1YcXxwHu/0i1U4
	ElCSkXbXjM95GzhsaJUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHiUo-000000035jR-1eEW;
	Fri, 16 Oct 2026 14:01:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHiUm-000000035ie-3MHv;
	Fri, 16 Oct 2026 14:01:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 53AE643BD0;
	Fri, 16 Oct 2026 14:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12F121F000C4;
	Fri, 16 Oct 2026 14:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792159276;
	bh=MXys7ckdfZsaSqIv9WG3c/zyDXcn3l1gqjz0lpcesqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HZkt9gnOetdK3cwJqZfyf/TaDWY69f6OurRre/WUGRspavzKJHxiM/DA5SgOexPGZ
	 QRM4nwBBkDe3HPz4PednxZVmccKXPcMmcWatazO0SKDJDa37pAdak66NbQF9qef0Gp
	 yAYJXMbhivsxdxsLds6zAp+mpjn3GRmPgcnNO5gac331CmQc+6oawJiflBx2SB0HE+
	 1plY9j94/R430Bpu1i86kczeeRrqHuWJ2xQgnmN9rq8jxFkZn/kV/q4FI4QhnA2E0j
	 HpTDYraqKa0RFdHemRUoFCYHwKgOrMevxLyB4fhP03tZTli8/Hpvv6p27NSZwNkyZv
	 Pj6kQhag62uWg==
Date: Fri, 16 Oct 2026 09:01:15 -0500
From: Rob Herring <robh@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guochun Huang <hero.huang@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Michael Riesch <michael.riesch@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
Message-ID: <20261016140115.GA1798470-robh@kernel.org>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Oct 16, 2026 at 04:56:36PM +0800, Jason Yang wrote:
> The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
> for DSI and a receiver for CSI-2, and two consumers can use them at the
> same time. The single cell of this binding selects the mode and refers
> to the transmitter, so the receiver cannot be described.
> 
> Allow a second cell that selects the transmitter or the receiver. With
> D-PHY:
> 
> 	/* the MIPI DSI host, driving the transmitter */
> 	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
> 
> 	/* the MIPI CSI-2 host, driving the receiver */
> 	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_RX>;
> 
> and with C-PHY:
> 
> 	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_TX>;
> 	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_RX>;
> 
> The transmitter and the receiver cannot operate in different modes [1],
> so the first cell must match in both consumers.
> 
> Two cells describe the receiver as well. A single cell keeps referring
> to the transmitter, so existing device trees are unaffected.
> 
> [1] RK3588 TRM: section 22.1 (overview): "The TX and RX only support
>     operate in the same PHY mode."

The problem here is this is an ABI break. An existing OS will not know 
what to do with 2 cells. Perhaps adding flags to the upper bits of the 
existing cell would work.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

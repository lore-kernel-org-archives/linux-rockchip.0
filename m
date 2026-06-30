Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06834C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 19:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NKdgatlEKAZ5v35AwR0HBGgTmpOo0p7YYJ4WYMStVo=; b=3y2mVkLUHIAYup
	IqSyMzYe46UzSFTF3lgMAv5P9tkKltoKJmEu734WtLQavchRuSxDhjPfJBcXvDaeOpwlnJGNJ1wRA
	ss+sD8uPXDue+aY9G+yXDV0K11WV7OhREPKJnssj/xFz4sPBk1qoBTY9X9dymTL5L34OLyszVr3z2
	qsrmJxbnUykYFmwqa/G0+5oiVcW5iQYWS0KIKhl0D/Jpu4oG1pyik5/7IDYM4HEq0TPZV0LpzkthL
	rHCrJijadD/XIZicB/DU0WpnlLNa/tpW0z8QCrwxOTe243+GfYAMBHP3/W5MS6593ZaikqKBrC/lE
	HTW/JiO2YGGviAaVEFJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee5c-000000007S8-2Mrc;
	Tue, 30 Jun 2026 19:25:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee5a-000000007RF-345r;
	Tue, 30 Jun 2026 19:25:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 19F5E437F8;
	Tue, 30 Jun 2026 19:25:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8F731F000E9;
	Tue, 30 Jun 2026 19:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847546;
	bh=LTrA9g5qo+wGJ1gI/ApiYTCUbrzQgSfo23idl+HlRRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZL83Ybq49JV55XfuhdylUTFvAhxCS0TvJxx2mxr9NC5FsSU5OYl+ErsanMZ/c0gxW
	 ZcaxRI3FDnpwDC5EQPI3HmnxbLf2dLd3g5mXtzXf6obKzXNiujZOAY5ZkA4N6FwHFy
	 nAv1VdmT+WWIqCbkmzbHmky6vb/spnpUX3pcBi0xFmcgYfGJVvrT1LNW1aTUu0Hnkm
	 ZMQc6dkuE/DPt39sILJbGPf2BXQS4e+8iLCJvFTTJMT1hlDTahCXX8QOGz5rE2r6cs
	 PnHLkRsR2AC5URHagRma3NG4HBdt5umcRVo4jsqQIHo1Eu6cwjyaTbZjkEM2rbjXRl
	 KeI0Ee5XAaS+A==
Date: Tue, 30 Jun 2026 14:25:45 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-ID: <178284754478.82737.4770095981342524898.robh@kernel.org>
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
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


On Tue, 30 Jun 2026 09:48:25 +0200, Gerald Loacker wrote:
> Add support for the optional rockchip,clk-lane-phase device tree property
> to allow board-specific tuning of the clock lane sampling phase for
> improved signal integrity across supported data rates.
> 
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml        | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

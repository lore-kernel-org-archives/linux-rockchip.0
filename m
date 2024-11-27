Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F1BD609C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 09:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67ChNj+bhk9+i7kRhbmb+NO2hNcF1ghtuS2qNTPAK0Q=; b=pklyQ6vxz8tTVF
	SHRcb8FLiAyvOFBPElTZCDiewb7RisowNXdPmVz4Hy/NUzGECk/kOzPHHPpcAjZLxDu8EyUkzbRUw
	HFCF/XVgZgHrhVRZnC0JPBzOUPgnrpm4AdtUX9Ed2o1A7f9jsq/QAcepWsItEsT2A8vQeKLwCLe9U
	95mnqWACdCDGdxLBZVw81hgh9PhfRKTQpiY8Mxzw0pg4UyGDkrFK/FRiS/nV36i4+h5+PtBi8KPaL
	eV81oosXu2ItABtrID327r2ytCYlpzYWh+/mTweQb3o/3LLMuEhmwfYCqMHQec0UYetUy2zcZ7G/A
	wnd7Yrsa5w32SVjY6y/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGENH-0000000ChaG-0p6Q;
	Wed, 27 Nov 2024 09:30:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGEMG-0000000ChUR-0gO5;
	Wed, 27 Nov 2024 09:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=US6YPwHGZjjY/0o2sbSCg5NuQ0NYboqqQtTlEz4XOBo=; b=DNiHHf5igtfm+55scaCjyZ70X7
	iuSqoFzaV3fG6GsxmRNtB0hU+YItLw9Kt1xc9qvPlnKftzC5IUJL3cswmUB+durrrkwlkVff3QvL0
	oW/WUQ4VENUS3go8z/eNA53dD5V82fV/Ub4F+EJb7EjER23M5HtZZG0OhCpgS52/ylbltk4fkF2df
	IKXxYTRzp07YGOJjLfjr6Hgs0mNiwvA+cvN6OcfjyE2k0lqR5Mrcu042p6kmfnA3EF5Y5h7pqMKxu
	e158u8PPCV38GUdV5KUReHvHOWNJANjHf7bWIGMXg98bcgU0FxyzxgG5tD9n5rlr1GxijAG/IVzpb
	Ttb1A31A==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGEMA-0006nM-HZ; Wed, 27 Nov 2024 10:29:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for eDP
 mode
Date: Wed, 27 Nov 2024 10:29:09 +0100
Message-ID: <4260470.1IzOArtZ34@diego>
In-Reply-To: <20241127075157.856029-5-damon.ding@rock-chips.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_012916_215274_5620B18B 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Damon,

Am Mittwoch, 27. November 2024, 08:51:51 CET schrieb Damon Ding:
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate have been verified according
> to the eDP 1.3 requirements.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---

[ ... huge block of DP phy support ...]

yes that block was huge, but I also don't see a way to split that up in a
useful way, so it should be fine.


> +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> +				 int submode)
> +{
> +	return 0;
> +}

I think it might make sense to go the same way as the DCPHY and also
naneng combophy, to use #phy-cells = 1 to select the phy-mode via DT .

See [0] for Sebastians initial suggestion regarding the DC-PHY.
The naneng combophy already uses that scheme of mode-selection too.

There is of course the issue of backwards-compatibility, but that can be
worked around in the binding with something like:

 '#phy-cells':
    enum: [0, 1]
    description: |
      If #phy-cells is 0, PHY mode is set to PHY_TYPE_HDMI
      If #phy-cells is 1 mode is set in the PHY cells. Supported modes are:
        - PHY_TYPE_HDMI
        - PHY_TYPE_DP
      See include/dt-bindings/phy/phy.h for constants.

PHY_TYPE_HDMI needs to be added to include/dt-bindings/phy/phy.h
but PHY_TYPE_DP is already there.

That way we would standardize on one form of accessing phy-types
on rk3588 :-) .

Also see the Mediatek CSI rx phy doing this too already [1]


Heiko

[0] https://lore.kernel.org/linux-rockchip/udad4qf3o7kt45nuz6gxsvsmprh4rnyfxfogopmih6ucznizih@7oj2jrnlfonz/
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

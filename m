Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D555C54FAD
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FebOkg+SoBlG10bzoY9nON1+eEBWLnP5ie1PAM6CE8c=; b=HESHNrHFIXB+PB
	B0iLweRWb5qPWd4KGxW4ZvS/p5BZLe3SbXZA9Q6Byq37ssevMPosXmOTWhBLS5rVtTFZq7d+Jn+uV
	J84iCpbNgQea2IzGL6WNWv3bNulVPvl47k1KRfy+7qqUyCGiY+HWOvUHvkSiMrLzwNZEnVu2gg5Xy
	U4YXpRrEVGO15ocxZst31/j4ybHjXFAg2jdIhh6Nde1prhYH7YeEO1yRIG5VJdM+m+k+JuWsfLqU6
	+6TF6eIeHBD30kJeuWk9AYRnLaXlHqd1Y0pRD3TepAAPqq180XIj80gN74/HJhuLjzO2i2IpH4SaA
	DKhTBjmP0TEFKeemRvCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIFZ-0000000FQWv-01OB;
	Wed, 28 Aug 2024 12:58:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIDv-0000000FPwo-04ba
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 12:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3bMNu3lJFboLmoxcd2f5D0OI0rHEumBUEVx3ifZtn4c=; b=q4cO08WvKwTqslAfyp5DyrgBQk
	107GUj52R78ifmj2wVr54IUNCgh0FSUN4wfmjHyn11shzJpHaiXJ68VTzp0NJq6e59tZoqC0Qrmlt
	F8LsFgUW2vp0C/o9SflYzOQYylYf7JBKY8Q0M+zkw4aClYOoXASDiJoZ/rnjgVPsHRNQurzB8fP/n
	kIktOdhjJcSfOJPomC1cWrUiIKg9mUCT+Pnha2q/9cnWPXJcOiJvemwwi+tJ4HfGkjdYDIhL18iii
	Ka36d2jPaDsar+tYIpGIfkEdj0QJBPBixlXgN2KWKsA+2ZbBOiv8fB/VEzEozV/iENARLkZJ2w4wF
	pRmimk8w==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjIDs-0005MB-Dj; Wed, 28 Aug 2024 14:56:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v8 0/2] RK3588 VEPU121/VPU121 support
Date: Wed, 28 Aug 2024 14:56:24 +0200
Message-ID: <172484978176.1499193.8850818524012540505.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240827181206.147617-1-sebastian.reichel@collabora.com>
References: <20240827181206.147617-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_055631_112841_5DD980D1 
X-CRM114-Status: GOOD (  11.32  )
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

On Tue, 27 Aug 2024 20:10:19 +0200, Sebastian Reichel wrote:
> This enables support for Hantro in the RK3588 base devicetree. Sebastian Fricke
> send the pull request for the driver/binding changes for 6.12 some hours ago:
> 
> https://lore.kernel.org/all/20240827133315.qlmwdvwmghidayzy@basti-XPS-13-9310/
> 
> Changes since PATCHv7:
>  * Dropped patches 1-4 (merged to media tree)
>  * Rebased DT patches to use rk3588-base.dtsi instead of rk3588s.dtsi
>  * Dropped a bunch of people from Cc since the media side is done
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add VEPU121 to RK3588
      commit: cc0a05865cd5ff2a12479ab85093ed203af10520
[2/2] arm64: dts: rockchip: Add VPU121 support for RK3588
      commit: 6166b1c0084e059af539c93a9d48afe44220dbef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

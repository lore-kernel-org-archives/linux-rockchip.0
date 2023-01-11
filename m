Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E057C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t49Mxgcoa1DeGslw7fM4Q7FSJT1gu1JNG7EU0f+4vts=; b=VbLpGjyHy+LqIw
	acd/XV7q0IDRWgH2HW2TOTTu3XTdEZTRrRHuBN1e0q/1OgVeHRZIIKGpHa+fgQgQxcZXP2TdiQWta
	GSk4POHrs73vm0qeJAUlL6ir9WKOz1hLuEO9tNaoXGMH8RW22bi2vexI3XmKdgGEfJtanZ991c3bM
	JI+kUlZYxfp22pDVJByOTKoefaJ7/75/vkCoR7YNHyC0BVy4Uy7Xk+nu70mobkIaNlVQZD9xmfaiD
	h2XoY7RK3bFPiW/WK/3DAoUb/lzyazlJMulBIMRIwwDhgtQvTEWnM8xxLWGgUDC9+3/R7kcSfIDsK
	2ItNqkTERATPo1khqumg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYer-00AtWo-HY; Wed, 11 Jan 2023 10:48:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYeo-00AtUn-Un; Wed, 11 Jan 2023 10:48:36 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYen-0004Wz-CE; Wed, 11 Jan 2023 11:48:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Christopher Obbard <chris.obbard@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kernel@collabora.com
Subject: Re: [PATCH v2 0/3] Update eMMC alias for Radxa ROCK 5 Model A and Model B DTS
Date: Wed, 11 Jan 2023 11:48:26 +0100
Message-Id: <167343400175.2680857.9550436621987040330.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110195352.272360-1-chris.obbard@collabora.com>
References: <20230110195352.272360-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024835_019713_E75040CA 
X-CRM114-Status: GOOD (  13.12  )
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

On Tue, 10 Jan 2023 19:53:49 +0000, Christopher Obbard wrote:
> The MMC aliases for the Radxa ROCK 5 Model A and Model B do not match the other
> Rockchip devices: mmc0 is usually the eMMC. In the initial devicetree series,
> I incorrectly set the alias for the eMMC to mmc1 to match the vendor kernel.
> 
> Update the alias for the eMMC to mmc0 to better match other Rockchip devices.
> 
> While we are here, remove an empty line to keep good style across the tree.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Update sdhci alias for rock-5a
      commit: 991f136c9f8de181b25cef056ab5fe7f49413919
[2/3] arm64: dts: rockchip: Remove empty line from rock-5a
      commit: 304c8a759953fb4a6cd399cf78f87501d7fd8bbc
[3/3] arm64: dts: rockchip: Update sdhci alias for rock-5b
      commit: 6fb13f888f2a6155fe4c19d14721e8909eda9b52

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

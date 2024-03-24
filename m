Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FAA1CD1280
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVdQvMblSxTkJ97kxQwiSAbfYDIZBvGIomWvBwjtWA4=; b=ej1ijdY/WnUh1x
	7zXSx6HbYJShWoyFBGgXJWUJu9vgkltFqeAUtldrPpSgqasLTtf4+/pRb6T/LBXpIu/eZAEhyknM5
	mnsRtr7asKnPLMSjlraJ8EiR4C6AM/vxwmWVDdeTLNskpBY2ahKGtgK1/Y1CmMNNGrSPWRd5FUnsV
	FOXF7pF4mEmucEqS9e2L7NokqLgWJf8rUBeSYFz2hpg/6fjiSwDook9vBY9h5XmL0ieA3XGXToSs/
	v2C3ByJtaysBNnp8loQW6gLx2lb5F1eb1oKj7McCS/PmLmnGLI1p9jMZe4j/13kt3SfeKeUQqAfqD
	GVH/nQ8c4PoI55C6IGNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUw-0000000Dd5y-3X5J;
	Sun, 24 Mar 2024 22:39:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUn-0000000Dczg-1Ldk;
	Sun, 24 Mar 2024 22:39:20 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUV-0007sn-00; Sun, 24 Mar 2024 23:38:59 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dsimic@manjaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi CM5
Date: Sun, 24 Mar 2024 23:38:51 +0100
Message-Id: <171131986744.918919.780341855295080644.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324112833.2181961-1-andyshrk@163.com>
References: <20240324112833.2181961-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_153917_415758_6F5C40BB 
X-CRM114-Status: GOOD (  11.09  )
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

On Sun, 24 Mar 2024 19:28:33 +0800, Andy Yan wrote:
> According to the hardware design, the i2c address of audio codec es8316
> on Cool Pi CM5 is 0x10.
> 
> This fix the read/write error like bellow:
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x0000000c] -6
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x00000003] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi CM5
      commit: 64da060dd4eb625646970d7c96a16de617412ec5

I've also adapted the node-name accordingly.
I.e. audio-codec@10 to reflect the fixed address.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86556C004D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 11:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMza301mRSKEfq0ScjR6qQtlriGVg5KeL/krUERZGlA=; b=MdE23rntbzU6Ib
	ABtMER89ioIMCfhC3r6drLlsVVEZb3OlcffeTQOv0ipWwhN0yJm2tR+XB3DC3mBzrV8n2ItrLuElA
	9phAp/8hDLRoq6z/l+9DShwhHRaIPWCQ+QqA9AAHptRX3RhkojIEoVWcxfJLu94wUhpeQ5BGn5hvE
	zsrTMhHNmOKCOElqEttuYID3AcRC4GyVkJT6SPyH5RqL9gPLW8gZTx3Vjr06X0Zn73+PynltzzWkL
	UjKwplLDMeYzT8m1450b07vVkPHGGr1+4RLMiXC9h++mxNjBiTq4KlfbnkezPaOigFcUDcvghRFAQ
	vi8psQouC+4ZX8nU5HTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pITYP-004gbc-PI; Thu, 19 Jan 2023 11:58:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pITXz-004gNs-G6; Thu, 19 Jan 2023 11:57:37 +0000
Received: from wf0783.dip.tu-dresden.de ([141.76.183.15] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pITXg-0002cW-HL; Thu, 19 Jan 2023 12:57:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date: Thu, 19 Jan 2023 12:57:13 +0100
Message-Id: <167412943038.431585.2721937683421159813.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118080454.11643-1-jagan@amarulasolutions.com>
References: <20230118080454.11643-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_035735_647278_EE559B5D 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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

On Wed, 18 Jan 2023 13:34:53 +0530, Jagan Teki wrote:
> Radxa has produced Compute Modules like RK3399pro VMARC and CM3i with
> onboarding eMMC flash, so the eMMC is the primary MMC device.
> 
> On the other hand, Rockchip boot orders start from eMMC from an MMC
> device perspective.
> 
> Mark, the eMMC has mmc0 to satisfy the above two conditions.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
      commit: c80992abd2877590059e9cb254213c16824e2106
[2/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
      commit: d268da063b99cf1c4d8304a33c27bbed0763a474

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2977C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 19:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GDSTR7H+BpiLhCgqaKcVWGMLOTIsG8A7fuObd63rU0=; b=SJJBAVVvSivQPL
	Jk5vQbe+mBmatOUkK+4h8/M/g8Wka0AZT/ubbmiy0kC7UzhR09jKBiymwe90CyrluMfvlXNyGufQY
	887720GQ53FFQK7ciPqv+bq/lEdaQByac94W6XiysN8NZVOEMg4fsnNWk/Nt6PmM33v3pBJxX/5kZ
	VO4K4oB5AoG0iI9e1dcP1GY4zSyMnjXNvU0GlTXVHWnU9FTzsraxngMj4T1iwZ8X7F9Ppa7dMdzR0
	4F8zNth2DcRtq1XSCy1BsLCy7yPxzYM4XMdxZa04MIhJbABVq2w0HhLQklmNPu53Wugayu3ab6Y0a
	tna9ZxAFDGWQ2TwvDTEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqKDa-004qF5-Pw; Sun, 15 May 2022 19:47:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqKDY-004qE2-0C; Sun, 15 May 2022 19:47:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqKDW-00064B-3l; Sun, 15 May 2022 21:47:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v9 0/5] Enable rk356x PCIe controller
Date: Sun, 15 May 2022 21:47:48 +0200
Message-Id: <165264375744.2524444.12267282718534665195.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_124752_100062_5773655D 
X-CRM114-Status: GOOD (  11.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 29 Apr 2022 08:38:26 -0400, Peter Geis wrote:
> This series enables the DesignWare based PCIe controller on the rk356x
> series of chips. We drop the fallback to the core driver due to
> compatibility issues. We reset the PCIe controller at driver probe to
> prevent issues in the future when firmware / kexec leaves the controller
> in an unknown state. We add support for legacy interrupts for cards that
> lack MSI support (which is partially broken currently). We then add the
> device tree nodes to enable PCIe on the Quartz64 Model A.
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
      commit: c9168492af55bdbc811e05bfc55ae70880bf8ff3
[5/5] arm64: dts: rockchip: Enable PCIe controller on quartz64-a
      commit: 4f4cbbb147b988daaa036dcf34628d93b2e22cd9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 620C9C79FBF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 14:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChMhG99JS7pKx7RlkJcGWdjSRV5Su7IXUPGkCIPg7sw=; b=f0OEp/7t+3r9OD
	MJLxj0XCbFaSnKXYrqqdWkRGY8ix7N8GTbTuU3K+5hqfegPPDzjQwRr52QfVisqd6e9QRObAIVKeL
	RConyWQty/cAqJ1KfzQpYDAwRb7Jw48m9jzfvRSoJtGKnF/+NzY9L/MqSlILTNVjQmu3GKA56hsnl
	W28YVIqFyZX7h8g6r9dp9xklcsIQGlTKezqPZ5KqfNHlAdjdUCmffV+3ZtHAqnikXObC8mDQmkMPJ
	px61PGut8iJx4EHbka+QCqpxxQJ755Hh3YFszThFTH2iABNOo+JebLW/vGXl12Vh3/B0AFD+K1i1w
	Jt9lz6LM8laxVVM2o4pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkRN-0000000EERo-2z2O;
	Fri, 16 Jan 2026 14:04:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkRM-0000000EER4-0I4w
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 14:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m02yp4JILyjMta4cx49jNz+oe5Rk9FKD3X/QrnGlQEM=; b=GcflGdy5p1u9xWicgSscH0o80G
	Uh478MPGX7lAw3bT36bK/itHD2n72665izwcMtPl6gUt/MtWGEniBrZWk3p4tB4rzzmh6qn5fJ9R0
	aqCGKcUuVqfeEPVrxLZY+zuXvC92gR1JI5ZvwsUgvT9xC82xjg5AC0OoFpV/QmP2q5PYYy+XbfQ/6
	c1B2qX6YTZTtx46k1eUcXDmAWGsTGZsGePErvyt1BpddawW1SfVLAJitDoTe9+FfpTw0HJqXFjhEB
	ACBwlcgnBIWpugAomOAnrsJhayJga0VPJjU25PmRCzSmxbgUnud5ztmkRxhTIYr40njEQqN11IqsZ
	2ioUdsVQ==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vgkRA-002dRO-68; Fri, 16 Jan 2026 15:04:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: (subset) [PATCH v4 0/5] Fix sd card support for RK3576 platform
Date: Fri, 16 Jan 2026 15:04:25 +0100
Message-ID: <176857210194.116631.11189192556414524729.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_060440_111893_182E2A4B 
X-CRM114-Status: GOOD (  11.75  )
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


On Fri, 16 Jan 2026 08:55:27 +0800, Shawn Lin wrote:
> Marco reported a problem[1] for his FriendlyElec NanoPi R76S board. The problem
> is becuase after runtime suspend, the associated power domain is powered off, which
> resets the registers including power control bit, card detection logic and internal
> phase registers. This leads to three problems need to be solved.
> 
> 1. hot-plug broken:
> 
> [...]

Applied, thanks!

[1/5] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
      commit: 3cdc30c42d4a87444f6c7afbefd6a9381c4caa27
[2/5] soc: rockchip: grf: Support multiple grf to be handled
      commit: 75fb63ae031211e9264ac888fabc2ca9cd3fcccf
[4/5] arm64: dts: rockchip: Fix SD card support for RK3576 EVB1
      commit: 7226664bf952c4cfddccd74b154a7d994608d153
[5/5] arm64: dts: rockchip: Fix SD card support for RK3576 Nanopi R76s
      commit: a9c1acebfe0484343a443d082e039ca77186ed22

I've queued them for 6.20 because I'd like them to marinate a bit longer
due to the size of the changes, but added Cc-stable tags so that they
then can make their way into stable kernels.

Depending if MMC maintainers see patch3, you might want to resend it
individually at some point.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

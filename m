Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1053CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 17:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiGC9uHzzrrqvbFBoNaqy+tDi4kTLB8lKdsYRC1De4U=; b=B8iL9PRIEtD83D
	Du4IssqJCYfBafjct6rAHVFq/q7XT80yRzuQTrIsgphpwuXxcga7x3V4JP83S/yE9iX/PBlYY+sTC
	xTGLVrb7THtguinvgk3C/5boQxMUTIFY2+HwdmYK3YZ1SV1ShQAMb5qL7DuWS6nkcBYhduoXKqcG/
	dJaFvj//ZsNlq3LgfwtHEe8kYiA2U7UbYGEGOaLicgYu181Aa8wYfyHLa7kTSC6bNiW4aCVc/pwHi
	AhyI8iFfxqlPQamdNr8ZbwnfrB4gmLY85mYtkdsUUwAu6saekoyO7Zz/gyPRMhiu50bzxoufTBPsm
	liM62QO8LCDoJKIkPSQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsQcz-00000003cBj-1a7J;
	Thu, 04 Apr 2024 17:11:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsQcv-00000003c9G-3Ztx;
	Thu, 04 Apr 2024 17:11:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AAB34616D9;
	Thu,  4 Apr 2024 17:11:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F892C43390;
	Thu,  4 Apr 2024 17:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712250708;
	bh=ZrgcSHpGCQoN5N8qPeV22f/8t4IZfslpGaFuTJpFcPs=;
	h=From:Subject:Date:To:Cc:From;
	b=uzEfgWlgw47Pq+WsM1VOxwvSuyt0pJTWNoqjrd4BhETKLVlcSN+huDAOmmty31nfE
	 v+p21gVdWW7STTzbLJm863X0GzdbTeNcOOD5Va3B5FV17Qtwdcn2DZQbm4ioVp1pzr
	 jzZfgV1e7j17UmrDtsUdk/GhGw906OPegsPFDHlIR7CpcZxcU4V0HkI/EE49+ANzyk
	 EFbbEJzOwU+saG2TIYMJcJ/p7ZCWD2ArYw+HFBBDCEvuJhphiplk934/FQMAASHLqk
	 WhFYMOCsVxZ6lavqHue8Jfwv7A5CJKeoDA87yf1L1RjDGX2rKV0gJwqdxTIPp1Invi
	 fqBh+WE+JuaqQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id F1B8A4800CD; Thu,  4 Apr 2024 19:11:45 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
Subject: [PATCH 0/3] RK3588 PCIe bifurcation fixes
Date: Thu, 04 Apr 2024 19:11:25 +0200
Message-Id: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD3fDmYC/x2MSwqDQBAFryK9tsHPmKhXERfj+EwaQaXHBEG8u
 428VfGoOilCBZHa5CTFX6Ksi0GeJhS+fvmAZTSmIitcZmOdy6queQsCHmT6afC7OTzJgcjunaN
 5DY0b4ckam+I5LNH113UDK9I+oG8AAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=929; i=sre@kernel.org;
 h=from:subject:message-id; bh=ZrgcSHpGCQoN5N8qPeV22f/8t4IZfslpGaFuTJpFcPs=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGYO30sVW9U7eD3x3exYnO0IKAUJ4oUHm/4pp
 6N85UZ8gM4H44kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJmDt9LAAoJENju1/PI
 O/qabL8QAIylHe4eCyMwjHtR4I6P2Ktf16wYoPbP/bWu1iODtubvwdPhGy4g1BZVpXRMiYAOnLC
 ZdGk2Z9OEw5FDYCCAZ60Ab6y4Veib9dufSE/CSgIlGWdB0BVdAG7tvLtayt+o8yIsxzaZi0yues
 7CuIpoCTkYApBzpH8Fn+AlBZdFXsqMo37OImSXYeoKOXwOckOKh3WifsWaUOH0EBvexx5vZcG3j
 fLMWKEn5nrKt6EqW031cxhpXFyleWDoT3L9gGBMkZj203KGoEVo7tobP68sYLKc9v2kAum57BS7
 0jRpdt+trxn9VguzfbBhhgyh3GWG2kVFIkaTiY21tuZ4XdGC67COjmt4rZlVqfqdUk+ZVCLEKey
 jWTqvdObTtEzOwOTrPDSXr1tFCK8FjoKGN9evawN5cfUG+CsZ9MKEmTUN/V+2Mar0tL2UUkyGLS
 lSMR6LdZUcSfaxo63l2q/sUV49t+fSRqGzzaOTX97piSXY+hgdvMpJUM5AiOYbIlkVgqLjmBiLu
 dGdfTY67N6qksrrqfsjDpbKxE3uZpVn7GiKVt3W9Bl8QSSvC10aGPKxhu4oefi4vKbIQ9QYpLWB
 RcEAO5YmZlXxA/B9pdL/4bQxrwxpq6wTpjz/kBGlR1ekWCww1bwdNZzEo6vJIJShDXomPvvzgKS
 PH/kHjld61ob5QZWV4iw4IA==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_101149_990842_A715C9D7 
X-CRM114-Status: UNSURE (   6.00  )
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

So far the RK3588 boards supported upstream do not make use of
bifurcation, so it went unnoticed that this feature is broken.
Michal Tomek tried getting a CM3588 running and noticed some
problems. These patches fix the bifurcation problems on CM3588
and also work fine on Rock 5B and EVB1.

---
Michal Tomek (1):
      phy: rockchip-snps-pcie3: fix bifurcation on rk3588

Sebastian Reichel (2):
      phy: rockchip-snps-pcie3: fix clearing PHP_GRF_PCIESEL_CON bits
      phy: rockchip: naneng-combphy: Fix mux on rk3588

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 36 ++++++++++++++++++++--
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c     | 31 ++++++++-----------
 2 files changed, 46 insertions(+), 21 deletions(-)
---
base-commit: 4cece764965020c22cff7665b18a012006359095
change-id: 20240404-rk3588-pcie-bifurcation-fixes-471e96b94dea

Best regards,
-- 
Sebastian Reichel <sre@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

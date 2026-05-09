Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FFBDCD37AC
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 00:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/MSMC5PGKyIAxVhxXp3ooCH2joRPrCdP0svPFgG4k4=; b=Ufd8KMehranz+M
	rRIbCSxeoErefvolxr3yITyLnRWNxa4CN2ZaTuYwblS3rVIPkhpYdo2XZ0o+xYwuFQm8MNHB09t4c
	6TZ41kipnxBY5zxpiJRXIEvCe9k2O+fWGaRKXAUYYjWfxuVrUKap/+2OWqwAS/BBlt0BEnQtpk4wo
	GSg7jzvUmyFfu4UN2Pln/m/6r2gd68ytNu3bfEUEYZr2Mmnw609jtg2Vagi+cPUL+/P2E26QrnPNM
	3Eg4zFVDLcsu/CMOWrKsT+kAsXu6cYm2b0oKfHZNpZRzlAPMhOqMXu16vDT4zvRZSOQl+Xa/dsAp1
	Qx8o3hmSTZU6x8BArYcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLVg8-00000007pdq-37LT;
	Sat, 09 May 2026 00:36:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLVg6-00000007pcs-1PsV
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 00:36:23 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-367c26471f5so348950a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2026 17:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778286981; x=1778891781; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TPu/RkDwR7YvogozdUsQJGqDvuX7QJ4yb5QSBtBcOm4=;
        b=YtDXP3uLtaqlLXNIEh91HZR48h3HCQ320gMensWs/Uf9I+2YnhhJEIHgA4gmgoEk4x
         1JJfvr1VFLMuQYHH/Lz2ynx3jPuRHGg9w4vOVNjBZO6lcR/QqKMm6jkxGABtHmznmhrO
         2GRWbeSWn4Pij47Jkuw+uEzXwibTUGjT3uB4p17DhXjukqG50jqY8vfVqSW1s7sIru8n
         UJkkP2PBAlHidb2/AUuOzKcDIjld8pb91g5tUqqDuVzz957CLU/8Blo2X46246qsKNoV
         YlNEofj4vKHOvZssL+MbhzIGYDGbBsBbRkeV+bfx1EYMlvAT/5O0VL6Z527mQYKYWH0/
         g6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778286981; x=1778891781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TPu/RkDwR7YvogozdUsQJGqDvuX7QJ4yb5QSBtBcOm4=;
        b=S/sIXpESulVohkJbmnQzjcRc7wESTOwaPX4hshXFXcgKif880P5/gpQeqJ8ftAsHNM
         VmIWE+Sz3ydbtQ4Gr6iEDC3WDi2bTnaiCmTvzQ8ER9xEhc1zxsihsLUX59ukTXzaQikK
         i0RQURBwQaU/yg0AlXKQvux9Kkge+Og0uHf/VnTGW2VyagCzUuEJ4o6AMglUJ520mW7l
         BvoGaDoZeRrACmymoKR0CHVMfiJix1/YZ7Bq7YNt3mfY6AkFs+9fBb1a1HrrzvpmD8PB
         aKSN8TISZ3walX18FVX+ZVM44oICB1cgwYvNXcfgbAFshMA/33Q1m96MEbr29VjIDzZ6
         bmMA==
X-Gm-Message-State: AOJu0Yx900m0ODh+GYeu4WLoDE8G1+oBfHpgaLcrE6iQjbIhY2rBaAaC
	9i8ihghJpVvERUSp//RkXAjuVkEsMvJJNrgRO696xSNIcKZf3qlChYUF3JiCpNmt
X-Gm-Gg: Acq92OHiAqMxaSxxs1afZCP2fVmw8SDKT/A3oZ08URPzeiA32vNj+jqSboMyIAajDuo
	gpjWwUaRQGwwx/UYBDLy5MSlIMouT1ubhWg6i3jpITSAOP32nGc283y3RCS8HDfFaePabpHkHSz
	HsTyAFr1PekGuE06Ht4gtxHD2CNRZf+5Vmrs7QRdaHSq1PaP9xFvr8GNiivqH3jxrfKBmo/Mx48
	9nQFXFJVL6eZNpIWnLtWDwiA0+IUXswq9XGnh3/n41j9V3cO355hwGQtsBGNKs7OUl1/JhfIzGT
	o9j5ocP/kUMEnkZ4bzEa8Y81QM+n/RtF3bJ0FXdIycCCf/uNLg7vyvrqCaD/djt7U1FehXttDjP
	hYSBHkWUDL5kEgnRREV8ERqkF8eHNPWNM9tng1uOrCamgXZHQK9yC/vXQsCtszLw+PH6I9MW7KB
	KZhHiMpiC5bjjNIDTOhmtefrjQWQiuLh2r518GgjaPJ/X/18Ni/gq5L0KCM0KnRo1LoyGnP8Dwg
	d54TrgUJTzxxmFUTUaXCgDW28pFztuQXSs=
X-Received: by 2002:a17:90b:5343:b0:367:d9cb:fdb3 with SMTP id 98e67ed59e1d1-367d9cc08dbmr72836a91.24.1778286980922;
        Fri, 08 May 2026 17:36:20 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d:7285:c2ff:fe45:8a32])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-367d609dd0asm288566a91.0.2026.05.08.17.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 17:36:20 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
	linux-kernel@vger.kernel.org (open list),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	llvm@lists.linux.dev (open list:CLANG/LLVM BUILD SUPPORT:Keyword:\b(?i:clang|llvm)\b)
Subject: [PATCH] clk: rockchip: allow COMPILE_TEST builds
Date: Fri,  8 May 2026 17:36:02 -0700
Message-ID: <20260509003602.956186-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_173622_560339_DA9B2B23 
X-CRM114-Status: GOOD (  11.26  )
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

COMMON_CLK_ROCKCHIP already gates the Rockchip clock objects inside the
Rockchip clock Makefile.  Allow selecting it for COMPILE_TEST and use it
for the parent Makefile descent instead of ARCH_ROCKCHIP.

The per-SoC Rockchip clock symbols already have COMPILE_TEST dependencies,
so this exposes the existing build coverage to other architectures without
selecting the Rockchip platform.

Tested with:
make LLVM=1 ARCH=loongarch drivers/clk/rockchip/

Assisted-by: Codex:GPT-5.5
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/clk/Makefile         | 2 +-
 drivers/clk/rockchip/Kconfig | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 3aa6241fd2ec..4b81757f9090 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -141,7 +141,7 @@ obj-$(CONFIG_COMMON_CLK_PXA)		+= pxa/
 obj-$(CONFIG_COMMON_CLK_QCOM)		+= qcom/
 obj-y					+= ralink/
 obj-y					+= renesas/
-obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
+obj-$(CONFIG_COMMON_CLK_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_COMMON_CLK_SAMSUNG)	+= samsung/
 obj-$(CONFIG_CLK_SIFIVE)		+= sifive/
 obj-y					+= socfpga/
diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 7e1433502061..85133498f013 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -3,7 +3,7 @@
 
 config COMMON_CLK_ROCKCHIP
 	bool "Rockchip clock controller common support"
-	depends on ARCH_ROCKCHIP
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	default ARCH_ROCKCHIP
 	help
 	  Say y here to enable common clock controller for Rockchip platforms.
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

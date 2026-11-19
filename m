Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE505606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 13:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cvJWktVS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2hERCWno6JiT3rLgfHlF5HLjBruPcZac8h5V82yw998=; b=cvJWktVSIbjSVRG5ZQ/XFBLk/o
	WJkuhXto41S3dw5c1jYo1lVKSZCn7A3Duxk7r7skeX2Sc4utR6B9MaYOFjSUMIsEOvPrISnZneSiB
	rtZWOurR4oep/OG5vKD+DBj2TwcJcJ+eST6gOmw7HBHD/GZdsagovfgKIkJwp3TEpB1Of3GxFrhPK
	31OyIuY/IXWdSDZBzp09AkNtRMC3oi7cm/3TMdX1/4/GveBJGGvpgnhlmX5GSwV9WSZmW0+NQboqL
	H8wJRSfXNGGb8sdCIcGJyHivhZxZlwbBk8AXRy6H3Ccz07zGXygordW22AvIZQjdDZ2kGM1eZdmY9
	+K0XCsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Ny-0000000C5Nq-4BnP;
	Thu, 19 Nov 2026 13:41:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Nu-0000000C5K4-2ORy;
	Thu, 19 Nov 2026 13:41:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 540954081D;
	Thu, 19 Nov 2026 13:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B091F000C4;
	Thu, 19 Nov 2026 13:41:01 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Russell King <linux@armlinux.org.uk>,
	Paul Walmsley <paul@pwsan.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Ulf Hansson <ulfh@kernel.org>
Cc: linux-clk@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 3/6] clk: renesas: Convert to dev_clk_get_from_provider()
Date: Thu, 19 Nov 2026 14:40:36 +0100
Message-ID: <55d67b95c675924fb67d13ecbab47bb45c8af372.1795094688.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1795094688.git.geert+renesas@glider.be>
References: <cover.1795094688.git.geert+renesas@glider.be>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Renesas clock domain callbacks use of_clk_get_from_provider() to obtain
clocks used for power management, so the latter show up as "deviceless"
in the consumer column of the clk_summary file in debugfs.

Fix this by using dev_clk_get_from_provider() instead, letting us pass
the consumer device, too.

Sample clk_summary change snippet on R-Car H1 Marzen:
    - sata 1 1 0 62500000 0 0 50000 Y deviceless    of_clk_get_from_provider
    + sata 1 1 0 62500000 0 0 50000 Y fc600000.sata dev_clk_get_from_provider

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Tested on R-Car H1 and H3.
---
 drivers/clk/renesas/clk-mstp.c         | 2 +-
 drivers/clk/renesas/r9a06g032-clocks.c | 2 +-
 drivers/clk/renesas/renesas-cpg-mssr.c | 2 +-
 drivers/clk/renesas/rzg2l-cpg.c        | 2 +-
 drivers/clk/renesas/rzv2h-cpg.c        | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/renesas/clk-mstp.c b/drivers/clk/renesas/clk-mstp.c
index 1bd2acb7e175f9c7..79d3a0b9cf7bb08a 100644
--- a/drivers/clk/renesas/clk-mstp.c
+++ b/drivers/clk/renesas/clk-mstp.c
@@ -276,7 +276,7 @@ int cpg_mstp_attach_dev(struct generic_pm_domain *unused, struct device *dev)
 	return 0;
 
 found:
-	clk = of_clk_get_from_provider(&clkspec);
+	clk = dev_clk_get_from_provider(dev, &clkspec);
 	of_node_put(clkspec.np);
 
 	if (IS_ERR(clk))
diff --git a/drivers/clk/renesas/r9a06g032-clocks.c b/drivers/clk/renesas/r9a06g032-clocks.c
index 871a915c24b8b609..9ae716dc6ede3438 100644
--- a/drivers/clk/renesas/r9a06g032-clocks.c
+++ b/drivers/clk/renesas/r9a06g032-clocks.c
@@ -748,7 +748,7 @@ static int create_add_module_clock(struct of_phandle_args *clkspec,
 	struct clk *clk;
 	int error;
 
-	clk = of_clk_get_from_provider(clkspec);
+	clk = dev_clk_get_from_provider(dev, clkspec);
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
diff --git a/drivers/clk/renesas/renesas-cpg-mssr.c b/drivers/clk/renesas/renesas-cpg-mssr.c
index 1ed11ce4a04c8b44..1fc12132acfe4a8b 100644
--- a/drivers/clk/renesas/renesas-cpg-mssr.c
+++ b/drivers/clk/renesas/renesas-cpg-mssr.c
@@ -641,7 +641,7 @@ int cpg_mssr_attach_dev(struct generic_pm_domain *unused, struct device *dev)
 	return 0;
 
 found:
-	clk = of_clk_get_from_provider(&clkspec);
+	clk = dev_clk_get_from_provider(dev, &clkspec);
 	of_node_put(clkspec.np);
 
 	if (IS_ERR(clk))
diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 06ae7228a95480fd..fb57d26947e1647c 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -2557,7 +2557,7 @@ static int rzg2l_cpg_attach_dev(struct generic_pm_domain *domain, struct device
 				goto err;
 			}
 		}
-		clk = of_clk_get_from_provider(&clkspec);
+		clk = dev_clk_get_from_provider(dev, &clkspec);
 		of_node_put(clkspec.np);
 		if (IS_ERR(clk)) {
 			error = PTR_ERR(clk);
diff --git a/drivers/clk/renesas/rzv2h-cpg.c b/drivers/clk/renesas/rzv2h-cpg.c
index fabeaef8e62fba33..4b685f7250f661bd 100644
--- a/drivers/clk/renesas/rzv2h-cpg.c
+++ b/drivers/clk/renesas/rzv2h-cpg.c
@@ -1483,7 +1483,7 @@ static int rzv2h_cpg_attach_dev(struct generic_pm_domain *domain, struct device
 				goto err;
 			}
 		}
-		clk = of_clk_get_from_provider(&clkspec);
+		clk = dev_clk_get_from_provider(dev, &clkspec);
 		of_node_put(clkspec.np);
 		if (IS_ERR(clk)) {
 			error = PTR_ERR(clk);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

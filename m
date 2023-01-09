Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01050C6379F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 17:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECgiscu34TqxRc+m0x7K2c69DKwclksF3m1E3ixUU9o=; b=c6LuF8FdFttSQi
	3tMLrV2fAg0RTAUuXXfppWsx/kj8dcFqAv2/GARu7VqplhwodSrn5DLZjXXCTaxpIIlg8nMArCBqk
	lB5zlw0MmYWD41bPSls9Cy3qxuEKPm1wI0o1N8XIOgWU8HQMPWbs/Lfd/0oJ0yFrI6WRrrrlUdLU0
	6oN0TQuAH2UyqscTpPcalWodSRVcPXIpxk4+sNYQNUG+3TdCi/ZgM7IOIudY5ouJGf5HOTt67kMy5
	Xl6gGTe/dK7ZOBeFvuUP1KDscoV3lN5wh3r0I5FccKognITXkYpWBqnVw0ys6Bvqe0S1/1k6n4pWj
	DlruFTVxcAs7ZRl5r4pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvw3-002uHb-0w; Mon, 09 Jan 2023 17:27:47 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvvq-002u8I-Ao
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 17:27:37 +0000
Received: from jupiter.universe (dyndsl-037-138-188-006.ewe-ip-backbone.de [37.138.188.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D68926602D7B;
	Mon,  9 Jan 2023 17:27:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673285249;
	bh=TNmTI9LRk0yhLmS5JTsTApyWD6mKPxT3umkyxpXaAjI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cFOGHhCt/udQ9k20u7fu8alipxPIfMvMw9LefZArUzZQG32gkSmCKaNLlAuL4YRqX
	 JM3APR+yYSpmQoEdqbG/TuEb9DDn+PJkcRXLGtZpb5hZDFqaC0bLBi2jWAA9/57i4Y
	 CMcNZL8cA0q5szkcWCWqFZpBnoUA7Yz3Gv+tLLJgwNNDs7LmaDIhRvIge9FMRbzL5W
	 gC62Tm+7+fzoYzkGxzsEERMO3qXrSW+XcqC6ivgxEdQK1X/lNWSCLpN3LVxD0oaZPp
	 yTHLiHQmFTrNzh++uPsK/nj/buP+bzTE3zaHUjd85FtHMTmrOOBoPI1rEfTDkFxXh0
	 kS66mmTvlrVsw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 67FC6480121; Mon,  9 Jan 2023 18:27:24 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv5 09/10] regulator: expose regulator_find_closest_bigger
Date: Mon,  9 Jan 2023 18:27:22 +0100
Message-Id: <20230109172723.60304-10-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109172723.60304-1-sebastian.reichel@collabora.com>
References: <20230109172723.60304-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_092734_585541_70B9D057 
X-CRM114-Status: GOOD (  15.23  )
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

Expose and document the table lookup logic used by
regulator_set_ramp_delay_regmap, so that it can be
reused for devices that cannot be configured via
regulator_set_ramp_delay_regmap.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/helpers.c      | 22 ++++++++++++++++++----
 include/linux/regulator/driver.h |  2 ++
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
index ad2237a95572..586f42e378ee 100644
--- a/drivers/regulator/helpers.c
+++ b/drivers/regulator/helpers.c
@@ -902,8 +902,21 @@ bool regulator_is_equal(struct regulator *reg1, struct regulator *reg2)
 }
 EXPORT_SYMBOL_GPL(regulator_is_equal);
 
-static int find_closest_bigger(unsigned int target, const unsigned int *table,
-			       unsigned int num_sel, unsigned int *sel)
+/**
+ * regulator_find_closest_bigger - helper to find offset in ramp delay table
+ *
+ * @target: targeted ramp_delay
+ * @table: table with supported ramp delays
+ * @num_sel: number of entries in the table
+ * @sel: Pointer to store table offset
+ *
+ * This is the internal helper used by regulator_set_ramp_delay_regmap to
+ * map ramp delay to register value. It should only be used directly if
+ * regulator_set_ramp_delay_regmap cannot handle a specific device setup
+ * (e.g. because the value is split over multiple registers).
+ */
+int regulator_find_closest_bigger(unsigned int target, const unsigned int *table,
+				  unsigned int num_sel, unsigned int *sel)
 {
 	unsigned int s, tmp, max, maxsel = 0;
 	bool found = false;
@@ -933,6 +946,7 @@ static int find_closest_bigger(unsigned int target, const unsigned int *table,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(regulator_find_closest_bigger);
 
 /**
  * regulator_set_ramp_delay_regmap - set_ramp_delay() helper
@@ -951,8 +965,8 @@ int regulator_set_ramp_delay_regmap(struct regulator_dev *rdev, int ramp_delay)
 	if (WARN_ON(!rdev->desc->n_ramp_values || !rdev->desc->ramp_delay_table))
 		return -EINVAL;
 
-	ret = find_closest_bigger(ramp_delay, rdev->desc->ramp_delay_table,
-				  rdev->desc->n_ramp_values, &sel);
+	ret = regulator_find_closest_bigger(ramp_delay, rdev->desc->ramp_delay_table,
+					    rdev->desc->n_ramp_values, &sel);
 
 	if (ret) {
 		dev_warn(rdev_get_dev(rdev),
diff --git a/include/linux/regulator/driver.h b/include/linux/regulator/driver.h
index d3b4a3d4514a..c6ef7d68eb9a 100644
--- a/include/linux/regulator/driver.h
+++ b/include/linux/regulator/driver.h
@@ -758,6 +758,8 @@ int regulator_set_current_limit_regmap(struct regulator_dev *rdev,
 				       int min_uA, int max_uA);
 int regulator_get_current_limit_regmap(struct regulator_dev *rdev);
 void *regulator_get_init_drvdata(struct regulator_init_data *reg_init_data);
+int regulator_find_closest_bigger(unsigned int target, const unsigned int *table,
+				  unsigned int num_sel, unsigned int *sel);
 int regulator_set_ramp_delay_regmap(struct regulator_dev *rdev, int ramp_delay);
 int regulator_sync_voltage_rdev(struct regulator_dev *rdev);
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

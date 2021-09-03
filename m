Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47F9DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:23:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1546660FDC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:23:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1546660FDC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDg6++CfpM4ZyqdSZnDibqPaactX7NGBgyqSaGhnYbg=; b=SqK0H0csPJdmQU
	/zk1nJQPfluktMIX65mBbV8dy40zxH+aACPcGQOZ6tDDza0AiJATjsj5fXmdM/XvqakZr1h7fq8M7
	ycTZoF1vUA+cPtlVIfKT3DyCJIYFjG4tnnw2PdRmKlp7vQtozA6MenDYKRvI9wR9WUTR9wIe4aB5x
	GIMmSkAKPsR+kN+Ae8sNC+T+BwRSyfZW8IExbukpynPuuj1Z8QGxTsOhwYaf2jl70KhOj40K6B/Pw
	kQsq9MmWT8eybqmOfk6dRn06MiSkDxV6DJfcgUhVglZ89Zyxp9WM328ye7oz8yvXm5rBOlxO64UY5
	zzL9VbW8SKQKnWltluVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mM9AZ-00C2nN-LO; Fri, 03 Sep 2021 13:23:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mM9AW-00C2kg-Qh
 for linux-rockchip@lists.infradead.org; Fri, 03 Sep 2021 13:23:46 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3F422FB81F;
 Fri,  3 Sep 2021 21:23:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760603449088S1630675411965630_; 
 Fri, 03 Sep 2021 21:23:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7eab5e813e0b0dc291a4c443e02925cc>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v4 5/7] ASoC: rockchip: pdm: Add support for path map
Date: Fri,  3 Sep 2021 21:23:28 +0800
Message-Id: <1630675410-3354-5-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_062345_403680_C6C49F44 
X-CRM114-Status: GOOD (  19.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch adds property 'rockchip,path-map' for path mapping.

e.g.

"rockchip,path-map = <3 2 1 0>" means the mapping as follows:

  path0 <-- sdi3
  path1 <-- sdi2
  path2 <-- sdi1
  path3 <-- sdi0

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 sound/soc/rockchip/rockchip_pdm.c | 34 ++++++++++++++++++++++++++++++++++
 sound/soc/rockchip/rockchip_pdm.h |  3 +++
 2 files changed, 37 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index f2bf023..64d9891 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -20,6 +20,7 @@
 
 #define PDM_DMA_BURST_SIZE	(8) /* size * width: 8*4 = 32 bytes */
 #define PDM_SIGNOFF_CLK_RATE	(100000000)
+#define PDM_PATH_MAX		(4)
 
 enum rk_pdm_version {
 	RK_PDM_RK3229,
@@ -539,8 +540,36 @@ static const struct of_device_id rockchip_pdm_match[] __maybe_unused = {
 };
 MODULE_DEVICE_TABLE(of, rockchip_pdm_match);
 
+static int rockchip_pdm_path_parse(struct rk_pdm_dev *pdm, struct device_node *node)
+{
+	unsigned int path[PDM_PATH_MAX];
+	int cnt = 0, ret = 0, i = 0, val = 0, msk = 0;
+
+	cnt = of_count_phandle_with_args(node, "rockchip,path-map",
+					 NULL);
+	if (cnt != PDM_PATH_MAX)
+		return cnt;
+
+	ret = of_property_read_u32_array(node, "rockchip,path-map",
+					 path, cnt);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < cnt; i++) {
+		if (path[i] >= PDM_PATH_MAX)
+			return -EINVAL;
+		msk |= PDM_PATH_MASK(i);
+		val |= PDM_PATH(i, path[i]);
+	}
+
+	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, msk, val);
+
+	return 0;
+}
+
 static int rockchip_pdm_probe(struct platform_device *pdev)
 {
+	struct device_node *node = pdev->dev.of_node;
 	const struct of_device_id *match;
 	struct rk_pdm_dev *pdm;
 	struct resource *res;
@@ -606,6 +635,11 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 	}
 
 	rockchip_pdm_rxctrl(pdm, 0);
+
+	ret = rockchip_pdm_path_parse(pdm, node);
+	if (ret != 0 && ret != -ENOENT)
+		goto err_suspend;
+
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "could not register pcm: %d\n", ret);
diff --git a/sound/soc/rockchip/rockchip_pdm.h b/sound/soc/rockchip/rockchip_pdm.h
index 13bfbc2..cab9772 100644
--- a/sound/soc/rockchip/rockchip_pdm.h
+++ b/sound/soc/rockchip/rockchip_pdm.h
@@ -53,6 +53,9 @@
 #define PDM_FD_DENOMINATOR_MSK	GENMASK(15, 0)
 
 /* PDM CLK CTRL */
+#define PDM_PATH_SHIFT(x)	(8 + (x) * 2)
+#define PDM_PATH_MASK(x)	(0x3 << PDM_PATH_SHIFT(x))
+#define PDM_PATH(x, v)		((v) << PDM_PATH_SHIFT(x))
 #define PDM_CLK_FD_RATIO_MSK	BIT(6)
 #define PDM_CLK_FD_RATIO_40	(0X0 << 6)
 #define PDM_CLK_FD_RATIO_35	BIT(6)
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C011FC52D7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaXvBG23smsJb1vhbizBWGCJhgDhxVkoZXB3WoJlWg4=; b=3rzBrJDabHv/EY
	ngULeWjLgR3YsxbPiFQGGEemzWQD+rogBDAmkBR6CazE29ztGQR4Mco4T9p/IZPWdnG6QOB4XERRa
	JtKFUDfrhQnHGP2b1CfAow8+s2Uf2VZA2yAlw4U9f/lCOCvWh1IxxXClqnhz2PZW5U7R7NM8InfIh
	2iJEnadrDFxgpZZIsHo+wmJRBiCqVcyWyxRA7bYrVFZdRA+8mzuA03bjh5AXv0ZUXB7bRaNJ1RfAe
	SoOPEVM0959f5QvlWMpGxQ5VszZFJpve7ow7wcUhkmnYOM826IhqpWUARhfiZAr+3rtfY5oURWEzr
	2FQnZAVq7XumkBNc7anQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Iy-00000008zlK-3Tev;
	Thu, 08 Aug 2024 16:48:00 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6It-00000008zi2-3xDg;
	Thu, 08 Aug 2024 16:47:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723135668; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AwebEZ7sVGgKbhv17XDqKKhh11HzhakcP5aG5QEq9zEANTdTprcp4uQaQM7pAn1nEMfCjdBs4iN7YTCdTEqvLLLFVWlup0UIN7SsZW1OSiefS6hr19PKGeaRsgta2TwbrQQJANoyWw3HTRRPTlLj795HrceosEYzkOwYTiZYj0Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723135668; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=KmSMPlwOYP2oZ/KiPrhvVajir7L1CmOMV+OUlQTo+R8=; 
	b=HKIa1etRgF2uadf0Vp7AiLZNzay9PPZ038VCcs+jEH+TltSfQFrJR9mVuvjIQzYP7YFNi72aQuWEIcb2GymEDNjNHwK8dilRyjkDt+CS0QG8ZQxhIl6GO3r3MGla+HD1+S6Mq4HR7HHHddN5ew4IqzZBMTk2bKkM2UXD6InYcL4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723135668;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=KmSMPlwOYP2oZ/KiPrhvVajir7L1CmOMV+OUlQTo+R8=;
	b=jdmbuLKgk76vwILmDtVRGilsSTSwRZaZaC/gzglpWiwwRrn5xSSWEXw/wvjSMS1b
	fl26TP+A8HvqEBBJxt6HKxNPQodmOy7SQUu+h5/NMChiq/ZkLSJoB307bZ/RbGd3fFP
	18sjopdcLYfVV39LxuUdqQb28TYsVPl0qKco/EIs=
Received: by mx.zohomail.com with SMTPS id 1723135667573571.5895238677637;
	Thu, 8 Aug 2024 09:47:47 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
Date: Thu,  8 Aug 2024 12:47:16 -0400
Message-ID: <20240808164900.81871-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808164900.81871-1-detlev.casanova@collabora.com>
References: <20240808164900.81871-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094756_057851_6B5CD058 
X-CRM114-Status: GOOD (  17.96  )
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

From: Shawn Lin <shawn.lin@rock-chips.com>

v2 tuning will inherit pre-stage loader's phase settings for the first
time, and do re-tune if necessary.
Re-tune will still try the rough degrees, for instance, 90, 180, 270,
360 but continue to do the fine tuning if sample window isn't good
enough.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 47 ++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index b07190ba4b7ac..b1b437ea878ae 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -24,6 +24,8 @@ struct dw_mci_rockchip_priv_data {
 	struct clk		*sample_clk;
 	int			default_sample_phase;
 	int			num_phases;
+	bool			use_v2_tuning;
+	int			last_degree;
 };
 
 static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
@@ -134,6 +136,42 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 #define TUNING_ITERATION_TO_PHASE(i, num_phases) \
 		(DIV_ROUND_UP((i) * 360, num_phases))
 
+static int dw_mci_v2_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
+{
+	struct dw_mci *host = slot->host;
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
+	struct mmc_host *mmc = slot->mmc;
+	u32 degrees[4] = {90, 180, 270, 360};
+	int i;
+	static bool inherit = true;
+
+	if (inherit) {
+		inherit = false;
+		i = clk_get_phase(priv->sample_clk) / 90 - 1;
+		goto done;
+	}
+
+	/* v2 only support 4 degrees in theory */
+	for (i = 0; i < ARRAY_SIZE(degrees); i++) {
+		if (degrees[i] == priv->last_degree)
+			continue;
+
+		clk_set_phase(priv->sample_clk, degrees[i]);
+		if (!mmc_send_tuning(mmc, opcode, NULL))
+			break;
+	}
+
+	if (i == ARRAY_SIZE(degrees)) {
+		dev_warn(host->dev, "All phases bad!");
+		return -EIO;
+	}
+
+done:
+	dev_info(host->dev, "Successfully tuned phase to %d\n", degrees[i]);
+	priv->last_degree = degrees[i];
+	return 0;
+}
+
 static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 {
 	struct dw_mci *host = slot->host;
@@ -157,6 +195,13 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 		return -EIO;
 	}
 
+	if (priv->use_v2_tuning) {
+		ret = dw_mci_v2_execute_tuning(slot, opcode);
+		if (!ret)
+			return 0;
+		/* Otherwise we continue using fine tuning */
+	}
+
 	ranges = kmalloc_array(priv->num_phases / 2 + 1,
 			       sizeof(*ranges), GFP_KERNEL);
 	if (!ranges)
@@ -277,6 +322,8 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 					&priv->default_sample_phase))
 		priv->default_sample_phase = 0;
 
+	priv->use_v2_tuning = of_property_read_bool(np, "rockchip,v2-tuning");
+
 	priv->drv_clk = devm_clk_get(host->dev, "ciu-drive");
 	if (IS_ERR(priv->drv_clk))
 		dev_dbg(host->dev, "ciu-drive not available\n");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

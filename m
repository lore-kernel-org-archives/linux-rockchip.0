Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43D3C433E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3474D23A9D
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3474D23A9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ox3WbmEhbQ85YdCfWUVJxQkkmsuvo/uTQciS0u2Ft1o=; b=c+UfpqOrd5mEsW2OzeFSPAd7N
	FCOvmxi6vpV2nk07jwPJ2S+33FIjus+Ip/q6+n9q/9q5CGtuzVc9y6Hy6bdKa1yM4HrBRKKQpVTZx
	9iI0ai3tqPSWpdHreBaS9/ZccYGxy+1A0vvCzpsv3WmgkzTjX2RjQhFBxvYLRoaenor/zDY4cANWz
	igWBkIzCmGhMFKY7foeZOwY80x8SII43FxIfUq0KVKjUAOKHROuGs6j85skzz9xGvvGbIITZY6kKK
	IrWath/h4Y+FQdiRzF9nSlMrt+WJGSxpPP0RkkjQupJFVddOdCt1kNy3nku2jXlwqRd+Z9SpASGvh
	WX0mXJxTw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWB-0005wk-JD; Fri, 08 Jan 2021 19:33:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005u7-M1
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:50 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVx-0004Zr-7V; Fri, 08 Jan 2021 20:33:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 07/11] media: rockchip: rkisp1: carry ip version
 information
Date: Fri,  8 Jan 2021 20:33:07 +0100
Message-Id: <20210108193311.3423236-8-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143348_820024_16BA9632 
X-CRM114-Status: GOOD (  15.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The IP block evolved from its rk3288/rk3399 base and the vendor
designates them with a numerical version. rk3399 for example
is designated V10 probably meaning V1.0.

There doesn't seem to be an actual version register we could read that
information from, so allow the match_data to carry that information
for future differentiation.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 5 +++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 7 +++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 44f333bf5d6a..7678eabc9ffc 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -59,6 +59,10 @@
 					 RKISP1_CIF_ISP_EXP_END |	\
 					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
 
+enum rkisp1_isp_ver {
+	RKISP1_V10 = 0,
+};
+
 /* enum for the resizer pads */
 enum rkisp1_rsz_pad {
 	RKISP1_RSZ_PAD_SINK,
@@ -355,6 +359,7 @@ struct rkisp1_device {
 	void __iomem *base_addr;
 	int irq;
 	struct device *dev;
+	enum rkisp1_isp_ver isp_ver;
 	unsigned int clk_size;
 	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
 	struct v4l2_device v4l2_dev;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 96afc1d1a914..0a01ffbc2cae 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -104,6 +104,7 @@
 struct rkisp1_match_data {
 	const char * const *clks;
 	unsigned int size;
+	enum rkisp1_isp_ver isp_ver;
 };
 
 /* ----------------------------------------------------------------------------
@@ -408,15 +409,16 @@ static const char * const rk3399_isp_clks[] = {
 	"hclk",
 };
 
-static const struct rkisp1_match_data rk3399_isp_clk_data = {
+static const struct rkisp1_match_data rk3399_isp_match_data = {
 	.clks = rk3399_isp_clks,
 	.size = ARRAY_SIZE(rk3399_isp_clks),
+	.isp_ver = RKISP1_V10,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
 	{
 		.compatible = "rockchip,rk3399-cif-isp",
-		.data = &rk3399_isp_clk_data,
+		.data = &rk3399_isp_match_data,
 	},
 	{},
 };
@@ -532,6 +534,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 	rkisp1->clk_size = clk_data->size;
+	rkisp1->isp_ver = clk_data->isp_ver;
 
 	pm_runtime_enable(&pdev->dev);
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

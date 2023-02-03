Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9735C61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 12:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jn1yVuynnUJ6RGGVvfutjB1ubeoAYz1r97nmKqViUhA=; b=1tcEq9X86D0Olo
	eD0j7vS4zrudWRZej8DNv/HCvbLzm1wydw7RHcYgJdvqK43u/sPsIahEbimwvjHRe3t4MQNabVaxx
	GZOZVA64XSuLlA9pTKi2cYBvGpTPJXBAf5whpqJqDnklbx6hVH8Z6WeAyMOEPtUTyp0w4GqmRvkLD
	RYrLyAehHEWk4GfvUKNzPAOV+UA7CmSMIpd4DKTQUzyH+8GiPHBTHLVKXpxsNKB7BDzsDOVqSZ0XL
	V9Hq6uFK0RO7JPR3zh2YiRD3p5mLhYl6yy88yWgiUBRmbVXzYlFOuijx+L2x8AgA4kvKO/Etugpbo
	7LGZh27v5Os7K/rCPOqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNvbK-001sgO-Cj; Fri, 03 Feb 2023 12:55:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNvWN-001pxX-Tt
	for linux-rockchip@lists.infradead.org; Fri, 03 Feb 2023 12:50:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWE-0000bc-5R; Fri, 03 Feb 2023 13:50:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWC-002OqI-0B; Fri, 03 Feb 2023 13:50:17 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWA-000Zlp-3u; Fri, 03 Feb 2023 13:50:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pegutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 12/18] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Date: Fri,  3 Feb 2023 13:50:06 +0100
Message-Id: <20230203125012.3804008-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230203125012.3804008-1-s.hauer@pengutronix.de>
References: <20230203125012.3804008-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_045028_141854_753C89E7 
X-CRM114-Status: GOOD (  14.04  )
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

In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
the missing case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 1 +
 include/soc/rockchip/rockchip_grf.h  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 92ee61c96a1a9..dc48d9c26f599 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -89,6 +89,7 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 			       dfi_regs + DDRMON_CTRL);
 		break;
 	case ROCKCHIP_DDRTYPE_LPDDR4:
+	case ROCKCHIP_DDRTYPE_LPDDR4X:
 		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
 			       dfi_regs + DDRMON_CTRL);
 		break;
diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
index dc77bb762a05a..7150a3362b142 100644
--- a/include/soc/rockchip/rockchip_grf.h
+++ b/include/soc/rockchip/rockchip_grf.h
@@ -11,5 +11,6 @@
 #define ROCKCHIP_DDRTYPE_LPDDR2	5
 #define ROCKCHIP_DDRTYPE_LPDDR3	6
 #define ROCKCHIP_DDRTYPE_LPDDR4	7
+#define ROCKCHIP_DDRTYPE_LPDDR4X	8
 
 #endif /* __SOC_ROCKCHIP_GRF_H */
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

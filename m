Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B0A6C05027
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 09:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jn1yVuynnUJ6RGGVvfutjB1ubeoAYz1r97nmKqViUhA=; b=Ajq3GouTuaqDS7
	/5UvSl4vWxTseEU9T7g8F1dUZqQgWt2a9R5vojoFDR4OKeTcS/TbMMAwVA2Vd//u5k+20LNgx/LMw
	wINegOU/gLLQ0bjGSJX7DuBdXSse6jm7VcqvetACT5k2sKjikCs0EjR2E2tgpRuKsf1Ve37LMAeIS
	QZdxAnMr9E1cJgCQ9jqYVknisS8pDV3Bobzezm5hKrDkRuB0h6vgew0MNZA5/cF9+dLahuER1JwJ1
	jMUhHpiic73tb6a/yJeCkM/yBY/lve51ktun5uqWIc6DSr6SI1ZQsj0KQffsqRlNAg9W7M7hXjfof
	gYxVTxQQAnU2d1CVMM+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPh1g-00EyK7-AB; Wed, 08 Feb 2023 09:46:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgue-00Ev86-9H
	for linux-rockchip@lists.infradead.org; Wed, 08 Feb 2023 09:38:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguU-00039S-Hp; Wed, 08 Feb 2023 10:38:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguS-003UAb-DB; Wed, 08 Feb 2023 10:38:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguQ-000s92-Pg; Wed, 08 Feb 2023 10:38:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 12/19] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Date: Wed,  8 Feb 2023 10:38:23 +0100
Message-Id: <20230208093830.143284-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230208093830.143284-1-s.hauer@pengutronix.de>
References: <20230208093830.143284-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_013848_463589_258BA6C1 
X-CRM114-Status: GOOD (  14.69  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB744D5E140
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 07:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6n/clIcgqIf467YERyibHgpYG8CwtnNkUt60Dak6wpQ=; b=SRlhT2Nim03NVk
	PEXGPz7EbKJSVbf6VMPeoFBALS6Um5jKBF978uVBnwo4OrU2gAvhfZB02/oWrcfZv9mVdIf+O0hOt
	ipRGeYI0wjIP4xwGuoezv0l7ifpVbjd30DBulc7PPM6vDu+b2tz3pydVrOp2KJpnjE5HHT4Q4GXgs
	3QK2PuNgQvdRF1S3e4g3e7YezqaKEr/ZvxHXjGbyAn4yuuRcIbcUOtbL18xhTR6ropWsGvix4oprL
	5uDKc8wPiX1e1CcbPfuVYML48auBS5KozMGuBq5ZO3ktAXX/4r0a8uu+KgOrZRJS4wnGj6Uq67LYl
	iyBdWG+rbXuX5VCplGvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1J-00000009ZcU-2mFZ;
	Fri, 08 Nov 2024 07:03:01 +0000
Received: from ec2-44-216-146-176.compute-1.amazonaws.com ([44.216.146.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1G-00000009Zbr-2sIT
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 07:03:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22d55c8d;
	Fri, 8 Nov 2024 14:57:47 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 4/7] pmdomain: rockchip: Add smc call to inform firmware
Date: Fri,  8 Nov 2024 14:56:23 +0800
Message-Id: <1731048987-229149-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JCHlZPTUNCTUkaSUtMQxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a930a90928209cckunm22d55c8d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PSo6HBw4MzIjNCoPUSpCKwhD
	Ci0wCQtVSlVKTEhKS09CS01DTUJKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpDSk03Bg++
DKIM-Signature: a=rsa-sha256;
	b=DSetdHpXNXDwak1GGqzp4RY5M6CqTgfsKoF9DlaDV4FxCJqDmR2qyDXKTRun4/bxHzCENUzzqK+fXjcCie4MTCGJG+DqEbJ3wF0TtJux01lW3e/GJoEkD/kgoIy1QtTaF1WSgLCRDC4CcOxUDPzxE9QLq+4mo/4ZmO/WhdobHH4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2NyPYvYg2Dghh9vSnqVVMEZ1p9KuX17hf7zqDWcgQNg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_230259_059010_666CC593 
X-CRM114-Status: GOOD (  13.10  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Inform firmware to keep the power domain on or off.

Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5:
- fix a compile warning

Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/pmdomain/rockchip/pm-domains.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index cb0f938..49842f1 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -5,6 +5,7 @@
  * Copyright (c) 2015 ROCKCHIP, Co. Ltd.
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/err.h>
@@ -20,6 +21,7 @@
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
 #include <soc/rockchip/pm_domains.h>
+#include <soc/rockchip/rockchip_sip.h>
 #include <dt-bindings/power/px30-power.h>
 #include <dt-bindings/power/rockchip,rv1126-power.h>
 #include <dt-bindings/power/rk3036-power.h>
@@ -540,6 +542,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 	struct generic_pm_domain *genpd = &pd->genpd;
 	u32 pd_pwr_offset = pd->info->pwr_offset;
 	bool is_on, is_mem_on = false;
+	struct arm_smccc_res res;
 
 	if (pd->info->pwr_mask == 0)
 		return;
@@ -567,6 +570,11 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 			genpd->name, is_on);
 		return;
 	}
+
+	/* Inform firmware to keep this pd on or off */
+	arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
+			pmu->info->pwr_offset + pd_pwr_offset,
+			pd->info->pwr_mask, on, 0, 0, 0, &res);
 }
 
 static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

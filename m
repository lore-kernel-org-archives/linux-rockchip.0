Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F4CC02182
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 03:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKc9H7USwE1wfOGe7XcKm0VVcGdHSAVLCxxqf2mdijA=; b=viAfdlP726ZYJ5
	g4P77eOMpF6PNU04YFzTD2Gsjybeig4D+11tzwFpm3nytYUdhzEbeNONCKwjbH9TMi4ydEkKHVLwM
	N5Folbs6PjhN+VwVle1lAtr88PqhYu03FFQjwZxcjR31FD87LkmPxiUOUBgkKvOfjL+wRx83nm/Hd
	nt4Oec3n5gGKl4KsFeTn2oP8NffXrm9wBZgmfV9Xi1jr9Dgk26IXVYM9EiTlAN3eQmfJ9djeYU/Bc
	hC3SE3/OBya5ytyXUw2diatyZXGb+8AWeEPuU2EJnhVTnW6u/LR30G4LEItEH5a22GW7DlzwPtluO
	9ZdI1iDNGu5DBhPm1sPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4WC-00000006lkX-0kU9;
	Tue, 21 Jan 2025 03:01:32 +0000
Received: from mail-m3282.qiye.163.com ([220.197.32.82])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4WA-00000006lj0-0R5f
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 03:01:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 93fdcf00;
	Tue, 21 Jan 2025 11:01:26 +0800 (GMT+08:00)
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
Subject: [PATCH v6 3/7] pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()
Date: Tue, 21 Jan 2025 11:00:23 +0800
Message-Id: <1737428427-32393-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkMZGVZIQk9CGUoeQ0NKGBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9486cec7e909cckunm93fdcf00
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NSo6STo*OTIRNDVNHgstEjEZ
	KQswFExVSlVKTEhMT0lDT0NMTE9LVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhDQk83Bg++
DKIM-Signature: a=rsa-sha256;
	b=C+T0xur92zfdXVdz9scdLgm4Aypk0CBcgFBWQD1SVlAhuFBgchP6VY9J7XQ8zkuGc3bCJEZhwevLSNuGWNm+Yzw+Ah0QPbCEN/cMuunFcWpnSMDJ9FCGI/wLyu+dA0+jOmerKBUQOUXyCs/uhDPe5qVYnWywuzE0ipqN3sVh9PQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=S8k3+QF/U7BZrl92gLsmr2O43MinCweidYG2hgjh7D0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_190130_333793_EE45EB16 
X-CRM114-Status: GOOD (  18.54  )
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

From: Ulf Hansson <ulf.hansson@linaro.org>

For some usecases a consumer driver requires its device to remain power-on
from the PM domain perspective during runtime. Using dev PM qos along with
the genpd governors, doesn't work for this case as would potentially
prevent the device from being runtime suspended too.

To support these usecases, let's introduce dev_pm_genpd_rpm_always_on() to
allow consumers drivers to dynamically control the behaviour in genpd for a
device that is attached to it.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v6:
- export dev_pm_genpd_rpm_always_on()

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/pmdomain/core.c   | 35 +++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h |  7 +++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
index a6c8b85..b44c300 100644
--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -697,6 +697,37 @@ bool dev_pm_genpd_get_hwmode(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(dev_pm_genpd_get_hwmode);
 
+/**
+ * dev_pm_genpd_rpm_always_on() - Control if the PM domain can be powered off.
+ *
+ * @dev: Device for which the PM domain may need to stay on for.
+ * @on: Value to set or unset for the condition.
+ *
+ * For some usecases a consumer driver requires its device to remain power-on
+ * from the PM domain perspective during runtime. This function allows the
+ * behaviour to be dynamically controlled for a device attached to a genpd.
+ *
+ * It is assumed that the users guarantee that the genpd wouldn't be detached
+ * while this routine is getting called.
+ *
+ * Return: Returns 0 on success and negative error values on failures.
+ */
+int dev_pm_genpd_rpm_always_on(struct device *dev, bool on)
+{
+	struct generic_pm_domain *genpd;
+
+	genpd = dev_to_genpd_safe(dev);
+	if (!genpd)
+		return -ENODEV;
+
+	genpd_lock(genpd);
+	dev_gpd_data(dev)->rpm_always_on = on;
+	genpd_unlock(genpd);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dev_pm_genpd_rpm_always_on);
+
 static int _genpd_power_on(struct generic_pm_domain *genpd, bool timed)
 {
 	unsigned int state_idx = genpd->state_idx;
@@ -868,6 +899,10 @@ static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
 		if (!pm_runtime_suspended(pdd->dev) ||
 			irq_safe_dev_in_sleep_domain(pdd->dev, genpd))
 			not_suspended++;
+
+		/* The device may need its PM domain to stay powered on. */
+		if (to_gpd_data(pdd)->rpm_always_on)
+			return -EBUSY;
 	}
 
 	if (not_suspended > 1 || (not_suspended == 1 && !one_dev_on))
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index 45646bf..d4c4a7c 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -260,6 +260,7 @@ struct generic_pm_domain_data {
 	unsigned int rpm_pstate;
 	unsigned int opp_token;
 	bool hw_mode;
+	bool rpm_always_on;
 	void *data;
 };
 
@@ -292,6 +293,7 @@ ktime_t dev_pm_genpd_get_next_hrtimer(struct device *dev);
 void dev_pm_genpd_synced_poweroff(struct device *dev);
 int dev_pm_genpd_set_hwmode(struct device *dev, bool enable);
 bool dev_pm_genpd_get_hwmode(struct device *dev);
+int dev_pm_genpd_rpm_always_on(struct device *dev, bool on);
 
 extern struct dev_power_governor simple_qos_governor;
 extern struct dev_power_governor pm_domain_always_on_gov;
@@ -375,6 +377,11 @@ static inline bool dev_pm_genpd_get_hwmode(struct device *dev)
 	return false;
 }
 
+static inline int dev_pm_genpd_rpm_always_on(struct device *dev, bool on)
+{
+	return -EOPNOTSUPP;
+}
+
 #define simple_qos_governor		(*(struct dev_power_governor *)(NULL))
 #define pm_domain_always_on_gov		(*(struct dev_power_governor *)(NULL))
 #endif
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

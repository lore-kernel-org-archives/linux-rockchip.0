Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF4CCD111B3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 07:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyRMopaQEtzV731k765Q5yUgeI8FCZuJIml9rYi4U78=; b=qj0fXATqP16pXE
	n9tTBbrER1ZUtcNvPOjDUdBtCmIpSFXid1oKypCCydGg2uk0tqFQLA8eTNroJ2K99EiFSU3gmP8Hf
	9mkpKDwXuXXh/EyvqXsZw9UvBNvX6voZQljN3qIqNBS+tk8WBY41CySdR38wYR2rfnCRjTQO+6L+d
	qK5Tn5TgdOCCdLEkxYCifyEhP6f/x9+WpW56YbsjQT27Jo3U5lZZHIDiKyTbGLenjmVG07XvJFZCz
	oRo7dJgW5rrh8oC9I76Os1JVcGOla3zGBaTUvhuZV0Kb4s4Malrn400iH4l6PQ7S85F7SqRurpnkG
	bddoypN3uG8fSbZ47QQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rb3-0000000CrMH-3j7f;
	Mon, 04 Nov 2024 07:33:57 +0000
Received: from mail-m2418.xmail.ntesmail.com ([45.195.24.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rb1-0000000CrLc-0CCj
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 07:33:56 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b5f86df;
	Mon, 4 Nov 2024 15:33:50 +0800 (GMT+08:00)
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
Subject: [PATCH v4 6/7] PM: wakeup: Add device_clr_wakeup_path()
Date: Mon,  4 Nov 2024 15:32:00 +0800
Message-Id: <1730705521-23081-7-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhITVZJH05CTB0dH0lCQxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f61826b509cckunm1b5f86df
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTY6Syo4EjIuQzpKDiwaNUk5
	IjEwFDBVSlVKTEhLTEtOTUhJTkhPVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpJTks3Bg++
DKIM-Signature: a=rsa-sha256;
	b=XaaNKC6e9jeXqryncvNsBaCCLREY+vONROjoHez11dB18+jm+UL9dCm5gu9pODOQRIl0A8t23sXpeJ+FzyI9QzD6BGxmG/KAnDhEVmefnISft1PjWZBhxdSPXQG/ed9FGHJlLxhwwOBy3cy2im1j7JNJ8kMwyN5lx0ehTWW8MNs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WAt8KEoMkcRQkVhcAHLvz96VVs1tPx6HkdCub024pBU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_233355_314798_2E834402 
X-CRM114-Status: GOOD (  10.46  )
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

device_clr_wakeup_path() is used to disable wakeup path support
which is symmetrical to device_set_wakeup_path().

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 include/linux/pm_wakeup.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/pm_wakeup.h b/include/linux/pm_wakeup.h
index 76cd1f9..45405a3 100644
--- a/include/linux/pm_wakeup.h
+++ b/include/linux/pm_wakeup.h
@@ -94,6 +94,11 @@ static inline void device_set_wakeup_path(struct device *dev)
 	dev->power.wakeup_path = true;
 }
 
+static inline void device_clr_wakeup_path(struct device *dev)
+{
+	dev->power.wakeup_path = false;
+}
+
 /* drivers/base/power/wakeup.c */
 extern struct wakeup_source *wakeup_source_create(const char *name);
 extern void wakeup_source_destroy(struct wakeup_source *ws);
@@ -177,6 +182,8 @@ static inline bool device_wakeup_path(struct device *dev)
 
 static inline void device_set_wakeup_path(struct device *dev) {}
 
+static inline void device_clr_wakeup_path(struct device *dev) {}
+
 static inline void __pm_stay_awake(struct wakeup_source *ws) {}
 
 static inline void pm_stay_awake(struct device *dev) {}
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

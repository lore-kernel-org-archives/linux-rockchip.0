Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7C6D5E141
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 06:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50g2cA2tduing92eYWy2OpMr/mtTfQzr8KB8VeW+Tnk=; b=qV1Etukftwcl5x
	b5VJQY4M/Klrv5sGpr4buAjDZXeZFDajURNWFnkVqgNiPm2LRzaLJiift5nFY3fnHUuLMPoFSuiSE
	PajGQ6J0QMcI/nkTlM4Z8ZQndVLPlH72Yxo70DKUvSSoSDB/iqGqAkALms1geTWqOvwsAR5yCWzMl
	st2nTNA83a3qPbUiyieE9KyXuH3/7ogKNUmP0Aurf3y5NCvLFRaEoB+c9TrhBz839n5AP7Z0g35tK
	MGTn7r9VT2Qc0LhSaiUvIlfqQJLvDdGtFrx5Q0vTiWYP+aP6SaQQjb/ilmXP8mraCFCVnrur5qlUM
	2eDiAhgtR1SKryFz8sZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ivp-00000009YsH-1xk9;
	Fri, 08 Nov 2024 06:57:21 +0000
Received: from mail-m118102.qiye.163.com ([115.236.118.102])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ivm-00000009YqP-4Axt
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 06:57:20 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22d55bed;
	Fri, 8 Nov 2024 14:57:14 +0800 (GMT+08:00)
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
Subject: [PATCH v5 2/7] soc: rockchip: add header for suspend mode SIP interface
Date: Fri,  8 Nov 2024 14:56:21 +0800
Message-Id: <1731048987-229149-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkseQlZCTk4dHk1NQk1NSh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a930a90140009cckunm22d55bed
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pio6GAw5FjIZMCoREC8uKy4u
	OgkKChxVSlVKTEhKS09CS0hNT05LVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUJMTjcG
DKIM-Signature: a=rsa-sha256;
	b=EvX9HFbgHRds46heWcpaAQbr9uqJzx+7S0XO0IghFwtnEsDuyv6Eijkyn1YZki04D3RVMzt1qtBdciCIU+xxye+ZunJH8Q5C+1NpnGRijZnKprcGPqod64KvcCIvbt4w87c6v2TZxG/YSH62Tts4abGktyWb5OMBVh01dEdFZLs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=HExq89J04oe4XAe0XhWdyylqjS+SWwit6uhZCVLqyMI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_225719_229247_8A73D0B6 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

Add ROCKCHIP_SIP_SUSPEND_MODE to pass down parameters to Trusted Firmware
in order to decide suspend mode. Currently only add ROCKCHIP_SLEEP_PD_CONFIG
which teaches firmware to power down controllers or not.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 include/soc/rockchip/rockchip_sip.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
index c46a9ae..501ad1f 100644
--- a/include/soc/rockchip/rockchip_sip.h
+++ b/include/soc/rockchip/rockchip_sip.h
@@ -6,6 +6,9 @@
 #ifndef __SOC_ROCKCHIP_SIP_H
 #define __SOC_ROCKCHIP_SIP_H
 
+#define ROCKCHIP_SIP_SUSPEND_MODE		0x82000003
+#define ROCKCHIP_SLEEP_PD_CONFIG		0xff
+
 #define ROCKCHIP_SIP_DRAM_FREQ			0x82000008
 #define ROCKCHIP_SIP_CONFIG_DRAM_INIT		0x00
 #define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE	0x01
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

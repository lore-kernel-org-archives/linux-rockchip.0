Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7D2C05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El3XH3da2orWnE2zYLkDPD6GwQY1MhqorKGENhisoOE=; b=UUpxw74T8cw66R
	uFyd/12bfrO5t/h3Vn5lYI8+jRziH0rgYIjN4xyWf58s1xg/rdbRORyjI2wZddTsTKnEyLCgEUsxj
	2UJImQRo+n5jCA1U1nT9gTiM8jVlbAVm/uwjzjnwaLlBaWcojgMnVQ08GbJ/WuMOcEsrIw5xGZb41
	dRa+pjDSydUoPlJ8XOBZbK5yiR0zHQgnuoHUBzOBm66tsWAuuXO9mDHwlQ3WgG5tn2L2BABkhnuRy
	fIOYUlhY4Qrgyil1EN0K8jBncAlcGBNE4Bi/XZGRAyrXRUJBQmXvbNpWZjiih4qW+2COBMJOZ1UFi
	4c1xZDm6hhpIdf2j5Rrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2ht-00B36P-AR; Thu, 26 Jan 2023 13:54:25 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gB-00B2HO-Hw; Thu, 26 Jan 2023 13:52:41 +0000
Received: by mail-ed1-x52f.google.com with SMTP id y15so1232947edq.13;
        Thu, 26 Jan 2023 05:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PM5Y0kazrqAopyAd14Bg1D8C86SLWnGba3pwWureGTo=;
        b=qfPFLRS+a5cbguePUixRS979CRQ5NY7AVPXDzmN02A76rymCD1Sf/wEC5SDE3e7Spm
         XNBqCtXGmmPI1eZKPsBuLjWztNmxqM23awGKKM3J3sNvWWfBUkO2ISF/L/8tpZztNWe6
         qqbpNYC46Me2h85qbAtEUaX1MQYC+k4eA219ccrBJftptBQgJtdEXRS4cH8YPwiQvnoR
         lFVLG9vywJxOq7sW+7mUBf/yQHxSCom938Zi79of7CHFvzlzQ9QvxaNiqlP5T2/XtoTc
         u48DlO4MoWDAWWaJK/Jx1o8sZc3V9NWqhb4Gux/9U/HB9YTdMZCdAheJR7dOC0CYQlKA
         aefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PM5Y0kazrqAopyAd14Bg1D8C86SLWnGba3pwWureGTo=;
        b=O881zgjnS3hnk/iunvPCpKTnHzooVgW2OvAmZe2k6dSmxVvMWcW02uwLLYEUvblXZ3
         BppJUuel3n4RfdE5u1uM4mUuWp/Xz9SwqnKw1IpkeaCGrXAIFDBRZ2tnQG/4ZJ2O0K+0
         8XwU+/4bXRbIT/XJe4OQfCKtpgdUBUXsdP88H3XQgbmgqukyPNXu4SL1a3Qb9pggsr5D
         v0YihloZ3kMJOSWG9BJVtXJ6YBVMyhkpP8jPMEho4CWtno/DtNSLco6bF76fO8Qe/Rk4
         dWI4hzSIqenjz89WfCxNzsgFNnGf3NHiw3BxgIH3O0Ybs3Z5zQQKxuMPg/i3MsdhubET
         8sow==
X-Gm-Message-State: AFqh2kpssWt59QVkNjB3T9XsCMlH27jaDsMmMReEvEcAYPg+E05zAQ7L
	ah0YCtXaVArZVgLfjl2ejX0=
X-Google-Smtp-Source: AMrXdXuPlhOj7jDAVrt6QwPTrMne4wS7HKyWLhiCIc/EINEVuGxnCL9kGwTs0CiJ4lUZ8PQOtkZcpg==
X-Received: by 2002:a05:6402:141:b0:46f:a6ea:202 with SMTP id s1-20020a056402014100b0046fa6ea0202mr38900619edu.37.1674741155772;
        Thu, 26 Jan 2023 05:52:35 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:35 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 4/8] PCI: rockchip: Added poll and timeout to wait for PHY PLLs to be locked
Date: Thu, 26 Jan 2023 14:50:44 +0100
Message-Id: <20230126135049.708524-5-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055239_731825_699C3708 
X-CRM114-Status: GOOD (  16.41  )
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

The Rockchip PCIe controller did not wait until the PHY PLLs were locked.
This could cause hangs. Now the PHY PLLs status is checked through a side
channel bit with a poll and timeout. If the PHY PLLs cannot lock an error
is generated. This is documented in the TRM section 17.5.8.1 PCIe
Initalization Sequence.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 16 ++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 990a00e08..5f2e2dd5d 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -14,6 +14,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/iopoll.h>
 #include <linux/of_pci.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -153,6 +154,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_parse_dt);
 
+#define rockchip_pcie_read_addr(addr) rockchip_pcie_read(rockchip, addr)
+/* 100 ms max wait time for PHY PLLs to lock */
+#define RK_PHY_PLL_LOCK_TIMEOUT_US 100000
+/* Sleep should be less than 20ms */
+#define RK_PHY_PLL_LOCK_SLEEP_US 1000
+
 int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 {
 	struct device *dev = rockchip->dev;
@@ -254,6 +261,15 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		}
 	}
 
+	err = readx_poll_timeout(rockchip_pcie_read_addr, PCIE_CLIENT_SIDE_BAND_STATUS,
+		regs, !(regs & PCIE_CLIENT_PHY_ST), RK_PHY_PLL_LOCK_SLEEP_US,
+		RK_PHY_PLL_LOCK_TIMEOUT_US);
+
+	if (err) {
+		dev_err(dev, "PHY PLLs could not lock, %d\n", err);
+		goto err_power_off_phy;
+	}
+
 	/*
 	 * Please don't reorder the deassert sequence of the following
 	 * four reset pins.
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 51a123e5c..f3a5ff1cf 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -38,6 +38,8 @@
 #define   PCIE_CLIENT_MODE_EP            HIWORD_UPDATE(0x0040, 0)
 #define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
 #define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
+#define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
+#define   PCIE_CLIENT_PHY_ST			BIT(12)
 #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
 #define   PCIE_CLIENT_DEBUG_LTSSM_MASK		GENMASK(5, 0)
 #define   PCIE_CLIENT_DEBUG_LTSSM_L1		0x18
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

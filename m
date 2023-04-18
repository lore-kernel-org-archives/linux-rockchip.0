Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09258C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tta0BUi1ylXyVlIZsNVN6o5X+s6ZyZRSUpVLTmIekw=; b=htQqneacg9ko65
	/J1FNybSI+YCKxq1l+kFdtyK6d8a60JtyR3GmDVQIn08/GC/+LuXCoxfABFhNY4JoYh308LYobzRl
	rjxgkmm5chHcHX14YZ5DdjXf5YIR2mI73BxsZH7MzSUgFmUAsDE5maU23YP0l/k+EqlKf5DT58WOD
	6O9wYssNkI+aTW24EbBBl2NtIQwPa7LaTm8vEN/+U4eZaiYG2SRf7WGYKHxpEUkyL4slrYk5EBAcZ
	6U4B9GDiIfZiKMrL7DT2e0yTDULAWSUmuIjFeN2iP4O0o3ZRy17QfN2vwtU0AheTHRgxmDAehHYY9
	ASvmru5oofmz5gsR3iCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4I-001Bal-2q;
	Tue, 18 Apr 2023 07:48:02 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4E-001BVq-1z;
	Tue, 18 Apr 2023 07:48:00 +0000
Received: by mail-ej1-x62a.google.com with SMTP id fw30so18034848ejc.5;
        Tue, 18 Apr 2023 00:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804075; x=1684396075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ZCZ5e5bMUuiLuVoL5OvscU41DtPpM74Tn58tXxWzas=;
        b=SaVyeU4Y/Xfw7a284ug9kXFgGGV9R70EM5r9/R6vLGR50D+F2O5lnksM3orQQ9KUPs
         5fOuzhV5KAG44vpsCHdWPRpxtCkOMiJBF7I71YimKWnC/0p8jj99AI8IFgjyv8Uxa5PQ
         jvYESH1hZ26IgBju+L+WNC9tyI+sOQSQxvboGfu3TKG1kwd/rSJl7E6aa0PuW3ewmuZ9
         lNHkiA8XKJVMn6Z6HgIvsQqroo11H2TQv2PkskCweHtkcG4ew4etoS3FOHA4xvwYsrp5
         rmdW4jaq5L8iPqaVwXYYrnl5Dtj7nCaCrxhCo9iZqhfjJ+FGggmAd8o177jOdbaE3QSo
         Yiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804075; x=1684396075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ZCZ5e5bMUuiLuVoL5OvscU41DtPpM74Tn58tXxWzas=;
        b=QwMK4m2egpHUdEv8hGaImgDtFagh0LZj8GSPtHKa6N7laAAQOw8vjW0NDxZWYkI6EO
         rROhXtHeD5wAQKl84aAf1edtcLYZPrKUxyCLKpuf7KsseZwfoi5GLDQT6S/UgX4pzgu4
         iWGK4f0bkxvmNaFb4+60xY6o2rAlQ1E/L4Bk/SP0xPzZKI1ill+Qh5tqVQNivVoIW3o8
         sGDjSb6LykBqejmHsJ5JWhZz2bCKzUxREw6gpfEKaUDkHQspImNBxB+g5XfsmUSyAMnv
         H0696b/c/ZFhU3leKevwYTj+XhVDU4sU65Z3AkPZdETD551jJn8K0844smfIONwyqmJW
         3WtQ==
X-Gm-Message-State: AAQBX9fu4SyZ383chHE45l6S02YsVeC8hUdQ5T8vrGIfkZpXMY3Sueqi
	XsMTC3wK3h1Sk2+5gwS6T+s=
X-Google-Smtp-Source: AKy350a6u35FLS9g3OrEFPFpy2W/guflwSS1XgidmyoL8Cj5s+O+s8QIC6mK4KWF+ct2yxETvhEcdw==
X-Received: by 2002:a17:906:b242:b0:931:cd1b:3c0 with SMTP id ce2-20020a170906b24200b00931cd1b03c0mr8232669ejb.3.1681804074814;
        Tue, 18 Apr 2023 00:47:54 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:47:54 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 04/11] PCI: rockchip: Add poll and timeout to wait for PHY PLLs to be locked
Date: Tue, 18 Apr 2023 09:46:51 +0200
Message-Id: <20230418074700.1083505-5-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004758_679903_5128AA8D 
X-CRM114-Status: GOOD (  14.64  )
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

The RK3399 PCIe controller should wait until the PHY PLLs are locked.
Add poll and timeout to wait for PHY PLLs to be locked. If they cannot
be locked generate error message and jump to error handler. Accessing
registers in the PHY clock domain when PLLs are not locked causes hang
The PHY PLLs status is checked through a side channel register.
This is documented in the TRM section 17.5.8.1 "PCIe Initialization
Sequence".

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 17 +++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h |  2 ++
 2 files changed, 19 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 990a00e08bc5..1aa84035a8bc 100644
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
@@ -254,6 +261,16 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		}
 	}
 
+	err = readx_poll_timeout(rockchip_pcie_read_addr,
+				 PCIE_CLIENT_SIDE_BAND_STATUS,
+				 regs, !(regs & PCIE_CLIENT_PHY_ST),
+				 RK_PHY_PLL_LOCK_SLEEP_US,
+				 RK_PHY_PLL_LOCK_TIMEOUT_US);
+	if (err) {
+		dev_err(dev, "PHY PLLs could not lock, %d\n", err);
+		goto err_power_off_phy;
+	}
+
 	/*
 	 * Please don't reorder the deassert sequence of the following
 	 * four reset pins.
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 51a123e5c0cf..f3a5ff1cf7f4 100644
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

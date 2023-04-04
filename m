Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F36F8C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uzx26um0c9TmM0WXgw+kJ5W9dRhKXSTcVNjLQYzYRpo=; b=Wm0zhpVtpgscVt
	JZ6vMvWicyh++CQ7UTCJhgqFqsjrLZ/8OajNw9KUSQIDnlfvgJM9+YtCPvJEBm85SGj79DHjROFVt
	UqBakG+u+8PsJTugXHuQBxaIjYsdzUIBymF+g0RI6JDlP0BkTpjth175G8YaY0EtGR5ccjGVm1W8Q
	Nzsv4LP9CltG8HGE/N6Xi5qKS4KlIUcWV8i82FDeB/G9INRPq41QP5NUCV+qO3Rh6iFc8QxuysPXq
	ZfAZ+mi8b9Iw2jtCPsMjgd0vatd2X/d7XyPdCPiCfoQ4SjhuYLbxKvBwQWyoIOLbfrVpRVSWj1jos
	EtU2SCJNIVWRRhcO4Tmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc4E-000UVX-17;
	Tue, 04 Apr 2023 08:31:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbye-000TBk-1a;
	Tue, 04 Apr 2023 08:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1KieLp2SnNCkcNVzhL5on0X9p6T2oILFqI3zJbVKVE0=; b=mDS1f9btPIM9XaaOxrc1KdBruB
	sJUPAus3TttRDu7x95v5F0VLmId8X4B99WUglhVeXKrio/uviI6G5dsVbwiwoppLUQk3mOjCyJOgd
	y0v3wnwSw+rNNBKbYDTG60jI+5RN2ZQ64qORtkp2iuRWJ8eQBtVcMgah+Es1Fex7LVvVdjQ+Y1Sn6
	UGtLGrDjJ6vGVBJoTcTRowhGt8mYvdb3DgfCKuPDGarOM23oEo+hfGnD8413yONUVZI4F7rXNKQi8
	F7wOfE1PDcbvE5dkj/pO1omU/rGUyre1goy6y2cb2GpTkWUWfYpsHhpgnAR8lOWCenjtnYlf4yj95
	O7oYovWQ==;
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbya-009Cgw-1z;
	Tue, 04 Apr 2023 08:25:14 +0000
Received: by mail-ed1-x52b.google.com with SMTP id ek18so127305869edb.6;
        Tue, 04 Apr 2023 01:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1KieLp2SnNCkcNVzhL5on0X9p6T2oILFqI3zJbVKVE0=;
        b=DfuQveiBa0LxS77gl+Rl1CWKORlrqkFw6RqoDjxce+ccxFFAs9L/hPnx7e5uk1tznA
         WmvqfJPHWR3TvxPic7IcX1TvoymUXUygNdM4itenRL5bWRclKqs7gTWUt3dqs84EI52s
         0UjpYft+7w6xENZfZaH8dq/ktQuJC1cQP37tabVSoDUQ8LbJGanwPWIu29Qs7kAccR5f
         6O/LajzOKeNpPVcn/a4KOcZQNAkZq2oAaX5RVvSdLfyrsFPP+r5CSljYvt9yI6y0EdvL
         2s3p3FrPikJ4Cjj3meQimnQjIDw3dpfVnX8uzdBKKrx3XtL6UZJSyeOGmQ87lo7G058w
         OgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1KieLp2SnNCkcNVzhL5on0X9p6T2oILFqI3zJbVKVE0=;
        b=7XUrGMQJqldpiWBQgHJCzJuKYa/9/NUfkYb3bKX0CocZpMb2+qOJNsN1IzL24jYrp8
         x98YFtZrCdmTCiseZrXCFx9cU3EAkcs2geBPxj/yjqgzel4ns2Nrqmuie0/cwdEYKq21
         1+8Qya2iAVP6wKPx+9f9W3NP6ciof7JBW8V3EBTWSg9/p04dNA0bxlPFwUnwqipXUUot
         cZ4gRbRkAMin+ivv9luBYw9Jp4K9lBaAdjrmGgZc0hkdWo7G6nj5cNzU49yDHas2gIde
         1M07Pj2lbHTM6OTJfEd3Hftin0qusMv6mIYzv8kbPMpLUrNxrpy6SayjBncXmPdL9Xbg
         SunA==
X-Gm-Message-State: AAQBX9fw38IzpwXy1EqBwazrbK8maPZahEDimzDdf8hCz/m1twefurXz
	rP+9Yjz4dzW9dMha+LF+cv8=
X-Google-Smtp-Source: AKy350YOQwqlb1+ARj72z2o90Q5PEeI1B0Q03zcNEyWeTwo7YTYxTPKGar1Kccq2New8JxSwG4BZhQ==
X-Received: by 2002:a17:906:3b95:b0:926:8f9:735c with SMTP id u21-20020a1709063b9500b0092608f9735cmr1784857ejf.32.1680596708617;
        Tue, 04 Apr 2023 01:25:08 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:08 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Lin Huang <hl@rock-chips.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/11] PCI: rockchip: Add poll and timeout to wait for PHY PLLs to be locked
Date: Tue,  4 Apr 2023 10:24:17 +0200
Message-Id: <20230404082426.3880812-5-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_092512_840594_7C55B4EA 
X-CRM114-Status: GOOD (  14.91  )
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
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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

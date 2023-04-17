Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EC8C77B7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RELAhG+/8cSRKmoqERsw1aV0yqBY4zTx5jgGh11ZBuI=; b=GlNboZ3EJnVbq+
	+jZaeawZwAZe1vpbbnUi28GUNq2UBKy+te2qxIf1U1QD04XMWvCG73t5OUyWW2AbCooL9qUEhJ825
	Mx7wRFf9xm6kFSWWuOsE66iyjG64dNjRIep1vHZ559jCxomU7Y5hBE25fm/OIIdw3PJYAE57X/TyA
	kyj2eeTQVH3/iOym3Rw4PgbCklhjo8RZW8cVJyB+5tIUUToiXIAHYFEayr9Uw+sxC6tkvocnG6OOH
	F6M9ezxRxCvgWC47dPytvpeh4Eax9AFVYGmX1568rmvTP+9rnqfx1Ge4R/OjPllzpF/IZu3zowf2k
	Ph+0hVYigeREiguuWqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL93-00FXVs-1g;
	Mon, 17 Apr 2023 09:27:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8o-00FXGY-2z;
	Mon, 17 Apr 2023 09:27:21 +0000
Received: by mail-ej1-x630.google.com with SMTP id c9so23511294ejz.1;
        Mon, 17 Apr 2023 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723635; x=1684315635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLLNml5JKhj397ae+g4CH1ZixXUhs0zXnanDgXVxrsI=;
        b=scH27x7Lfo3XxAqAShzXPK3FRU07HjlSo1qEqoo4MDZo69gGopQ/1eIT7dlKyk8f7s
         VD04Vo4oGABIyCpQhXx0/3qZx1wHDO8/JxhcGd6KMW1zlsKhjiuJbiGnwSafnpemprHr
         nPmrVTMJSTYnJsBUzVT5KzIuvbxKC8i0dYt30s6RohaDwEWjYfA3XfHDqyTq2woRPXm9
         DFqV4zHWZHVcuSE/N+28ObhK+PUonbJhTOAJ2pPp/LX/pfCyoLBpcroUCGuqNenUw39Z
         76N6PHpzQi8oJKC6Pe9DFHt6CNx1kEjF/dCvjx0hXrPpgLKmJwNvRK1BQ7G1L/8PFIDz
         pirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723635; x=1684315635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iLLNml5JKhj397ae+g4CH1ZixXUhs0zXnanDgXVxrsI=;
        b=TDcreDcq1+OZzOCsaUxHh7hhRfEKldpFcsham+7m7wfmjrdY6xRTnPUF88oTk5Icdt
         VYtxjeKPl2ifk/g8RCNOaUUVjBf4a+MTVdQMfCWm+gbT/d7Py/0SMWrw3eYiLDYsivoN
         mQHOsUoxZGEU9vTcvNFw2OqQVKx+TbR6vdbbIGv8g3KzlB46+qX/KaD1TC+sehpearq8
         BtF4vMbB80rb/nLEgIobaqtQaz/U1TmjisD2RYBdfkAOPHi14iJvTRHdhqzDebUvsZwJ
         f7+SjyTuB1O2t8U0fKXWrv5ol9rc8UNFCiEef39G0yXEm68kWi1EyDy331dsLqu3Qucc
         dmnw==
X-Gm-Message-State: AAQBX9cG4D6F6o51Webom6CaeCxttOTqWclyyAQlpb7Fnuo3fL8naKZ6
	aSonJXhumlt9LiyxFLY0pydZCeUMIpN+OA==
X-Google-Smtp-Source: AKy350Z8KoKMkJsG7iEJYX4m5YwAwzsohyzeBhpELl2MN3hFoq5zJDivwEB4zQdLBVUnvoJtN9Xlxw==
X-Received: by 2002:a17:907:a08d:b0:94f:8f37:d4e with SMTP id hu13-20020a170907a08d00b0094f8f370d4emr1033249ejc.65.1681723635543;
        Mon, 17 Apr 2023 02:27:15 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:15 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 07/11] PCI: rockchip: Fix legacy IRQ generation for RK3399 PCIe endpoint core
Date: Mon, 17 Apr 2023 11:26:25 +0200
Message-Id: <20230417092631.347976-8-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022719_014271_53A0B513 
X-CRM114-Status: GOOD (  13.97  )
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

Fix legacy IRQ generation for RK3399 PCIe endpoint core according to
the technical reference manual (TRM). Assert and deassert legacy
interrupt (INTx) through the legacy interrupt control register
("PCIE_CLIENT_LEGACY_INT_CTRL") instead of manually generating a PCIe
message. The generation of the legacy interrupt was tested and validated
with the PCIe endpoint test driver.

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 45 ++++++-----------------
 drivers/pci/controller/pcie-rockchip.h    |  6 ++-
 2 files changed, 16 insertions(+), 35 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 4c84e403e155..7591a7be78e0 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -337,48 +337,25 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 }
 
 static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
-					 u8 intx, bool is_asserted)
+					 u8 intx, bool do_assert)
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u32 r = ep->max_regions - 1;
-	u32 offset;
-	u32 status;
-	u8 msg_code;
-
-	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
-		     ep->irq_pci_fn != fn)) {
-		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
-					     AXI_WRAPPER_NOR_MSG,
-					     ep->irq_phys_addr, 0, 0);
-		ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;
-		ep->irq_pci_fn = fn;
-	}
 
 	intx &= 3;
-	if (is_asserted) {
+
+	if (do_assert) {
 		ep->irq_pending |= BIT(intx);
-		msg_code = ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA + intx;
+		rockchip_pcie_write(rockchip,
+				    PCIE_CLIENT_INT_IN_ASSERT |
+				    PCIE_CLIENT_INT_PEND_ST_PEND,
+				    PCIE_CLIENT_LEGACY_INT_CTRL);
 	} else {
 		ep->irq_pending &= ~BIT(intx);
-		msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;
+		rockchip_pcie_write(rockchip,
+				    PCIE_CLIENT_INT_IN_DEASSERT |
+				    PCIE_CLIENT_INT_PEND_ST_NORMAL,
+				    PCIE_CLIENT_LEGACY_INT_CTRL);
 	}
-
-	status = rockchip_pcie_read(rockchip,
-				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
-				    ROCKCHIP_PCIE_EP_CMD_STATUS);
-	status &= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
-
-	if ((status != 0) ^ (ep->irq_pending != 0)) {
-		status ^= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
-		rockchip_pcie_write(rockchip, status,
-				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
-				    ROCKCHIP_PCIE_EP_CMD_STATUS);
-	}
-
-	offset =
-	   ROCKCHIP_PCIE_MSG_ROUTING(ROCKCHIP_PCIE_MSG_ROUTING_LOCAL_INTX) |
-	   ROCKCHIP_PCIE_MSG_CODE(msg_code) | ROCKCHIP_PCIE_MSG_NO_DATA;
-	writel(0, ep->irq_cpu_addr + offset);
 }
 
 static int rockchip_pcie_ep_send_legacy_irq(struct rockchip_pcie_ep *ep, u8 fn,
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index f3a5ff1cf7f4..ffc68a3a5fee 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -38,6 +38,11 @@
 #define   PCIE_CLIENT_MODE_EP            HIWORD_UPDATE(0x0040, 0)
 #define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
 #define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
+#define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
+#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
+#define   PCIE_CLIENT_INT_IN_DEASSERT		HIWORD_UPDATE(0x0002, 0)
+#define   PCIE_CLIENT_INT_PEND_ST_PEND		HIWORD_UPDATE_BIT(0x0001)
+#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
 #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
 #define   PCIE_CLIENT_PHY_ST			BIT(12)
 #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
@@ -227,7 +232,6 @@
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_ME				BIT(16)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP	BIT(24)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR				0x1
-#define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR		0x3
 #define ROCKCHIP_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
 #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
 	(PCIE_RC_RP_ATS_BASE + 0x0840 + (fn) * 0x0040 + (bar) * 0x0008)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E501C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X492oqCNXgBHHUcM0bAqzGXm5qZTrI1PC9poY3Berr0=; b=wSS9pQ4V6kgX+d
	pzxNHwWn0JItJetQr++7CVxzMc3vqdz1QAwc6JJBg8wjHWotvD2RbFmmm6AaI1WOdiAk+JHaKY3qQ
	IL0kcoDO5ujfi99UsaTh2sATlRc8c/uEjL2Y4ZqnColMtQSQlhFBynZdvJOAD9y1y4CItKViNuWVI
	NvfhZnvSEJHa5NzSmhiZtwV7udB9Ip61SURm+fQ1YoZg+BkslYw+QAQXw5WwZeCb+b4uaUfVS/MGG
	gBkDeNy8UUmbfsqCh2VKxNBYmIsMVf7mT7L3HEo5Vytb63uI3hOtkMMfZ2k/CcfvPurxOnSNNp+js
	7Kb+yHhMGT48RheREfkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc71-000VZ9-02;
	Tue, 04 Apr 2023 08:33:58 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyp-000TDo-1c;
	Tue, 04 Apr 2023 08:25:40 +0000
Received: by mail-ed1-x532.google.com with SMTP id ew6so127183939edb.7;
        Tue, 04 Apr 2023 01:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMOuHcpOtvN2Vos7+WkyUoQhNIDMZLfD7nUQJQoM+mI=;
        b=pVppU3a0PdLWIHGdL7m0UT+/f7hfM4JMmYsvNGCD8CiAWXScwKhNZ0mkgeK7ol0Z+d
         S5Xk81m0touXMg4xxXOYGgw1jCaKugWiT2PsAq6080EnSlTq9vMaYaGd/M64uFmQmvdN
         5djw2i0/VywNrLXHAT6Uxo+BnOGzz4nfLoFTFMdFzAl1eJttd3+ZoKFJHpYUNWO9R1Xy
         mcuPPdmwDlcJwREGFMD2zdV+MO8voIhuHtpb/SwnDSo/idg+wRwEH88RskTlxXrfnMH7
         2dF3rwOaJgaEDnJEp/0b0rm+0c7g4As+ykfoDLVCiOJ3bdm+9TihLnRc4crqKRKYCjcR
         KMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YMOuHcpOtvN2Vos7+WkyUoQhNIDMZLfD7nUQJQoM+mI=;
        b=tNfL1fD+bo5L2+tsyusMHNO1Rq5hYpgXcMgdIxVBimIjJ0sMssMB+fo97SRA2SeSTH
         rzJFQQFBP1vveHz/oOX4DIc3IIgrIWTsp6rrLTr3aYo54ElqGQ5mcys58SbKHuZYm7Ps
         PoovmTL8TomxL1HOVNOvln1Javcn4KnZN+nHxoSx5KwInq60mDWf/OvXpU6bCxubDgoE
         IEHCtEXZ8MIaTQMZZIfw7z4lMzdpHWLIK5Xndxypl9jC6hCOUpSZeK1wKsLrvrgphV8o
         OKeRas7/jYMbwmCCKq4oSemomnSRt4S+8VZU+JN/cPn2MNEaWJ0/PtodTbX843VltP9o
         Q7IA==
X-Gm-Message-State: AAQBX9cFkiChlDj6ysKxqaFI0QRcXitGmAJycd/AUqJ2TJYPWMqk3GmW
	EGrlpQb9s6+Es/BN4iOPu6U=
X-Google-Smtp-Source: AKy350bshUiIZxT54qrvAjQMPVs6ektUN+zdeXnmDQ6O2Bysx+xuNgnRGmxA4V/c/HGT+dYVm6L8Vg==
X-Received: by 2002:a17:907:119e:b0:933:be1:8f4f with SMTP id uz30-20020a170907119e00b009330be18f4fmr1529889ejb.9.1680596722695;
        Tue, 04 Apr 2023 01:25:22 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:22 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/11] PCI: rockchip: Use u32 variable to access 32-bit registers
Date: Tue,  4 Apr 2023 10:24:22 +0200
Message-Id: <20230404082426.3880812-10-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012536_588514_847CE8D4 
X-CRM114-Status: GOOD (  15.25  )
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

Previously u16 variables were used to access 32-bit registers, this
resulted in not all of the data being read from the registers. Also
the left shift of more than 16-bits would result in moving data out
of the variable. Use u32 variables to access 32-bit registers

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 +++++-----
 drivers/pci/controller/pcie-rockchip.h    |  1 +
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index f366846ad77c..924b95bd736c 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -274,15 +274,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
 				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
 	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK;
 	flags |=
-	   ((multi_msg_cap << 1) <<  ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
-	   PCI_MSI_FLAGS_64BIT;
+	   (multi_msg_cap << ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
+	   (PCI_MSI_FLAGS_64BIT << ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET);
 	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP;
 	rockchip_pcie_write(rockchip, flags,
 			    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -294,7 +294,7 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -355,7 +355,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 					 u8 interrupt_num)
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags, mme, data, data_mask;
+	u32 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
 	u32 r;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 5797ba73bb6b..1558eae298ae 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -226,6 +226,7 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
+#define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET		16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET		20
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

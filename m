Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFFDC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnWCZQKY6vIa+VtMHJrQBFlQVwnukX02vje4DIEEOJ8=; b=0yYYuarOGLepk2
	IiEMkGeZxcRkS6R8lupdZDvDgX2w0o+tYBi5p9b7fl/XSh/6v9hS8B592P+KlkER14Kr7oGhBYuWP
	+U7A7EbYsSxkJ9AfNBQ9HIp5/QDAg4yhKc5XxNcwf+oHxRLWE1kwMVpZOOI2zz0eGuc0oZ6dP26Jc
	K82clbDMfr05pvMofjPlpVJDbgNiiCJwq+q0YILqqzAVjberGpJwF0XvZGRZiDIMCMUl8SgmEMTrA
	8arZANz0FuF1xnYbgTjlHUSjon1qyLbMTpt+nCyEBbNlz7IGkIpEjnGfQWcxA2ckFmfz+p/V/VvG1
	afRrcqLTyDdMsdaaSbJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog55-001CCN-2k;
	Tue, 18 Apr 2023 07:48:51 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4V-001Bgg-2O;
	Tue, 18 Apr 2023 07:48:22 +0000
Received: by mail-ej1-x630.google.com with SMTP id ud9so70620271ejc.7;
        Tue, 18 Apr 2023 00:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804090; x=1684396090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l19cpi11+VLyNXUHh2KnWwPalv9JqFIq3IuDMicAupg=;
        b=pSX84xqzROANM2hGagaRoX4id6ox42yfA50GClMgbs+YZH7nTYGOdUgWghtiKreplP
         NQv8ZMH3HV9fhzQVoF/zoWyl2qL5mVYr2QUicz0exYzD9qFqbWtbbk+6+KFropKfzUGm
         Sa5YJab2vdhC5y+gdkjyc0oqAun1dee6tCcVnlPPNgElOe8QMr85r3l6GpH0BV+h68KO
         gE5MLYyFFbHiHwEXFdyX+HVRJKkpBXOGTPJDxOfP0QQXhdibcX6q9HNL1pcEw1yXI+ZE
         UvSceRdFCa0cS7VTF0nKywgHarEoqh3WRCsRjA44bFTSh0hI49NZzTvVFETNdrcwp2Ez
         CPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804090; x=1684396090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l19cpi11+VLyNXUHh2KnWwPalv9JqFIq3IuDMicAupg=;
        b=IItZ2o4Bvhf1y1+Bnjdl3NDNibLHSkMxr/TDO8kWRIZ4Yzw7Og3RxTypQVyzS88l2U
         0CIh9/rleJvxe5vvNxfPSovKbMaSjjdNLCeBDuVbT2g1MfX4+/TWHZangrnqIT6Mj1Gr
         F1GLuFFbNYP6uaUxh3/duDzXhxDsespDrKjdarbbH/zw56dgDEYHKlWO10+314KdJ3sc
         DB/eyo7SHskZo87bOemM6FR143owjHOK2x845qNc2VRR1AQqXXDZmYPLniZ8DR4OV6st
         DxIhVNtTcaUlFJaECIOThOA73jrVtefiuW6vW/MnSqfPdHkmo72dlCnJ5DaIea1EUO5R
         h/xw==
X-Gm-Message-State: AAQBX9d+hs5aAEsUNoaPosAJ2JcgV5MBy9YLIv7E/+q4KaSws17ieNkV
	FaMYYxWPhRUeulvjGkqs3wA=
X-Google-Smtp-Source: AKy350YBgXj2bPbCmHnmYdvZoLazNpv7yPdzMrGyRKc78iy8XexClRw1CNKw6QRlNpVA0xR9I2rrrQ==
X-Received: by 2002:a17:907:160b:b0:94f:9cd7:adff with SMTP id hb11-20020a170907160b00b0094f9cd7adffmr4663896ejc.18.1681804089808;
        Tue, 18 Apr 2023 00:48:09 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:48:09 -0700 (PDT)
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
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 09/11] PCI: rockchip: Use u32 variable to access 32-bit registers
Date: Tue, 18 Apr 2023 09:46:56 +0200
Message-Id: <20230418074700.1083505-10-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004815_796897_13C86953 
X-CRM114-Status: GOOD (  14.62  )
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
Tested-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 +++++-----
 drivers/pci/controller/pcie-rockchip.h    |  1 +
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 771f1bb93251..63fbb379638b 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -271,15 +271,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
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
@@ -291,7 +291,7 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -352,7 +352,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 					 u8 interrupt_num)
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags, mme, data, data_mask;
+	u32 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr;
 	u32 r;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index bef6d7098a2f..501d859420b4 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -227,6 +227,7 @@
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

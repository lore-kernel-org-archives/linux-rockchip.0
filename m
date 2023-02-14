Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6554DC61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrTeawtLerGNREx2rb4claqTyV6qkHZDdPIX7bQBgAs=; b=aI3kAtr+5IiS2w
	hQoBLk08UttVABt7UgAaF0oNDclbKaKTkvSDGFJwO94LvoycFGfB3CoGzi9NKSEwWaB5TwVMT2SXr
	Mnt+2gQnKI3bjMsGRzDpFWHrPb2fR7FRcfQEBvxF243QEMB6I5ubZ1cRFRe0Hny87r2323/qlLZ9f
	mKpeE6a71RLFY1M3+VAxHRC6nAQew4NgHcN5r8rv+gNtsWc9uhvGZY1itPBAuIgUg3XFwX81Y0+Fl
	iSPPkwb/kTuleKzSb7onkLDKipziKIc4EBW6HctsG6ojZHdj4fOJwgw9lX/9dRzD9pB8eeNS36mPl
	H+2DaBZXMyWCIGy+ftXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwb4-002HoQ-Ar; Tue, 14 Feb 2023 14:47:54 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0f-0021Qe-5X; Tue, 14 Feb 2023 14:10:18 +0000
Received: by mail-ed1-x535.google.com with SMTP id fi26so17528441edb.7;
        Tue, 14 Feb 2023 06:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=leNS6hmyIgQxbPlXUve4JFJD/yn1aM7eCJEzZy46jcA=;
        b=GxhRaKhlcHs299NEKAX+wtIe80PW+/cCcVAN85uszD6SL/ZLUlVBRK/zZy6eTtxirj
         LFnv1ol9ft1keCp8bdOfrT/daz2JpshsLZ7+Kf3h+Iit6De2lNuJOMhG+3i+geaugKje
         DQcUtcvnOt7nsySzShkD7elKEwj8Shxiyfucv8pGlvA58Bj8dxLgH1WLcdYa35Dik8JI
         pGOgGpZGfNf7MQ+uVbijgCiYn1rPiTfPIojD5Z5zGtqAQiXJirGtAGKUuNhgEeETTtuR
         gA/v4Yj4CB4+rRZwPqtWQmt3ksLC+hqZMHMHY6QAV+IfUd/n2GnHofVZKFIEDWA+qf1e
         YQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=leNS6hmyIgQxbPlXUve4JFJD/yn1aM7eCJEzZy46jcA=;
        b=0FwaDHhS0p/2L7OP2Qr9WjnvvStzoVT7XfQbSh0EIu6t07ukWG3myBvxJqJ0pAM/fU
         CaLWUcrJ5Tm7fXWWnxCSoACucfAp9OIuBKoCjc8h9YpmZ3FN4bsna72OR5jXbD6lVPMH
         UGBLpgfE0YHZKkMWkPXo/P/XdBhFhCab1l2oLugHh54SkQwm5qsarLYr4szIv0MMHzxh
         T05x9S+H8MolevuRvcHNF7o5R5pbby9WzALu33mye5mRy8L9/BtJV1xynwPEjQdXYFdK
         3u21kd2SK4VQXSoqHAfTcDm1WnnL3tbjKNSvV1r7CNidEMHDQNsDsMDJS3sZ95EAzM1Z
         QQCg==
X-Gm-Message-State: AO0yUKXRMElBIYxxlLT2zV+JuO0AnitJ8rQzmIqPkqsPZZS5rGI9rXbc
	qfdIjgIyTFdRg/4cwMBOh7k=
X-Google-Smtp-Source: AK7set9N9N3VH6ABv4tYrC+s4HqH1z0Kb6sgQzquJYWLZEM44/gK2FHTXsNm0Mn9sTpMk7RJnouLTw==
X-Received: by 2002:a50:d7dc:0:b0:4aa:c77d:fa0a with SMTP id m28-20020a50d7dc000000b004aac77dfa0amr2388921edj.22.1676383814714;
        Tue, 14 Feb 2023 06:10:14 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:10:14 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
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
Subject: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit registers
Date: Tue, 14 Feb 2023 15:08:56 +0100
Message-Id: <20230214140858.1133292-9-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_061017_342043_84AAA14C 
X-CRM114-Status: GOOD (  15.53  )
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
index ca5b363ba..b7865a94e 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -292,15 +292,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
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
@@ -312,7 +312,7 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -374,7 +374,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 					 u8 interrupt_num)
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags, mme, data, data_mask;
+	u32 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
 	u32 r;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index e90c2a2b8..11dbf53cd 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -227,6 +227,7 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
+#define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET			16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET		20
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

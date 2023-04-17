Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E71FC77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx1BExiQ8UxjVK7zh90MfqtyQHgsIdSIQU3HEPOVwkc=; b=qwjJ1RqbtkPw/g
	NprUUluh7fziCHQW+25Wy+HD/RYdqxwRslJoavOEPUmuYbDPSmk0InAKpTcl0dYQYKCuCSdTT6JzE
	uhQ7W0gTjyjZlSNJlm75HRn/Rwev/sXOm7b00DF2DK5iOKqbUQYWak/ae3P5v80nGsEK93yMD1Yby
	zs+VY1AvZJhfCuf8KJ6R7wf8Vu5iZeRdzsgYiTKq8DOTMEVSJDZ+1n/I5X8I77pvgrwzzrFAlGK6L
	sEn/Uejhfe4e8+syaifd4n00RTGcoDsHELH4b34p6XiU2a9xFoczngLWG/tlSZsDD6B6P0D5fwIOm
	BvSGGct2l+wz7EDuLVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL9b-00FXvM-01;
	Mon, 17 Apr 2023 09:28:07 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8w-00FXOr-0z;
	Mon, 17 Apr 2023 09:27:34 +0000
Received: by mail-ej1-x631.google.com with SMTP id q23so52892066ejz.3;
        Mon, 17 Apr 2023 02:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723644; x=1684315644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b4o02lv8btLHgvAb0bTyOqyBzz9fqiO7r5dsELy7YLE=;
        b=eQb1XOV8ngNBdjCD96k1WhxndY5V/fi5QMDlfdfy3TRvVfxf1KjlEoQNSEm8xMkIQ1
         Iv1PZA/EEeHliDoTolA+RKwUruKcutkagCQm03K13UWzHHovuIulrqF1QD1BGj1eGEjM
         +SBUI/srFp+ChU/sWgmmaAkvm9XSQXnm8SUUWpl34IFfZbsH6Gu6sXHLZ67mTk5S66+S
         aNuUYxSgBSIa3rAY964AELIDZQ/wyRa9VVwE8T4igE2cpavZcdbWV7SVjqIlm+9R9xNA
         LQqWuokexr/+aQaoX2wbfiq+DCg11wUUTp1ewYU2+zac1cLhijCv4wUzmW93aYj/skZ1
         SMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723644; x=1684315644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b4o02lv8btLHgvAb0bTyOqyBzz9fqiO7r5dsELy7YLE=;
        b=Lcv/g6+OlEO1hHgeYRmpARkL/jPfYBLnn24Dr37/2nkPdJOREvYEP3kKaIDg86N/81
         QQ2X+5TN4EPzbPyrrc5DTSMRXmRD+psjfnhKe/d0Ycl444a1cstZgKk89T+JDQwugzMH
         1vl8XT3bPPHmc3zEW2wH9siqbwDLhwuCXDXkyV8jKaharEn/kVzC4tPFP+SWQ/PZ6eYK
         w6N9Bk/zIixJlspjw5h3CXLMluvu8QXK8paclNMr0tWp6eHOxNfDBYtm9VAxyPDOo3El
         3v8/1d5xMnUtFWATOe4pWNVGXDT1jAtTc93s7jUTKg90SNNASGjHEau2p3429WpUmmsw
         Tgmg==
X-Gm-Message-State: AAQBX9fz1E7eR/hRLyE8dUYM9t/VuIWAp+zNhQx10LtFWGGm19DjKBC9
	uwvIdVsM82BCVi+rNy7TMFpUs2AncG2MaA==
X-Google-Smtp-Source: AKy350Yu2DfKlLCPe0jbhDidtr/vhADslB5wz9t6ykKrfUfMo2K7+3iYAI5wQ4yllCekR4AHpY7SYA==
X-Received: by 2002:a17:906:89a4:b0:94e:23b:75e9 with SMTP id gg36-20020a17090689a400b0094e023b75e9mr6008515ejc.43.1681723644295;
        Mon, 17 Apr 2023 02:27:24 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:24 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 10/11] PCI: rockchip: Don't advertise MSI-X in PCIe capabilities
Date: Mon, 17 Apr 2023 11:26:28 +0200
Message-Id: <20230417092631.347976-11-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022726_368355_E97719FD 
X-CRM114-Status: GOOD (  16.25  )
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

The RK3399 PCIe endpoint controller cannot generate MSI-X IRQs.
This is documented in the RK3399 technical reference manual (TRM)
section 17.5.9 "Interrupt Support".

MSI-X capability should therefore not be advertised. Remove the
MSI-X capability by editing the capability linked-list. The
previous entry is the MSI capability, therefore get the next
entry from the MSI-X capability entry and set it as next entry
for the MSI capability. This in effect removes MSI-X from the list.

Linked list before : MSI cap -> MSI-X cap -> PCIe Device cap -> ...
Linked list now : MSI cap -> PCIe Device cap -> ...

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 24 +++++++++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  5 +++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 63fbb379638b..edfced311a9f 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -507,6 +507,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	size_t max_regions;
 	struct pci_epc_mem_window *windows = NULL;
 	int err, i;
+	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -582,6 +583,29 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
 
+	/*
+	 * MSI-X is not supported but the controller still advertises the MSI-X
+	 * capability by default, which can lead to the Root Complex side
+	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
+	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
+	 * the next pointer from the MSI-X entry and set that in the MSI
+	 * capability entry (which is the previous entry). This way the MSI-X
+	 * entry is skipped (left out of the linked-list) and not advertised.
+	 */
+	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
+	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
+
+	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
+
+	cfg_msi |= cfg_msix_cp;
+
+	rockchip_pcie_write(rockchip, cfg_msi,
+			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 501d859420b4..fe0333778fd9 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -227,6 +227,8 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_OFFSET		8
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_MASK			GENMASK(15, 8)
 #define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET		16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
@@ -234,6 +236,9 @@
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK		GENMASK(22, 20)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_ME				BIT(16)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP	BIT(24)
+#define ROCKCHIP_PCIE_EP_MSIX_CAP_REG			0xb0
+#define   ROCKCHIP_PCIE_EP_MSIX_CAP_CP_OFFSET		8
+#define   ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK		GENMASK(15, 8)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR				0x1
 #define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR		0x3
 #define ROCKCHIP_PCIE_EP_FUNC_BASE(fn) \
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

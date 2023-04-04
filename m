Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2EA6C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYYqKypgF3l5Eyz1XmdbtjG8/cBrKqCfBP37puSpiOA=; b=hJHguwJGWVRytA
	/9ZivNPlKTPCVsDpFmxgEpqxrP75coz8+Z50q4xT5PHq+DDQ6/ZaI4BVUqCMdGqCyyM+nVooEknIi
	c188A0Ukh36HjYYoocxm4M+WPCmwI/+5zFCHTVvnEhk5nAXGovyI4S1JP1Vv+i/R0m05hHhkY0PGN
	N4LpyZKbqaDu7+BeNpIkQpV5gYV5PytyWuvABvYN7INDplaHsyoccgWTc0MM4BJ/nzvWUO+mKJxQ7
	4/mcII3mzW0BmHKrvIgrYLUnpXZoihcw2VrTn/H6ZR2hGTphlvHoNAobzgEcO/Qe1YznW3R+enMzD
	aCGBRY5K0duUEfDRqOYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcKT-000ZN0-1X;
	Tue, 04 Apr 2023 08:47:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcJO-000YhC-24;
	Tue, 04 Apr 2023 08:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RBCeY3EEewEkw2R8YHGP/k/d6javu61/xUXZZ1FDqBk=; b=IwUh+qiDf9MN/g2e2+ltCUlLgw
	vzj51ZeMT08liARYQL5VRZthdHoz9DT9bp5S/s4W7+Sg83PTJ8tLyxwv9oxg2aJNo3qg9FMMhGROJ
	JJR0uxvkDJDNV4CPWtJZ+PknF7mOn1CV6H0bKiOvfuBY/YiDb/AItdLM7Tmi4AyyufYM9WNbH8ROB
	eMzIscdaImPf46VDqlZU8YIli99yMbVdtSeLgN3dNOT76aK2WjOrjFkPLtd0ur59fwMaKbHdcy882
	EXb+bEXiWXrz+DLaOd+EUXdl84PV2Zh6hLjZFJ57etiRA2lOoCWmLo7LDgqiMap4Y4AwbQB9RQmy1
	CevtMBGw==;
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyq-009CiW-00;
	Tue, 04 Apr 2023 08:25:30 +0000
Received: by mail-ed1-x531.google.com with SMTP id t10so127115454edd.12;
        Tue, 04 Apr 2023 01:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBCeY3EEewEkw2R8YHGP/k/d6javu61/xUXZZ1FDqBk=;
        b=g5Xt8tTMjwxsBK6M1kTxLf56jkTiuNnKB4EzsZmMcSvCUEqljqilwIL4OfQOd1KUbU
         iUxh1LG8nlQFpxPX6XZpAOEfl5hV2XOkdRS14Vrt0UopN2cLxQjwr4QlAqy4ld2+B++b
         3R1uSIPMttuv/TDS8qURUb2SQB8m01cFBSIKzSKhBriZtANaLs85G0iAPDRaxDPC/egw
         g7ClanyCPoMIdryMwnteCmSRM5kzcUrknoGsLjlbAgrcPW8Zi3nraakM6RUg+K0EZJ0E
         FYzfVaDp4qxqoYyBC958O7VRmfWgizjFUuPMtcmQduv+3PUKhXcjKUf7VJ53DfN9qvG1
         zlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBCeY3EEewEkw2R8YHGP/k/d6javu61/xUXZZ1FDqBk=;
        b=k+wZxm8MLUu+sK8o8GTsYMBlSZj3IKl+ZSDhbC2RdZNehasLrYN3iK0FXUUYUeedjJ
         l5KOdrcaLymnKBzSb9u2muozyGZTgzqNeR6bpcVrre+choMV538yy5GItRfirlackCvY
         BPc25CFdTEqOqt6HexzMGTUIzox5BVzAxCoSUsySyCqo3C90+yfqMCJimEMBmk2JnlUm
         HaE5TQkgj7lcOes5cS+pgmoacJJUXjKCGhYQoO3uuNc00iB9hpZRDEwMR9YF1scZaRAs
         LDXtLP4WFAM6Y9OlTFlLYaXmj5ruKjG2rVzPts+l4Cc9NTZ6KQPgoEjAR4AsR4BaQ2IR
         q5eQ==
X-Gm-Message-State: AAQBX9fZQhQUQWRTnEqjSDFlszp4C6I2MQOQaPb2bq0cIKYEWwOXnlhJ
	SMvIpkQDTobFXK1Y+cz9958=
X-Google-Smtp-Source: AKy350bxaJLguuUheH5puu+Kr9GQsSw1qq9xXlbpIvIOx6rqDFa6FfO12WN1/o8lPtldO2qyVNSFZw==
X-Received: by 2002:aa7:d448:0:b0:4fe:9bba:1d65 with SMTP id q8-20020aa7d448000000b004fe9bba1d65mr2033168edr.21.1680596725502;
        Tue, 04 Apr 2023 01:25:25 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:25 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
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
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Lin Huang <hl@rock-chips.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/11] PCI: rockchip: Don't advertise MSI-X in PCIe capabilities
Date: Tue,  4 Apr 2023 10:24:23 +0200
Message-Id: <20230404082426.3880812-11-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_092528_404760_745D641F 
X-CRM114-Status: GOOD (  14.26  )
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
---
 drivers/pci/controller/pcie-rockchip-ep.c | 15 +++++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  5 +++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 924b95bd736c..20c768287870 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -510,6 +510,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	size_t max_regions;
 	struct pci_epc_mem_window *windows = NULL;
 	int err, i;
+	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -584,6 +585,20 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
 
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
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE, PCIE_CLIENT_CONFIG);
 
 	return 0;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 1558eae298ae..a21070ea7166 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -226,6 +226,8 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_OFFSET		8
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_MASK			GENMASK(15, 8)
 #define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET		16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
@@ -233,6 +235,9 @@
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

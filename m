Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C87BFCCF9E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 14:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCONs+zh1P7P04TTJHfIko1doUM9qHscf+lYuQ0aKDY=; b=W8IEoja0Q2D/JD
	ZvzEGgxCq4BEzrGz0fovBElEmMq0rpwdhoTpyzfqVT4sAZw/jutVlEDI/shxoKYoK5AJTrc4C0Yqn
	RB5ZJVKTjL4o+HVHmQJIGWPOjIyOsc5kSu9f31Nwct8oWlvgi7BabpuKKpsFlAaWjSKdY9ihpbgmf
	Z+ga6Q3GxzPEcbCLEQoi/byhoVSU//V04cBQ28VOYEfSkLtPw4yqBs7h37a2oLDUPjT3QNkyvd0RU
	lsJ5RNFb2GmU7A10NZXmbYKxSkQnlI9Eg4vCNhrwWzEfYWJeTIdaVAcf0eOJUtSDjw8XW7NiAls5a
	hGvgaWOqWu/TDEeYOiGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOdz-0000000EATg-1CI6;
	Mon, 27 Oct 2025 14:56:23 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOdw-0000000EASG-0WH9
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 14:56:21 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7a27ab05a2dso4013874b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 07:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761576979; x=1762181779; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyBK5HLss/zF/tM/K4qW2J+Z3asnvx9H1hG28ozg6Qk=;
        b=FvXPULNr3CTQkTdb7Hsx/Tl4M5vpDUTWbXakmjOpAyEppEUgsUdyVOb5MhuVRJmC/G
         znuOLgaqg5/jplfruj2NW1BP3TU9MsopgdLPC21D0gb/Qqr9PrheW5Pt3+5IaYBxpoa1
         TnE7HMkOF/EWLW9e1kGtuAOOVSwHOF88uA6/7cDUmTByp0z8Rl6yKwzIA8EBdoQLHwcB
         Yuh+vhpeZLtDrF2TBRDI8FP7vh36wqDblvKWprLu1ei0L01wcX5wU8pc3nRVrYr3XZ6E
         bR/CpEQYZ+2CSFPLua4nuAUgkIf7A13nQ2j7khDscs8czWA2z5JAcEX2TCqpQPHXiRjV
         zSPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761576979; x=1762181779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gyBK5HLss/zF/tM/K4qW2J+Z3asnvx9H1hG28ozg6Qk=;
        b=Jgj80N9EA2T4YxB91LWQjqKJmhKxY66zX5dYzLNqfRlXPmDc8aLncpDeoPtlsxHwq0
         7zTaglQhqqQKDsUU+Q9Kx9uv3oQH08ZmEgeC/MC42encAkfm6ynG9QhGLOk5hCTXYMmD
         bfQ0LIS0DR8gaBnzAxrYJZ1m1WPazj13HMFtNXLfU4Dc7dELJvFCAxmJASo76fjoQkpK
         hh25yIE41ukjaJrkAClBggNPZTrdz3Rv3BmsDCZkc0lpcrHfbeCs7muvNp6KafIM8zTz
         /s0UyD3NxTHvxm/m0Q9/+h/T+EdLOiTFG4X4NMZ+9hNzI5Zh+FlFGiBOVFl6LD4DX1AM
         U3LA==
X-Forwarded-Encrypted: i=1; AJvYcCUxDku+xi//NEiERh3ms0NViKfUXJT37vDvcCy3BjOtYxPRObWLFxf+vVWkACjYiyzD1+nGIL6CD1K8GTKqLg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2L/BOKyZFFYnzmy9FkpFQEE8JeyiawX1FWa6M/6IDG7FMNE//
	OhZaKwP+DwIHGfuEP7LcmLKuJJUV0ylH+Q+t5pDA4hxRai3fvNI+DT5u
X-Gm-Gg: ASbGncuBVbZy0/vz3s7np09XZhOzZ+P0khAHjJ9teNwzzH3i6Bgsu1Pl2vxsNqtbARG
	GxO23+jbrBjjKC77AeeGneDs9q6v31+qU8f+HIm4ayuHjRAZ7CSsi3zGGHtnUb10qDgVyVwM+yw
	NCVYq+YvcG+6rtrx4NZg/4IWmI/xfqaghlEe3+bOtBgtpVbzzcb9w3v0p8U6Osb3lWw1dxA83wH
	Zkn1oRXyjSBn0WnZcoHgzs+G6tLB7ckdloYcO3QEZufB1DhgR53qrv29F++U3gDhrH8eecetLC0
	gaRrNnUPmVT3j+6aa9HF4R8o5d+D+uLtVXVRf6v+dcAgP0pBfVK0lY2KszwQM8nkwCtJ6Dqcc7s
	uEvFZyxuOf9iPtr3VQSOi8abYUoBhjqgjB3juTZGx8bEQhK7wxJMYaMXWGGWs4cwCT0lVUmvOhw
	==
X-Google-Smtp-Source: AGHT+IF+HmWWIbu4RONj+wms//aaht+5AP20I8+4ooWFn7x7evY1F6ZZlpjlb36aBgMXfZJZOoYYlQ==
X-Received: by 2002:a05:6a00:928a:b0:781:9a6:116a with SMTP id d2e1a72fcca58-7a441bdb5ecmr276136b3a.9.1761576979105;
        Mon, 27 Oct 2025 07:56:19 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.108])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414012b19sm8373372b3a.12.2025.10.27.07.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:56:18 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Hans Zhang <18255117159@163.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-pci@vger.kernel.org (open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource cleanup
Date: Mon, 27 Oct 2025 20:25:29 +0530
Message-ID: <20251027145602.199154-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251027145602.199154-1-linux.amoon@gmail.com>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_075620_163451_0BB43526 
X-CRM114-Status: GOOD (  13.80  )
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

Introduce a .remove() callback to the Rockchip DesignWare PCIe
controller driver to ensure proper resource deinitialization during
device removal. This includes disabling clocks and deinitializing the
PCIe PHY.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 87dd2dd188b4..b878ae8e2b3e 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -717,6 +717,16 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static void rockchip_pcie_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+
+	/* Perform other cleanups as necessary */
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+	rockchip_pcie_phy_deinit(rockchip);
+}
+
 static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };
@@ -754,5 +764,6 @@ static struct platform_driver rockchip_pcie_driver = {
 		.suppress_bind_attrs = true,
 	},
 	.probe = rockchip_pcie_probe,
+	.remove = rockchip_pcie_remove,
 };
 builtin_platform_driver(rockchip_pcie_driver);
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

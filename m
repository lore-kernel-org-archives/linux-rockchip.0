Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 191D1FA3744
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jan 2026 13:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uDNFY3bGEG+VQt+0RykP8d8emsL1oTxPcXbU2Vcdrw=; b=efAIBY8XDmz1Yb
	KKG5XdivwnWR3gu09jpl7eZUx9mxlxo9gIWmFSVK86F4pQkz+I9PpoPqM2PkivMvW9PeXs9OoDYuc
	6Xe93PJCyfJcSOet41VK+D4u8ZrOMe+8KhVi+VXwgC7ReAWKCMZ7jW6ro+4aKB+AVxWTLxJCtsZRO
	oIJqUMJkrIgRKl7S0oAkDJhRBp2yDj8h89qioeAkbH8QqwSj4J2MiUF+Q1kZiA1S4koBxfPHnqbPJ
	/IbBw/U4SmQOic2E9iApRoUeu0TA3VOEJqsx6AatRA/i3pziQDz22Pnmxno34Ey83MHKzNplaQZHK
	5U/nH/NGqNk/0cfXv6IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbf34-00000008HfQ-0ANT;
	Fri, 02 Jan 2026 13:18:34 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbf31-00000008Hf3-0zs3
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jan 2026 13:18:32 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so5504388b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 05:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767359910; x=1767964710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kh0+1+chHjNEp1bDD22RGjxNzSGu6tfL89BVhbtvA6w=;
        b=Wd0P3DXkXqVlvQTnmE5QIwdg9iGAtMQ07ttuinzCfIuavRf7iTCkJ1xc5vTUtS9ppZ
         OLhSYyWZql5A5VueIePqhqdxfPScI9PiuQRuwZeL+5ByUdgYZGvvUIOuAXziID1g3yw8
         SxRGj19hSH6FTg3qwTkPRmeR4QfKpC7d7J4F9SaDQGeu2Zx67GLGqDRS18D8pPT8yBfx
         FuROnNwtj2SIbv/qgfld1ii8eSb+SfwavlhF2rY7uIF6VA0N0ftXmUVO0Fpp8ifXJYfu
         iZpllp/RZnfpclE3dZ7zAchHwqtsCev2L+siSB6NPgeDoPA3L+m9gRAhIrmUQkcrQBfP
         Y5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767359910; x=1767964710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kh0+1+chHjNEp1bDD22RGjxNzSGu6tfL89BVhbtvA6w=;
        b=SeZ5nhl4jQkTs+O53hAYcaRMOoyw8K6MYsLtyDaForPKQUcY3xjQxVAAJd4WcWQmUE
         OaJuo60iASDZ687ojZYNszoE/WMcFNy5KJDkqIOAWOV+itPPTKMYnnv7wKGFEAfcBX+M
         BOc+HtYBNpWqL6SqecATPy0lg9w/ty0z6onwoCC9SdEUzFAyIqEPtZjNyASivUZLLP8T
         L7yjfsU1RxYL9b09ddDkPP23dO1oZHAzpt26LopcgyqTKxXPCqiyec2CsqSkL8V48xld
         +s8BgS5hXGl2i4M1GBMzEBGT2AqdPOQaBpc3s2ZQFkrGCZs2OXNYruax050U0QaQnCEC
         PjnA==
X-Forwarded-Encrypted: i=1; AJvYcCXaj3188uls/cAutbWMwjMo5EhnlLCaHB8g+38tduAtlA5YMBXMZigLjegWpMy8qLWfMzNdrV5oX4rkBRSfWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc3mDwjPQX8ZmZ1e5wVRjiIWzB427tr8PAvsgU/wmGI/5m9N04
	8lMk8jYW3ddUw2Lv0UX3QSHVUvXB8/+7Rrm3JcG2X93VOz3K2eRB2wfs
X-Gm-Gg: AY/fxX66bmS0wIzmn9o+H7zKprS2hQYAgCMnuPkvVPH3Ik9Pb08dOjHueiHdegDV+Af
	u/oQcnWhbfp+jrkp+wVdpiLrB9Pu5dfDirMLw9EDcuI3sJszHOzx9noVNLyX8jaGX3nbyd0faea
	pCYzWw1sUCTxDBL+M1YhUJLVLhFq47CP3yXLEHAk8B/iXJpT+BnytbA5osqJuhB3cNXLuDJ8mnx
	cotCV7UEy9A1/gPCGKHGtrdU2GTXbP+NhGNa4CiF+y/DIbuIl3OPZ5sHNZkfm+ZrB5YDry4lvU4
	7BL0jAeNag+lGGVSt3k8ExnaPua9bGIgdyvvzJf1Y6Q1HQDOOhQZCnkCWKOHtSkUPQtRGa8JVTE
	VJuCiNkc/AzuBi09PsL7JnsSjwdAHyDypKzbVNxOUIsIENVoVYuLiYAVM0I2kidw94x9vbCw82X
	/YlsYHkg==
X-Google-Smtp-Source: AGHT+IFOoSD4aT3DrhU3ikdyAs6DYGzFL5+ZFBK1G4TTasauTKe+kqxCEq8s+rYlew1jpVJY/wcLlw==
X-Received: by 2002:a05:6a20:3d07:b0:35d:8881:e69b with SMTP id adf61e73a8af0-3769f3352c8mr41132629637.18.1767359909649;
        Fri, 02 Jan 2026 05:18:29 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7961e039sm35278770a12.7.2026.01.02.05.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 05:18:29 -0800 (PST)
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
Subject: [PATCH v2] PCI: dw-rockchip: Add runtime PM support to Rockchip PCIe
Date: Fri,  2 Jan 2026 18:47:50 +0530
Message-ID: <20260102131819.123745-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_051831_331465_1BBB96D1 
X-CRM114-Status: GOOD (  13.71  )
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

Add runtime powwe manageement functionality into the Rockchip DesignWare
PCIe controller driver. Calling devm_pm_runtime_enable() during device
probing allows the controller to report its runtime PM status, enabling
power management controls to be applied consistently across the entire
connected PCIe hierarchy.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2:
   improve the commit message
   Drop the .remove patch
   Drop the disable_pm_runtime
v1:
 https://lore.kernel.org/all/20251027145602.199154-3-linux.amoon@gmail.com/
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f8605fe61a415..2498ff5146a5a 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -20,6 +20,7 @@
 #include <linux/of_irq.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
@@ -709,6 +710,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto deinit_phy;
 
+	ret = pm_runtime_set_suspended(dev);
+	if (ret)
+		goto deinit_clk;
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret) {
+		ret = dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+		goto deinit_clk;
+	}
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		goto deinit_clk;
+
 	switch (data->mode) {
 	case DW_PCIE_RC_TYPE:
 		ret = rockchip_pcie_configure_rc(pdev, rockchip);
@@ -730,6 +745,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 deinit_clk:
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+	pm_runtime_disable(dev);
+	pm_runtime_no_callbacks(dev);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
 

base-commit: b69053dd3ffbc0d2dedbbc86182cdef6f641fe1b
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B987DC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 15:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXB6qk+wCiek0i4/3w5eq7+kgkuW1CWUYBKGqY6x4uU=; b=Dqubmj/I+p7Hq3
	vO8vxYdsHH1RHO79Z3YOZDWEBOYgVvkZfWit0qoRnR2pVW43VE7t7W2RbP8uezG6nzJjWJPuKkJvG
	M6CF/YC3p3zcWvTkNjr7G4dFS7yFlkrR5O86s2RMU3SGL8ZcF8smz1028Vb4LQDq/FYS7CTlaF48t
	zKxrDec9LRVBrb3YD/JJedzLJzNCxkQgLcdvZZxE0lSJ4e2One3tXz9d+GfgWGdx7lNywelo7/4ig
	n1S5GW+SyyaoUj7hLya+36iXETjkKuOusSacMRUIbEl/gpQKdbT/YSEeMojcPPo3sJQbwZd8hFtTi
	URYRoI/613Wi/JsXzoBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMw-00000004fPN-40lb;
	Wed, 24 Apr 2024 15:17:10 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMs-00000004fL7-34S4
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 15:17:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 10A93CE0F21;
	Wed, 24 Apr 2024 15:17:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72145C32781;
	Wed, 24 Apr 2024 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713971824;
	bh=FF5kjYOiGGFH7JDZ21aiyiTHxQMew/SAJYkr6QWZ3L0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gPXtupJwvQI0VzNSJo08xI3gOu5/Ce1onCCtgbRBU6w8nIhyI//SwKptY+X7V6a6f
	 4gJurYIcOHkLnZEiQ6wdrqxWIITWxirB/R1+xIAj9NXcCbr/1IP08znLyJV2SHoDPx
	 1KTfbwwXe6PNs2rVnjWCAyEij0Asw2irl7clK4658/EjDGwqJZ+cc8iy3LiDAf/5uG
	 DdV1EKmOoADD7FgjfDEchDS4nHBFO8KpW+K489iJ8WkTjrGlSYJCf4i2yfGSKSgBja
	 YSRS8q5NcIanAf4IresMrEZlTMnNtgW+0TgWiaye/tkzSzhPE+xI39qO0TBhld4pjB
	 ije6TNVTw4qWQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 24 Apr 2024 17:16:24 +0200
Subject: [PATCH 06/12] PCI: dw-rockchip: Add rockchip_pcie_ltssm() helper
MIME-Version: 1.0
Message-Id: <20240424-rockchip-pcie-ep-v1-v1-6-b1a02ddad650@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1425; i=cassel@kernel.org;
 h=from:subject:message-id; bh=FF5kjYOiGGFH7JDZ21aiyiTHxQMew/SAJYkr6QWZ3L0=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNI0lYI6nypunOamvWVTwsu+uqMWanlv+yY39C54Hjxr4
 ikv2YOzOkpZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjCRRW4M//Rv2ccwtHZM0zzF
 UfJZNDyzRnlxM7/GLrUNSvNcriRrlTL8dzi9KMCW5VKW2KcwsV/y61b+8FJ7F/ZXn+v3movfG1l
 d2AA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_081707_102798_FABCC986 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

Add a rockchip_pcie_ltssm() helper function that reads the LTSSM status.
This helper will be used in additional places in follow-up patches.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1993c430b90c..4023fd86176f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -143,6 +143,11 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
+static inline u32 rockchip_pcie_ltssm(struct rockchip_pcie *rockchip)
+{
+	return rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -152,7 +157,7 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 static int rockchip_pcie_link_up(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
-	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+	u32 val = rockchip_pcie_ltssm(rockchip);
 
 	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
 	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

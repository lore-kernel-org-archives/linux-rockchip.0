Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E72BC27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zGfc3ajFUKURllRyfBh+T8D4xGHg5H7ksC6t8Rm9F4=; b=j8kwMMx3Fcveu4
	6MZEmFa/I2OlGZ1JY4Ewp5OPrxO+gtdY1A3e3nZzU213JlyWlRx8SOFa+f/PlH+EJld5juG+zoyMU
	75UbaRdy/grHfb0SZC3qjnmVSP6hAjiv14sRgunVh4XSfaqm/v2PF9WeKmu6GK5RpKt+wCRLmsvxc
	FipLQ8N8iuiVvNzgnsrF9Sz6kvgwOLmMVthMjwgiLlpT3EZAHCfXL7u2m05ftjCsSKyACXBj4hDTb
	sslpOTBDD+wliP/JDBV1wITfCybBjrS5qZ/sEkVxkZUYsPq15ZIWZqFKle80C9JpnEZatpU4LigKp
	yi8j3pAiqWTK4rA0dkzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYs-0000000Dfrm-27Ao;
	Fri, 07 Jun 2024 11:15:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYp-0000000Dfpz-2L7Z
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:15:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DAFC5CE1CC0;
	Fri,  7 Jun 2024 11:15:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE6EC4AF09;
	Fri,  7 Jun 2024 11:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758905;
	bh=Do8GU9Lg2HtlRwxkwoHL7mqEXY9onLHHOVGqL0ZdFBk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=uRTdJ0dIfABOQpolMQUyKwBxLeRdBZY4qaI5j6f8qMN2UiFO67np69LnIrjtok4QK
	 VXbECs6MdxqRc4biUIo79SuHs/Nm0p+Ilw1GfqERduAr9viPMnqIEHVaN6Y2fh8HXR
	 xQntYkZ8gHx2yvp2jXqoozFzyXydPMtlfevflTj6zz40ZtRFEwBunyUDL10JyYlZkR
	 2aweCOjOJyxKrg3DfFdVES8tJJIOaT2uIABdGFY64s4EOeqlH3pMbTm2NirFgv3uPm
	 UHhcMzBYZ2hxIgP9BJMzhmJEkb/bqS0X4kMSyzbV6d+I8ZelMd04Mw0ADGnqwbAcMV
	 LAUU4UoLdzTuA==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:28 +0200
Subject: [PATCH v5 08/13] PCI: dw-rockchip: Add rockchip_pcie_get_ltssm()
 helper
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-8-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1497; i=cassel@kernel.org;
 h=from:subject:message-id; bh=Do8GU9Lg2HtlRwxkwoHL7mqEXY9onLHHOVGqL0ZdFBk=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk8SLA+vkj/EPy1TSmob8ynOL4+PHLZfOvf+PDWz5
 Vuero2e1lHKwiDGxSArpsji+8Nlf3G3+5TjindsYOawMoEMYeDiFICJpE9nZJh9sm9jof2/iVva
 Xv1LdO7jNVpZP2H7w/Pzth89YFh/vXwFw//MlctPM/Nl6XUIpvNffntdueLmhAsxr58nSgSU12/
 bys4HAA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041508_077860_19485645 
X-CRM114-Status: UNSURE (   9.62  )
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
This helper will be used in additional places in follow-up commits.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 3dfed08ef456..1380e3a5284b 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -143,6 +143,11 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
+static u32 rockchip_pcie_get_ltssm(struct rockchip_pcie *rockchip)
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
+	u32 val = rockchip_pcie_get_ltssm(rockchip);
 
 	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
 	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

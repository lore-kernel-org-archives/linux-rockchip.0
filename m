Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4D3C25B7E
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7dBJLZ9R9SttLCs983lYECjtArWC9Yrz8lIPl4sgYI=; b=hXWyW7+uIFX2V7
	Pe+8txj9UVWKoZZ6en1nTVavhV/5CNvc/yR5iGhDhtQivUEnUhUvjgYILzDnrwc86gNB9z3q6l+0i
	CxgluI/K12sIbwLWYZ0bhjzA+M87o/Jd7d2xfyHrh/xK1Ug59butnSMUddONCWMFrygtsmasN5EJk
	pkyZxN0sZsxVbzCsOIA/WdqWuyu+kqxYSVB9WHuW7bLnn98JldwX3MMPCRANSua6B7+/fVm9zVBUW
	ez5+cyspauQ57UDfsNjLrLWnGlw3HjY19V2EhN8yysypfwPifvC6cvNJdamH1Vd44xNDXBYNVHSxV
	0MycnlXDDUWWVK442VOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgy-00000003Oji-0H4w;
	Wed, 29 May 2024 08:29:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgt-00000003OgN-3XDH
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5D518626F4;
	Wed, 29 May 2024 08:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DB7CC2BD10;
	Wed, 29 May 2024 08:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971387;
	bh=HSVP5fO1xteYLr3eNC2G4UOEz2LEMqziZSkp+Sf41N0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NRNGiRuSrg3XQvmSdOFqBeLUMZzgzkBW5Xz64cPyI8nrqs1N0pSHv9nDK5CHw8UOn
	 Khbl/n25WgD+f7yVQz0a3wUCz8p6Di9WMKmlsPQR93TH9wBUK5GUsf6osBTjuRte72
	 3kSVjARIAQ5GiBFkKaRILNDlqDzuTp/JzYlCLLlyQuCmwVFNe6LGxSCd516/Cf6Viy
	 zFbbx3nMychM1zH0ikxVUsYZBHJ0p12ybUKTOwiyl5Ko8AW1SfiGbb/xCoxWZ4PK/3
	 fzgBu77mseltWWamhU0mwKofrElyxLfLrcDDmOeRE5ljIb5lL4QcVJWcZvPbwE3l4C
	 5h+QiQTzpwoEw==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:02 +0200
Subject: [PATCH v4 08/13] PCI: dw-rockchip: Add rockchip_pcie_get_ltssm()
 helper
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-8-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1426; i=cassel@kernel.org;
 h=from:subject:message-id; bh=HSVP5fO1xteYLr3eNC2G4UOEz2LEMqziZSkp+Sf41N0=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnoc68fivD7KdkMf+XcE076Rx4JLj0xfdKLRVfjP/w
 sUq/uB9HaUsDGJcDLJiiiy+P1z2F3e7TzmueMcGZg4rE8gQBi5OAZiIQQvDPwX/QvYryeE7yo3W
 neM917/picEVo/uNrSHdNQxF9xZc3MnIcGufYtubLc8WGvx64berIso9TqnY7ceJyUXdKtEn6/O
 yWQE=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012947_995602_2A9E321D 
X-CRM114-Status: GOOD (  10.23  )
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

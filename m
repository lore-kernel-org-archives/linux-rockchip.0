Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A102CC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXB6qk+wCiek0i4/3w5eq7+kgkuW1CWUYBKGqY6x4uU=; b=chVtyF1nRzKjYo
	0zqCTB/s52FZozQIJaEAsXqnnx5Wnnn42wR/dZ7bP6LetOMeC77BfrxFHXFp5O8pUJMvWIt3gFgEt
	3U1hpuxeDfa21FSti8GQmCikHzBC2c1pUG4LH/w8+k/1gO4uj0VTfPMdnUklSz394UygxBN3T4i86
	mFNeFg2l/29iPftqaslwj6DVGCBp8O7uzyJ6ZB2omsz0jBTlGi6Fhajv0u3v7sSUbgkQVBMwQZWoN
	TVF4pU1Zg10/Ipt+pIjlFwXlernifB0/Bjwn+Esrh+xuD9VHuq0cATdjVo7GK86dLFPm+vQqTNfkx
	DpT1nbWGCkZFzSg6pupQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBw-00000006Gsb-1tUy;
	Tue, 30 Apr 2024 12:02:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBr-00000006Gon-47D4
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 514DA61423;
	Tue, 30 Apr 2024 12:02:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A2E3C4AF1C;
	Tue, 30 Apr 2024 12:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478551;
	bh=FF5kjYOiGGFH7JDZ21aiyiTHxQMew/SAJYkr6QWZ3L0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KcaGiXU402q2xQs1/uLSZa/2IXGGF1G1oar16jKhwao5h/3LvE1Cr8fpKyoOQeogD
	 3+76kl+NvaU+nVPkuWi+zhdQ5NOUBJJfFqbzz94OTjWDgWcyAW/Uvph7SUWZRdv4nv
	 i1S9f5Y4Uhem+EEbjhh7YquW7EAEFgoNdQsHZKBw97txvORKVhRMqBQJcoZleVecrN
	 UL5S2CCqB5+BHMz8zfsa1XMQ+rbwiMZquwAZzTwvElOKQ4eUrXh7FiZq/USfbGOQGS
	 dnfA50YMvZ/jqfrwHhdYb17cPtE/sslhfzBqKw5SSJRlBf3l9Tp8zBxoi2rKiO/3zi
	 h3Z8JkTXyEPuA==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:05 +0200
Subject: [PATCH v2 08/14] PCI: dw-rockchip: Add rockchip_pcie_ltssm()
 helper
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
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
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m7Yto2TsXXa9x3nrPfs9TMQ+7DrU/zR4y1KWS5nS
 m8rMOhd7ihlYRDjYpAVU2Tx/eGyv7jbfcpxxTs2MHNYmUCGMHBxCsBEPiQyMnzQyH+4l3d+9dO9
 is6/p825cCD4fILegV/LHr1UDn45v7CQkaHD4/Uc7t3c2tf9Tzf/05NtSIi8spShnfXWdOWM6ni
 GU8wA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050232_239167_1B186974 
X-CRM114-Status: GOOD (  10.30  )
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

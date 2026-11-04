Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B120606D83D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 18:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JSJx9iaL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=QxgZ/e7u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wAeMPRxrUP+LYpXvs6mznd1/yHGjBI+U0OVoFO7lQhw=; b=JSJx9iaLJUj7g3ro3QNPDP4IJD
	4asMZyvFIPa3CIpc3zleV6w7mDX4IBvZiE5lyQGR1c8B3zzGe/yD04q3xnHuZSSn5yhmcR3CymMjh
	tz+rFm4H4dzZ+FUqEarmchpsCIZ8WqCJqNoi/1w8JjwHB3Uet19063kHsOmkcWQeWbmshoy1Hu8Cw
	zM+lAO+0tpd7z8Eozzz8VhZq8AvXJ7IrCUf2gyOfMyVh6ahJ7F5EKygYTf62TB7c72/EOr8+NQx51
	PSLswqPtLf06UxGGtqGXYiktnh5cyzyYw/h0DakUgMAHPnDg15/KWQs+GjFcu4NSNgS/YPPPP0FIz
	q2txpZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOgAX-00000006TkW-080v;
	Wed, 04 Nov 2026 18:57:09 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOgAD-00000006TB5-1kyb;
	Wed, 04 Nov 2026 18:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1793818601;
	bh=KjpUu3iPvkexjJAxJ7hes6bbWKuc2UMI+yAtuOLVY6A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QxgZ/e7uQnq2VEpSBrUdj+Jb7c5LUBvi2GNKIxnU+PIQ0b5l1gSzpdgBtaCQONyvU
	 8/DVaZ5EISj8srxYUp8rYKeSMtmzYf5mUvmTHtXaB/nVwpaNwND+cY5AWymMy4qIrA
	 VUYf/+rPx2tKz5eaQhpSf5yfyU1trN7EYbSc6zfyhDNYnga80ZecDSVPyrI8T6YHUx
	 YgnjSLJHQemiAuGWIYldMo1WvB4AFpuo1g/vsfdFrq3E8i9PLYrCiUg8LPhReDQCZR
	 x8aRFU3UFJJUcJW7JZPBCmLHG7gu9vH+mPaoCw8f98u5V8DoGH8JCwwVNHnTaIKcqZ
	 O/LEsbsYWhYHg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8CE7717E0D81;
	Wed, 04 Nov 2026 19:56:41 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E2F9D480048; Wed, 04 Nov 2026 19:56:40 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Wed, 04 Nov 2026 19:56:48 +0100
Subject: [PATCH v7 10/10] PCI: dw-rockchip: Clear debug buffer before
 entering L2
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261104-rockchip-pcie-system-suspend-v7-10-6ae6875939a2@collabora.com>
References: <20261104-rockchip-pcie-system-suspend-v7-0-6ae6875939a2@collabora.com>
In-Reply-To: <20261104-rockchip-pcie-system-suspend-v7-0-6ae6875939a2@collabora.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1747;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=KjpUu3iPvkexjJAxJ7hes6bbWKuc2UMI+yAtuOLVY6A=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGrrf+iWIVtOPSNaDr4Qrj9LikUNVb5SUN5ii
 j+9AxrmGmTkaYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq63/oAAoJENju1/PI
 O/qavLIP/3HDeg3ANNn6m8zn/o/oqrAiUDpVZdn++Z5BSS74ov1eTXfpa9xvnQJSS0RDDbJ/6ad
 gPFmRHjDUrOIM0GvoV4mYTW6Qsmir1nEE5u1BLXpfXKuZ8yhz/3F6JORPe9+pRlKUKJhBH8LA01
 OexHTDJ0vQwqj4eYlJ+XRb7YajQPnXawfJ0Rh2mRc/g7WhRrpiBXDOxUxM0iKho6o2t0KPNW+Dd
 LvxvrTy/K4otznfq0M8JGQiH9gV/L0W2aAVclNdcLJg0lHALLf0FeLYzpgjApvLjPrbh2TOQ0E0
 LzR1vcDtl3yKWrdAIsv+sJS9rnfogbm4SDtFBbQnBVfFedw4eW/fUqjJFkdC3oXSDzkYAdrrhEO
 v9gcD51oQrwrP9fA9UtO29vi4bf0PSc09wwROynbY/OsPtsVB2+mzmed0JhVOWzmVvrW/NQgdHd
 ZaXWuf90jnL8/+cB6+zsnrDOe6iwEVDNg8OY3IqJTxv1C8vC/r/VvCW1wvy0Xk9wFZQwAnE4vL5
 sIkbnWYNuWfOB3G9v679fjYSaxuZPdL3lcXWMs9vb2ZssUMY8CRS3gsXKlO8/1xAKjdUti8yHWe
 J8UzGxcOLPqlH0afQxtSZVYhJFP80XbwsOT7Ut/F13Tbjgy9sVAelO+HIO1QKpaV+qIOXXLuy6N
 KOpuGuhU/eIUMnjx+sWQ5cQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_105649_632626_33371AEF 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Clear the debug buffer before entering the L2 state to ease debugging
link training issues on resume. The register latches link/LTSSM status.
Clearing it at suspend means post-resume diagnostics reflect the new
link bring-up, and not pre-suspend residue.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 75b40091bb95..66b3d31d7bc9 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -81,6 +81,9 @@
 #define PCIE_CLIENT_MSG_GEN		0x34
 #define  PME_TURN_OFF			FIELD_PREP_WM16(BIT(4), 1)
 
+/* General Debug Register */
+#define PCIE_CLIENT_GENERAL_DEBUG	0x104
+
 /* RASDES TBA information */
 #define PCIE_CLIENT_CDM_RASDES_TBA_INFO_CMN	0x154
 #define  PCIE_CLIENT_CDM_RASDES_TBA_L1_1	BIT(4)
@@ -1039,6 +1042,11 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 	return ret;
 }
 
+static void rockchip_pcie_link_status_clear(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, 0x0, PCIE_CLIENT_GENERAL_DEBUG);
+}
+
 static int rockchip_pcie_suspend(struct device *dev)
 {
 	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
@@ -1050,6 +1058,8 @@ static int rockchip_pcie_suspend(struct device *dev)
 
 	rockchip->intx = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_MASK_LEGACY);
 
+	rockchip_pcie_link_status_clear(rockchip);
+
 	ret = dw_pcie_suspend_noirq(pci);
 	if (ret)
 		return ret;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

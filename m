Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB2BC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+H0ztMVQlVWDHKAUxBAvQ6utmNi/5mNLVoaVicLq2UE=; b=YvyrdijzAe7YYw
	V1hq7RRAECPVxav7GIM+7bhntaen710dJPPg3pO7OyPIjnGc1lhYhQ++s4yrViBp3NaATIDZ0/YhN
	fW4V8tDvyp9qP25ESiqBMAOBTc/Y5Pr+3E/2IndeW+NjIdAyZWp5FpZAmB/8Y4nKd5+QFADSmJ2hb
	z9QzCbzbTjTuWWTox4a7ykXN3t9Nuu4PVNc0O1WArbfDMM7sniUfoQv3ysDeor7i8LZEF6oJ+MmFu
	PTv/bkM7i+RL5koW86EqO6sGwgoa3Z07sVMqpe02JgKjgCejq1OjHIKGuSk0+jJGw9XnVrsPcU7MK
	naD4K3FeArTqx7+HsSRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEhD-00000003OuZ-37eh;
	Wed, 29 May 2024 08:30:07 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEh7-00000003Opc-3PVp
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:30:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 38D34CE0D85;
	Wed, 29 May 2024 08:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA183C32781;
	Wed, 29 May 2024 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971399;
	bh=RLD5Nn+8JjuWpy1BZvj15mTHLVP0CnrW2Huj0XxmdF4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pOwVFbbeGA2yhuzOQzBEs5rWojusiFmM6z5sC1QVRvrocGA7/kvhrcy3lHRPrHF5u
	 mel2+xeU3zzF6HWp967e/EeTxcyhZPSnwWv2F6ifp8SA7luneQV+LdccCAykmlqjxm
	 TmH8ApCQ81dchGVfMZYJ9WtwW4rEAucVNbopJpkRHJ1B2MsIuy1QQmI8LJFEJ5MKaS
	 3Wnng2VIMI/2HO2arZ3FMcbfbaUCQmUypnQTR57Xfw6zS6GataXxaqaSiZ/CKS2QYp
	 Ehc80hB+MXn3DdxPbiaX1ubaf/YVwp1pGebS5Xl+U0LoZVoEIumDxv8heP40Jscg7P
	 wEzox/S2VtWuA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:05 +0200
Subject: [PATCH v4 11/13] misc: pci_endpoint_test: Add support for rockchip
 rk3588
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-11-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2359; i=cassel@kernel.org;
 h=from:subject:message-id; bh=RLD5Nn+8JjuWpy1BZvj15mTHLVP0CnrW2Huj0XxmdF4=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnofmxn15sEJFrm1X1KlpVW49e49d6DUvPLFueW/Yf
 N35VnJ7OkpZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjCRtkxGhlUV04K/dTpa+CX0
 Mlv7sHq9EM4WOsjS2uvbnb3LNS6wlpHhQOvs7Vc1td/HXXWz2n217lvZ1bq1B97MfTj7rETzESk
 lNgA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_013002_309078_054039AD 
X-CRM114-Status: GOOD (  17.05  )
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

Rockchip rk3588 requires 64k alignment.
While there is an existing device_id:vendor_id in the driver with 64k
alignment, that device_id:vendor_id is am654, which uses BAR2 instead of
BAR0 as the test_reg_bar, and also has special is_am654_pci_dev() checks
in the driver to disallow BAR0. In order to allow testing all BARs, add a
new rk3588 entry in the driver.

We intentionally do not add the vendor id to pci_ids.h, since the policy
for that file is that the vendor id has to be used by multiple drivers.

Hopefully, this new entry will be short-lived, as there is a series on the
mailing list which intends to move the address alignment restrictions from
this driver to the endpoint side.

Add a new entry for rk3588 in order to allow us to test all BARs.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/misc/pci_endpoint_test.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 4f3ec1f2ba9f..0ffc8e02b863 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -85,6 +85,9 @@
 #define PCI_DEVICE_ID_RENESAS_R8A774E1		0x0025
 #define PCI_DEVICE_ID_RENESAS_R8A779F0		0x0031
 
+#define PCI_VENDOR_ID_ROCKCHIP			0x1d87
+#define PCI_DEVICE_ID_ROCKCHIP_RK3588		0x3588
+
 static DEFINE_IDA(pci_endpoint_test_ida);
 
 #define to_endpoint_test(priv) container_of((priv), struct pci_endpoint_test, \
@@ -1006,6 +1009,11 @@ static const struct pci_endpoint_test_data j721e_data = {
 	.irq_type = IRQ_TYPE_MSI,
 };
 
+static const struct pci_endpoint_test_data rk3588_data = {
+	.alignment = SZ_64K,
+	.irq_type = IRQ_TYPE_MSI,
+};
+
 static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA74x),
 	  .driver_data = (kernel_ulong_t)&default_data,
@@ -1043,6 +1051,9 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_J721S2),
 	  .driver_data = (kernel_ulong_t)&j721e_data,
 	},
+	{ PCI_DEVICE(PCI_VENDOR_ID_ROCKCHIP, PCI_DEVICE_ID_ROCKCHIP_RK3588),
+	  .driver_data = (kernel_ulong_t)&rk3588_data,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);

-- 
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

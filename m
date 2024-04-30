Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD647C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3tDNMBcrQZ6EFyELuYPo9GcJmbT9dMVlX1kXVlBSfw=; b=XFaTs1IKb2n1rt
	DbasFChl/cyvd7FfbBWMZRO6XMdYVgPQDDSoqNCBUlMSBQelnjeX1UpE3b/JDQItpI7uwqiCaz2TX
	z3HA+BorYTt5qY9tyyaiG/OAmG2zQpPNONf+00jSoJ54xroSzKNZ8hwEuYV/twYVLT6QS38I4zrzN
	AO5E0oAwioz3WE5NRFEKXGtMObg1zP+NHyvQaMB98T+1fY2NJn8tI5e6UvxB3Hf6V6WrSBTDsd+r7
	Sg8dJjBjPMoOcT+m0dNaCUF65a8pC0j2rjuiK6BIqFvie6Y1bxnvQnatlRVbsQ1yfa6eW2n6qUZeh
	15It+0Kramd+lKOcdqjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mCE-00000006H6l-27Wp;
	Tue, 30 Apr 2024 12:02:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mCA-00000006H2d-2re0
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BF994CE102A;
	Tue, 30 Apr 2024 12:02:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B9F1C4AF18;
	Tue, 30 Apr 2024 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478567;
	bh=xz35v8bxYvqgegncoSCGyIO3ONqjFxudlkCESFdUVaA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Yc2VNkSuE7HFl+WPcKW2rKl6MknP7M5cKkRq10sOeLEMY2hLHek353uXhl6lVNlrX
	 RtktzsP3QWQlT/vEjkkQCmC7QBRItzxX81gB8fgV/hpzUukn8hphbYi1p0Z9H3cdky
	 a/85YK803ONUf5Ct51pEHuv6iLoYDkqV+/0UXHaIwwqNVlGmBeyyLk/WFDSDpEoEVw
	 X2gaKux4AzInTCDOu9ttgyhvK7tcRvRH5n5TWdAxMmwz5tjdq9aULGoOQikfi2GNy9
	 PNp5gDEW9U94e/XTZhmwZPqpD7bk78wCiLAVvYAcp+9wZts2248htW7mIMFevM/uQ9
	 twE/BG/o50FTw==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:09 +0200
Subject: [PATCH v2 12/14] misc: pci_endpoint_test: Add support for rockchip
 rk3588
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-12-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2286; i=cassel@kernel.org;
 h=from:subject:message-id; bh=xz35v8bxYvqgegncoSCGyIO3ONqjFxudlkCESFdUVaA=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m7YEHKXM1//Y8si07YXJfdu6LRc7MnX/RQa+u+17
 8WDL+f7dpSyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiWzIYGZocdtnpfFi01zZZ
 1Crk9711OzY/efb/akWoXVNY+vGtqiaMDGu/RDM6pQRGX7e6KBabV3Gwa29JkMitWdcPn9vyfH7
 ZZlYA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050251_456273_C9151B07 
X-CRM114-Status: GOOD (  17.13  )
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
---
 drivers/misc/pci_endpoint_test.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index c38a6083f0a7..a7f593b4e3b3 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -84,6 +84,9 @@
 #define PCI_DEVICE_ID_RENESAS_R8A774E1		0x0025
 #define PCI_DEVICE_ID_RENESAS_R8A779F0		0x0031
 
+#define PCI_VENDOR_ID_ROCKCHIP			0x1d87
+#define PCI_DEVICE_ID_ROCKCHIP_RK3588		0x3588
+
 static DEFINE_IDA(pci_endpoint_test_ida);
 
 #define to_endpoint_test(priv) container_of((priv), struct pci_endpoint_test, \
@@ -980,6 +983,11 @@ static const struct pci_endpoint_test_data j721e_data = {
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
@@ -1017,6 +1025,9 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

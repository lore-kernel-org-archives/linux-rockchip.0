Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF81C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 08:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6otYIoIrMb2BLGgoNuMXkWdyOOtntrungXkmiDVKy0=; b=iCyGvaNmiIMhBl
	yCFgNLfYR+mRBLBV6A7iHDuF9ZAPdQj01JRmCDd++2PybXgpuvL6G7KqBi96E2hI2XPa2G0kXEMK+
	JNfc0GAkbIeNuBP4WiYNXrTFXrec2x6YkEmcny4uFqt5SCihtTRzXXZ0gQ9Ekh414pdxOPW+l6C84
	UM6D9AKW1iR2jPwysoFIYPL8l7J18tdAPsa6MSzz9mPK8ak/AgNO1wzKpKJKm+JcQjlwc6gQKoLpG
	gUoVO0Grxzo53YYQbiJ+Hf4WnIGxevQ+VUZrrY51Fw4IxesTJ5nz8FIFb1AH8vd8AE3+oj9DmmJzy
	JVkY3Zh9B47mzjTV+pvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaTL-006y85-Qu; Fri, 10 Jun 2022 08:58:27 +0000
Received: from mail.baikalelectronics.com ([87.245.175.230])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaSM-006xjY-TD; Fri, 10 Jun 2022 08:57:28 +0000
Received: from mail (mail.baikal.int [192.168.51.25])
	by mail.baikalelectronics.com (Postfix) with ESMTP id 5929C16CA;
	Fri, 10 Jun 2022 11:58:10 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.baikalelectronics.com 5929C16CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baikalelectronics.ru; s=mail; t=1654851490;
	bh=tsTGa4nIQSpfcKAffHTArOaL54sx0Z3GDpMrlHib4M8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References:From;
	b=bGYo9BgWyWBYZWr1Hwb4GQ+ZBELL6vgubusO+LbyJOn4VFuV3+Kr5udEjKzrgMKYf
	 BqRaSmrGAIVPiSrm6DMjfGpMe2yaU8GnNfw+2nePcm/GrGErJxgac+II5djQb8XgPi
	 atpqc0ORRjSfkmlM3haxZfDfJI1q6e60Gm9Nt5X4=
Received: from localhost (192.168.53.207) by mail (192.168.51.25) with
 Microsoft SMTP Server (TLS) id 15.0.1395.4; Fri, 10 Jun 2022 11:57:18 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo Han
	<jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Shawn
 Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
CC: Serge Semin <Sergey.Semin@baikalelectronics.ru>, Serge Semin
	<fancer.lancer@gmail.com>, Alexey Malahov
	<Alexey.Malahov@baikalelectronics.ru>, Pavel Parkhomenko
	<Pavel.Parkhomenko@baikalelectronics.ru>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Frank Li
	<Frank.Li@nxp.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH v3 11/17] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Fri, 10 Jun 2022 11:56:59 +0300
Message-ID: <20220610085706.15741-12-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20220610085706.15741-1-Sergey.Semin@baikalelectronics.ru>
References: <20220610085706.15741-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_015727_147469_0DCEBED5 
X-CRM114-Status: GOOD (  11.01  )
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

As the DT-bindings description states the Rockchip PCIe controller is
based on the DW PCIe RP IP-core thus its DT-nodes are supposed to be
compatible with the common DW PCIe controller schema. Let's make sure they
evaluated against it by referring to the snps,dw-pcie-common.yaml schema
in the allOf sub-schemas composition.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>

---

Changelog v3:
- This is a new patch created on v3 lap of the series.
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 142bbe577763..d5de609f2145 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -14,10 +14,11 @@ maintainers:
 description: |+
   RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
   PCIe IP and thus inherits all the common properties defined in
-  designware-pcie.txt.
+  snps,dw-pcie-common.yaml.
 
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
+  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
 
 # We need a select here so we don't match all nodes with 'snps,dw-pcie'
 select:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

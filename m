Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 060BCC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 18:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubZKGOmnkxiyxfZhOl2Cq6ym+XA4ngEAyTIl0KX+JUI=; b=ZCGpIjVqpjglS1
	uJ4DJg3hHYAlE81Se1t6RqB/5DSuARG1QBW1Nxrs2KoJ44MyoAred23m+kV2/CU31ejVBOkY6WWWF
	ddRHhGm0aFdNHa9LI7xZTCsau0CcyErILl/ifslPrX0FuZ10jQ0PjGgtqGSDDm4dB0dh7QqYnO0LO
	oW23y71YoSFmnFI8VxvfxhCJ8RzkPu4BTdloTM/UFf/ykoav8AVnHRHrXTbTIgNJUjhwxTzME5JRv
	L5fxoWKsMb8+SsX5jDrNJwstqNU4e7TaSxddJdDDPbb0kvtYPQVidmJj68mTgdPoWb75Ejn0LXoO6
	SBmuQdL17YIDj/71vLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQCSy-00DhpF-UF; Mon, 22 Aug 2022 18:48:04 +0000
Received: from mail.baikalelectronics.com ([87.245.175.230])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQCSh-00Dhel-B2; Mon, 22 Aug 2022 18:47:48 +0000
Received: from mail (mail.baikal.int [192.168.51.25])
	by mail.baikalelectronics.com (Postfix) with ESMTP id 0DA6BDB0;
	Mon, 22 Aug 2022 21:50:50 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.baikalelectronics.com 0DA6BDB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baikalelectronics.ru; s=mail; t=1661194250;
	bh=/LThP8L7spAeIwIuHSM4iVGmzyl7KME/cMUDl5lbiaU=;
	h=From:To:CC:Subject:Date:In-Reply-To:References:From;
	b=GIGHCGORiNRyJlki9Fhldi6aPDHRbD1CHZKFHLCYTTOjWbI5/93gfFW7NRoAaX3j4
	 s6rILtPdmxMOjtgO/xYcg8dP4QFQtDjU7DWfLX9wdAqbyKQtxPB5bl22xZvnk+IjXp
	 wAd0eVvvS/kCVhvXVHRoiJpI2oaySrsPSWFxKXy0=
Received: from localhost (192.168.168.10) by mail (192.168.51.25) with
 Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 22 Aug 2022 21:47:35 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas
	<bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo
 Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon
 Xue <xxm@rock-chips.com>
CC: Serge Semin <Sergey.Semin@baikalelectronics.ru>, Serge Semin
	<fancer.lancer@gmail.com>, Alexey Malahov
	<Alexey.Malahov@baikalelectronics.ru>, Pavel Parkhomenko
	<Pavel.Parkhomenko@baikalelectronics.ru>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Frank Li
	<Frank.Li@nxp.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH v5 13/20] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Mon, 22 Aug 2022 21:46:54 +0300
Message-ID: <20220822184701.25246-14-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20220822184701.25246-1-Sergey.Semin@baikalelectronics.ru>
References: <20220822184701.25246-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_114747_607466_6B0AD69D 
X-CRM114-Status: GOOD (  11.88  )
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
are evaluated against it by referring to the snps,dw-pcie.yaml schema in
the allOf sub-schemas composition.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>

---

Changelog v3:
- This is a new patch created on v3 lap of the series.

Changelog v5:
- Apply snps,dw-pcie.yaml instead of the snps,dw-pcie-common.yaml schema.
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index bc0a9d1db750..2be72ae1169f 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -14,10 +14,10 @@ maintainers:
 description: |+
   RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
   PCIe IP and thus inherits all the common properties defined in
-  designware-pcie.txt.
+  snps,dw-pcie.yaml.
 
 allOf:
-  - $ref: /schemas/pci/pci-bus.yaml#
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
 
 properties:
   compatible:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

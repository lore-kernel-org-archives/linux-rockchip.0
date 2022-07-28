Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E4EDC04A68
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Jul 2022 14:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8URWwwunl3bn0W6lg3nP6iDKaFJI1u3QWwrL3khrk4=; b=bTTwr1R/YXQJCF
	JStnJTkrn8JbOdKvfJT/wOCltFbYHJWVZ3GcrwXMLKN0cyx2vgN+2r6cTX2mo/6csIFLdswEDjn8P
	lM6ifyzkkkMvewbrUiNAPedJt2mBFWpTHMv1V3XaGMZMYmLZSivcacp8FwhzNksYBhNotacMFRrq9
	A3D0gNHhryfIQuWHN5ArjBg882qKMmEhLYvQ8uVE4v/BEW7zPuTBD5d7HpMt/6oV/430295ilOIZ8
	3DEqERjb7nqSkZe7gjklRfWFSHsAgKgAq6z5C5zCGHbRKpXeYtwHp+Tbc+2TxJ/9fLUJYcfvdwXMU
	fbHlSZQJZlhrgo5Mhuog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4bw-00AAWX-CC; Thu, 28 Jul 2022 14:35:36 +0000
Received: from [87.245.175.230] (helo=mail.baikalelectronics.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4bS-00AAL3-5f; Thu, 28 Jul 2022 14:35:07 +0000
Received: from mail (mail.baikal.int [192.168.51.25])
	by mail.baikalelectronics.com (Postfix) with ESMTP id 3116F16D7;
	Thu, 28 Jul 2022 17:37:24 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.baikalelectronics.com 3116F16D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baikalelectronics.ru; s=mail; t=1659019044;
	bh=+s7o1dgS7jcJL/33p7Pa1tcwz5jis+xOv5qW3LlQbsE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References:From;
	b=bGrO1wbsKdA4wWhF9fMgV7SiwCtLkaa9ZjnBPWUoSmV+0Zor9ysZMpksFRri1XiBG
	 /tZsI5DOefW2DdTJZPtSEtcj9ovLr/PTnrnBcsi7n1hjnqGqRWkbh+P1Dr5n2BAxHE
	 CXeQj18rw6Peld609I6smeNeR2EwvYBpn/BV9dk0=
Received: from localhost (192.168.53.207) by mail (192.168.51.25) with
 Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 28 Jul 2022 17:34:59 +0300
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
Subject: [PATCH v4 11/17] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Thu, 28 Jul 2022 17:34:21 +0300
Message-ID: <20220728143427.13617-12-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20220728143427.13617-1-Sergey.Semin@baikalelectronics.ru>
References: <20220728143427.13617-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_073506_418783_D0D94C4E 
X-CRM114-Status: GOOD (  10.53  )
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
index bc0a9d1db750..2afdc43a27ed 100644
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
 
 properties:
   compatible:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

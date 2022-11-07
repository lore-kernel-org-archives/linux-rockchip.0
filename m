Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E25C43217
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 20:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrFkOQZEkPL+yj+y/mU6AuRpOQGrRq+I0fDLyh0pD8w=; b=CSNCGSISCQpetJ
	6rxmrnnuOv5BivPsPYgw5tGMqOWpGrsEkHVKrp5oT/L05+ufr153egOOuyU+yE5IvcfpkDogAJx+O
	tmfhmAIEefq5cHuTdquY7B+HsZtDK1G2ASfAE0uxCy4xORmHrFzoA5swRVsN0SS1mE5wtjjcJc/u7
	Wk7aNtX5TY77YjxvamIWWeEXdO/7UmOLx52moO9EkiyJwmNvgHV5NHQarclh5dnzwn9c5ijjfm8gO
	+cAqjpOZ50E5eDjPrrbiWIGtNEyOmaQGLQlyEmJxHLhpendg43/PJY1DTkyoEc2no3rZ0j/+pGKrN
	ZTVQ8oYjFYM1ZUDmcIDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os94o-000Om5-55; Mon, 07 Nov 2022 20:50:38 +0000
Received: from post.baikalelectronics.com ([213.79.110.86])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os94Y-000Og0-DO; Mon, 07 Nov 2022 20:50:23 +0000
Received: from post.baikalelectronics.com (localhost.localdomain [127.0.0.1])
	by post.baikalelectronics.com (Proxmox) with ESMTP id 5C541E0EC1;
	Mon,  7 Nov 2022 23:50:19 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	baikalelectronics.ru; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:from:from:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=post;
	 bh=nxclbE4vzrdkXnoD0ltRgjxGVl8kLexbHxVlPZyxAM0=; b=nPNg0hvw7r2+
	zmcLmiS8m17n0n3h3tXkvUPliwh7jWatlc3KJsXOOFSIRVtwGjULFYgJavFTC0jI
	hEHQ1iyttv2q2N/n/wwlVpRqqQdfNyEmLJYrUvaK6UEemEyK2RsYC9XnUGEIxoaG
	sGzp2xn3aEyO/nGfWyALuz++fc3Flnc=
Received: from mail.baikal.int (mail.baikal.int [192.168.51.25])
	by post.baikalelectronics.com (Proxmox) with ESMTP id 48A65E0E1D;
	Mon,  7 Nov 2022 23:50:19 +0300 (MSK)
Received: from localhost (192.168.168.10) by mail (192.168.51.25) with
 Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 7 Nov 2022 23:50:18 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas
	<bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Cai
 Huoqing <cai.huoqing@linux.dev>, Robin Murphy <robin.murphy@arm.com>, Jingoo
 Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon
 Xue <xxm@rock-chips.com>
CC: Serge Semin <Sergey.Semin@baikalelectronics.ru>, Serge Semin
	<fancer.lancer@gmail.com>, Alexey Malahov
	<Alexey.Malahov@baikalelectronics.ru>, Pavel Parkhomenko
	<Pavel.Parkhomenko@baikalelectronics.ru>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Frank Li
	<Frank.Li@nxp.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	caihuoqing <caihuoqing@baidu.com>, Vinod Koul <vkoul@kernel.org>,
	<linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH v6 13/20] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Mon, 7 Nov 2022 23:49:27 +0300
Message-ID: <20221107204934.32655-14-Sergey.Semin@baikalelectronics.ru>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221107204934.32655-1-Sergey.Semin@baikalelectronics.ru>
References: <20221107204934.32655-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-Originating-IP: [192.168.168.10]
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_125022_651942_39E48522 
X-CRM114-Status: GOOD (  12.26  )
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
Reviewed-by: Rob Herring <robh@kernel.org>

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
2.38.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

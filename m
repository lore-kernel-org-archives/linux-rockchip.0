Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D33FC27C55
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4oIUwIe08nRxy2ZcDQWkEu2AVjC43+xOEZs2cIpztY=; b=OVP3UtNv/MJfJ4
	4kOYKGpAHSp/iyxgKlu7MHJEc4fDHYAT++JzU0skNslnvErWijzJuqs/Xw1zN/CxLjICtbVdKX67A
	MXVdp7PAi1rggyePUt+TCkJfVzPpFonymDdetn6PiWamDES88T6X5e380DOwbSuxlZo713M+YvkR4
	3360S9B92edyr0kdwVtBn0Wo1EKuIlkK78LlAgCoergrg5Ukv+P+189CwiuRyBt6AWUW8jzQ5asbH
	YXiseb4cWx5gTw7E9hGUmSKCmV7u7CcvnxFcDQP/ODn258vHSLmW1zliE51WYVIVRCJYTsslMNMe6
	Dc2ujFK6Im19EDXpnISg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYV-0000000DfcB-1OL3;
	Fri, 07 Jun 2024 11:14:47 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYS-0000000DfXj-481t
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:14:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E616DCE1CC0;
	Fri,  7 Jun 2024 11:14:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58150C2BBFC;
	Fri,  7 Jun 2024 11:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758879;
	bh=G70B+FIi6b2LUEcgijriiOGQyyBBVbl1An3dk3fUHTg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=u887h5UaoyOONY4FiqX78ZwqWPOytYssT381fEaC9y3OHHSvIR/st7unQpeD4uj+F
	 gHK/ArrZKVvFsg2B9Aw7oVi6B290u90mk+L1oFQZXpeyc0Kv+qRfxU7iJnW3fyC8L9
	 kL2H6X4FJ70acEqkNLIyW6PzGT2RDm3wecaQnhUMMdvY0U0RMzDC8dXuqcX0CX0KLC
	 2CNvAGbSK0WtZq+lJnuQo3QXSVzIonBdGpAIfsUWMLe4YztsOU2p8x+9pL+1Pb/fG2
	 ZRu3PGRbJ/WONnvFr1eRH6coYjc21DJ/GibKKpHprszPh0SLUHl5axFasG7qH0lhkv
	 JsRjq8jFnmRcw==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:22 +0200
Subject: [PATCH v5 02/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-2-0a042d6b0049@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1338; i=cassel@kernel.org;
 h=from:subject:message-id; bh=G70B+FIi6b2LUEcgijriiOGQyyBBVbl1An3dk3fUHTg=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk+897DtZpMw76qmgC3Hpu3ev2L7qifJ7L9+vQ/X2
 MqhoX9tVkcpC4MYF4OsmCKL7w+X/cXd7lOOK96xgZnDygQyhIGLUwAmYrSHkWGPxJXoqQxB4rcX
 6u94f7Y9JuTLij1Hfpz3y/68eOuR/9uNGP4p/Tf7KnLTXbz70414oZuPrjrrp7tMidpx6MzGV/v
 MvLZyAwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041445_353741_CEF4B094 
X-CRM114-Status: GOOD (  10.59  )
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

Considering that some drivers (e.g. pcie-dw-rockchip.c) already use the
interrupt-names "sys", "pmc", "msg", "err" for the device tree binding in
Root Complex mode (snps,dw-pcie.yaml), it doesn't make sense that those
drivers should use different interrupt-names when running in Endpoint mode
(snps,dw-pcie-ep.yaml).

Therefore, since "sys", "pmc", "msg", "err" are already defined in
snps,dw-pcie.yaml, add them also for snps,dw-pcie-ep.yaml.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index 00dec01f1f73..f5f12cbc2cb3 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -156,7 +156,7 @@ properties:
             for new bindings.
           oneOf:
             - description: See native "app" IRQ for details
-              enum: [ intr ]
+              enum: [ intr, sys, pmc, msg, err ]
 
   max-functions:
     maximum: 32

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

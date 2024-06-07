Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCAEBC27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Te7b0KsjLt9oDlNEIdXyzEYLr+nix4At/KOYbWuEpoI=; b=Xw2PKZBEAMN4Zg
	SHyKbLgg+M5yFIsv/gi/pl/yApGA6uvWZCJeKn2/UoFI7p/pHBq+TPlsRVchDBTMas77O9BUwC05u
	OWlvkk+5m62nRj6cdtCuRLbG59h2Fzv7owuvHSY9qj0z3OFrJFAWSARQMU17x04QgYxrabzpGgDP4
	y6picJ9pE83kkZIZXtmuEZ0noqrcYepq64gAiTgxsLokJTmny6rX2vS9rLd33agvueHOPjbmQZ7Cx
	U5wQzoNin1ENZarimsEWIfJvBiAGOuUsa04iHsQeI9Uz3wqj1RIsUm23Ae19dWuCVp4MmdN42mH6t
	JPyf6x8aLi7c3Fd8g7Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYZ-0000000DffA-0ASp;
	Fri, 07 Jun 2024 11:14:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYT-0000000Dfad-47iL
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:14:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 43C3DCE1CE8;
	Fri,  7 Jun 2024 11:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A76AEC4AF07;
	Fri,  7 Jun 2024 11:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758883;
	bh=0ArQlCvHIIXLagRFXrfsGxVZ7s8NLv5FvY16U5TNFcc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EjWK+86C+IwPuNGJ7G+aL7euUVjHMwR59DX3jnJpNUG1O/hTyiGLWMU+MeC8Hpwil
	 AM0JYpXAqtXeEGrmvwnWfDzAiSwoUgnQg1UgyVGpMOKbSCN0V0FDzew4SugzySNxdl
	 sUaEXbg0zmZBQb2Z6Gxf4lHu2ovz2lQRSHjEBYVeqKPbkS1/lt7nY3VK8KQT1eEKSy
	 n71rCrI6fc36H47rYeot953Yjhg9Prx8KsBgXw+c+oei1oTd3VD9QegrVHNONiVofD
	 oSTcgspYBGNBpE6sjv3tp+5W9LtGfoAhwbNcdknj8vYhyo2mtz/tatQGkVCJv1t5DN
	 QIBjfcwC/hA3A==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:23 +0200
Subject: [PATCH v5 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-3-0a042d6b0049@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1743; i=cassel@kernel.org;
 h=from:subject:message-id; bh=0ArQlCvHIIXLagRFXrfsGxVZ7s8NLv5FvY16U5TNFcc=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk+sbPnG7ZJUeUrxxCWWArn4Vy5lczRk5j3WfJKyY
 01Of8jPjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEzk3WJGhmkBL7V+iqUvfhIv
 KPmm88ZKz68t5ev+Zm2c/MEn+lu84gqGf+p8/1MnyVxW7mzhOJLU67/mmeXr78ZXX8g8FA5f8sw
 8hBcA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041446_423858_5DB9934D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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

The DWC core has four interrupt signals: tx_inta, tx_intb, tx_intc, tx_intd
that are triggered when the PCIe controller (when running in Endpoint mode)
has sent an Assert_INTA Message to the upstream device.

Some DWC controllers have these interrupt in a combined interrupt signal.

Add the description of these interrupts to the device tree binding.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index f5f12cbc2cb3..f474b9e3fc7e 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -151,6 +151,15 @@ properties:
             Application-specific IRQ raised depending on the vendor-specific
             events basis.
           const: app
+        - description:
+            Interrupts triggered when the controller itself (in Endpoint mode)
+            has sent an Assert_INT{A,B,C,D}/Desassert_INT{A,B,C,D} message to
+            the upstream device.
+          pattern: "^tx_int(a|b|c|d)$"
+        - description:
+            Combined interrupt signal raised when the controller has sent an
+            Assert_INT{A,B,C,D} message. See "^tx_int(a|b|c|d)$" for details.
+          const: legacy
         - description:
             Vendor-specific IRQ names. Consider using the generic names above
             for new bindings.

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

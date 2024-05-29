Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994CCC25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDhwXmWJJVy1CRIxdXeGgwRFzAFB1GyE+kXL3KmZRaU=; b=bWt3PgXeMg0KJn
	Ubdla4CBqxYDJ7FtbVXk7NOS3JD+atJxf/JB72PhX6OIzZrOg8wt44CSyg8ygIJRQE/Ukn6pzZsok
	pKBYxJCnXinwwQ+Eg5+ozgoNG8R4X0TaWQOspmNbkPG7AA2LcYzLbBpDqRy9LkIhjPQ2MqVCfYye+
	yyKcFHGHQh1xtuXGTIiL9V/2Q7ukx1tx9I6gaWVWmExuzjxOfkmkHX/RDcQ4FUPkqReOO8O9GFdgP
	tty/azRuV+NJNdh8FoKzAFNbeAFHZpIi6naxpW22+yq0xQVt0kLVM/bgMog6HKkBHYXWm6yJvEVsb
	xDi0BAfniuNGBQYX6zFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgf-00000003OTj-0p51;
	Wed, 29 May 2024 08:29:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEga-00000003OPy-3Eiy
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F15062064;
	Wed, 29 May 2024 08:29:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1847C4AF0E;
	Wed, 29 May 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971366;
	bh=qiqeHfjdk+Gj3u+QTqjs/LSs7UUp1/lyknJfxw+i+DA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=g4ry1cqd8cEzgUN5sgycB2Tcf5R7uiP6t0Dm/q9LtF67P31IKtyflNthn2PVOdMqS
	 om7YWdJOnopR3AsM3G4F4cnUrH3lrWVuWlMf5ZtBG51zubCwnyY5voZAQD9H1LrWjP
	 eE+lieWeTRSgrKpY26OuQGsDjbz2GIUpF0QZsKzpgOtby3YQtW4LLqUmaDjIKRoHpn
	 u5wmBx1OIpC89prBDN70Zp5RddterI3xUJQjMLg06TIMga6Ua5i86IXpALocmW/v9g
	 ywO/Zm9zKnj8nPu7GuwCSKvio6RS0HRgMbeZR9EFQy+rqunO7UbyatqhWF7HAiUlPE
	 Pduy6KCHrSGSA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:28:57 +0200
Subject: [PATCH v4 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1672; i=cassel@kernel.org;
 h=from:subject:message-id; bh=qiqeHfjdk+Gj3u+QTqjs/LSs7UUp1/lyknJfxw+i+DA=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnoc6hojfuZDwtrcj87srW2uyR1UtS1jG3q6UOYv2n
 vf9k7G8o5SFQYyLQVZMkcX3h8v+4m73KccV79jAzGFlAhnCwMUpABNJL2dk2P3P7CxH533tJZtt
 rVZEpKTXnHB8pPZWJE44KVqNIeHvd4b/7gfcp1jz96Xc4r5/7trsl29Dt+j22K24HvHj5z5Lln3
 lXAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012929_230514_46FB22F9 
X-CRM114-Status: UNSURE (   9.60  )
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

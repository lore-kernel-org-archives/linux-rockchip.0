Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7310AC04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2wwfItC21P+OG79JLqII9uBkZnvJ2TZryQaXrXedLY=; b=A9fsiJcnOzbSAh
	i87urKcZEmmzIoJijeGjql7eq2Q1jFhAk7CPIrbhfmqPpgMk+JJe6gXrwj9RIPp9nJoCnrYwb69gT
	cGP3OcBhOLzNjsfvUEENu1CYpBjMiGxuoTJ68BCAkkh1laK0dl5TxmzlBGD23i2wH2qJERdR1lTFF
	tHCRahZJ4bIFoVx/OKqJQ8QoWLS75p1I1xYeuiI3Q24PMlxEMt/u9DXQiMjTEOiKDN9ENjnBfn49n
	Pk+oXAW2M0Ld2iNBGDtPibYA9AjYwKtvFSqVUniQUDQluYPmcYa+X1uiG6TXSj6DsELgvd7EgIYIR
	+dWgrnofgiQ+fF5lQxNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7R-0000000FaKm-1hxf;
	Wed, 08 May 2024 13:14:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7J-0000000FaH3-3MLv
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:13:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 16F4F61BEF;
	Wed,  8 May 2024 13:13:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02497C4AF17;
	Wed,  8 May 2024 13:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174032;
	bh=MgvdOL0gkl34L22gpJGsJpktQEWaY6MRdjg4t+pKTZ4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MWp/ga5oYYhuhUuKZDoLkl/rFYoZag8NsD/mXlXNRnohf6K4fLhjIv2ZwEEMcZehI
	 Hq28Y/GVHu0r1Y12YNx2w140fGNKW++aPLiEN5JgnFji+erhABO0be7JiPP7mtn11R
	 TBog3YXMbmq+ku7tCuUIgc9T5eD2Nze3suHv63bW5juJwmc3bqBTKsdJ1Dl2c5CTCP
	 A3fu6403yxPBLFTj8NktiRmTYa/OBMN2PbIlIQEOo1l2+J4buWab491QPMlv0Fpqj2
	 075dcTnI4mjXH1iswEoF200gjtcizHkHfaEZObi6xIPNPvOEGbHeH8jRYrfgTrJjl+
	 A3lQmGhIHUe+g==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:34 +0200
Subject: [PATCH v3 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-3-1748e202b084@kernel.org>
References: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
In-Reply-To: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
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
 h=from:subject:message-id; bh=MgvdOL0gkl34L22gpJGsJpktQEWaY6MRdjg4t+pKTZ4=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+q7TFws30Rt9nm8izPnqOVq3SmGvZ3f1ylKb9l9M
 effPDbdjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEzkynJGhkn6x7VVf4avFxBJ
 nbaDa9ma1ueHuVfOuHfxhOke3tBIuceMDL9aP8+u3797x/x/rawf7wn/lti778z790s45RUmxsZ
 PusMHAA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061354_000083_88C549A5 
X-CRM114-Status: UNSURE (   9.53  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

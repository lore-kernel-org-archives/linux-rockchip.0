Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2D40C10F15
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOqvYO/mNRCBt1FCy3frcyQp2HGus5VGG7dKIA8ngtQ=; b=n0ZniCitmgN3q5
	6wIlrzetsFc+ikH632A557c2cJmwrtOp8em4Wr3/xZDNqOk3NZcl9SYhPo0MRI7Hy3q/SeuMzVsYU
	lOoB4qn4fCBQD3CnbijrY5TPM7isPH8/wVZr7NI8EOWP4HAq/0/4lxPpFlPpsW/1Wv5bQ0VRz1qoF
	I74hO5LApFAAy+wSjEy20q0d8maILX8rbocOgnQJ4IpippF5ifIV4S050vXQG185NITxdd88WqS31
	pRAKq0gQj87a8UgwO0W28Xpx73o847q0B6P4yOqZ2qYmHdBa7vCGVcloWYKawsRD/m/9bBSwHg7ZK
	Apu73g3j3nNY3wo3+p9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMh-00000004fBk-2LUL;
	Wed, 24 Apr 2024 15:16:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMe-00000004f9Y-3aBi
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 15:16:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF00561BB3;
	Wed, 24 Apr 2024 15:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE887C32781;
	Wed, 24 Apr 2024 15:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713971811;
	bh=h8lnjPbesIZKEXHuDY56KI4CbN9QDflC/gTeCl9JudA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XHA53oSZ7HyiUp4IAUWEw8wRCx+ZM0y3zs0Aq4CKgm+ETKtBdkuB2N7ce5+FAmY6J
	 gM+qCM1ye1y1JHOr4sFciA73zR1xoqKVoud9jcIvlGcsAho+5Qx3oJYiuDSUT3dlnP
	 cJTkdwmsX0sV6zYMsgoa+wTm+/r0ha6lbTwvVbG3JkMRBeZ9an+dqoVqLXeeI0LyDA
	 CxtFUKXeEnlr8fG5yiWSy+9U4Skyb+CcVMpp4v17McnWzgioqPqiWimMWiYhvpOE+v
	 XvhzeLEZqIihXRNbzU/6U7v0e6FOBpjPX6rQ1FBJpOFOk4PGHO9Fn6YCuZ4WELK93j
	 JLDn4sotDNnEQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 24 Apr 2024 17:16:21 +0200
Subject: [PATCH 03/12] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
MIME-Version: 1.0
Message-Id: <20240424-rockchip-pcie-ep-v1-v1-3-b1a02ddad650@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1622; i=cassel@kernel.org;
 h=from:subject:message-id; bh=h8lnjPbesIZKEXHuDY56KI4CbN9QDflC/gTeCl9JudA=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNI0lYIyuX1M4iyl5kbPlyyRFG6csmCyVPqcrEyVz0+KZ
 LeryZR1lLIwiHExyIopsvj+cNlf3O0+5bjiHRuYOaxMIEMYuDgFYCJKNxgZ3qyvzDBjrqlh2BRh
 p3hjh4Cy+mXbift6BFv3uiwqtDLYzfDPIOLpNPVvLR52NUKhFx8sPZygb52tt+LHI+dHjMLNC5K
 5AA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_081653_122708_4BAA396A 
X-CRM114-Status: UNSURE (   9.29  )
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

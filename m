Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D82A3C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+6l9S2Zh/arUM9ogs+/BpQowBLrFi48zSMNXmNHxSk=; b=rvjIXkzTVflnH0
	9rRLM9cFR1uyDnpvf5q+UFU4ktQlD0MsW9A6zAQ7G9BmOSZ/clH6TGh9ZWRN2LtTWckaKKcXYPWrm
	0dIXMXFTsoLcYnvDENp6zishCma3kJwvVzh2gJh0HqCzK1NsCdqUObclvrTHo4QicVgtEEuhB03i7
	kGHSHtMp2Bnel4qYzY0/mN4r/lXKCaM1dkurbZMMZpxMKPkDYvGb1YbJaAdHbnyPR8P/ZVhmla+es
	K0se7uuGku4PjXvtrkySOpkuOZwwi+dvv7mS0+P6JxPIKw9MzoF+jPPMncVMU/GMHQfYSqL1V/bQd
	8Lou9eA5mWGeBEHiMbyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBU-00000006GZu-2r5e;
	Tue, 30 Apr 2024 12:02:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBS-00000006GZ7-1nuS
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D29C661423;
	Tue, 30 Apr 2024 12:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9693C4AF1B;
	Tue, 30 Apr 2024 12:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478525;
	bh=dazCN/iT/MHdY+ckymlAcfBjUpa3OmMTl+4+NDKJR2A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GmLBbkco7H+9TF70s3xCJzzCfE+wdzetILLrSRfKajcLXOUyneNVwNAo2N0wW/2Qu
	 JVs/Y6Zk1mr5uKcN1+7av/t5pKjBiAGS+brI7STdhgcZS/XTDp2OJLEiMwMRHcWmQV
	 itYQP8UD5ZA/mI7VxSN6Wc3ekS5uXsvw68IsM31imleh37XZzmyORiXqbxZlEOBQ7B
	 jEtwHGzrjebJBmyCAcJpV8WeIOZm1n8sHSB9iX230DK7X9H7V9qHWjBeTMVlsXLjnS
	 ptfChZylMwPiEjKjertC235sJDxMHxsiaE+ChLcxr9nEgMdJaKPdsemMK+36b6yVeB
	 cvISqnHavpxtA==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:00:59 +0200
Subject: [PATCH v2 02/14] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-2-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; i=cassel@kernel.org;
 h=from:subject:message-id; bh=dazCN/iT/MHdY+ckymlAcfBjUpa3OmMTl+4+NDKJR2A=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m5wV9fa+ca2plhz546ct3//n9v0lXNZ8tKMOcf2h
 /1s2zxjQkcpC4MYF4OsmCKL7w+X/cXd7lOOK96xgZnDygQyhIGLUwAmYjmFkeHQvPVe1rsP/PMS
 bLy9+FVcTWhc8HJ1/d7c+1ueJzRus2hh+Gd1jdEjKMfuqtt3B50n1vb6QedjFq6Uf2W3ZFWKDWd
 WFRsA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050206_573437_A8ACEF3A 
X-CRM114-Status: GOOD (  10.98  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

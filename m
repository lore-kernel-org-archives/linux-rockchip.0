Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BD9C25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ2Iqi++eWj5AvBQyNuiSc7g7IQHWsryC37c0yeQLhc=; b=PhxAq7dy4FhY8c
	ZKziPwDxOhVisEqXQZW0cIdpoCybx9P1gxThk1qZ8zkFrl/akpXuDg2rEvo1KGB5GS0kgF9q2gS/N
	o9/gDulMgMl0PlA2fs6aIIPfj5qMGgeRYmIK1yv5/TAT1PEsZ3b28zMMTqlLZk4/isLaPLf3sNjLU
	5oA9FtfapMtWo8SSVPh9IGmfLCLrZ2+3qxaqMJb71UWY9WXbCdS0iBKOjH+hU7/b/nKrhb+CRz3N7
	XMs9Ag6CGWdK6epPrpRa+aKs1iLL1OwLD3tEpmiJwRUgvr5nmn8+bqAyk+l3PUw9tY1ebxyXnzRst
	PjTwciu+8nHHds3w1GJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgb-00000003OS4-3n27;
	Wed, 29 May 2024 08:29:29 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgX-00000003ONC-3INY
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E2CE3CE1185;
	Wed, 29 May 2024 08:29:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E687C32781;
	Wed, 29 May 2024 08:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971362;
	bh=0AsOf44k0peZ3qs9praxDDjjEV3cTdstHX1bWf4Vatw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kltBVmHcR8ymdXTWZ2dryzYB1qMuJLqY5l7F/rKZzrcc49uLpWiNeZnn/O+3p011Q
	 z+CnE/RYmVyaKluH1XxnguoEnf1C4u+2/DNFs5cfOcpzJ6hKNFgUtuPgfmlSwfwA+v
	 6PkKl9+ya2ozGuDHGx1dIlGM4AL0lzXH8lH1XhobmfgeG88aQXvc+qtGIwrOxwAVCx
	 NpwrEAV9g1TY5ij07VPUV/ijv/BPz1NElU3NjXmHphhib9av/GXS5ccAdjxWP2Pqm8
	 k8RgQkI31CdPyg1uCKQC1UCmNTPWdXcOvfQlh7nM3cRXcbEtaRv1fQM/9Li8PDZQ28
	 40SudWbejOQRA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:28:56 +0200
Subject: [PATCH v4 02/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-2-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; i=cassel@kernel.org;
 h=from:subject:message-id; bh=0AsOf44k0peZ3qs9praxDDjjEV3cTdstHX1bWf4Vatw=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnodaZ+asi51/JWVBrUmPrPzpOs8HP//tvHJ/4mV5R
 sbsrFaOjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEwkcQrDX3mNvwyn188MWKdo
 zJUc/avFxfPAGakfS0IvyynvfskupMrIsFfgz6MvLz/Ma39iLrCk8FvttR91jld/e8QIBE+d8qk
 yiRkA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012926_052763_BAF6A26E 
X-CRM114-Status: GOOD (  11.09  )
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

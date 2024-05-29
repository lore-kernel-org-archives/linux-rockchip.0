Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84DD0C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqCx92IivwBuDhEwBQqdsROLUM91nJOSNNySii6rKT8=; b=4xoRnuXhLD4X3D
	HmxPUGlpwKDvkGqbm6/IBIv5nMuQi5LEMpkGYsXuVP76E+0yQgq9IEQGbbs2LTbCz7NCuItnDDCFd
	ZxbX3Xxu/v5YubBdvTBvv9+gwmXDAilQp8x6e6Nz1m2w8KWbCiSH9nxXDPO1FFHiIxHDMp9a9wiOh
	g2OJaRFCs2VGGvTO8IQVR2SCP9lSOneJntMDYMRAvLDLt0I5e4fY0srUF0zMMRyTYVT+kmvaUoIq5
	0cCspjrdGtGINgnCau17jnNOIERZNCodh0A/YBRF0HL/tD+p5FnMxIDH575alOI/EZmlyn5HCoCmx
	662y0yXcY80wzAoiw5iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgZ-00000003OPx-01RT;
	Wed, 29 May 2024 08:29:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgU-00000003OLw-0fyj
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BEA6ECE16DE;
	Wed, 29 May 2024 08:29:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A3ACC4AF0D;
	Wed, 29 May 2024 08:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971358;
	bh=YQdBNL3lsBxDipD/xKxlprycaEEuRK+D1X2/LL0v9pk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=tNdZg47PkI8DdddprTyeIZEIsV6JOQTZDDXhrcGGQVcIrp1B5ECK0HmrzIKdrQUQ7
	 9pcvvKhs8TX8iLJgdedT68V1l3QAkpQZdAui3ViMh94wV/VJa+jbKNi/bKfG9DuljD
	 vwjrJETLDA8EIikBKWkM6vYIAt5Gwl1GvYE/aRFoP23KJsDjZwHMWyr8NQb2ONueaz
	 HEVEqcaRX/S2rj8HoGTv0NLCySh9wgtYAsaofmhAfGC9Qdj9reIlz/l+M9U/cR3ctW
	 fbK32RgZn8hK/9F3PsWMV+nvL1AmQO4/jPEaIeK2Olt05+bavyvLeymjSubpm8VXpe
	 orx/hd3l87Z4Q==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:28:55 +0200
Subject: [PATCH v4 01/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-1-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1296; i=cassel@kernel.org;
 h=from:subject:message-id; bh=YQdBNL3lsBxDipD/xKxlprycaEEuRK+D1X2/LL0v9pk=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnocaCq7Jst/wOOJeK4PSzflpL85tqVjoYCEjEcW67
 9rtWE2LjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEykxIjhfyZvXInhLQfrgP6D
 ga8+pT1lCphp2LZmy06zuVdD5J99amdk2BIePc1O/5n4hqwNNsFHjrIbL5D46LyP96espqkpjwY
 3JwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012922_725333_68ADE397 
X-CRM114-Status: GOOD (  11.55  )
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
reg-name "apb" for the device tree binding in Root Complex mode
(snps,dw-pcie.yaml), it doesn't make sense that those drivers should use a
different reg-name when running in Endpoint mode (snps,dw-pcie-ep.yaml).

Therefore, since "apb" is already defined in snps,dw-pcie.yaml, add it
also for snps,dw-pcie-ep.yaml.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index bbdb01d22848..00dec01f1f73 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -100,7 +100,7 @@ properties:
             for new bindings.
           oneOf:
             - description: See native 'elbi/app' CSR region for details.
-              enum: [ link, appl ]
+              enum: [ apb, link, appl ]
             - description: See native 'atu' CSR region for details.
               enum: [ atu_dma ]
     allOf:

-- 
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

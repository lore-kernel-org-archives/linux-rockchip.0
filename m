Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C63C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+6l9S2Zh/arUM9ogs+/BpQowBLrFi48zSMNXmNHxSk=; b=Oh2SKQ1s90vtY4
	scJjkOn0ZjhOUBAX3mNZpI1tOjnyqyGvU9fP1z8T7dqVK4Fjvmkp1HON6evfYeW8to49dQ2cmjvGq
	AW3acMHOLrtvOa9vTyC2v2JA/rMF1O+mXnAAPV1IUOimfthbKknjWMQLAw5Okl8X2Tg/RFOJFVLTh
	Q4a4IWnUaD0+J3u5j7Aj9siHyiYZ2sG1b8gUE3LqpLmY8HKAJZ9lrZpD9ZxneqREWcg/nLWNb5t1y
	9AITlidDudUz99NVCGlf9E+gax4nhOcy4KEdwM9HvMYbpOnlHNl8r48JAkeuWEqDdYwkSxmaahUuS
	AlR4PZR5TN2G6UcWdChg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7N-0000000FaJ4-3EjY;
	Wed, 08 May 2024 13:13:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7I-0000000FaFY-1NEq
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:13:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8DA3CCE18E6;
	Wed,  8 May 2024 13:13:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD70BC4AF67;
	Wed,  8 May 2024 13:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174028;
	bh=dazCN/iT/MHdY+ckymlAcfBjUpa3OmMTl+4+NDKJR2A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Pi4E4VIC6PlUKiRfH02y9WHAKtBRzIOB1Z33gdIKcmkXVBfeVoaoRHuyxHrGcSA7V
	 k+cEWHlV7ewtslwfMtDB/n7uajEAwcdpJp64e67nh/QJUyvMncSd+RMOrs9JfefYcm
	 WvoByh6cYGJilhWkPqkYLiLc+GjWGaBIiG9Yh7ibdrP2G68YsWI9yH90pAfqH7w8a+
	 nRW+0shdXXyo4+qf7IlqKyhJyqdeC5Z9V8uMxfmfBPoNGHjxB3WPwATDNc5YVc8nYj
	 IYpeCHi7NTu/4iHcIeCGM53sOTg35BVgM3e2GHYB4SfsOHNxNO0bHtYYlyRbidcPrM
	 3+QFCTc1+BPdA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:33 +0200
Subject: [PATCH v3 02/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-2-1748e202b084@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; i=cassel@kernel.org;
 h=from:subject:message-id; bh=dazCN/iT/MHdY+ckymlAcfBjUpa3OmMTl+4+NDKJR2A=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+pXvTt3YIdE5EqO0pe37rbctkmxdruwZq+k01HHE
 1tj7Ev0OkpZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjAROW5Ghj0ttxwYolOlU1Zc
 ZXv4xe67enyLR3/bg/lnJWd6bO7+Vs7IcKtAa8esN0HaHG9mKV4wTsnZ8WjSVCXx/Qc1NpyL9O9
 UZAMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061352_648242_6E3BBA6F 
X-CRM114-Status: GOOD (  11.02  )
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

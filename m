Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66169C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uR7/d/Wg/csB6PTrG38rnYY/zDjR4cgLIVXwR3YhG4=; b=yNiV2/l3TKVk2E
	DLdckSqOORvsF84n6IxyZm+HVN+yXlsTGEGY08qKSFCEUilIRiRgEXOFJem1WV/UJHfD/0ee9rQ8i
	xsbCMMObPDR1ZSzO8FKNb1tQUzLxBkWsH1kl3mL+2MYXRN2qyIk62LieuEuW39qESsDu60trPjcDz
	t/oJ3CjS+wCGMauOWCwwxNXxd3kNJi6tkEZ0IMwzMxm8pSTZhc25+PYBaz6Ga7th0crIpLgBEFmZ8
	bFSUbFytn6b6LL7tv2nF1IM2m4Fl3I4duAJOY4YsWvEW1+K21YNO+Pvy16ZkpIdKIIytqu4m6eUzz
	dE9NZgyKipFUKiS4v8ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBi-00000006Ghp-1hII;
	Tue, 30 Apr 2024 12:02:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBf-00000006Gfe-1tnS
	for linux-rockchip@bombadil.infradead.org;
	Tue, 30 Apr 2024 12:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=eVbb3bW6AfEVUBMoqm3Hyuz4iSTbBNkUeL3un6g+fvU=; b=HFfrfNJfE65yvWlp/AF9kv04Hn
	GpVVYCEts5KrVhREMs/B82bitLgh3I6nX+FJ3wR5IXmr0Q0vsj14XG+yQ+3jjk5X7MfkPhSXpba8+
	rKaGrwvK4bUoxmGIenSI1XvSjlaXjUye5/4ASGXIkVG8odX66L3OYpv/OF313RwKBzW7srArWtAhe
	Uz9BCLZxejdmnecb/UstX0xxHMAdUDR36PJLg0XK7lBxVtK8RKonRAu+Exf4iVTee+Vs0dNvoPnvA
	DBQk5ztBp6dw2WhtGrUfCmAiFYxpgfD8Rgcb4BOS7MJhVWnL872xn+oWW2w1uVqh1qpgM8jDGDTop
	qWLEYs/w==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBZ-0000000Gvz7-3Psw
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 97B9061475;
	Tue, 30 Apr 2024 12:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ED08C4AF53;
	Tue, 30 Apr 2024 12:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478521;
	bh=2auuQGe9uHpx39X2DRGeyL4wn09dTQhuOpMdAqllMYs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EosXEdTek2E40smXhuEIGDxUvmmW9wEsWePza5cW+B9qJbPla0yG6LphRr07y/ypt
	 YP5BI19dzXKR4VzkA2sqkEghrbFNEHcgYAjVJ9PGmTPjdRPRz58mrgtv5D775EeEVT
	 KCCpirt/XxvDnp3Uvv5tQF2FFMJtJz7/SZ35wW6jd85pSEyWJz0iu7JKucmUCkhutM
	 mPCVXt8m0+ZnIU+Maeh2otyBzLX6AW5LcZOMEPi3IISrST12b0MDZe8tVfSdWjh7XD
	 yqs+jlMKUb4Zk2wkgOmPmWa92HuyxqqRDCqDx2KIWo/rhbYwpTyNJ5OG9NZQqnYN/7
	 yiYZajI2Befkw==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:00:58 +0200
Subject: [PATCH v2 01/14] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-1-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1296; i=cassel@kernel.org;
 h=from:subject:message-id; bh=2auuQGe9uHpx39X2DRGeyL4wn09dTQhuOpMdAqllMYs=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m54EhHDfYpZSPL3KQkrk0aO9Vm8vs+1ea82a8kG5
 8+emHqlo5SFQYyLQVZMkcX3h8v+4m73KccV79jAzGFlAhnCwMUpABPJV2D4X7T+/puP6Y6remsl
 3aVC1mbc7vhpNVP50OS+y3WSgfzP/BkZuluDGAVWfLg2d9fvRZEBbgdcjbZN3pR+8VViy5Rzs04
 94QIA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_130214_182616_D9512F9A 
X-CRM114-Status: GOOD (  11.39  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

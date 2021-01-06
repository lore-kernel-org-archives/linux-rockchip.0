Return-Path: <SRS0=uU3o=GJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6779AC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:47:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 179412311A
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:47:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 179412311A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfAhZZDlMJmBR4FJAXxXSvWF1eoJwGZGLrx/BCHOfBE=; b=khEnscDglMKU2H9pI05AN2/bl
	7TV5/5QT/Ta0tOJlfK7bukQ04nG1bPv7xz33h3SQgBoMC2stlqMYN5wia/kyiIAWdlO2I0v3ONPIE
	S46SWiZvTkA3mDDe4ir7M4+m5FejyiH0hsqpnwss16or10rKPKpTiNPj0Gd7pivJTVQq0/Ak3ufX3
	z+WyMl+JyiorAH+ilMBYIjRU31FTrxDGTzcjrF7DK5qz2xFrMgaPorbS7hsNlAZlL1RfiT8aPRDi9
	dCb5mjqpWgLPibV5Awnx0sN06bQTy4vUsv8LsQKN/ZTUaW0r0cuNsoyCJS056HfNn+8qTyv/5Lihw
	AxVr3KDxQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kx99U-0000xf-Fw; Wed, 06 Jan 2021 13:47:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx98t-0000gW-UD; Wed, 06 Jan 2021 13:46:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A13AC23122;
 Wed,  6 Jan 2021 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609940786;
 bh=XD4KOQ/rP8RIBZGRRQa+2iWBuRRUBOqeoHg48inz8OI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tlr6Pvqxj2kK3acALn0W8ypJ/FllP+6V+SUZmRRWiqCXfTUo2U3mO6adiM8P407U+
 1fILbXiuAcbPUSA8YTd6CWZaOlpfGyKSHQDlfP07QDT8ovvvClL/8GEcFDt6bGHIeo
 gY3OQzHpscGdiFHExP/dgLbqTNpTcdLbEfkg8x5y9nmtcuI/xbnU2SEdx0lhpuCnRs
 fn+fmr1kTu+xYNn1jGcDZRcuPdgJ3ogSqHAMgVjx5v/Y3JWrQrx3nwn9E1niBBrIJN
 GuJ2Ly+3SSqlHBCkhPevfflVNEbwrn+DHJ9jsEKJIu1EvvOvWWj3ly6cxgQfGk+0pd
 pI9RqsZiMqxZg==
Received: by wens.tw (Postfix, from userid 1000)
 id 5C1C55F7EF; Wed,  6 Jan 2021 21:46:24 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
Date: Wed,  6 Jan 2021 21:46:14 +0800
Message-Id: <20210106134617.391-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210106134617.391-1-wens@kernel.org>
References: <20210106134617.391-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210106_084628_212600_7654EF08 
X-CRM114-Status: GOOD (  12.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
an optional property. And indeed there are boards that don't require it.

Make the driver follow the binding by using devm_gpiod_get_optional()
instead of devm_gpiod_get().

Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
Heiko, I dropped you reviewed-by due to the error message change

Changes since v2:
  - Fix error message for failed GPIO

Changes since v1:
  - Rewrite subject to match existing convention and reference
    'ep-gpios' DT property instead of the 'ep_gpio' field
---
 drivers/pci/controller/pcie-rockchip.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 904dec0d3a88..90c957e3bc73 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -118,9 +118,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	if (rockchip->is_rc) {
-		rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
+		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
 		if (IS_ERR(rockchip->ep_gpio)) {
-			dev_err(dev, "missing ep-gpios property in node\n");
+			dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
+				      "failed to get ep GPIO\n");
 			return PTR_ERR(rockchip->ep_gpio);
 		}
 	}
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04816C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fp3TdPL3L2r8dZfI9JoChZhQfoeQU3BGspECra8PmVU=; b=lx1Ua9kzt2LwQ1
	vnia39FMbAGR8pzXPmX8N9TFsapxueV4sg7/KqwXoN5JF4JiFDP0vX8hNxFw0O5k/9wDFz23/VbYI
	hvN6IwO0OtKgiYToOa35vxvUofzAr/pKhhbD64SPE5DEPgq59i8pyrA85gQz7nU9W+sfXLWs27Rww
	7RORTCkmRmD2+GWLsBD9mxFBkgr73IsB3KBPk7hEsDFG1bM4kUs67OjS4FTWzIEwwWsngBBbvp3Si
	wcNK/AnDSBD5EeG3icA2gFZy+FTiGQ2it0TmcJ68W8A2kwcCvYMLQQ9YQqcIRGXd7lHIyRDPYMQ78
	jYZvmQ88FwQa5pC7qYcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeQP-00CaV3-FY; Sat, 16 Apr 2022 09:09:01 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeQK-00CaRb-F3; Sat, 16 Apr 2022 09:08:59 +0000
Received: by mail-qv1-xf30.google.com with SMTP id n11so7887996qvl.0;
 Sat, 16 Apr 2022 02:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HaIKipARCSUs8/GjcWOy2SmGh5J0TCwFLzQa/H9W+0o=;
 b=qBe2O2Un/tFZGSt7Z8LWul8/RlBmIx9qaLTv0cgWtS1ooREPKJYbAkwYW013/mvK0N
 xrEQWBBj7spv0blUwH2D32JbSfwe1fN01+ZHHEcraKWwKbeQcbZBT7RNwfXU7lz+fjB6
 cpuqcUhhjOkMe6i5JJCyNYmL2o78ITGo+tBsv/Gn/VzkHjnb/+vVcY1GO3KCCT/iKZBq
 lPFP/sWd5YOhwMPHPnFCTALZWAymn7fEWLhCpZA/sMzmXthy6CJZCqCGjLutdr4+Jb5F
 ADyRk26uzNfJQwVeOTelUnuAWO2r97oCPzr7h3mbwdISKVs9PbIu++6hddFM9CIi37v1
 8mSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HaIKipARCSUs8/GjcWOy2SmGh5J0TCwFLzQa/H9W+0o=;
 b=yTukPRFjePPhJJQPoD7jwsjSZaw2r5knHWwYwcuR0PjBPPEJwbG3/KTLrnmlXsT59Y
 V10D0GHxHoKCc2why0za1HHs7MkIwp7pY8/CuU9O1LCAm69hGPx/qBeW7E0+x+ZJnfjN
 zdY4wy47017qGyISe+nyukYFnSUNVw/NKVjt0mfgyUnGNpZm+HmyykV9R9kWx7WyJrE3
 ulBOLepOL3yq33fEZsQ27QRpj26JjfFwjhWrEHrWyc+gmVoElBYa3EbFcPYoyuADifkf
 /JzEZAtZzje6+NiroZpaO48QhNLMCIk0qCdBA0SWKR+7Veys4YQgtD9jWoyvwC1aMY/K
 fYPg==
X-Gm-Message-State: AOAM533fRjE8219JPOKZPf1g5IT/ILO2eo4UPymiKXf6zfbbq9dYldtk
 0RSW61gcyzinGjiSoXkA0fFP9M1MogZvwQMm
X-Google-Smtp-Source: ABdhPJzuSsb8XVHbYS5rSo2Rs2MSGoRGsrqQidGJ8cFtLkYS+7Gcu56sRUB1flXnMBpd8AR0HJSyTA==
X-Received: by 2002:a0c:ed46:0:b0:444:3e69:767b with SMTP id
 v6-20020a0ced46000000b004443e69767bmr1816176qvq.71.1650100134761; 
 Sat, 16 Apr 2022 02:08:54 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 t19-20020ac85893000000b002e1afa26591sm4630394qta.52.2022.04.16.02.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:08:54 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] Enable rk356x PCIe controller
Date: Sat, 16 Apr 2022 05:08:40 -0400
Message-Id: <20220416090844.597470-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020856_563911_41A2673B 
X-CRM114-Status: GOOD (  10.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series enables the DesignWare based PCIe controller on the rk356x
series of chips.
We drop the fallback to the core driver due to compatibility issues.
We add support for legacy interrupts for cards that lack MSI support
(which is partially broken currently).
We then add the device tree nodes to enable PCIe on the Quartz64 Model
A.

Patch 1 drops the snps,dw,pcie fallback from the dt-binding
Patch 2 adds legacy interrupt support to the driver
Patch 3 adds the device tree binding to the rk356x.dtsi
Patch 4 enables the PCIe controller on the Quartz64-A

Changelog:
v5:
- fix incorrect series (apologies for the v4 spam)

v4:
- drop the ITS modification, poor compatibility is better than
  completely broken

v3:
- drop select node from dt-binding
- convert to for_each_set_bit
- convert to generic_handle_domain_irq
- drop unncessary dev_err
- reorder irq_chip items
- change to level_irq
- install the handler after initializing the domain

v2:
- Define PCIE_CLIENT_INTR_STATUS_LEGACY
- Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
- Add legacy interrupt enable/disable support

*** BLURB HERE ***

Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  55 +++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 4 files changed, 200 insertions(+), 13 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

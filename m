Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9601CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 15:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eu2LdQFNGQWCCoNMPhAu/+967Q8teql0o4TN4qfigJY=; b=yTNN9MCCnoatGA
	u3GC8dXZ0LJLhdHDPqnemWqazQbOn5ujL9ld0KlOHgPObJaQm8Y7l9owaKPOzZY1H8S2ldjyF5sFk
	4Snll11DSOd5WR5I4h8zZlliZGdHLi+AD1Q1OHRPDHs2JioYd+Av2vgUF35tlbi3mEcHyKRdGlaCk
	wwX75o5tzapjAPBaMmr/rd2I8kf7rnBkIPJceWcpvd8tsGjLbRIfqpWmw51pkkkptCkcqSvosXFk+
	m8ryZdMXEMuwnc1h7FgF/PQox0nILlw7wRbDUSm6oDuGQ3LIrgol+xIioWOJepj4TEfnuzq0YXdSZ
	wdozZRCTdNRoUX32rfHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHcL-004WJp-7S; Sat, 23 Apr 2022 15:24:13 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHcG-004WGr-Rs; Sat, 23 Apr 2022 15:24:11 +0000
Received: by mail-qt1-x831.google.com with SMTP id f14so7569284qtq.1;
 Sat, 23 Apr 2022 08:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NLbC7pdDC1pftlDsSAPppqPquRIxG4vESMwZRNDZe9o=;
 b=Y9EGE09ejLufncSbbMzMQwFHCfQQPutN+srK2CbRmo4/UsDQeh61haozgbBk4qLcv3
 5Lcxf4IBCUETkujemwhIZRzser7j5LuxnwBPeCmVINYxUUraiFNK8cBn0QZn/wHEBb73
 XqxCFrG+Hdd2/9b/EgTgF3aq1OJnWQUe+e7L+/vEmmXuMBkEsqM9o4Y9so8XJp3nhQE1
 5pVywDRnvO3HFBO/FB/3sFZxsQ90cX5YBlE/jWD2r7jHX+MWwGGGJ4u0i3ek3bx8cjZL
 sqAI/48HkilGpzakatcYpR1y49SZCPCYtwCA/BJcTgE4BdSGLxM0b9agr/1nJQ+NrF5z
 nSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NLbC7pdDC1pftlDsSAPppqPquRIxG4vESMwZRNDZe9o=;
 b=lXJGR8F0aPasOYHfB6rY1TVetMNVnd0FPbUCvExKUaLmAmfWI76jdinjBOIZrLSIa1
 FgnKXFXYPZxWWBIlMXbsfnM8ZE1tuWIV8wtQ/zXrm4UH6Cbm5eNlaIrbZqCcEvxstBGJ
 wDLepm6tEzTRNwSPe6dmie2DsAMwvnjixB+MlC53TvrrUtRzxv2YQWy26WdGZLindb6E
 i+1ZQayJuojAaAvtELWeu3vWWQAN1Va/DAz/AsE8jvdsYQ9baE1z1AnZ2sl9BbVD3sTu
 irN1WLYXNdupsabDRVA+aV7BCXgPFmCbYsZgV4DsJAp0843KBwq0QSa9ei/ew2O0VTXm
 si3w==
X-Gm-Message-State: AOAM533xQZHuGZUabNAb7dM/cmBbe3s982h6DoJWaoKXLm5zOaT5J7La
 gmc0aKo38ZzsHquxUmVIt5GHWVDZ4/6dJg==
X-Google-Smtp-Source: ABdhPJzsgZ/C+xK+RUOpKmXowUiTSShH+imJOmy1G4yZoWTsFp2gRG1sIA2Qunfe0n+wMx7lkJjb4Q==
X-Received: by 2002:a05:622a:6114:b0:2f0:ffc8:53f8 with SMTP id
 hg20-20020a05622a611400b002f0ffc853f8mr6769395qtb.681.1650727446594; 
 Sat, 23 Apr 2022 08:24:06 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a05622a004600b002f33ba280cbsm3184165qtw.8.2022.04.23.08.24.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:24:06 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/5] Enable rk356x PCIe controller
Date: Sat, 23 Apr 2022 11:23:58 -0400
Message-Id: <20220423152403.1681222-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_082408_936937_43B9C946 
X-CRM114-Status: GOOD (  13.28  )
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
We reset the PCIe controller at driver probe to prevent issues in the
future when firmware / kexec leaves the controller in an unknown state.
We add support for legacy interrupts for cards that lack MSI support
(which is partially broken currently).
We then add the device tree nodes to enable PCIe on the Quartz64 Model
A.

Patch 1 drops the snps,dw,pcie fallback from the dt-binding
Patch 2 resets the PCIe controller to prevent configuration bugs
Patch 3 adds legacy interrupt support to the driver
Patch 4 adds the device tree binding to the rk356x.dtsi
Patch 5 enables the PCIe controller on the Quartz64-A

Changelog:
v8:
- add core reset patch
- simplify irq enable/disable functions
- drop spinlock
- only enable/disable irq requested
- only pass the irq register bits used to irq functions

Changelog:
v7:
- drop assigned-clocks

v6:
- fix a ranges issue
- point to gic instead of its

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

Peter Geis (5):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: reset core at driver probe
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 114 +++++++++++++++---
 4 files changed, 185 insertions(+), 27 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

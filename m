Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38150C43219
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 21:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/kaDJmXQPzOtQn3FQPKZERnewEq7c6xjUno+Vm5vvo=; b=FVYC6JTzuuZid2
	FV5QNLj4AXq4Wzgu30Tw9t4mLV4A9BohlvncFtiS3uDPLCH0uXkWeRY18dQkSKXWmR+Wf2k5rYhmR
	6FWUVDSdkhhV/bUmXVKYvjyaLF4ObZZJLazSKU0S+X5/7REdD9mFMqEc4LlNRs2++nGHJNJlaSFEC
	Uyd14217/lu4sm8ezg+WnyPtXwYWkxNvi87rZhoDMBjC+WUWfx+5NUt7JyL7wqOk3jbcn4F35dH0C
	j7lkmXJcgDTrKISOM2BPr7nY8ccQEdQs7BlImnONjvGKGXOI3bfVt45fDtoUi0pKUvQdT2xqJm91h
	SRhrWhpN/dcWyUhYTpow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfT9C-00BJgt-QX; Fri, 15 Apr 2022 21:06:30 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfT9A-00BJfc-3k
 for linux-rockchip@lists.infradead.org; Fri, 15 Apr 2022 21:06:29 +0000
Received: by mail-qk1-x731.google.com with SMTP id d198so4226607qkc.12
 for <linux-rockchip@lists.infradead.org>; Fri, 15 Apr 2022 14:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a4nsrukBt8/qYfpBVgNViUnWTj44aDVVHk116XxwMTc=;
 b=ei02RGO8B4GvbxIFXYGiVe3bBCji+AT5TQNK1eyZirSvHjzPg+gt04xDt50VkbrTLQ
 NWqVitJN3rGlZHXg7unJLqg1MlO4rt8q/xSpmGO3C4PbjawMaCJpTm0WeDQzXmq+OxCI
 zMf6V67rKIYHNjUBzwbrtBhDzSiIR2z0YZx8ik2kA9HrqQQWk0v7ArdgG3mtDFp+N0iz
 Btd8lhA2h8weiSEtyLX7ApLvRCxPaBehAScdlAqXVBiy2bhucY+KBGYFOwb8rZzCo1mY
 qfjqAwuvo1tYrxKfr9vSVdKpKEsD2ZmkATfBRSJ/2LWjGCyAVrYbQfyLcE7Y8+QfhEjJ
 bCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a4nsrukBt8/qYfpBVgNViUnWTj44aDVVHk116XxwMTc=;
 b=lOSwPCy4NvxhP4+9MhRATLmsEqOrPRa475aypUghUiDSa5K8HBkhKn+CTj9o6h4/Ts
 E302gKCyr95cL2pmALcVjMUfEuW5hELd/Wm0eR17BOv4iyw2PKfilt1LoJILTON6KcCk
 sJ4OZ+8Ze6mjMsll+X+65cwIuom/tYBDa/k1FDtD4TAdjdJKay5b+VcLHHP2MGhDTU8F
 /p3+5M8Afxe8dzlk4zxjAxT7OHp2bIIYuJYdoHxQy+QDmnFdzkllSbALFb2+FFIMw/T3
 6UcvEJ7DJdhMKwDb+8SWfesytXgwribOMhWcmjgO7aedL8rYhQQKmlW/P9Sd0uk/3qBq
 Zw1Q==
X-Gm-Message-State: AOAM530Cyi9cndYgnCmMCW/twH+ny+Onfs2b1at5I7ebwDzjA/7E3b+Z
 QNAvSQ8cWRZpOXZZdEx+BfimwRHhhwU7Vg==
X-Google-Smtp-Source: ABdhPJy5paJwGqLgwegpBrj7lXfC6W9ZFoG5/teOzaYWm0ly1dRkE7I4QgVypeRqjrYgvqhTvfEB5A==
X-Received: by 2002:a05:620a:6d1:b0:69c:3806:8655 with SMTP id
 17-20020a05620a06d100b0069c38068655mr524820qky.154.1650056786476; 
 Fri, 15 Apr 2022 14:06:26 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w8-20020a05620a148800b0069c4884c990sm2838664qkj.108.2022.04.15.14.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 14:06:26 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v3 0/4] Enable rk356x PCIe controller
Date: Fri, 15 Apr 2022 17:06:17 -0400
Message-Id: <20220415210621.538109-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_140628_190330_99969AD5 
X-CRM114-Status: GOOD (  10.67  )
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

Cc: heiko@sntech.de,
    linux-rockchip@lists.infradead.org,
    linux-pci@vger.kernel.org,
    devicetree@vger.kernel.org,
    linux-arm-kernel@lists.infradead.org,
    linux-kernel@vger.kernel.org

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


Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  68 ++++++++++-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 4 files changed, 210 insertions(+), 16 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

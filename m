Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60AD4C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 11:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kIGR39ubqEcxk7g87xjtmjpmJOAuTO/RHzATOkEEo9c=; b=cjst2QUB6F/6Jn
	vYy7L6xf6j3+tHtP5GbELMo2RddsiQjJ/yl6lPtwtfm8QCesL0Y4UMsS0uvtJRtr9WjlVLgDPJnw2
	i3BZJe0+V2hOPvYcwGQZctqpdaejwXr5yRuVX0q+rsy/FPDz4i3eXxPmnFopwucvpKF77TQ0iBbzr
	jzonB9FgZjflDIqf7wOZLy3eFxH2YPKTeEDC+iqmz8hY3ZcLdkNxrLNNcisXjbxanlUzdq7ZzXHWt
	dTt0dLq8UjXHv1VPzG49CjgB+zX+Za7EJas9hW0VrbzrOOH2V/89cQmN+irfktMbnXCU7GTbvEiPQ
	SXOTbwiDWVFNa6eTWLeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfgEw-00CnIy-BN; Sat, 16 Apr 2022 11:05:18 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfgEs-00CnH4-6O; Sat, 16 Apr 2022 11:05:16 +0000
Received: by mail-qk1-x732.google.com with SMTP id j9so737771qkg.1;
 Sat, 16 Apr 2022 04:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5tjCwNy7RZXxZJdAC+JulQOtn63QPnfqne4iR8XvOSk=;
 b=RdMsiYZGszmO70+SYVt/9mW6om6WqD0ZV7uWYpPn3gGsfFI63jaPf6RCdNw/f/jvjg
 3qhkMt4kTZMe7ywHDHXZswZ2xD8whO/GfewTQ1BTq5cJ4bgpwdcs+jkcrQbSE1S2hGon
 tRCVryOJBfyWG0PGihc6Lcar7qkoy/Mt8iNBCDJ2GLguCwyZ2wHFgX9xGN4YNphT87Pn
 tNkLl3qjYKDoMiLAYCObN9aSnNQewvUFt8AhEpvvORl/BsPvVb0crBjI/jDsBVZlg+rj
 a5cwsEIdu6AIbGj7NW/Z+k78O45+s+O5pj04iSZ6i1vP4gxClWgV83BmFAlip4G1nnjO
 hqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5tjCwNy7RZXxZJdAC+JulQOtn63QPnfqne4iR8XvOSk=;
 b=XvwaxlHdY9m27UlNkvP1iHLBLiWFHBZTI97tNMX+KUec0wU2nxDFDHf0aThTWNAt2S
 ++9Q1+fJHmE/rZ4I8845U0ofYfSjlC+esMdNAtccrOz7GeICb8ylCEKuiYYhBpdh9pD0
 pVh5f2gNJY/Rz1345xb0x5gkzwRG5vC043Nyv/+qsvyahdgSvFK2rGB0nc6fleoVaFVt
 oDUU7eifQo2ytMcUNkOu669x8RuRIXZEkjMu8lWT30t/a6/O2YglzT8iJNxffactWbSx
 LrN6IJuRphAHiyjyxCLrjCzCTA0qVLYmMFyT7nj7ydqENEydAtQCKbdtNP8kUkLJkEYy
 1uxw==
X-Gm-Message-State: AOAM532KpfX+QpR5hpUxUChI1Mq9Ybi+wQFXpgnqk4OJARJJKHar2So2
 ICG0mh7zSxtHD8OGHgr9/H4m0a5FQMlkIrxf
X-Google-Smtp-Source: ABdhPJxiWNWboafGa0pm1NGh8x4nUNaJD2LAsJm7xIzh/1IZ+EQ4YfbsRqfNqrrSOyeg+yWb0nYNvg==
X-Received: by 2002:a37:ad14:0:b0:69c:8c86:7d9 with SMTP id
 f20-20020a37ad14000000b0069c8c8607d9mr1665388qkm.383.1650107111107; 
 Sat, 16 Apr 2022 04:05:11 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w6-20020a05622a190600b002f1f91ad3e7sm97026qtc.22.2022.04.16.04.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 04:05:10 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] Enable rk356x PCIe controller
Date: Sat, 16 Apr 2022 07:05:02 -0400
Message-Id: <20220416110507.642398-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_040514_293076_C83CE146 
X-CRM114-Status: GOOD (  11.44  )
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

Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 4 files changed, 197 insertions(+), 13 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

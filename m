Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF014C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KPPx7Tm1KlMpaqXQY2J6uwSabASorGI5+8aVbReW2eo=; b=KIs7cbpPH46bck
	s7A/hCZq570z0PqWgt3PSukN5071lQh/iMIzXaGtRzUONFaBCdptOrz+VtuGAXOqQ2XjuKi6cA7q7
	TnUl0utTJ/pHpGPYsn4Yxgc7QxRy70I6kJOJ78GQUTMlhRcaqZHYFf99OkFEpv4k/RRl6jLEVLwFW
	MFgpZqa9vdAd+KL58TyofkXPsbS+wLfHVf0vH82G5gmG1XCVAxPu9eX8gbXiMMFX5OuK/07bWn+kP
	DmCCwBpcynipmc1MMeyvOrFh3gpJirigKgJYOCI9HRTzMh78sf5ZeSinUBFUUOIvnTSDRV0ZUmv9U
	C16R1c7sI6nRydH1FIjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeJj-00CYL2-DS; Sat, 16 Apr 2022 09:02:07 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeJg-00CYJs-Kq; Sat, 16 Apr 2022 09:02:05 +0000
Received: by mail-qt1-x82a.google.com with SMTP id bb38so7232240qtb.3;
 Sat, 16 Apr 2022 02:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q1UfUXhPrPxMteCJHhzwzwmpGBQkHn9blBEyoIzeJK0=;
 b=jKEejKUggWKkDysTid4LHWwVCt73jIBp6T7U3fQzJ4tFuW3MQMsv/ri+jfDKomqMQq
 laAN2GlIClZRq1l/QuwlPY+EHLm3ezoeISbE2z+iN01JHhn5aWC6LJRuOeNkTfdn9sCN
 ChwEiYQkIejhqaW8qG/1PcD5WumV7x0UrdMXDLTlB8GEvnY45N0G1xQaywveqdqWBjVI
 z9/pOr0oOWzlpqUXN85+Lll/cvA3zz4m3L0I9Y+Zit8cggh8ZRbwE2J2jdonR2me0nZm
 Tft7JqzY6XcsYVzK/mlL61L6YQOgCWL22UuEQhpi9ZPM9sg3LlqL5hPuJ1pNLUCZb9Fh
 RSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q1UfUXhPrPxMteCJHhzwzwmpGBQkHn9blBEyoIzeJK0=;
 b=IyQowlfokZH0tbSaN9NgChztN20jqyfU8gT7zBBQms7rEMYwg9e7LtHYOZ9W8opt8e
 Hafbyk62lqmLcNjzaBCh2mS950tGG8nPR710rhudKWpgoJwlGRStSLDg/1Hm8z3RqQQT
 3hqkZsBl5xU64DKyY8eUxJ4WOhiEh+okUU+EuF4a5OauYFNkgZWWWzh+G7BO2MSycEDO
 1o3Nj/HJL2K7/2Irx73vr0MwBy5JBKcoCHz3SvstAJlrATZ/o1mAYYx3zA6EyQZRsb5G
 z69yBUp7Y2rVTS34KO9hMztnhrhMFduOTo1iDa/PuC908P+qpXmuNDHKcI2W3bMkek4C
 rzNA==
X-Gm-Message-State: AOAM531tzoxcmakw0IYAVdeNqlnquq2QqRovuagNKr5AuJ4PkpitSY4p
 gNNduAtNs3u/iDiTWp1NDViTEjxzCKsKYFpU
X-Google-Smtp-Source: ABdhPJwyVMhIkaZ3RLVGBQpjhDuOBQJVaJlxNYNpMMOJuxN74a1MwpFwVxAwN4i9c47vDKvxBm5Zug==
X-Received: by 2002:a05:622a:4083:b0:2ec:e9e3:1656 with SMTP id
 cg3-20020a05622a408300b002ece9e31656mr1695558qtb.529.1650099722999; 
 Sat, 16 Apr 2022 02:02:02 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 o6-20020a05622a044600b002e1b9be8e6fsm4258085qtx.36.2022.04.16.02.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:02:02 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Enable rk356x PCIe controller
Date: Sat, 16 Apr 2022 05:01:55 -0400
Message-Id: <20220416090159.596930-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020204_719887_42031C47 
X-CRM114-Status: GOOD (  10.59  )
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


Michael Riesch (1):
  arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10

Peter Geis (3):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |  46 +++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  55 +++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 4 files changed, 212 insertions(+), 13 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

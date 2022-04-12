Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C21AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=55y/AGX6tEzCkNqubHsdC/+uU2JyP6KuUV9RbbfXSXc=; b=jHuNrykpWtW107
	X58YB2vU7KZNbguWMsPttsmhlBDjs1MMIApb1UsRlTAR+W7Hcgc3e2jJjSNWGpU7N3KYEt7ZX7aNC
	ktY2KsFFbAKrl/Qd3iKADANrl1s8UzIoG+uRvR5B5Kr4zmqpx33SqBlr4Bc5C3RVUo1mcg/Ay1BsS
	4aFst1yd50oq6BMeRergPZ+NewbO1b9Xbxg5MoYhSdn+snuwS5gwvD14RP1AqFNiEJzJDTzwj/41L
	4+M9F46QNrNlQyMNmzRHYoPrhcpo/Ml6T/7LWNz+igBVBGonQEBx3dLDmKxx+Syuf+aYlD0puxweu
	a4kXppDuPMf7j7xJ8LJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLiT-00FVH3-R0; Tue, 12 Apr 2022 18:58:17 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLiF-00FV7x-3u; Tue, 12 Apr 2022 18:58:05 +0000
Received: by mail-qk1-x730.google.com with SMTP id 3so7058363qkj.5;
 Tue, 12 Apr 2022 11:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TuwBH94C0n6aA7QlxhA8EuWZbFghowwSP20mti+OFE0=;
 b=ESPesL+ha/VDC3WrnqhfHAxmVJd6vyaeXQYrIEbyIgkDHHSFzvSSRG6aHsHf54kpC1
 haUrOukpFRo2T1pTEo9TFmO5OJOCaIt2fmsEjaDBHUnhnZBGZUR2FHgwkjeqUifabIT+
 SWL9dkwmdYbt6f1OmxymQDv/LVutahk9EbMqCbQv9Hd7+zxvIBujpnYRbdLmVOjX/+1J
 nHpXIz0tL9J/ZPfdnj6au8YmN3L0tdLyoYqqzwxDJe5lhTSnjfL5oV0ch8Kcs+4B5ouf
 wZGB7/Nfva344S2fz8Ycq+cjww060hnnVNuNds9E7+p4tXJ8Shyg2rYix7F03qY8Ei+Q
 hHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TuwBH94C0n6aA7QlxhA8EuWZbFghowwSP20mti+OFE0=;
 b=TYo3oMViBYNgl3KhFLhpIUpATBSbNOLLm3Kt0reWp3OSxY0aHZ9a/aZqXfPXsKxrgd
 aUpenMUS7TsENVw5iKHfue2FmpzRF/TSmCceoIgZJPQODprb/35cvJhwTVHZYX6I6Kyb
 9u9kb9DfV+qhjxASmjDTNvpKMFzGyhHHyMhfVzsqurVyKlT7T9xlmjoOMphf6i2Fb7Dq
 odXaT4gaYhQb3x+4E7vIsYfs1Nriof+akJxEKN7+Rgwo3r2B39JyQ0w/7P22BHH3wNSO
 4VOCRZd61xONIYLygnOsGSNwJXNOSyMPkHX3GecNS6VoTtPMck0SaRZjnjhDtqpAHNNQ
 kbZg==
X-Gm-Message-State: AOAM531gEeItHyc5bCK/G15TPpw8pKTEzXm8CgPPUmrc0B/gnFRz4m2h
 Rs8rDInnhjwVp58sf80uIyv1dEXzGTk2saPO
X-Google-Smtp-Source: ABdhPJyXUdC+5P5g3zdNWZC3j13Lm90y+xiyQ1BBV27wd2BAygeNwg1QX7qc/UHSRd88hpinwbmSYw==
X-Received: by 2002:a37:9f55:0:b0:69b:f262:bace with SMTP id
 i82-20020a379f55000000b0069bf262bacemr4228890qke.236.1649789879757; 
 Tue, 12 Apr 2022 11:57:59 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a05622a05d200b002f07ed88a54sm1820610qtb.46.2022.04.12.11.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 11:57:59 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/4] Enable rk356x PCIe controller
Date: Tue, 12 Apr 2022 14:57:47 -0400
Message-Id: <20220412185751.124783-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_115803_194456_67BF606A 
X-CRM114-Status: GOOD (  10.07  )
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

Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  3 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 34 +++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 68 +++++++++++++-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 92 ++++++++++++++++++-
 4 files changed, 189 insertions(+), 8 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

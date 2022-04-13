Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E05DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 13:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RrpmkdzEFXMMu0EMH6tnF6IOHnLQrVcC5u3pkfE5twE=; b=OzeWcIKtTyq+jj
	leM3jt0kjwetXYYmIimmXSOunSm4tU/jTnkUKxdgKzn1RQ5m0itli+OIeWYSMH4C3LN6u6AvfSxpw
	2X3VnJuMv3Rccs4BdgnvmuCGJvTUr1ayYnjdaviYGQHic6VyIp7ncSmVBYNKSmITCMXwNywklkKgr
	JDdHlGCYe4sbvaU2RjmffKXpnO0WJcSTWefQQv2cs+ctbhXWxXiLcRgRfgJfPwwOBAsQAd6a1cUQe
	UC+/loRmYlfmNiVWhtwUgbTWVOkh/JA7cg6KCqY9z0MfnaAFnOHSHcUJ5VBg2eQNR+Zg2FtySKK1o
	SWVtm0v5GJlxSI1T/PGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedCu-001Ck9-Oj; Wed, 13 Apr 2022 13:38:52 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedCC-001CKw-8e; Wed, 13 Apr 2022 13:38:10 +0000
Received: by mail-qk1-x72a.google.com with SMTP id 3so1402251qkj.5;
 Wed, 13 Apr 2022 06:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=obH3d/S2lYaSS3WRVgxjm06UjcTOK/XeI/fbZ8tvhu0=;
 b=p0rEdTVHqEwUjYkBCxSFHcimffPFsmL7M+fvAGh4R/FEqKk184GdIfe4UKgalRYNo3
 YVdI+ZOyOgZDfikqiwW0SfsWDA4Xc+n2iIufyo9ucCztXMJmXTq5CJS4y08rR4aWw4WB
 lfDAO8XL8mjMO/pSvRwKBmpt2aQJmC7JkeigeC6BAwhYX6UDJYMeDzF7mtiKXdKaabcJ
 brhRCPFfYP3YCPTMor8G3FsOliN6954u6kvYZ1pYL0rggFF0b+KR010tuFhsD2xp/ak8
 0+XAt6fronujGCN9wBx7fcVzGvokG9bobJkG/0o2IUs5qVXC6b3jYmMbwka9Ld6/+VLV
 5KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=obH3d/S2lYaSS3WRVgxjm06UjcTOK/XeI/fbZ8tvhu0=;
 b=leglvDozrRQuLGvgFg9B72uXufTxUozyygtQuX4FA3rV2OL/u87Iua4/EVDjHYqVUR
 RQFJCLnHL6qtttkb9fl/uQ/00wW0ZwNds4BPJ4fn4G55xYi9iQ7KXoI1i03MdOHeyIdB
 O2ORK+k+8kNj+ftfFuZ9oPSEwCdK8wxTX6tGmY1lkpbmphqPsJn8iXsbJpagZEBLB4VS
 up33FdeaJUGjvNUWOZ7mfO/ShbDoN4EtWEwPRYyDCMvNn4lVIm24e4Kkzbzy6VjTn5e5
 11WCVI1qKsSQPz5S7Dt7YaLa+kaZ/Cv6Sfgw0hQBbrcz0D2ejQ8UFidkvTwjie7mJoEk
 qJpQ==
X-Gm-Message-State: AOAM531KqKCzwVd+P/ElDm5qwnyZaOYp22giITAYwCMkERkCI7p8gMRC
 X+AdgNVqRFW8FdzLqyEtneKbBUgCEthJPKcq
X-Google-Smtp-Source: ABdhPJwoNltjyMwmDwC9a/qTbbRk6RRmZyCNXPt32NI15GQs+mxl++8piNnzqINFOdcavlai9Lgx/Q==
X-Received: by 2002:a37:614c:0:b0:69a:d30:e936 with SMTP id
 v73-20020a37614c000000b0069a0d30e936mr6632280qkb.667.1649857078596; 
 Wed, 13 Apr 2022 06:37:58 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 143-20020a370795000000b0069c59e1b8eesm790584qkh.10.2022.04.13.06.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 06:37:58 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Enable rk356x PCIe controller
Date: Wed, 13 Apr 2022 09:37:27 -0400
Message-Id: <20220413133731.242870-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_063808_332462_73C3814D 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
v2:
- Define PCIE_CLIENT_INTR_STATUS_LEGACY
- Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
- Add legacy interrupt enable/disable support

Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |   3 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  68 +++++++++-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 123 +++++++++++++++++-
 4 files changed, 221 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

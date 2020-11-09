Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 044B2C388F7
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:10:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A1652067C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:10:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="oJ2bgiKI";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Ui0O9rgE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A1652067C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BleF2yiOyaPEY+ZY+rH3pCS2bGmZkl1bnAaiFQv/PP4=; b=oJ2bgiKICl3B9/Vk7sbYlzjn/q
	nngdWjHJqV11nABARhVQukGyaDiEi+6f5epuA9JL/eCpilg0HOK/dU7fbeD1MeCkG9jTkiSgWIwym
	Q/8B0MMJu/ankenrfRMrN+YghkdQiPsrud/AQBaSE/mNXMRrcX8sgziBAoXu9wZsyhHoGGvi7V/uB
	N5v0lx67220OYhLoIarMoSByY/0hVbW8wJaUMGECOCfbV9nt3sih0EnmHs1P8OajKYAPbX151aSsX
	sasoCmXYSH/uWkdp5/hO8qKs4lQU0WOycDqXGXMIXmR715k0caXSvn5jGokyMobKb7UO4wj/5bYgY
	t6vw2qUw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBcu-0005lt-AI; Mon, 09 Nov 2020 18:10:48 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBcs-0005k9-CB
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:10:47 +0000
Received: by mail-pg1-x52d.google.com with SMTP id r10so7804542pgb.10
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DVV3bJrXqfPx1wuLLV5iO8azqLq6P7y4LmMXw4UFISs=;
 b=Ui0O9rgEpFyxIpNNlCYSJCGsoUsI+pPLUja/sxGhKQEqseTd6rblDvzCRXSNGRHvoM
 Llw8AzfcobtWB/yAKgQpsoiqI2ce39PM6XBB3x2YXahmfcbP5uEh1u/MtVnKT8XBewED
 ja35W6nqwJ3qxDGnLoXtEi1YIlmJgg67nmsDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DVV3bJrXqfPx1wuLLV5iO8azqLq6P7y4LmMXw4UFISs=;
 b=R0dAeEK1m52hANCn/v7TpeFIV9PGj7+gbi44g3Z5VWX5JxPlP5AlXLf8B2mHguIYZ3
 mI/d+vbesu0PI3E5tm03w/GeSeG7LbTwlJDh+f/RtQ9JZbWgg34uN3QnfErIIZLeI4KW
 7USgHUuukkj5yMCH3wmuSk6+Bb2w2RZU/Xhf+DyFuJ/BJb55oO4BdELg5TB51N2eATiW
 VQMnw7pIGLuXbIpJvORJ3pxro+3qWI64NESsog5kgYCHPooxWpmta8tTFwMFmBQYeBv6
 CP/bBfe4n8jibpUSSJ0d+nVKIdwEYl/eCtwh4LpANzs2z9ZtxFEyH0VGY3uIB1FvyA89
 BmAg==
X-Gm-Message-State: AOAM532FKJ2ndzl51UtIqbNXTapXxrumppZ064V3Bo+1k8p3PCz1lo9d
 nN9u1mB9f/bmHxjI24L3fqRM4A==
X-Google-Smtp-Source: ABdhPJxcjQpkYc9csJLgDY1Zwj5sp09LlNtW+CmwPUj2525XmHLuzGlrpSKGale1f1VpUP+uZCtPhw==
X-Received: by 2002:a17:90a:6283:: with SMTP id d3mr422262pjj.96.1604945442506; 
 Mon, 09 Nov 2020 10:10:42 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:10:41 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 0/9] arm64: dts: rockchip: Engicam PX30.Core changes
Date: Mon,  9 Nov 2020 23:40:08 +0530
Message-Id: <20201109181017.206834-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131046_422104_8869A019 
X-CRM114-Status: GOOD (  10.69  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Series support Engicam PX30.Core SOM changes along with C.TOUCH
Open Frame 10.1" board.

All respetive LCD panels are in Mainline already.

thanks,
Jagan.

Jagan Teki (7):
  arm64: dts: rockchip: px30-enagicam: Enable USB Host, OTG
  arm64: dts: rockchip: px30-engicam-edimm2.2: Enable LVDS panel
  dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
  arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
  arm64: defconfig: Enable ROCKCHIP_LVDS
  arm64: defconfig: Enable PHY_ROCKCHIP_INNO_DSIDPHY
  arm64: defconfig: Enable USB_SERIAL_CP210X

Suniel Mahesh (2):
  arm64: dts: rockchip: px30-engicam: Add WiFi support
  arm64: dts: rockchip: px30-engicam: Add BT support

 .../devicetree/bindings/arm/rockchip.yaml     |  6 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-engicam-common.dtsi     | 85 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    | 22 +++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   | 59 +++++++++++++
 .../px30-engicam-px30-core-ctouch2-of10.dts   | 77 +++++++++++++++++
 .../px30-engicam-px30-core-edimm2.2.dts       | 22 +++++
 .../dts/rockchip/px30-engicam-px30-core.dtsi  |  5 ++
 arch/arm64/configs/defconfig                  |  3 +
 9 files changed, 280 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

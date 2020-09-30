Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE49C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75FE92075F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s6O6Be6S";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Z4xsClef"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 75FE92075F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gFQROXo8QGfz9oyAycjeq5DRsRi4IWRevIOL/I9z0qI=; b=s6O6Be6Svp18ARedj10DO7NuTe
	81toUdK6W2GFL7rv53l/0h3zIRMk+ib0eUBesBpo9658Yes7iyuVHfmQmmjnO+j7KEF80Ge1bbejK
	B6CZvBq2bWSbZHqK7ANneM0zBpFumzWS3r8iLzByM31TXiKbgoAVNAdQY2Y8I7KXWuYBYPgA75a7O
	otN1LlES7nld3KyzjaZxVSEnFnFHYz25Bd7eY0JZT4o7zTc7I6yeFUJ6/yzQ+sdvQCSG2w/QkugHr
	pf4l1vzchIObBuMt8CuPGftkLhPNk92+JUguc4kDF/zoYghaE8a8mrNurPeQxMy59KiDF92o4bDQt
	sXw/gZMQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbye-0008RI-Lt; Wed, 30 Sep 2020 13:17:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbyc-0008Px-2o
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:16:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id 197so1091770pge.8
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Icrn8giAqjU7ms4U8UuPgQqGlPVC1+h+0IMtL2T5XGY=;
 b=Z4xsClefQzYyjj6/VD3G225fELmq1etW7nGWA47nqn6diWKDy+uwyVgNVjwjpZ6V0B
 HJOTxRBgJEfD6LkJwSHWxw4h36YgaalzXFC14k3G6duiG02G1444h5/AJeg8h/hr7e2k
 TjO8OLAvFkK+vWmhXU62Z1ynV5OANqrg8LShI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Icrn8giAqjU7ms4U8UuPgQqGlPVC1+h+0IMtL2T5XGY=;
 b=mYSpz3AEIEjCbWn4uDpMDRw5ve9g1jc5kWZ9zBgmt/ywGNr1TCa+zw16+iLG33D3iy
 A+A/tF6cXb80RN0rMjJW722bxJ5NhjKMoHSJXdPEuyQn3j7NdOr0jO6hSdxhqzragE65
 FLf4GnYKhA788Hu+V/Yv11s6CZ5WGjywV1qSi8F4ONFtoDD4GZo8tMUMoCFFmqIl2MqT
 +vhnQO0NMiDtoC50/g+89XUukJY82wTIFGy2hWRaifcW+AuMEfWk1y+thc2aWEMFG1R1
 znjnsAEhe7N4nnOILOJjZbq4N1t34dZvEn0oZvmDvKe+zcKo7y8gqQ4F9LbXEDXm5b4A
 vzdw==
X-Gm-Message-State: AOAM530GCveMO1tZRnsTb4Bt++zGVOBSEf4coXcHIrMgyj9QETBBTzCh
 96Cxw+gCITsv+zosSgFCx/JGHg==
X-Google-Smtp-Source: ABdhPJzNEZjwGFGw0SX4UBlx+LqZzTTM6t4u4tKzi+sFLO+VpfX5hljMB7AMN/9c0K+qMu0VA4U3mg==
X-Received: by 2002:a63:c64d:: with SMTP id x13mr2127206pgg.380.1601471814136; 
 Wed, 30 Sep 2020 06:16:54 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:16:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 0/8] rockchip: Add Engicam PX30.Core support
Date: Wed, 30 Sep 2020 18:46:18 +0530
Message-Id: <20200930131626.265206-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091658_441298_E6F61AF2 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2 Starter Kit
- C.TOUCH 2.0 

Note: dts patches are in Linux mailing-list.

thanks,
Jagan.

Jagan Teki (7):
  arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  rockchip: px30: Add EVB_PX30 Kconfig help
  board: engicam: Attach i.MX6 common code
  rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
  rockchip: Add Engicam PX30.Core C.TOUCH 2.0
  doc: rockchip: Document Rockchip miniloader flashing

Michael Trimarchi (1):
  arm64: dts: rockchip: Add Engicam PX30.Core SOM

 arch/arm/dts/Makefile                     |   2 +
 arch/arm/dts/px30-engicam-common.dtsi     |  39 ++++
 arch/arm/dts/px30-engicam-ctouch2.dtsi    |   8 +
 arch/arm/dts/px30-engicam-edimm2.2.dtsi   |   7 +
 arch/arm/dts/px30-px30-core-ctouch2.dts   |  22 ++
 arch/arm/dts/px30-px30-core-edimm2.2.dts  |  21 ++
 arch/arm/dts/px30-px30-core.dtsi          | 232 ++++++++++++++++++++++
 arch/arm/mach-rockchip/px30/Kconfig       |  22 ++
 board/engicam/common/Kconfig              |   8 +
 board/engicam/common/Makefile             |   7 +-
 board/engicam/imx6q/Kconfig               |   2 +
 board/engicam/imx6ul/Kconfig              |   2 +
 board/engicam/px30_core/Kconfig           |  15 ++
 board/engicam/px30_core/MAINTAINERS       |  13 ++
 board/engicam/px30_core/Makefile          |   7 +
 board/engicam/px30_core/px30_core.c       |   4 +
 configs/px30-core-ctouch2-px30_defconfig  | 108 ++++++++++
 configs/px30-core-edimm2.2-px30_defconfig | 108 ++++++++++
 doc/board/rockchip/rockchip.rst           |  40 +++-
 drivers/ram/rockchip/sdram_px30.c         |   4 +
 include/configs/px30_core.h               |  15 ++
 21 files changed, 683 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/px30-engicam-common.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-ctouch2.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm/dts/px30-px30-core-ctouch2.dts
 create mode 100644 arch/arm/dts/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm/dts/px30-px30-core.dtsi
 create mode 100644 board/engicam/common/Kconfig
 create mode 100644 board/engicam/px30_core/Kconfig
 create mode 100644 board/engicam/px30_core/MAINTAINERS
 create mode 100644 board/engicam/px30_core/Makefile
 create mode 100644 board/engicam/px30_core/px30_core.c
 create mode 100644 configs/px30-core-ctouch2-px30_defconfig
 create mode 100644 configs/px30-core-edimm2.2-px30_defconfig
 create mode 100644 include/configs/px30_core.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

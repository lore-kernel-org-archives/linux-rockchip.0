Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A908C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E438724650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="j4gSbUJt";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UVxKZvw/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E438724650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AWfDCaIu0ogM+zVBara5OarGqAWa7rbj2W0U5PwlXgE=; b=j4gSbUJt5f/t5uFrD2qg82wq9+
	T1pp963Sq2xr++dSTTK5pXeeMRG6iUPHwOgDP0mcPQlThYmuoF7JVS7WRosSGnzJr1RBU3c7WIKY5
	dVXmRkkTUPf9Xti0XLGZuYfCLPmTMbbbWkk0YqZs5+n3DP7Ro6Un0OgAro99l/usMmy7CcYC0z3Vi
	F2pfuDTxWQaCOZIS8J6+QiyY1Wt9lhdhJSRTYcmKW94466noCOZO3j7ASwcdQiz4vKuzkJnM6JsRJ
	MgORnzGhX2gLHxyHsDuU+EPca5TEUoVtHXmZo3o0VJaaB079+ULPr1ogHtDR7BfmqaR8tWdVsihuT
	Xmwr9+Fw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlac-0002fd-7R; Wed, 28 Oct 2020 13:34:10 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlaZ-0002ei-Fg
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:08 +0000
Received: by mail-pl1-x629.google.com with SMTP id w11so2480692pll.8
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3I8fB/qj5qVVk8FI4wwUuOIW06jPhki1ruUv2Kx8i84=;
 b=UVxKZvw/0e0DCRxWXptaP/IwJlb/8NAxH0mCqVBc9oVp29KQ4WJoaTKBVxsfv8MsdZ
 akvE7XOzEVoAf/EDfRRVyt2KKpA5A9JjtFk2sMmUveCLo6eTbs7UwhePgRjdirjZmP8y
 /iafg1/UpubrJqTFInMU8oH2LZ72d33OiEAtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3I8fB/qj5qVVk8FI4wwUuOIW06jPhki1ruUv2Kx8i84=;
 b=fX6hnaAxb15owpWg/h2a3Pqice7Ftdy3332ApT+1yBYTx+onHQtlyhEWLGofG7SVcY
 4BXViORhh6dqwi4gv/SoMLd2yzmCwzBKOrOO4TGSo2mgHav/TCI4Ppckv0yzuOiiEWog
 WdEc7Fw5LteftQ4QOraGd6smITUJFLs86OLY1UWM+k/qbUfkTTs+CRaArnqo8vk2RfNo
 PdXGGiDfhJWDek/alp4Ey81QZnwSEOI8G+ATntIVPbzU7ePxaWCv5TP+hhY2Dzkst2vF
 LrFLimw7jZ93fpRM8+xE+y5C82DQVc0t1x36dnPGZ6XVnYsCW03TJ5gYZEGBTF90nyli
 PGpg==
X-Gm-Message-State: AOAM530E+6OyRvYuEd3PDB+TovN2goTBw/GsDnw5kUpkdGbS+uYFyYZL
 H77khkjoPoJQ+T16SuwCjZhhvQ==
X-Google-Smtp-Source: ABdhPJzRkJieYE//t3lMzN6XBwd2Fj++UHEpfNPjQfW6mGyTDsvJOCarXgJTHHVyUzuYTbcHPG3jCw==
X-Received: by 2002:a17:90a:cc0f:: with SMTP id
 b15mr6848677pju.202.1603892045302; 
 Wed, 28 Oct 2020 06:34:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 0/8] rockchip: Add Engicam PX30.Core support
Date: Wed, 28 Oct 2020 19:03:40 +0530
Message-Id: <20201028133348.241839-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093407_905830_3462B0E5 
X-CRM114-Status: GOOD (  10.80  )
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

Changes for v4:
- rebase on master
- on top of Heiko, ram patch
  https://patchwork.ozlabs.org/project/uboot/patch/20201001184003.3704604-1-heiko@sntech.det/

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
 board/engicam/px30_core/Kconfig           |  16 ++
 board/engicam/px30_core/MAINTAINERS       |  13 ++
 board/engicam/px30_core/Makefile          |   7 +
 board/engicam/px30_core/px30_core.c       |   4 +
 configs/px30-core-ctouch2-px30_defconfig  | 108 ++++++++++
 configs/px30-core-edimm2.2-px30_defconfig | 108 ++++++++++
 doc/board/rockchip/rockchip.rst           |  40 +++-
 include/configs/px30_core.h               |  15 ++
 20 files changed, 680 insertions(+), 3 deletions(-)
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

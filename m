Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 848BDC433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:29:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5393821473
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:29:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bXXHHhYv";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="NcnQx+gc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5393821473
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M/u2VAFnh+9A295KquhXViMs0Up2kB/Fy1E5BfIooI0=; b=bXXHHhYvwWSOoH9tL8BFnhO5Nl
	D6Qhg/BldHXhFuOv2N4QNN9qMYMbJbbbco2nERlm13Xajer+TpUsC4KIokd3ebPYFl5X+UCXqgo6j
	bLijbNub1loCFH3PaT7rdKfzaFbpS0L9zJFp0ymLDnqdA0NfozWrYlaq7nRadzYxwvCNKMsA6eqZc
	mOEKCarClMBSWNkiREXoqEuvAfeNBlbklGhyOIRKIfLQGKiV0LyO9MGdTWkraOBCLMvfFrRUa5qat
	gzotgYbAyttgvm7VWjtLfGWxxErHPOeVApi10VbS346uWsRg8iSf9ss7Jxs9u8ylmDQ65HP++wYh5
	BWQLu6eA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfC5-0003Ot-40; Mon, 31 Aug 2020 08:29:37 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfC1-0003N0-KU
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:35 +0000
Received: by mail-pj1-x1041.google.com with SMTP id np15so992121pjb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t6A3T3U5sg4xL1HitgiJe+Mzl2G7Jnk/XQSObf5ZPYs=;
 b=NcnQx+gcvea+q7x2gF4i9HH52VjX5QYP3dhOG6QAqqnGluW5VrDzjPn3+Y3NrEnsGM
 OJvBk6gd2stHL6vuDbxWOj+0l9LX6UaDNfgBN4CCrhQmeoNnCWNSyBIQkX6PGsvL2yfy
 FSsCEA3fd0TGQLCUnCgyj8TRD0h/x12kaCaow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t6A3T3U5sg4xL1HitgiJe+Mzl2G7Jnk/XQSObf5ZPYs=;
 b=VeAaA2ZC+dk/ve6r02k6xTe8NpkQWb8dIzAyEa9ewSSlDyqz1EczVDn5X0wjZxK8zU
 7prcQn8AlHSLE2b5eluWhpUHLUSnlZP3IyJ6N+M3YyB6K/Fy3kv8UlwRtJep85lwD/A+
 yaD0tTIPBj8cyplQ+4Mtxb0HvicIM3ytbz1MG2/lxHWc0hKZ8wtFr+Ty6lCz2UgXOL0h
 nlgj88NLYn7vVpKDJ80m4JGC+WIyaDPcG1peHy+2TEZ3jlewpvr29aG1ORjzrGKKbx4i
 yBp5llCSotRO4TdXCg1TBtvI53AzNVos7SxGORpuZrfwi+Y0/gNFC82Nx0Clq6WpB9Jm
 Mp1w==
X-Gm-Message-State: AOAM531uu4J+SktgMcRtjpKktiW41fnAuJ/IHlCuEqeHYzSz5Kj7KDvN
 GLdx8f89Akk03lVPY+nLDDJ3Bw==
X-Google-Smtp-Source: ABdhPJzgmKs58w58u0Z3ZJSaXlgQqY+sNHsP4FQFmMe51tjTSRqPyk5BEGr1hbZE83+xRZkAU5bwYA==
X-Received: by 2002:a17:902:24c:: with SMTP id 70mr283058plc.284.1598862570169; 
 Mon, 31 Aug 2020 01:29:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date: Mon, 31 Aug 2020 13:59:10 +0530
Message-Id: <20200831082917.17117-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042933_943578_60849BBA 
X-CRM114-Status: GOOD (  12.09  )
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

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2 Starter Kit
- C.TOUCH 2.0 Carrier Board

Changes for v3:
- resolved Johan comments about sorting node properties
- add copyright to Amarula Solutions
- update px30 dtsi author
Changes for v2:
- collect Rob A-b
- include C.TOUCH 2.0 carrier board
- skip 10" OF LCD as it requires separate dts with panel support.

Note: These baseboards can be used for i.MX8 SOM's as well. So having
baseboard on respective SoC seems to be easy rather than making it
common across all.

Any inputs?
Jagan.

Jagan Teki (6):
  dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
  arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
  arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0

Michael Trimarchi (1):
  arm64: dts: rockchip: Add Engicam PX30.Core SOM

 .../devicetree/bindings/arm/rockchip.yaml     |  12 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
 .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
 .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
 8 files changed, 343 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

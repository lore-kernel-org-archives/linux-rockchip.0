Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68124C4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:34:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1767207C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:34:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0DJQ1AaN";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="X+eOV2Vt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1767207C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0NF8TtT5feMIL8mTzNA7gC9K+lk3gCbIOG/0oTNrAr4=; b=0DJQ1AaN3MNFQU8KYZNnriCeT5
	GVN9WrERFQn3YWxy26MjZYTJICkKTqch1FHg7wE4nMyNp/tUJhSpX2ROlFID5ao8GH5SJ4iNGaApC
	guM0vB8icT0UsM9zoatiRqYJQsHHlDb9B2+E7dzHaQ8NRAPADgpyB+dpJ7KIxGvf0tg/mFpSQhkxP
	trNgX0AzV/3MtQvkWG9iFIGW/99JaBZyJZP/vBhAjl2cDVsc8p+CHxAif5lrr6b+zEct/AmqzRrTh
	ejjhddxL6G4pa8/M+4/6h9MkEBc6+YyMCWIJ9qjieJ/LtWNwhdNVyoRTGQB1WzVn2gCPTiv/Ma94k
	MVdomSFQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB5V-0003wk-HC; Tue, 29 Sep 2020 08:34:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB3z-0003EY-66
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 08:32:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id w7so3811911pfi.4
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 01:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXrfz0lgdtXjn1yWAWiw2AoB3KPUQJy22o0sHXCM7rE=;
 b=X+eOV2VtnvWodXlCp4alhgLMkPYiUsUzvIZMjV0MyTI1pAEzaqFuZR8uIUrpVmB2ji
 XIU5Wwga0kxfLS7RsvbjoV8r7gXpuH6IMllYG95RNYOyFCtM2rmecZQVJRY/pnRK4LUI
 sGqQ6mhSDSQVZiKNaHCcPmlUoFeL5C/2Dc0Uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXrfz0lgdtXjn1yWAWiw2AoB3KPUQJy22o0sHXCM7rE=;
 b=sITmvnYCn/45irMH8dT1V+JtwpabM8Mx6eibBJaQ/5CN71ME55T3ZVgnxVJg4MqMcN
 miK9OU/aeV5ZLF3BcCPyDLNwIqDf0nEtU7tEqAogsY6UmvmMlEZjSEwEUmQ5x7RBUT0k
 rYGsy9orRbCxdUbIdePSRMuaeQj3SWZkaimNVnQFWEbYX/X7CY2Sx0y2b40kFWrd9eDA
 nhll2ppipBu6AEIEUGmrltwVa5IQDFHcnzsgCOXtYVjdXDUB4eV6wmUdkasj89U/mcM+
 OPZkt2SUyTHAeCGR0aPk10ktjMxc2QiyNLBWoJh8pTriBUt90iqTORfxKgPgMf6nI+dp
 MN8Q==
X-Gm-Message-State: AOAM531FqE2f9adaAsuztl/QTMGwr6eNRjBrlSST5iNak4zdzre+Iv1I
 Hq9/dIXmB+r1+/uuwGwDBE8Z7A==
X-Google-Smtp-Source: ABdhPJxS9qQ/WSI+qFu8XiAYmDf0txJeY0HYFYXYaxcTfKtN443h0IRWD7p/p/ALZTycg0vcibK8Lw==
X-Received: by 2002:a05:6a00:844:b029:13f:dd99:d1a4 with SMTP id
 q4-20020a056a000844b029013fdd99d1a4mr3202215pfk.31.1601368358748; 
 Tue, 29 Sep 2020 01:32:38 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:b511:310d:8495:d767])
 by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 01:32:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date: Tue, 29 Sep 2020 14:02:10 +0530
Message-Id: <20200929083217.25406-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_043243_521293_BFD72BA3 
X-CRM114-Status: GOOD (  11.61  )
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

Changes for v4:
- collect Rob A-b
Changes for v3:
- resolved Johan comments about sorting node properties
- add copyright to Amarula Solutions
- update px30 dtsi author
Changes for v2:
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

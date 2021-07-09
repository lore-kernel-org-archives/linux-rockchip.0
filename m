Return-Path: <SRS0=C1nv=MB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FC44C07E99
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 08:02:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC2596124C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 08:02:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DC2596124C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sFAwTAJtStSs0yEsmwxKxND9jYicxZ1f6yYI97Nj5Go=; b=NwnsUYwOvFQJqp
	aKOWbVLEX3qK0l3OceqETvhoqiKOAxRMUovONL4v47j17ifmsh3tUDMeenD43RNCnc+ul4gSNnFqJ
	OoFoxRBoAMUzRKf2CgZO2aKvnqRC+RAtYPP0xV+yMHcOp1HsdE4j0GCxgXSihz7E3WVgK9M5hx0TU
	Td+sBLHeDSxp4AfXqplrqcl3ZizAfMXeu08BZQ8CvOqSpzCiTXYMkeiMsMkAUarOyAHoolMayWANv
	35rtfqxybsoOmnlloPjgM6rhQX7gW08gnivkFfqTVfmZQ+gDxrYA8IPV6Jh1S8DmpR3r100IhvqYA
	Rc9Hd9LETHGq8zO2Zrvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1lSh-0011jF-Ph; Fri, 09 Jul 2021 08:02:15 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1lSU-0011gE-Hf; Fri, 09 Jul 2021 08:02:04 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 087BA1310;
 Fri,  9 Jul 2021 16:01:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost.localdomain (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P12349T139824269707008S1625817711146317_; 
 Fri, 09 Jul 2021 16:01:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <75b8410723c298b4b86f84367f86a160>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-rockchip@lists.infradead.org
X-RCPT-COUNT: 16
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: djw@t-chip.com.cn
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Levin Du <djw@t-chip.com.cn>,
 Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 David Bauer <mail@david-bauer.net>,
 Jagan Teki <jagan@amarulasolutions.com>, Johan Jonker <jbx6244@gmail.com>,
 Liang Chen <cl@rock-chips.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Rob Herring <robh+dt@kernel.org>, Tianling Shen <cnsztl@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v0 0/2] Add support for Firefly ROC-RK3328-PC
Date: Fri,  9 Jul 2021 16:01:24 +0800
Message-Id: <20210709080126.17045-1-djw@t-chip.com.cn>
X-Mailer: git-send-email 2.23.0.37.g745f6812895b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_010202_892217_5976A819 
X-CRM114-Status: GOOD (  10.72  )
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

From: Levin Du <djw@t-chip.com.cn>


Hi all, this is an attemp to add Firefly ROC-RK3328-PC to the mainline
kernel.

ROC-RK3328-PC is the board inside the portable Firefly Station M1
Geek PC. As a redesign after the ROC-RK3328-CC, it uses TypeC as
power input and OTG port, embedded with eMMC 5.1 storage and a
SDIO WiFi/BT chip (RTL8723DS).

Many thanks to the Linux people!


Levin Du (2):
  dt-bindings: add doc for Firefly ROC-RK3328-PC
  arm64: dts: rockchip: add support for Firefly ROC-RK3328-PC

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3328-roc-pc.dts | 110 ++++++++++++++++++
 3 files changed, 116 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dts

-- 
2.23.0.37.g745f6812895b




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

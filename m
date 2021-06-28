Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30117C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 03:54:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA43761C2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 03:54:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA43761C2E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U9sOtOuzbazm3fumTo4W+5xAXZeZDRb9ySQs2OQqIeU=; b=ZeSb9mSJahbHrt
	Bpjcy3pEsSIOV6pWeWBSoEwrR3td8TQ3uC/UuuYtI4Nucwi+oMvNzlwPl+96tmiDJ18iaKfD5Z8Hk
	YUl8iQOOMFR6v4MuTSOLwwFA2tl84NoxZnk5XJt7ok8E6y5LW5v8PHXoBbsEKFFscxMIe/gHUoCBI
	EW49NTqOXW8WBPcjwH+uSLZ62q50WMfjmIO9SNkzmKEBd7aXCRLI272tU2VnZ8K6H6UcARcRXQQZB
	thq+QnoWrwFMB1DREFyTLR62JfKAj/NQrYqetsJyoOYmCgl1MreWYO+PEuYK4XvSlN2MBCfP5nDKK
	E/Za6krw7o41CsgzCRaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxiMI-006f1T-OA; Mon, 28 Jun 2021 03:54:54 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxiM6-006ezb-2g; Mon, 28 Jun 2021 03:54:43 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 916D6829;
 Mon, 28 Jun 2021 11:54:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost.localdomain (unknown [14.20.131.7])
 by smtp.263.net (postfix) whith ESMTP id
 P12369T139709984536320S1624852472443677_; 
 Mon, 28 Jun 2021 11:54:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fdf104fba4e4b2bf7e6009133de69086>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-rockchip@lists.infradead.org
X-RCPT-COUNT: 18
X-SENDER-IP: 14.20.131.7
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: djw@t-chip.com.cn
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Kongxin Deng <dkx@t-chip.com.cn>,
 Levin Du <djw@t-chip.com.cn>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, David Bauer <mail@david-bauer.net>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liang Chen <cl@rock-chips.com>, Marty Jones <mj8263788@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v0 0/2] Add support for Firefly ROC-RK3399-PC-PLUS
Date: Mon, 28 Jun 2021 11:54:00 +0800
Message-Id: <20210628035402.16812-1-djw@t-chip.com.cn>
X-Mailer: git-send-email 2.23.0.37.g745f6812895b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_205442_349889_D53DB286 
X-CRM114-Status: GOOD (  10.96  )
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


Hi all, this is an attemp to add Firefly ROC-RK3399-PC-PLUS to the mainline
kernel.

ROC-RK3399-PC-PLUS is the board inside the portable Firefly Station P1 Geek
PC. As a redesign after the ROC-RK3399-PC, it uses DC-12V as power input
and spares a USB 3 host port. It is also equipped with a USB WiFi chip and
audio codec without the mezzanine board.

Many thanks to the Linux people!


Levin Du (2):
  dt-bindings: add doc for Firefly ROC-RK3399-PC-PLUS
  arm64: dts: rockchip: add support for Firefly ROC-RK3399-PC-PLUS

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3399-roc-pc-plus.dts  | 223 ++++++++++++++++++
 3 files changed, 230 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts

--
2.23.0.37.g745f6812895b




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

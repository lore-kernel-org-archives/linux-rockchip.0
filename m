Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8155BC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:42:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41F2661103
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:42:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41F2661103
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7uiNz6RoA/i+DtmoLhqOqd4/dph78RH7ZZXqYEAbf/4=; b=bxoJFKH/BhH4X0hvsfpqs5xUeC
	oWRIlOfhXVwgBV5qw5l4BccdzbFedwz4ekSvB5KiHLYRn2qqPaVXgfp4C+JY7DgXtqAHmZkDD/M69
	LvBVsZF6YBA8ySx+j6ws0hJLRRnCG0YuwoWv0wdJTvog1QyDC+F6fYlkN/AYGZi70SqZDaR5fUz4l
	af6FrXe1yCGFavlUwimlCoj0dC9li4JhTK7q1Yadrv2kDNo62p/mY4VC5+rj8qQKWK/myO48ht3in
	dOsyMN+OV/gfKvm04OAIBSoDC18lja4rBDbkUlbMUiHO2b5H8uiZXqCs0jUij/67g/16Plepqsgfi
	gBoplwRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1labHt-005Nui-BU; Sun, 25 Apr 2021 09:42:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labHZ-005NtD-C2; Sun, 25 Apr 2021 09:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=rOFLfMiFmmCyBg92b118iFjL0jldwjmQzCDi5osN5/8=; b=X0FIp56dJM7LpU4ycHW8kdm9pK
 5kC8fi5ywSUmuYu0jlJ1JlY/LGbwYV+OieqWwl2/CDNp3TEE0ZllVNUHZcInkldoPMBlufImLXT2I
 LoSNuiBFzQF7z67tpBHKlmXbZuzdXmjz/pTUPpK0HwWnc3sKiNtYDbTWm6Uod0P4TQO7XtBGpL4Au
 tsv/PGp3Y+kjC+IiofcKJYZ9jpshMoHrQ6an0ohYSECfrpJCfxYoyGfVWrSBJQPpCVNP+id/XNNrC
 LmXC9PVczll2OYT6C0N4IpwsW0YtztJ4xQINEQjRH1VILsIW6UJWXKEZwBkT64qr29/SxguVAbqy5
 tX84arLQ==;
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labHW-00FNsw-Ef; Sun, 25 Apr 2021 09:42:27 +0000
Received: from localhost (unknown [192.168.167.225])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3248EAB633;
 Sun, 25 Apr 2021 17:42:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3565T140663333058304S1619343740259115_; 
 Sun, 25 Apr 2021 17:42:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c756feb8cf8e1bf199ae898dc058cfda>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 29
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: [PATCH v2 0/7] arm64: dts: rockchip: add basic dtsi/dts files for
 RK3568 SoC
Date: Sun, 25 Apr 2021 17:42:09 +0800
Message-Id: <20210425094216.25724-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_024226_674573_6C0443EE 
X-CRM114-Status: GOOD (  10.57  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Liang Chen <cl@rock-chips.com>

v1:
1. add some dt-bindings for RK3568 devices.
2. add core dtsi for RK3568 SoC.
3. add basic dts for RK3568 EVB

v2:
1. sort device nodes by some rules.

Liang Chen (7):
  dt-bindings: i2c: i2c-rk3x: add description for rk3568
  dt-bindings: serial: snps-dw-apb-uart: add description for rk3568
  dt-bindings: mmc: rockchip-dw-mshc: add description for rk3568
  dt-bindings: watchdog: dw-wdt: add description for rk3568
  arm64: dts: rockchip: add generic pinconfig settings used by most
    Rockchip socs
  arm64: dts: rockchip: add core dtsi for RK3568 SoC
  arm64: dts: rockchip: add basic dts for RK3568 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    9 +-
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   80 +
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3119 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  812 +++++
 .../boot/dts/rockchip/rockchip-pinconf.dtsi   |  345 ++
 10 files changed, 4366 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

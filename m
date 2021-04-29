Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ACCAC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 08:12:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FF5561419
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 08:12:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FF5561419
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r4YoMoYWV5Zr37AeBcAmC6EuN6fNeOd6I8UIpMurYKY=; b=C0h5VzqjcuMJyp3+lhNMSHexxv
	JYEsegPRBArbSjf7cCIF6T4MvRlgp2vbOpqx4FlKty5kPNXWNX2wWCzJXpyjcRq8GWt0l7TD4bCaC
	XMsG+v77+PKO6dEDgwI+jF3vp+Zi2vz/zPc1KKFv86OykqK+QLHvHabPZOY0v8OqLG4Jl/j6Rr8qZ
	nLPtnCFnlYeacpG/1QsCuS8TtfVRQcWvTHZA9EET51ufoAzPEG0EjYNkIavWEwgokLIuwOZ94ZkTP
	LuO7BGJYxFifUipUxB+E+4QHMkGSemDd7hhmxRU8O0pY7zf6c5NJ52+QkIcZjoCn6PdiqhH33FKVh
	P4ekTToQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc1ma-005GN8-H4; Thu, 29 Apr 2021 08:12:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1mO-005GLp-76; Thu, 29 Apr 2021 08:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=7Ks5L/8IkTJ7fYJQBN60cQjx/BKbpVV3udHaAjT0nis=; b=WGxRxqCMtIy0z1xoJm4YrYf8Bt
 DIUeIDencz/YjpV/Xs+jeBmqBWfsg/TrImjWEGS2bmiSX2dva+AaHYMWBWyhNLgs3mxrayta8phjd
 vnFUjCKltL1KXzxAsaHUJBw7LNStuHvlpYHdVfl5Xh7IRkBpvJryNvDP35Bc4nDNtGpeAkULkzCHG
 NGG5AovuKMNc8xSlpXT33nTEbVqPO/GPEE4pEOU8tZ6K7khI7WAa8kKkJwu3f91i9hQxnIy7rzfEd
 pOaFQ3QVI0HO0WC1AeHhTIJ7NWYEDF7Bj39mqMCgykkULpdGhojyM+PZ83BR+t1KvyqOkL+82gBYw
 O/m4Q8sg==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1mK-000TZQ-4W; Thu, 29 Apr 2021 08:12:10 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id C9D1FBA3C9;
 Thu, 29 Apr 2021 16:11:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31919T139684105664256S1619683913541485_; 
 Thu, 29 Apr 2021 16:11:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <41a6df718de389cfa6fbb4c2f6a8f7af>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 30
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
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: [PATCH v4 00/10] arm64: dts: rockchip: add basic dtsi/dts files for
 RK3568 SoC
Date: Thu, 29 Apr 2021 16:11:41 +0800
Message-Id: <20210429081151.17558-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_011208_520956_43886CB4 
X-CRM114-Status: GOOD (  10.89  )
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

v3:
1. make ARCH=arm64 dtbs_check, then fix some errors and add some documents.

v4:
1. make ARCH=arm64 dt_binding_check, then fix grf.yaml.
2. correct gic node.

Liang Chen (10):
  dt-bindings: i2c: i2c-rk3x: add description for rk3568
  dt-bindings: serial: snps-dw-apb-uart: add description for rk3568
  dt-bindings: mmc: rockchip-dw-mshc: add description for rk3568
  dt-bindings: watchdog: dw-wdt: add description for rk3568
  dt-bindings: pwm: rockchip: add description for rk3568
  dt-bindings: gpio: change items restriction of clock for
    rockchip,gpio-bank
  dt-bindings: soc: rockchip: Convert grf.txt to YAML
  arm64: dts: rockchip: add generic pinconfig settings used by most
    Rockchip socs
  arm64: dts: rockchip: add core dtsi for RK3568 SoC
  arm64: dts: rockchip: add basic dts for RK3568 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/gpio/rockchip,gpio-bank.yaml     |    3 +-
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    9 +-
 .../devicetree/bindings/pwm/pwm-rockchip.yaml |    1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.txt  |   61 -
 .../devicetree/bindings/soc/rockchip/grf.yaml |   60 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   79 +
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3111 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  779 +++++
 .../boot/dts/rockchip/rockchip-pinconf.dtsi   |  344 ++
 14 files changed, 4386 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
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

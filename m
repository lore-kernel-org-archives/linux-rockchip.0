Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EFCEC43462
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 07:01:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAF7061424
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 07:01:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AAF7061424
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t3w+VVkwFzvY2eCPuRNcx15/Er0Sk1yA9rZfOXbcTFw=; b=FHhnHAM9shtJUr89dsuSGyGnMv
	IMo2fQittuxPbY3iDQA1DBnXDtBzU6Nl7op88VXmxwsJMhibk7Dr69sN4Loz8haO4vtakHV7WVyVx
	ZMK1xG5EmZY5Ev4qRnzzOFHE9jJgWaeZVlTDZkVk7tLAQR9pAUEl7qSQc+y8ZaUk7NxmHw6TYiYxI
	qVqNEeaG1xabWJIPcpTFfz9r3Fspypxe4lHcSm/tkw2RsiOzYieV3AGdlC21JJYVqkm9OwKN4zDHQ
	yNLPvrnQNvbVxo1pOTC+aOri07sjzGY9WssXo/RZB7QlVeuRvu2GMhiQBmT4QaATX83b9DaXIMomN
	noFb1Eiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ6r0-00Dro0-9p; Wed, 21 Apr 2021 07:00:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ6pv-00DreP-8f; Wed, 21 Apr 2021 06:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=q/XtXFcspGlIP8GbhYvDiAxtn/Rx7jZLS3rXU8j16/I=; b=ggEQSrodSDEDokYzq/LNeJ7UJV
 7VMnKJA69D5QOtHu0nKIMaLe3TzBfp9Gnxf6+aoJLMiIDqSWr0zkjkI78I9ub8+He14PcP7PrVV8r
 t/Z/OW5UrJxdfbHym+DOaG5dEBIXa4FI6GOcsnm1SoxfetTI/tBIOI6nuNTdfwx5hiei11TPb3LXH
 a481SXzzWC0cN9x7YnlyJpZTz9wIuKBdV2jwkawl0DHKRZbeImE01SQIzCri0oqSe8B+7o7z6KiDE
 lREUN6Lr5rK6nl2pbo5PNat06Y1GT++9G+scNEVfsdyGlZOx+CAMJW5e3sztgACOvGZw7ssC3H3kl
 cl/xggeA==;
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ6po-00Cekg-6B; Wed, 21 Apr 2021 06:59:44 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id B1BC8CD6C2;
 Wed, 21 Apr 2021 14:59:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649152108288S1618988366606986_; 
 Wed, 21 Apr 2021 14:59:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <92c2736a293fc828a169398c6256a2cc>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 25
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
 cl@rock-chips.com
Subject: [PATCH v1 0/5] arm64: dts: rockchip: add basic dtsi/dts files for
 RK3568 SoC
Date: Wed, 21 Apr 2021 14:59:16 +0800
Message-Id: <20210421065921.23917-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_235940_409157_A62B578A 
X-CRM114-Status: GOOD (  10.41  )
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

1. add some dt-bindings for RK3568 devices.
2. add core dtsi for RK3568 SoC.
3. add basic dts for RK3568 EVB

Liang Chen (5):
  dt-bindings: i2c: i2c-rk3x: add description for rk3568
  dt-bindings: serial: snps-dw-apb-uart: add description for rk3568
  dt-bindings: mmc: rockchip-dw-mshc: add description for rk3568
  arm64: dts: rockchip: add core dtsi for RK3568 SoC
  arm64: dts: rockchip: add basic dts for RK3568 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    4 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |  382 +++
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 2789 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  795 +++++
 .../boot/dts/rockchip/rockchip-pinconf.dtsi   |  346 ++
 9 files changed, 4324 insertions(+)
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

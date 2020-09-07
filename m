Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43643C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 02:59:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5C3E20796
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 02:59:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jj3AXS+T"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5C3E20796
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3t9Y3XyK4UersalZ1Hc3sV1x+Icdq9qVqBhXs7B+4zI=; b=jj3AXS+TVzUQbkYH/LQa2Oghg5
	p7AveIV6OgwgKlrMM9pFUC5WLB9bLNijSyJWNWlt7WnYDwRMtWHrhfQ3SGAoaSdLPAUBEPXzDgSaF
	GbWUJJRPaJasrEjT2c6xnXEsLyVUznV64DLCkHG51q8zuM63Wzsv4MRT4yEkDSRowcO33mZguKNKW
	rbuq7IiJRrB18ODMZRRIANdUoz/huW4cWF+IDid4L8mjGl3U7blMEURPrPmi8JTJ2v4jBbJgX/dPp
	7D6Xujb4rtCS3VRUf5AP/hFHCnj6SZSOwJGqtTbkV0cM1f12lXp8I6LW2lnCSgBZ2H3u3vJP53l6/
	HVR1jTzw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kF7Nk-0003XN-Oz; Mon, 07 Sep 2020 02:59:48 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kF7Ng-0003VB-S8
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 02:59:46 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 282A3B3819;
 Mon,  7 Sep 2020 10:59:36 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22906T140609293825792S1599447567920103_; 
 Mon, 07 Sep 2020 10:59:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <26e5753d0fff5fad224876fc28c4d989>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 1/5] pinctrl: rockchip: depend on OF
Date: Mon,  7 Sep 2020 10:59:23 +0800
Message-Id: <20200907025927.9713-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200907025927.9713-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200907025927.9713-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_225945_173531_42D1B7F7 
X-CRM114-Status: GOOD (  13.13  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The Rockchip pinctrl driver needs to handle information from Devicetree
so only makes sense getting compiled on systems with CONFIG_OF enabled.

This also fixes a problem found by the "kernel-test-robot" when compiling
the driver on test-builds that do not have CONFIG_OF enabled:

  drivers/pinctrl/pinctrl-rockchip.c: In function 'rockchip_pinctrl_parse_groups':
>> drivers/pinctrl/pinctrl-rockchip.c:2881:9: error: implicit declaration of function 'pinconf_generic_parse_dt_config'; did you mean 'pinconf_generic_dump_config'? [-Werror=implicit-function-declaration]
    2881 |   ret = pinconf_generic_parse_dt_config(np_config, NULL,
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |         pinconf_generic_dump_config
   drivers/pinctrl/pinctrl-rockchip.c: In function 'rockchip_gpiolib_register':
>> drivers/pinctrl/pinctrl-rockchip.c:3473:5: error: 'struct gpio_chip' has no member named 'of_node'
    3473 |   gc->of_node = bank->of_node;

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/pinctrl/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 8828613c4e0e..4284f39a5c61 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -208,10 +208,12 @@ config PINCTRL_OXNAS
 
 config PINCTRL_ROCKCHIP
 	bool
+	depends on OF
 	select PINMUX
 	select GENERIC_PINCONF
 	select GENERIC_IRQ_CHIP
 	select MFD_SYSCON
+	select OF_GPIO
 
 config PINCTRL_RZA1
 	bool "Renesas RZ/A1 gpio and pinctrl driver"
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

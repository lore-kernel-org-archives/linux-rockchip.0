Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F44FC43603
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:44:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A30B4611BD
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:44:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A30B4611BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Mqr6uVwUnM8XFFxWPog7OCUeTYpvVeTiOr3YZ9wURc=; b=C94U1/j8jXALw9WpSrfKH7Crg1
	6xwOvsD0PAz9tce5HWHw8mt8sYTpDww4Eo5ho/OC/kkvx2HJPJi+FkMORA1tLtbSyGkIPvDw5dqyM
	I6wMwo4H2ad5Ni2zW53uToRWCjRMmK6dpcgTynwONq8/tRy+nPzeIgFOM2k29lhyAU+YY56JWBpx0
	/eUjvUMZ7e1NTQH64VzrVsVyB1rvYLPdNeeBPpmmtuWzUpBsccy1xDkm3FGs2vlo2+LbTeVXN3NZ+
	OrHsDoYCnjeXU35f2GgSEATclDJKJF4z0ZIQDy5fEGMaOZh/t6+nih//1k+txlEJtn+V7Xg9wOLbG
	yfkCCAWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1labJl-005OSF-80; Sun, 25 Apr 2021 09:44:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labJW-005OOC-5y; Sun, 25 Apr 2021 09:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dA/TKcICgWms8ezsahdu6APfeghJl8M2NSp7ooNle4o=; b=4yqrBjmnUss35HckX/cNzkgTME
 FAnLoMt00/1hK8wnJlN/0csLTOaE8g4r0O+UVEGDYclL7nF3+KeyPw3+WWM1y93ZNYsZDC+FX+Kxd
 29W5qxL2MMWoQFJs/Jvnql23gm7JHqkezKBn5m2ocfROc19gPJK0F+IbRhAQ05uaKW40VCq5HmrFl
 MVAwg+3BWlYLs3+q79MEu1tRckHn+rLO5VI+iIldcFf9Jt4lnjB7bP85rCCz/PihRoUB71BS6OzUg
 AmVV9G52yO0ip+x+lkNXtVIj1KEsaT2/h2ml174GjNYK0VICm/9ST5G4ZpwMlalB7bTwIAb/zETCd
 sB1hll6A==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labJT-00FNzI-0H; Sun, 25 Apr 2021 09:44:28 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 52F51F3494;
 Sun, 25 Apr 2021 17:44:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649399834368S1619343862971609_; 
 Sun, 25 Apr 2021 17:44:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b7d01ad2c25aa05f12f2af2a957c9d1d>
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
Subject: [PATCH v2 5/7] arm64: dts: rockchip: add generic pinconfig settings
 used by most Rockchip socs
Date: Sun, 25 Apr 2021 17:44:21 +0800
Message-Id: <20210425094421.25838-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210425094216.25724-1-cl@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_024427_388120_264250A9 
X-CRM114-Status: GOOD (  13.81  )
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

The pinconfig settings for Rockchip SoCs are pretty similar on all socs,
so move them to a shared dtsi to be included, instead of redefining them
for each soc.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 .../boot/dts/rockchip/rockchip-pinconf.dtsi   | 345 ++++++++++++++++++
 1 file changed, 345 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi b/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
new file mode 100644
index 000000000000..da67e72fbfec
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ */
+
+&pinctrl {
+	/omit-if-no-ref/
+	pcfg_pull_up: pcfg-pull-up {
+		bias-pull-up;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down: pcfg-pull-down {
+		bias-pull-down;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none: pcfg-pull-none {
+		bias-disable;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_0: pcfg-pull-none-drv-level-0 {
+		bias-disable;
+		drive-strength = <0>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_1: pcfg-pull-none-drv-level-1 {
+		bias-disable;
+		drive-strength = <1>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_2: pcfg-pull-none-drv-level-2 {
+		bias-disable;
+		drive-strength = <2>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_3: pcfg-pull-none-drv-level-3 {
+		bias-disable;
+		drive-strength = <3>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_4: pcfg-pull-none-drv-level-4 {
+		bias-disable;
+		drive-strength = <4>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_5: pcfg-pull-none-drv-level-5 {
+		bias-disable;
+		drive-strength = <5>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_6: pcfg-pull-none-drv-level-6 {
+		bias-disable;
+		drive-strength = <6>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_7: pcfg-pull-none-drv-level-7 {
+		bias-disable;
+		drive-strength = <7>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_8: pcfg-pull-none-drv-level-8 {
+		bias-disable;
+		drive-strength = <8>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_9: pcfg-pull-none-drv-level-9 {
+		bias-disable;
+		drive-strength = <9>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_10: pcfg-pull-none-drv-level-10 {
+		bias-disable;
+		drive-strength = <10>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_11: pcfg-pull-none-drv-level-11 {
+		bias-disable;
+		drive-strength = <11>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_12: pcfg-pull-none-drv-level-12 {
+		bias-disable;
+		drive-strength = <12>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_13: pcfg-pull-none-drv-level-13 {
+		bias-disable;
+		drive-strength = <13>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_14: pcfg-pull-none-drv-level-14 {
+		bias-disable;
+		drive-strength = <14>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_15: pcfg-pull-none-drv-level-15 {
+		bias-disable;
+		drive-strength = <15>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_0: pcfg-pull-up-drv-level-0 {
+		bias-pull-up;
+		drive-strength = <0>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_1: pcfg-pull-up-drv-level-1 {
+		bias-pull-up;
+		drive-strength = <1>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_2: pcfg-pull-up-drv-level-2 {
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_3: pcfg-pull-up-drv-level-3 {
+		bias-pull-up;
+		drive-strength = <3>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_4: pcfg-pull-up-drv-level-4 {
+		bias-pull-up;
+		drive-strength = <4>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_5: pcfg-pull-up-drv-level-5 {
+		bias-pull-up;
+		drive-strength = <5>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_6: pcfg-pull-up-drv-level-6 {
+		bias-pull-up;
+		drive-strength = <6>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_7: pcfg-pull-up-drv-level-7 {
+		bias-pull-up;
+		drive-strength = <7>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_8: pcfg-pull-up-drv-level-8 {
+		bias-pull-up;
+		drive-strength = <8>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_9: pcfg-pull-up-drv-level-9 {
+		bias-pull-up;
+		drive-strength = <9>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_10: pcfg-pull-up-drv-level-10 {
+		bias-pull-up;
+		drive-strength = <10>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_11: pcfg-pull-up-drv-level-11 {
+		bias-pull-up;
+		drive-strength = <11>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_12: pcfg-pull-up-drv-level-12 {
+		bias-pull-up;
+		drive-strength = <12>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_13: pcfg-pull-up-drv-level-13 {
+		bias-pull-up;
+		drive-strength = <13>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_14: pcfg-pull-up-drv-level-14 {
+		bias-pull-up;
+		drive-strength = <14>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_drv_level_15: pcfg-pull-up-drv-level-15 {
+		bias-pull-up;
+		drive-strength = <15>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_0: pcfg-pull-down-drv-level-0 {
+		bias-pull-down;
+		drive-strength = <0>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_1: pcfg-pull-down-drv-level-1 {
+		bias-pull-down;
+		drive-strength = <1>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_2: pcfg-pull-down-drv-level-2 {
+		bias-pull-down;
+		drive-strength = <2>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_3: pcfg-pull-down-drv-level-3 {
+		bias-pull-down;
+		drive-strength = <3>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_4: pcfg-pull-down-drv-level-4 {
+		bias-pull-down;
+		drive-strength = <4>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_5: pcfg-pull-down-drv-level-5 {
+		bias-pull-down;
+		drive-strength = <5>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_6: pcfg-pull-down-drv-level-6 {
+		bias-pull-down;
+		drive-strength = <6>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_7: pcfg-pull-down-drv-level-7 {
+		bias-pull-down;
+		drive-strength = <7>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_8: pcfg-pull-down-drv-level-8 {
+		bias-pull-down;
+		drive-strength = <8>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_9: pcfg-pull-down-drv-level-9 {
+		bias-pull-down;
+		drive-strength = <9>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_10: pcfg-pull-down-drv-level-10 {
+		bias-pull-down;
+		drive-strength = <10>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_11: pcfg-pull-down-drv-level-11 {
+		bias-pull-down;
+		drive-strength = <11>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_12: pcfg-pull-down-drv-level-12 {
+		bias-pull-down;
+		drive-strength = <12>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_13: pcfg-pull-down-drv-level-13 {
+		bias-pull-down;
+		drive-strength = <13>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_14: pcfg-pull-down-drv-level-14 {
+		bias-pull-down;
+		drive-strength = <14>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_drv_level_15: pcfg-pull-down-drv-level-15 {
+		bias-pull-down;
+		drive-strength = <15>;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_up_smt: pcfg-pull-up-smt {
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_down_smt: pcfg-pull-down-smt {
+		bias-pull-down;
+		input-schmitt-enable;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_smt: pcfg-pull-none-smt {
+		bias-disable;
+		input-schmitt-enable;
+	};
+
+	/omit-if-no-ref/
+	pcfg_pull_none_drv_level_0_smt: pcfg-pull-none-drv-level-0-smt {
+		bias-disable;
+		drive-strength = <0>;
+		input-schmitt-enable;
+	};
+
+	/omit-if-no-ref/
+	pcfg_output_high: pcfg-output-high {
+		output-high;
+	};
+
+	/omit-if-no-ref/
+	pcfg_output_low: pcfg-output-low {
+		output-low;
+	};
+};
+
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

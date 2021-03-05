Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55A9C433E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27BD165010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27BD165010
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nfpqd48VDpzITHl90kh9DeGZJDfzmml7E17nqBC49Yk=; b=MMSVgcOOz4sLZlm2PfYmgHqsX
	7HkkazqWkSvJ7gk4a58+bEAllfl7+48dIJ0UU+Phg57S0he6wU+Qd7Z3uh7IyzmmZAn2OOCZsZv4v
	TvnZ5ZPzelwWVtLi1633ALapa4xEu5shvvz9GjXRcH+BO61rlKP/XLe67UkhsOmb2rPwNGvM3gxkw
	H6SJRdp+hfJy5VUqDyOCmgGbRZGdploAot6Ngwkn+Kzxz+lqmiqkDGI0jR7uhgxdnG/77wfJ4uCOO
	5u10oM+0eBhm/hyr3kFpfIMMHshAxITbtIP0R51/Q6SHCsxOPEyua1hbpHW0ceKEwpfbPaIpvXu1h
	mKZSVmScA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHyV3-00B3Cb-RQ; Fri, 05 Mar 2021 00:39:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHyUv-00B35F-Pr
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 00:39:20 +0000
Received: from localhost (unknown [192.168.167.224])
 by lucky1.263xmail.com (Postfix) with ESMTP id 18503F2C17;
 Fri,  5 Mar 2021 08:39:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26158T139991629948672S1614904748986290_; 
 Fri, 05 Mar 2021 08:39:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bb8288ed45656e582667a741c4fdc546>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, heiko@sntech.de, catalin.marinas@arm.com,
 will@kernel.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 1/2] arm64: remove select PINCTRL_ROCKCHIP from ARCH_ROCKCHIP
Date: Fri,  5 Mar 2021 08:39:06 +0800
Message-Id: <20210305003907.1692515-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210305003907.1692515-1-jay.xu@rock-chips.com>
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_003918_158895_D8DC71BF 
X-CRM114-Status: GOOD (  11.91  )
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

Prepare to make pinctrl driver of rockchip to be module able, this patch
remove the select of PINCTRL_ROCKCHIP from ARCH_ROCKCHIP.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/Kconfig.platforms | 2 --
 drivers/pinctrl/Kconfig      | 4 ++++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 6eecdef538bd..0371cc02b448 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -227,9 +227,7 @@ config ARCH_RENESAS
 config ARCH_ROCKCHIP
 	bool "Rockchip Platforms"
 	select ARCH_HAS_RESET_CONTROLLER
-	select GPIOLIB
 	select PINCTRL
-	select PINCTRL_ROCKCHIP
 	select PM
 	select ROCKCHIP_TIMER
 	help
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 03c62e1cb395..bf88aac7bcc6 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -210,11 +210,15 @@ config PINCTRL_OXNAS
 config PINCTRL_ROCKCHIP
 	bool
 	depends on OF
+	select GPIOLIB
 	select PINMUX
 	select GENERIC_PINCONF
 	select GENERIC_IRQ_CHIP
 	select MFD_SYSCON
 	select OF_GPIO
+	default ARCH_ROCKCHIP
+	help
+          This support pinctrl and gpio driver for Rockchip SoCs.
 
 config PINCTRL_SINGLE
 	tristate "One-register-per-pin type device tree based pinctrl driver"
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

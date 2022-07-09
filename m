Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m07hbRLD4INFIH9juLBZ0e6aInLTATnJwVraypw9Zk4=; b=jLyie8gSiQwt1i
	FeqT2NOhILxO4XgAUJjR3fWzz/IcTRMgft9h8umP77vzOBqmzZ94uVJqsjXzGP31eS16m6oSKyuDd
	UDoBG5LCWow93ibZPDwyp5ymsQwZIiTx3KROCgNmuicvRo+8Cx3m+Cs2VMnOS/myFA76MoefDuLf4
	Ndnh0lrQxk934HRgbQ/qozxxsY7VEmn2dwUPRVqEQZNybe2Y39JHzvPf3dbmT6uVS1/Pxv6df4Mht
	3lqo8rm3BTKSFhU5/mNrGol73gFokjLjy4LdMrY5lprPXeRR+mnOSCaYWYQ1yJDbzA/KnuDdvBWm8
	tuf3b2w/PUtQs2Z62JcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXn-008yVI-UG; Sat, 09 Jul 2022 18:51:07 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXl-008yLc-FO
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:51:06 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y4so2008395edc.4
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=exvAO+7mgCoiAV2jh8FNsgGOC0EuYaT/r668LJ6U3Ps=;
        b=o+HFhUK0CWnDCWuyfTf6zmOV5wZ9UEhPD+B0moXonIYtRJN4UNXPHvj6QwwpVOmPKb
         +pdBpxXFhf2CMHMrBt934jK5+jbN9/tjVPDoGRKqlqREMgDe/2y3JDWkhWLPoIsvxs6e
         Tve2//KQQ5d4pLezaNNw5fNe1r7JjsH/ziKcS3plJ9e51zDebD43b/pwDmyhmJ5+3RgD
         Z0gOCVDFo26EvCYAd3rL/ksoLr6qrhc7CuBUibeGQ0Oqnnd8KQHlvmVB+WRve+VysC9n
         0ZBOLwORnqjouNx6+TIM2/ze4qEXqt3GDBMZSRC0g1vgWOHdKKs3goyMMxYNF6gZa0bm
         iJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=exvAO+7mgCoiAV2jh8FNsgGOC0EuYaT/r668LJ6U3Ps=;
        b=XXLpQsmpjk+1W4L49lBMJWaUbKRMXfy9kg7LS54U1YfQbrnb3oz/i6B85SHceaHbl4
         9KwPmBK+Yg71oYk5CC8REphDQ9XliKSdoNTXXt3+l0Tt6lFAnHlmLqXBaCHHyn2sVY6F
         umFGoBAUqHOJoE0nskB/tJAB7r0u+GPpnE+Az1K1VCF6yn2HJGOHrqc8ngtuN71vU+0g
         H52BX/L4zdBTmyhI2LJ+FkhZz2pTo3Ue0SlFHuqEAag3Y1qoRV6uVz0zu1lEBDhwvpX+
         TwzUMh2cDVbcmA2ZnNXB2BXbV4zLkMzr2B04WU0jYI9xYqQPR8esRCe5he4QEJXD93nn
         rIkg==
X-Gm-Message-State: AJIora8XmGHTW/HEm0QabF86djqiM0OVQQubOqm4DM3qHRmp9ZyLeq8A
	iyyV69II42r9z/BJrfXKexs=
X-Google-Smtp-Source: AGRyM1tGPUiMTMNklNM86AzjY3hCJHmX0txIpwYqxWuSnNvDkVU3CwRbAuQzu1PBrmDpwckDfVj4Tg==
X-Received: by 2002:a05:6402:4390:b0:43a:bc4b:8ab4 with SMTP id o16-20020a056402439000b0043abc4b8ab4mr6463731edc.283.1657392665017;
        Sat, 09 Jul 2022 11:51:05 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ks6-20020a170906f84600b0072ae8fb13e6sm838124ejb.126.2022.07.09.11.51.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:51:04 -0700 (PDT)
Message-ID: <f32c3a1e-f672-82d7-503a-4499d6f1c5be@gmail.com>
Date: Sat, 9 Jul 2022 20:51:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 11/11] rockchip: configs: mk808: add idb configs
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115105_547436_0A6FD457 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Add IDB configs for mk808.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch comes on top of a serie called:
[PATCH v1 00/17] Add rk3066 ADC and USB support
---
 configs/mk808_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/configs/mk808_defconfig b/configs/mk808_defconfig
index 6ae41a23..3e6d942d 100644
--- a/configs/mk808_defconfig
+++ b/configs/mk808_defconfig
@@ -15,6 +15,8 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3066a-mk808"
 CONFIG_SPL_TEXT_BASE=0x60000000
 CONFIG_ROCKCHIP_RK3066=y
 # CONFIG_ROCKCHIP_STIMER is not set
+CONFIG_ROCKCHIP_IDB=y
+CONFIG_SPL_ROCKCHIP_IDB=y
 CONFIG_TPL_TEXT_BASE=0x10080C04
 CONFIG_TPL_MAX_SIZE=32764
 CONFIG_TPL_STACK=0x1008FFFF
@@ -27,6 +29,7 @@ CONFIG_SYS_LOAD_ADDR=0x70800800
 CONFIG_SPL_PAYLOAD="u-boot.bin"
 CONFIG_DEBUG_UART=y
 # CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_NAND_BOOT=y
 CONFIG_SD_BOOT=y
 CONFIG_USE_PREBOOT=y
 CONFIG_DEFAULT_FDT_FILE="rk3066a-mk808.dtb"
@@ -91,6 +94,7 @@ CONFIG_MMC_UHS_SUPPORT=y
 CONFIG_SPL_MMC_UHS_SUPPORT=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
+# CONFIG_MTD_RAW_NAND is not set
 CONFIG_SF_DEFAULT_SPEED=20000000
 CONFIG_PINCTRL=y
 CONFIG_DM_PMIC=y
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

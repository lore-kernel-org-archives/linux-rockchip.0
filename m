Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A2E7C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy1cbBQT4gddUcpObQdUOPVlLrdb1JdhwGcCbKfNkU4=; b=FeFgiSpvYuOUEc
	HLTnL/FJoKOonJO4CGCrgT37fWfT63YGcwhezzdlwJoyXVbOGTPFDTjShxvV3HoomiEW/43UyeTQo
	mRdo++8+9R8pdTuOYOoWF8zLfqlJQd36Oqrcqp3f0Cjz+SNxAx12wyV9mlcv6kmsnwGGy1sTtBqA1
	R5oj6yjOfr5YoabIDBypVs6a1yE9/GII1kQxdH54NhyEFo5Vmv0OJWm9xXGUP+FzsfGO4DEiYhrrw
	VFxUZq3jsqE3KneSvrU52FkET+8DCGBwT5nkLtRQGCSPcoov5UScwk2V5GLtRyP+ZDVnL8v5+btJd
	+99+B9jJBJn9g6W3ANjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEw-000Lhr-0k; Tue, 05 Jul 2022 13:05:18 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEt-000Lej-5x
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:05:16 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x10so7847443edd.13
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=8cvvm8HaVL0ITuBwp3JrLcb+HIdPslJzsK4PnASYY9Y=;
        b=CTd3Hm7JGJgPqt2DWtdiFbffX6Bzn0hAiLUBB6eOgTUXzC+TMxPnHIs7TLHEbS+4XW
         5R0rhO3BA+ATK3dZUTZCTbvoeDpbX10wADtI6hDhtEAl3OKv8YLMUy2nfJRPs94RgNL+
         libwcVogyioJMYxBnkF051P6eL+6669TtZbcSvjj3KdMg5Xf/AViGkSq7B7Y3PUaQjYw
         iuLFCXFMv4WjDABCKAiXYa/J2SIp/qOeNnVzSIrOCOALWPUnFbd+KxKriFZGCoBUAeUw
         xKlxPn2+UlVbZOkYGEkIysG0eu+A4hPF7eLdJyYxRPPNWXVML7c67XkRvD743HeQ3qEO
         j6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=8cvvm8HaVL0ITuBwp3JrLcb+HIdPslJzsK4PnASYY9Y=;
        b=sugFYblFiT2bEeL/MiIKBxNU2qGS/8qrDAs2RWGlpFEMEIRuIllL/BiLvPJSZhZE32
         16XZYLLWOKHGR+TvM4Yg96VOgXv4xmtwZg6tVKq3R52pLIEBWSVmkvTU9ImkdqtwbcaL
         M/sQAeagNCSxKbEDeWyWtKjrCMMiZ/YZpoSBLc1NfEmYWAK7rmL7R9a6RKZfeyEgvfZg
         I2ziNxpLSqrKyrIr8JQOaOuTt6MIrTjLXxVdZr4MpcmcJJz51Cw3gPfAzik1e6pztpsU
         cOeX/S+eUS9SjVeWHW5Dg+PjmTLlYCh6Zm39DHi6vBiVk8lAwaDPZsMLRQ8omTBTVnDh
         qfnA==
X-Gm-Message-State: AJIora/55DPHgtSUth8sz+Y3CYUOSusqmhRoo/G5hEFIIb/15Yox/9AQ
	1xdON9p1GyPvlY9aMliKJbI=
X-Google-Smtp-Source: AGRyM1t8SgnYg4a7xh0GQGoh/yR32nB/hEV0NJMzbWaQrC2LSpkyBvJ1mVmyq6yOToAb9p4Iz1FnNg==
X-Received: by 2002:a05:6402:510a:b0:435:bcb8:756d with SMTP id m10-20020a056402510a00b00435bcb8756dmr44672932edd.277.1657026311389;
        Tue, 05 Jul 2022 06:05:11 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709063c0100b006feec47dae9sm15746612ejg.157.2022.07.05.06.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:05:11 -0700 (PDT)
Message-ID: <4f2650ac-38c1-eb29-ffef-ca56d2736c8f@gmail.com>
Date: Tue, 5 Jul 2022 15:05:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 6/6] rockchip: configs: mk808: add idb configs
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
 U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 miquel.raynal@bootlin.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com
References: <20220701094304.1846-1-jbx6244@yandex.com>
Content-Language: en-US
In-Reply-To: <20220701094304.1846-1-jbx6244@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_060515_280893_95215B95 
X-CRM114-Status: UNSURE (   8.94  )
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

From: Johan Jonker <jbx6244@gmail.com>

Add IDB configs for mk808.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch comes on top of a serie called:
[PATCH v1 00/17] Add rk3066 ADC and USB support
https://lore.kernel.org/u-boot/20220508150825.21711-1-jbx6244@gmail.com/
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

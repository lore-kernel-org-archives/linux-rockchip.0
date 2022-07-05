Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E52C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2DU9TgNUO9ombfqafGB4b6dV/hOTF4ZXIpGjEeUsGo=; b=4tfrdV+7Jjwb/h
	5PCTJR/ynMrWBA/sLVco/VrwUfrATsZCKoX1XY59d8NC5oEBo0crP77bra1Ldn88kx+/LRGVnGkCY
	A/B+iTLOXKJe63FB8ZHpe2FGsZs65wUKJCRpubooPUDAB3Oho5iAuYEueX89YcmSsBg6tvSzXcaOs
	MWbu9DtoKkprikk7yLGgh6NNEFmzgYhK6WpEBexsBRzuSrtmRt1eK4eYYtW59ONDsKESqerKSovqB
	M2YKNeTYFrKJCK0q4CjpntjsGPHvVsy3MD3ue45Q8ismdmMoizRTKNosnobMNv8xLrp7/zjqGH+Bl
	2pbfj1Ntkzh/9XfZWgag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEN-000LRO-Bi; Tue, 05 Jul 2022 13:04:43 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEK-000LPR-Jj
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:04:42 +0000
Received: by mail-ed1-x52c.google.com with SMTP id eq6so15176225edb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=JGy9gwsWLVZJVyczNGGA91DB7fN/2EsnOrS0qdE6YQg=;
        b=lAN21efsa0bLzELolwWkySJ4e6PbvVFDkwshZ4HSBxGmpBwmRJHDt6w4TGHm2UCkQc
         XDhWOwDuTlcx7cTTMt70czNEMGc/dm9IPlbxrX674Klr5iLKyooZTSVxMFIEzGmnTc62
         l498ug88lF3b4dEVVCFd/iYdpT5TLJunGhBdOHmEOSnxIG8S/+P6y1Y0pTqsTIfL1L5s
         a7a2zBotwLLhJmpndXd5SFAxEKYYCFV/KDqZP+86qLevy37R4w3T0lFUY8YWrv7EACAP
         7dU+o2P2jiEUG5gg0hp4dTKc2H6oN1asB8+aU1iKQYyF4ncXLu3iFZBm7br7fNrWQc9i
         8QlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=JGy9gwsWLVZJVyczNGGA91DB7fN/2EsnOrS0qdE6YQg=;
        b=z1608ZVGIJu5W41A2Vf+2vpi8SqIZSntMziB8Oa5EBUaASlXMv5G4gtcvcgXDS36Jt
         06cMon46CMzZteMPO8QsAJ41W/NFyTTFJqmKfIT7ckWCACGpqj8c9yYUss7vG7WeL2GX
         yXmC8Tx7qQ3cpWw6T5nLmTxYWQCiOka7Dk5A1oQVbqe5qnOaLwh4xKnl3DV5DIrV8nns
         /h5D7rR9hQlfv5bSuTwzWGuASU0N7BR1rW0AQ2i2Ld49XnmSQxXlgJxerJR9bEOcP8uU
         dlZ6J7T5p96E2asGbcaS/TqD5yof2x4CrlSYUFK4Ykd2QXFiWZ0ZAvNHFMPqTbX1fwQz
         dPVQ==
X-Gm-Message-State: AJIora+08LOxDuvP5SuwY0rZ+viA7/lf0DWqihV6tb1RzDMlq5vcZpY5
	ZbwbyfC3uw/mPV1dgVIen80=
X-Google-Smtp-Source: AGRyM1v2oZeA1nA8fhywR9doIE3zeT/Od0sd+L/1edRe2Szu+Oi7bvDnnmEITawJB2esawxwjxq5PQ==
X-Received: by 2002:aa7:cf08:0:b0:43a:6d32:f71d with SMTP id a8-20020aa7cf08000000b0043a6d32f71dmr10983729edy.192.1657026278599;
        Tue, 05 Jul 2022 06:04:38 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id la21-20020a170907781500b0072aeda86ac3sm388545ejc.149.2022.07.05.06.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:04:38 -0700 (PDT)
Message-ID: <add074a1-6462-291b-af0d-9b463d8dcd41@gmail.com>
Date: Tue, 5 Jul 2022 15:04:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/6] rockchip: rk3066: add Rockchip IDB block device as
 boot action
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
X-CRM114-CacheID: sfid-20220705_060440_719964_7FE7FD1A 
X-CRM114-Status: GOOD (  10.86  )
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

Add Rockchip IDB block device as boot action for rk3066.
When a key is pressed the NAND IDB blocks can be accessed
by a USB gadget like rockusb.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch comes on top of a serie called:
[PATCH v1 00/17] Add rk3066 ADC and USB support
https://lore.kernel.org/u-boot/20220508150825.21711-1-jbx6244@gmail.com/
---
 arch/arm/mach-rockchip/rk3066/rk3066.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3066/rk3066.c b/arch/arm/mach-rockchip/rk3066/rk3066.c
index be19400c..c2058369 100644
--- a/arch/arm/mach-rockchip/rk3066/rk3066.c
+++ b/arch/arm/mach-rockchip/rk3066/rk3066.c
@@ -32,6 +32,8 @@ void board_debug_uart_init(void)
 		     GPIO1B0_UART2_SIN << GPIO1B0_SHIFT);
 }
 
+int rk_idb_start(void);
+
 __weak void do_spl(void)
 {
 	if (CONFIG_IS_ENABLED(OF_PLATDATA))
@@ -43,6 +45,15 @@ __weak void do_spl(void)
 	int ret;
 
 	switch (spl_boot_device()) {
+#if IS_ENABLED(CONFIG_SPL_ROCKCHIP_IDB)
+	case BOOT_DEVICE_NAND:
+		dev_type = "idb";
+		dev_index = 0;
+		ret = rk_idb_start();
+		if (ret)
+			return;
+		break;
+#endif
 	case BOOT_DEVICE_MMC1:
 		dev_type = "mmc";
 		dev_index = 0;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

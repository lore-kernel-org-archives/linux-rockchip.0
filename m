Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DB68C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEwQqhKylfrttm4heVWWGJbOTp+t87RWQo2mfhvHK2I=; b=mzncjPeKoEdx6M
	kV8JSswE1wP7vYPTf/PUjNjR2AVZcRL6zPpVxZAwYdDi3GEjBXlbeLqMES+JhMd+fKGbAQvGHbvmn
	sgX9R4l63JkJCjvFvE/rvtIDt0dXKfp+Nqybm4UnwGNHWAVlO3JzW4BpHsZ4hYePl4jwu3CczAo6c
	i9m7+N6kHZjw+Xql1wFgMjp6CGDVTAFH8H1dZNwhfSuw+sk+QZ+Y9aA/seNJHtP8w6iUy0+PQ6cWk
	AKa4rQaKOttMuAmf+a/JyU+Y2Vhvz5F6/QAAFp9ykdEQpGKfg5cwZAg8gQqNUUALHQEk6QoFQCArd
	/acQII9Zx9i6RmugmUqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iED-000LNG-RZ; Tue, 05 Jul 2022 13:04:33 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEB-000LLE-3t
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:04:32 +0000
Received: by mail-ej1-x62d.google.com with SMTP id o25so21535425ejm.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=z0u+AZ6Zx4GYIzTUWp3j9SatTTuK6P4n1aC1Bhkgxpk=;
        b=nOyF3dXs8rFpGA3MBCmsE00AXsy7pi0O9Sf0e1o8W4iZTouMbl5rBjNkPsl3paVTVJ
         MjJFh/uami2+S97FfbHvwY1byfuRcS8Y5EnvLEIDThYpzdFAw92FwdJvqyspi1qIOasz
         8wTt5Zzpgllylx7eOFYeeZ1bvvYTP2LT4Ab6ky6HDJ2ajxeUDJmY8Ry3DjrrmJgxJmHd
         XgkqrxxD1LrOYX8WJhOgdMSI/vGdLjOmgQTfyn4J+0JLhoomR6cwA7hMvNLmbuYx2B8x
         2uHTdXjnCkkuzeSCVS+0afdC/9NZRzcXpapx346OBuhhiCYSuQQ8ZSybDld3AduYj3kj
         ZOTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=z0u+AZ6Zx4GYIzTUWp3j9SatTTuK6P4n1aC1Bhkgxpk=;
        b=G3a3sNJwE55KBYn7Y71RZsDIT8t21scEfcepH1qS5ouzCfgWA/bIyfAPEvOgtq8/tw
         a7suOjMqdvckNARJ/o5i34WrYQ3cmXPBf+THqcHk7t18ciegOozCZiDkWqGZdDU78yjB
         MDl7Obj4HFKTSD+RTinFp1MjhbgF5/ETcPt5980zBEzPr3I89fyoU1FcWm44VVqF++TF
         eMicnAyjc9uXORfNupyXhC4M346GEmCzQKtEuSNLLvRl0OX2N6eJUvimXLLhxb2tM7QI
         +PZWIrk1rb21cgzLoJKW0r2ykQ5suIgV5U31KlYcFVOfY1GzhevmDhdewLbcfSa0TH8L
         5tcQ==
X-Gm-Message-State: AJIora++WWTVk+hISlrpG0aowwp3E6yk7YVIkS1eSI+uWjinlHxeRaLo
	7BsjemFqMbHublOJb2NWAOs=
X-Google-Smtp-Source: AGRyM1sY2MhUXsib4MnW1qbrDgFgmHpcA02C0W5EqHsdMEROWofS0wqnVKQ1X4OqeanZ5/8NigDiLQ==
X-Received: by 2002:a17:907:7202:b0:722:e4d6:2e17 with SMTP id dr2-20020a170907720200b00722e4d62e17mr34061428ejc.434.1657026269214;
        Tue, 05 Jul 2022 06:04:29 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id b7-20020a17090630c700b0072aebed5937sm535249ejb.221.2022.07.05.06.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:04:28 -0700 (PDT)
Message-ID: <a24d2b05-0102-2b79-aae2-d6ce851789e4@gmail.com>
Date: Tue, 5 Jul 2022 15:04:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/6] rockchip: spl: allow more boot devices
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
X-CRM114-CacheID: sfid-20220705_060431_190400_6ECB3121 
X-CRM114-Status: GOOD (  11.63  )
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

Rockchip SoCs have more boot device options then currently
included in the function spl_boot_device().
Make this function generic for SPI and NAND.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch should replace a patch in the serie called:
[PATCH v1 02/17] rockchip: spl: allow more boot devices
https://lore.kernel.org/u-boot/20220508150825.21711-3-jbx6244@gmail.com/

Changed:
  replace #elseif by #elif
---
 arch/arm/mach-rockchip/spl.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
index ceef9d91..aab3804f 100644
--- a/arch/arm/mach-rockchip/spl.c
+++ b/arch/arm/mach-rockchip/spl.c
@@ -53,13 +53,16 @@ u32 spl_boot_device(void)
 {
 	u32 boot_device = BOOT_DEVICE_MMC1;
 
-#if defined(CONFIG_TARGET_CHROMEBOOK_JERRY) || \
+#if defined(CONFIG_SPI_BOOT) || \
+		defined(CONFIG_TARGET_CHROMEBOOK_JERRY) || \
 		defined(CONFIG_TARGET_CHROMEBIT_MICKEY) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_MINNIE) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_SPEEDY) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_BOB) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_KEVIN)
 	return BOOT_DEVICE_SPI;
+#elif defined(CONFIG_NAND_BOOT)
+	return BOOT_DEVICE_NAND;
 #endif
 	if (CONFIG_IS_ENABLED(ROCKCHIP_BACK_TO_BROM))
 		return BOOT_DEVICE_BOOTROM;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

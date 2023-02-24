Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DAB5C64ED8
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Feb 2023 23:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuMegaKJhv+E9inXIewzif1xRni/zRpaWPgx6GzSYiQ=; b=qGTn4EqJXPQctd
	UCrGAYJey3CSGYzMA8R0ptsrcyWkZ0pFXl47Hf4iRJnxb/A3qSAwS3pZtN3waO808ceouSv87fAau
	UDTAElbVQ9df4UAZSMgO/R2c+1EOfJjy1iD1cDey5w71PyTe3iAGQr8vwzmKYuzNN22rqFmj5JdcJ
	Qhc5dEz1Qh9YAR/uYZhZ2MQAfsVe+6cnxM1FErk4r3jtHw6NNHfn2OK7AT9I67Q/HM1WTT2Ce9qRa
	D/P/gbQkGBdbmTy8UPkaLAUluVHxblCTuxlX/KdVsN9hfMd0bKHA9FJz0lD9rnfRo7MMm19Dv7GIX
	StUEzQ8NK9KWBq6/qtBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPu-004Hc1-Hz; Fri, 24 Feb 2023 23:23:54 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPo-004HaE-6I
	for linux-rockchip@lists.infradead.org; Fri, 24 Feb 2023 23:23:49 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-17227cba608so1319040fac.3
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Feb 2023 15:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=jgvBF2hfMIZ0N5yUXWOdlorcPiNIzuUWRsOiPxYXlQy8aG+xFTqs+9zivEXSBx2d5p
         YS+0QT7FG+tWlpR3O59uhR9cz5VDAknOm6/x3Rxp1DClido4JghwtoyKIxXfHiKw3BAH
         OWg9Y+l3y5z6KTQfTPj1jd+NyPxamUzBeiPgl549xUXm/FU9H27cDEOC5v8mAh+IK+qT
         zg9RQPqup6HJFgCluvHEpn7Lf1m8x6fJw2rguE1e86dvFF3vHQiBFgSrri3ddjetl7dU
         ubLHNsf3XEeZcwqV4MHiatNZLcVc/Z4S13AFhdBAZUAKrhd1JrnYRM+u0716tINddHEa
         EDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=hx1C7zZn+864LXZNQ7cemYU9FDlLXe6AF0aVhCPQ3lzr4O1p+aaWE5DVJ0V4IJBt/P
         ahVOMFBt/nl+wjU5Sca2PJmpjmxvpFunBH4ZSwc0CACv237uBlosVB8/eI4JcU/wkuzd
         AdfKl57Z/dZbgawarML0kJLgM1BgTWOxQPo1JhNyABGZzTYFLM3LnS7hXNkBoIF+pmor
         rMcOHKM54JJdmcwtIhe+OJQ1NzwlfZhjXTbSxF4m+IhxGEq2Rfb22Mc4Bs7I3q6qAkcr
         YX68MQKpDnMsXzXFoIbIRIKJEJjSTEv7aAddr2gKXjYx2gYYGcngKDynb6RX4UlB3APX
         kMjQ==
X-Gm-Message-State: AO0yUKV/81sR8qbt+pSTomBemCf8/9l2DirAK/PGUWboEj+encHkTSG3
	hxCVwlMXjaRWH34IHA1jaWw=
X-Google-Smtp-Source: AK7set+zka4pq8KQXGjVN1FASvAvHq0OCmxDjCs6BbiXJ/sRS9u4YynA9aCd4kkTI1sVbq15KIMgJQ==
X-Received: by 2002:a05:6870:d1ca:b0:172:80f4:9887 with SMTP id b10-20020a056870d1ca00b0017280f49887mr5493008oac.31.1677281026960;
        Fri, 24 Feb 2023 15:23:46 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870d39600b0016b0369f08fsm119706oag.15.2023.02.24.15.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 15:23:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3 V2] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
Date: Fri, 24 Feb 2023 17:23:38 -0600
Message-Id: <20230224232339.124969-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224232339.124969-1-macroalpha82@gmail.com>
References: <20230224232339.124969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_152348_559942_86B34C06 
X-CRM114-Status: GOOD (  10.21  )
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

From: Chris Morgan <macromorgan@hotmail.com>

RTL8821CS is a WiFi + Bluetooth combo chip from Realtek that provides
WiFi A/B/G/N/AC over an SDIO interface and Bluetooth 4.2 over a UART
interface.

Note that the firmware this was tested with was firmware version
0x75b8f098.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/bluetooth/btrtl.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/bluetooth/btrtl.c b/drivers/bluetooth/btrtl.c
index 69c3fe649ca7..72947d319fa6 100644
--- a/drivers/bluetooth/btrtl.c
+++ b/drivers/bluetooth/btrtl.c
@@ -128,6 +128,14 @@ static const struct id_table ic_id_table[] = {
 	  .fw_name  = "rtl_bt/rtl8821c_fw.bin",
 	  .cfg_name = "rtl_bt/rtl8821c_config" },
 
+	/* 8821CS */
+	{ IC_INFO(RTL_ROM_LMP_8821A, 0xc, 0x8, HCI_UART),
+	  .config_needed = true,
+	  .has_rom_version = true,
+	  .has_msft_ext = true,
+	  .fw_name  = "rtl_bt/rtl8821cs_fw.bin",
+	  .cfg_name = "rtl_bt/rtl8821cs_config" },
+
 	/* 8761A */
 	{ IC_INFO(RTL_ROM_LMP_8761A, 0xa, 0x6, HCI_USB),
 	  .config_needed = false,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

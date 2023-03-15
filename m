Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FDAC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 17:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuMegaKJhv+E9inXIewzif1xRni/zRpaWPgx6GzSYiQ=; b=br2O3D8QlVaNJl
	F14E0Ljwkzgh+3Kgl6lXBp+ps6kJ7Fcxukw+sPY5Zyx/gA1qE9sfVbsl5sSW7xdsFSD89YfvEjxdn
	NDpeubJAwJmRK5AKSdObvOis4dqZIiUYhl3MFrzl6yR+/K6dZ3jEQU8kp86lLX8TX458cC3PXDfXo
	PXmMQPWtkMCyFGiVZ6Vb3o0JcItG0UrRfMPGlOiYOr6gvpUYs0svDJqvsTvph+EAgEkZ2deruBMhE
	cILSsiirEhxoO6Umcke+BK2vplZCbPrG8EJw6fV/cWQ9Ci12wS7E2Nh9dgL2b9tXOxrTYDfAtvayT
	Nrm9Cxq3FLfb1xTJM44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3r-00E9uU-0P;
	Wed, 15 Mar 2023 17:37:15 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3l-00E9rn-2n
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 17:37:12 +0000
Received: by mail-ot1-x334.google.com with SMTP id v17-20020a9d6051000000b0069a413e9cf6so1299392otj.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 10:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=qPC4gZYCxPAdomO7x2ePq6XD9csKWTlB7N6G/jLz48l0dY4EJY8cSHrew/nHQHFt40
         WxIAs1WMQ3LsOsd+WLyQ4m1haS+rq0layySkB2ZmI+mAfzdTFLPdkmN7+VJ4TcESvbMt
         VPWTRSzaz8A3/IXPSfMeEq/9RgOjgaW05hiO9P7Us2Lc0r7arNW50xQrHt2uhhCcY0fN
         XvTMsl7KPWZQemToXDQ/5d1mRlUcwsKXkIHbv9Yfq9NUdbSAGe9MStCwuqc1XYXDPVcN
         SdYzo931LEEBV1Z6Ru04Im76Bd6t1dovo/7mhJDZnUEIAMj7PMpZRbomrecoAup09/cF
         RFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=MT0meo8MnIyMDBYZAZfsBzG84fgLzVw0BqvF9/n8dUzBgsldsCI4h7jxV3eiRrqFEl
         fcWXwY2QAokbsBkeiub0hN8kBlZMPRhK+e85esVV7z0hcmtTnKq8W28DgXPIL8W5s9g7
         iUk2ez2k9NHSkeOeGGy6G0pkjW32ePCXKp+D1BnIXyO8lqrBIDVpUFK2qlmxSrYk/iG+
         Nlky68VT5qaM6uF7wFB3GQBe/B0EgjTrabLmLtgq2+tuCMx17+TIPSBXFTCWiLULq0Vw
         bjaokWryvW8iXKcJhg1wHFzlXov6LUHestz3Uyc6LSxxyKfsGYJm5DBLYzx0IRLfdIqR
         3e2Q==
X-Gm-Message-State: AO0yUKX40vEu6N9lvAx2Bm16qKPgH77tTL5M5KIKHw1GAI+3maU+G6hE
	qxQ1/B//LQRfidpAuvrtzuU=
X-Google-Smtp-Source: AK7set+sx5nxxFxUnhUxX2uYiMEekshtg15WzBs5KwTRHPbKUletwNKGwb4nm2kN6q4jEk2xLohDmA==
X-Received: by 2002:a9d:19c2:0:b0:694:7e44:d4b1 with SMTP id k60-20020a9d19c2000000b006947e44d4b1mr17560353otk.9.1678901824877;
        Wed, 15 Mar 2023 10:37:04 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id a23-20020a9d3e17000000b0068abc8e786fsm2562044otd.10.2023.03.15.10.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 10:37:04 -0700 (PDT)
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
Subject: [PATCH 2/3 V5] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
Date: Wed, 15 Mar 2023 12:36:56 -0500
Message-Id: <20230315173657.28692-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230315173657.28692-1-macroalpha82@gmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_103709_909439_1F0A905A 
X-CRM114-Status: GOOD (  10.71  )
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

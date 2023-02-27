Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B8A2C64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 16:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuMegaKJhv+E9inXIewzif1xRni/zRpaWPgx6GzSYiQ=; b=35N4TxuUh4+LuN
	mxb6eaXrgEaniC5UAE4/BN+/ncxlX46FXuvg43kGOB0DWBvXQBWGpOki1fh494S7BvAQ/xlDAW8LY
	KNueF7Oz72oimNNAXMFn/3GFgJ1BK2HxIUUMzODCS8es7R5jjHOgLxWRznSAKgHlsaehNr2LOUN3c
	UHyODT9oH9OcUw7O7q1FnBYScyqR/c3G5xvEBB0RY8KjqAsFZWHQLWmd+6/1b1G9msmfqzDjntIX9
	BD6eWuuIg5U9vRzkFxWo1unhoBOi+yvAIbXmeYY4mx1HrP99ZTWIzO8LhuBmlXLkuT4uGmIMBWfLv
	//vQBZfyLs2pj989ytxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOd-00AMv0-0M; Mon, 27 Feb 2023 16:30:39 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOZ-00AMtB-B0
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 16:30:36 +0000
Received: by mail-oi1-x22c.google.com with SMTP id bk32so5584302oib.10
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Feb 2023 08:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=AB8LeUkTcrQRY85Hb0/W61RuKo2xweA6HreDGbedIZ4lpMLzlWTSUF/xrbrAt7n79W
         sqCwrYZXQtMCCDb02px/hr93KRyMc8K6ZUqcrguPZP3gMR72LJQY5aAe3DenFAUkS3S6
         fnWI5wTCTi3h0HpuW5p1qlS3cCaO4GfWPIMgPo2s7nZ7OrE8otKGPCizqNyGCUcSAVrL
         zzt5BqTuGkbW1ZcGkJpM2lIH+0WYGzSPRyJNoxq6DJ5NDBh8JmqqPKxGBXd+XIQMWRhd
         NKN+JM0R82VVfdKjYF+UPulpevgsxwsydQlJ40rME2LUxmugStUN6xoREo//mf/rtTOK
         Nxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=76vYgrCWcwuaMG/naaghDGcjf0WH3PQAi78mOfNuoRbVQoWZgB8cABV7zOevmVyFKQ
         wcNB4snrr945PI2f6ulaQ+C+0My9JV/hzt/4LBKIb/WChifayi3iObmD3aPWJaEuN0CQ
         PgP5qPTzkJt0ve9yrg0EqEBkmtAyl21SZoq/PkLBIhQtD/ppoodAuTjlGuGOsgD7rqIm
         C8MeNObl5ZpiCAz8ukUO7mFwJT0kkexbfymsGuwwLd9ihLK8YqRg5Nwxpg79j4qQ+95n
         VkG34cVBy6TpCXk0Vy0mG3XIIusvJ+GX0tdULCIy/vhJPfgDGti5qJP8NFrQv8AYtXId
         uzhg==
X-Gm-Message-State: AO0yUKWxcaheYqTSbQk523anB14SVzLzexJVxcr8nBikEXmQ4mA3poLQ
	VTw1r1zj3ncwKHogFp67ndc=
X-Google-Smtp-Source: AK7set/bPQ3QZ2GzK9RQge0qhmbwGja53OKibb/98SsVY4DXh7x+yc6pKG4M6zYmVub6rgvZ98FZsg==
X-Received: by 2002:a54:4005:0:b0:384:3eef:77f5 with SMTP id x5-20020a544005000000b003843eef77f5mr682758oie.49.1677515433836;
        Mon, 27 Feb 2023 08:30:33 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id ex16-20020a056808299000b0037fcc1fd34bsm3267713oib.13.2023.02.27.08.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 08:30:33 -0800 (PST)
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
Subject: [PATCH 2/3 V3] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
Date: Mon, 27 Feb 2023 10:30:26 -0600
Message-Id: <20230227163027.130292-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230227163027.130292-1-macroalpha82@gmail.com>
References: <20230227163027.130292-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_083035_401298_28ABF9B7 
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9BFC64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 15:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuMegaKJhv+E9inXIewzif1xRni/zRpaWPgx6GzSYiQ=; b=AAEFyRsI6x3m4m
	Ug1CM/chZnr2sY6OT+AalAQlsFbkRP8nMr/1fdfRShpgNcpvTAB/WAYPwYSbZi0BTik5HAQZbHHuW
	D2+LGzobVLPlxYSv9q63nK9EHGj9rSadOZiKjZKuv0257RTaI0o5e6BMKZN2EdHHH7llujQBh/LW5
	jrNNYgcOaWxgiOK4VvlBM1wy1IAEFOR7Mk3OM8N5xea1wX3qUlPnSxFSaIrXPNqL8WDNGggZRLCAt
	g5Cei5uJq6wvafqYyo/dVfdzeNXIoCfXaTp6ypctLmu4r+BJ2JPf6pl5FMeYqqmTcgkJFk0SrK1OL
	Mju9LdAoGWEU4HIhL69Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o2-00DdO4-KR; Tue, 28 Feb 2023 15:22:18 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1ny-00DdN0-3W
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 15:22:17 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-172afa7bee2so11254462fac.6
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 07:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=d5w7w27+GAkN37xqVH6ee8uy88MpzzRY30PwJvnMeeg9ZZhCYOoMqeE4FelbkHeUlj
         h+FbOl6jjK+E8rQNKx7XTgFa5bKU8heRCqSbhEdFLtaylBgv7ia0NKWXa3dHaC5dxEqo
         88qzI1HDPT55GcYUT2Kl6kgCB9CTiJgjCyLZ9H6Pe30aZlZQht8+olLhf9uilAKNNQUj
         n5q/gJ9BoSHe8MLg96sh9JRmlZclZ65I45ksKxdByQZp+OiSXZ3EKLOnmzBf+v2r09ez
         xKSH4tNKb9zIHGRIbntSyKAtuk2iNzXQlz8ReyDnTa2K2LnqqOsFo7/8BS8sMJfzgqB/
         HZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pi5SJcEKPHpeQOw0+UlGmmDXXROx+75oT2f8FTNnNag=;
        b=L5mEIVAT0JwFGK1Mg5+YPr8Z77kNP7HCzZKBvfjlea/3ctGSYoUmpdchREDHcQyy/i
         LNf2FcnHcAWhgwFUXmXjjLZ1vpHj0NhAdDIvzHSgQza36ef39aiBQnu2nxYfyqPleJua
         Pd+z9rwmDW3RyX3UQg8lQQR4A1uiMgl0qCUJEFNcr9NwkkWY3TTllM/zQtTPejNhbpRf
         fl2zcw4dBvfXau7Vs5zZOrrprQVBUt5asoYqvy1n5XO3c+Rr7I977VcGW9KVqocxdMvr
         9xNBRmswCbiCWQgp3vXKIlx+nknYkxjGVeH9NevzRvyWeaCheweclnBrZpEHiis7babe
         BbSw==
X-Gm-Message-State: AO0yUKU+8+IbEb54FHIz3BJana3IQsLSn8W6Rv0cEXSCoBawGwKvF3gD
	B9aFa41NtGzrBQN16xFB/MuipB8h3uw=
X-Google-Smtp-Source: AK7set9rrJt43Ctw7elZnb2Hvde0dLtTQmNKHpPqPDo9gbz3WaMi2Pg/CGJ8oTZUgFDvxB777eL0aA==
X-Received: by 2002:a05:6870:ec8a:b0:16a:2db3:fce3 with SMTP id eo10-20020a056870ec8a00b0016a2db3fce3mr1688775oab.40.1677597731944;
        Tue, 28 Feb 2023 07:22:11 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id yy23-20020a056871259700b0017264f96879sm3318321oab.17.2023.02.28.07.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 07:22:11 -0800 (PST)
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
Subject: [PATCH 2/3 V4] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
Date: Tue, 28 Feb 2023 09:22:04 -0600
Message-Id: <20230228152205.133582-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228152205.133582-1-macroalpha82@gmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_072214_182385_D8A0A62E 
X-CRM114-Status: GOOD (  10.82  )
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

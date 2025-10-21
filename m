Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16370CCD1AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 15:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaxAcmWRPR6lN9vHTwLNfKkDEG5m6u80vfjNmI9dDQA=; b=DUnysL2XT2UmiK
	YAHNU9+EHarYSyqY6VY6sUjrLMvAPdsYlLNqVm203AypWETCdS5ZG7QZMAG6rV0XMUnrByod0HVSE
	3zzbxJ3/3QGJWAW/pMCOg3Ahp//TDeMROum6mqJ753LNRHoQ2AilS5l7uajZIYvjKsEBiaBbHihz6
	cuq2BNGN0zMxOVfjSaJC6OImjSL2BRqCxCCpcXmV38X+hmVTpq4fTxuZEEL5kLIL6VK5CBFG9wZ59
	ra5Brg7LMrfVBTKLHuWLyjfdUgIfrN8iRCx+p1XCv4W/3iX9aUhC3tgZLAwJoSM9BnzP+ViODvaQe
	CCSfMM4OYa4oL/pWnleQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECg-0000000HU3z-2Ft8;
	Tue, 21 Oct 2025 15:23:14 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECc-0000000HTyx-4A9D
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 15:23:12 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b64cdbb949cso942422266b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 08:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060189; x=1761664989; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkVtrQQNx9JXmbmmhcqWd4PIxXamm4sTBDEU32vDCe4=;
        b=YhXqIvIgOmBryc92AKjXNdyPiuBZKSpkoSHCh9sVpItLPBqQTMDz728Wb6fGVnzBD5
         WRPYyndByMyPgRPDNZkCgRTOShfyIOKD0bEmEojK4Da4bpoJ0PdlqTXnme5aUBeQQm+3
         225dwb/bdYSrp7j7R4AxyTldqZ7J/MyyOgEsydrm/B+Of3wIZrAjENLlfn+cNrTEtvzq
         qHmwQhrzlrSDrjGSefca48FlVe5KHxjUG0Qr3WonHM6PGTKz6Sm6JP6LaE1jkTg1wEUi
         FyYteWbA5JR4BidzfzlnWzPcXQruhcz4jSi5Vg9W3VRjnbwGXj5U17HnnWxFBq6YTFdR
         uTpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060189; x=1761664989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkVtrQQNx9JXmbmmhcqWd4PIxXamm4sTBDEU32vDCe4=;
        b=W+qlwloLoyMQ02iDHGjst7RQgZzky0IQd5j2JWgsPs6z/Wvre6k+n5XBsQwVyBKn8T
         hxlyZtY/FgDu8qfCuoBNNAhQmum4Y7DofG/q+0THrn/8PD6MiO0c1pLJNiR44eDDco1I
         WJkelVrJzrmQhqoWCqPuuRr8/dA4VmnjiPUxi8Qa2GonxYPI8mRC9X6KJUZUl1msnMrV
         4vBX9i7ZFT4EvIOoQKfHQsHL4+vcLOwgy/1YTtqkRSPtgw1UiC9C7Bi7xjw2caJ9kKde
         /EIuK6RDAqeU2dabEtPgoF9Mbnok3EDhF5Zatai4nPxu7qEogXrmU9EYQ1wohSlFhg5F
         Wgig==
X-Gm-Message-State: AOJu0YzcQMuf+yGwCQYZPl1wdTptGnehyRk7/AWR8V3NF8RT7P2b1Z2E
	kA+8gk0MPpCzn334z/JbPFlNFtpMvxdC7la+mkbmu+1WwHnCRvzl+lsorIFMo0mv
X-Gm-Gg: ASbGnctW3wVByl5ghkJAqA9Phvh/lgWQmeMfqXw3LkRY7ORXIavGBuO+mU5+W+SZvUw
	zA6Vv7J+qcj4IBT4bKflREIHsRR3YahShlCqdzA198KXz/PIG47sDr2T3sHQTwGM2QsUsOdy/LT
	TJZKBjhuc/nGI/IAfDtn/tUzdnLrNPUdYKakr2DP4DfJ5Ft/w9Eo2IFJKimtihiPgQaqGDC310y
	dG9vrIs7eiw9WhkEojfl7Cd12TzuF2lFgulfLnukFcOSN57sxODSWni0EIE1XTOk1RWucc939CG
	Z+pHxwGwMPOnjAqWW0udE2thmVDVEYJNIFFfhSHxJXJR+itU45gc2P5+Z+AYBxJY4+arXoc4HVo
	9ofzuwkCTzjDlfjy8fTUo7SNTkB4Jerv/TGOKkBD5+ucx0YOpTzuRUzhdHZc0c9+7WmboFtaldW
	ssgPTojhppLvfAq2EVZNpdMAviht+WdbuX9VKDiQ==
X-Google-Smtp-Source: AGHT+IFBawaPITrNdYmiay8yNLixvU/sNG7B1UP8/hHhq3TLFQvwCAZYt06AP2bMcG0Yh7bzOTP88g==
X-Received: by 2002:a17:906:ee89:b0:b47:de64:df26 with SMTP id a640c23a62f3a-b6474b371a3mr1920210966b.35.1761060188643;
        Tue, 21 Oct 2025 08:23:08 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:07 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 2/5] mfd: khadas-mcu: drop unused nvmem code
Date: Tue, 21 Oct 2025 17:22:42 +0200
Message-ID: <78fab8c8b621c0ec1d7c702c028840d7f431e429.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082311_049868_C7D14A19 
X-CRM114-Status: GOOD (  10.98  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Drop "khadas-mcu-user-mem" code since it is not used anywhere.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/mfd/khadas-mcu.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
index ba981a7886921..ca4bd6cf56994 100644
--- a/drivers/mfd/khadas-mcu.c
+++ b/drivers/mfd/khadas-mcu.c
@@ -80,10 +80,6 @@ static struct mfd_cell khadas_mcu_fan_cells[] = {
 	{ .name = "khadas-mcu-fan-ctrl", },
 };
 
-static struct mfd_cell khadas_mcu_cells[] = {
-	{ .name = "khadas-mcu-user-mem", },
-};
-
 static int khadas_mcu_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
@@ -105,13 +101,6 @@ static int khadas_mcu_probe(struct i2c_client *client)
 		return ret;
 	}
 
-	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
-				   khadas_mcu_cells,
-				   ARRAY_SIZE(khadas_mcu_cells),
-				   NULL, 0, NULL);
-	if (ret)
-		return ret;
-
 	if (of_property_present(dev->of_node, "#cooling-cells"))
 		return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
 					    khadas_mcu_fan_cells,
-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

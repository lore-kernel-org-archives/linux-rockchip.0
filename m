Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F111606E034
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 14:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zyFPb/UI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=R6w5U4kc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GtyA0fG5PLNJYYoScbg/tg4P1ZmTLUObJvc3apT4HEQ=; b=zyFPb/UIFttMkOzU+JxsWubb5q
	65hyzU5sXK0vdvTLoOMNWD08f7HDdK5izfxD4o9qADZkBNTgnOI3nFLMeHm8oy8JYl262sn1Jjz4J
	tBLnKDoCUmD2Hg02alU56Zdqg4EkmbZCQv4+532Q79SYMlO76jVb/r05pHOgEcMzor+Vs3U3zl3ih
	K/dB79UNGrPtmj3PdlyJQbmXaXBLF10PfDDq3Yy2GmWvzA8LsE0Y+4my/Ewz+WOR0LwoMSJLYqrfw
	OmQBZIqU8JyWY5z5Mb0CjLROmYC5TsNv6Koe8ZwiJnMUrb+5i5Sntgo+mJqZSg1LW1eXOAlMNCeNM
	NCzxYyow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCU-0000000GrP4-2CKk;
	Mon, 02 Nov 2026 14:39:54 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCQ-0000000GrLx-1pML
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 14:39:51 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-8256106635eso1418490a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 06:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793630389; x=1794235189; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mMX9dUF/iBpcP6akVjBzxM3wKkMEuggyI4vc+241Ru4=;
        b=R6w5U4kcqasfoMgokbk07NyhMTa1IAirUSBI70I+LG+8jjl+hUAODnfE8qsidC1SDI
         Qcx6SqO/vnMsRBDbUtEYW3PYVGvF1wTzydTFyHdAMUHX0OS5lIq32gzDLYQSA54MjG0+
         LG8YGeYSxWX3+SIXdptKbqNkV6Y6OWPeFe7sCTe4wXASRLgF8dN52o4shGOpQ6eN5+pB
         MbPYdySt0Z8+bRWklMXKG9az5liOWEHjbFMUm1GayZvHHC2mmSrMx0YZhnnzpszQGD9z
         nrkks4gAezf2UZLz64+0dMcv/2K0Q9Vu4Xxa6w+z8A2rVXnW48CfNxXPpfXLjjPkw5QP
         y7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793630389; x=1794235189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mMX9dUF/iBpcP6akVjBzxM3wKkMEuggyI4vc+241Ru4=;
        b=RN8TqyrNwstcBwi5KQ1dgGbdXDHhRepMyIe1VRjXXltHi2+xUAuxuKwCiFsxY1A1jz
         IRgFGAtEKUIWkfd+fXQv2HV8mFnlE/Q29TskYk/Kwtg0636WwaIXm/qor5ays7/7gp0u
         VDAe+dE92ZxaiZSpXvk0F93ZJUA5lD9Oh7M0/OD31oB3C6AFXhvMzmFvC5cslc4yRewU
         4OF8yfJBkyEAO/lBByJR0PUJJonfZIcqv/cLa8szoBaXw+HFbnvokmZO4j0JaZIj+7lt
         WpemDmmT3NCkPNSmncswbuhWcnsj0n74vahQt3U9WQHI+TJ4BhbkhS+KfrCGONKav+H1
         TIYw==
X-Gm-Message-State: AFq9FYIA4qDYlsEvo1vB9saoYy/McQlXHr739FL8YML2gLZ9M7qK0Brv
	DbkSUsn+22isbSeQcgXfWsScQ6vYqMx74DUOztDjcI9mdvKoXo398mhj8kTnngrW
X-Gm-Gg: AYBFou3wbkyfKehtHAnBUX973crPDxL8XmAexaNry1ovlftYd+jCvw8O4plLCeXwc0P
	idtwV2/RP5sxKfDNBxK+yn/SVnT20X8UWDs6O1w/4cuCgZ9VOCB1uvFFcSf2ABnteHDRg3QyoJM
	ES+eVfdXku9ftnulsfDOX9FSx/l+tqFI9eiCTQBVrk9HH29q8OuVqaqesNiveRTy1iGwsO5V5tn
	+4dX9c4dbxsZMBqVZpOw8sWbW7bIgMqfOLReTPaFiPNxCwQ3A2kyo0DQBxrpcN3r2D4eizTeX+S
	qeU3eyL7oQfBlMzOK/RzHASGjStNFZIXm59gpK7nP+wipjDVLfq1/iR1DVgJCQom4dzKGM5Rd0r
	j0Yuu3Bv3VK0j3FMwOYmDJlAhZvPt23s2Ug7ueYin/k2lKUkW/OuuaAJaXvI0jeshebhLLMixlN
	S0LIy0n7kyZvnJLYLia8R4gHizmMO8QFJ/zJ7YnLBctIOUreIdn8ueTV5w43y04LHC/2MGH1qdl
	Vqb+zt+kVWqVzP+IurVG2PstipwatRue4y/9owoWjTJtKpnR3dbiH7h27KYq1XqHGBdOLke5YKt
	A5WNjM+bl9Xl9dW8RgwDsc61OHfOkw==
X-Received: by 2002:a05:6830:4411:b0:83c:2a05:c65d with SMTP id 46e09a7af769-85d365f91a5mr8464513a34.18.1793630389255;
        Mon, 02 Nov 2026 06:39:49 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85d3545b875sm9516327a34.5.2026.11.02.06.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:39:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: [PATCH V2 3/4] power: supply: rk817-charger: Clear SYS_CAN_SD register by default
Date: Mon,  2 Nov 2026 08:39:41 -0600
Message-ID: <20261102143942.305293-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261102143942.305293-1-macroalpha82@gmail.com>
References: <20261102143942.305293-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_063950_487387_61AA862D 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

The BSP driver for the rk817 charger by default clears the SYS_CAN_SD.
This register tells the PMIC that the system voltage can be shut down in
battery off mode. Though the BSP driver also included a way to bypass
this behavior, no boards have been observed using the override.

When this register is not cleared, it can result in a persistent power
drain on certain devices while the device is off, as observed by users.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Suggested-by: Zetarancio <zetarancio@users.noreply.github.com>
---
 drivers/power/supply/rk817_charger.c | 9 +++++++++
 include/linux/mfd/rk808.h            | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 0c7287ad27c6..d7d367211d5e 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1166,6 +1166,15 @@ static int rk817_battery_init(struct rk817_charger *charger,
 	regmap_write_bits(rk808->regmap, RK817_PMIC_CHRG_IN, RK817_USB_ILIM_EN,
 			  (0x01 << 3));
 
+	/*
+	 * Do not shut down the system voltage in bat_off mode. The BSP driver
+	 * cleared this bit for all devices unless a specific device tree
+	 * parameter was used, however I have yet to see such parameter on any
+	 * device.
+	 */
+	regmap_clear_bits(rk808->regmap,
+			  RK817_PMIC_CHRG_TERM, RK817_SYS_CAN_SD);
+
 	return 0;
 }
 
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 72419d311626..2bc58de53d82 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -1297,6 +1297,7 @@ enum rk809_reg_id {
 #define RK817_USB_ILIM_EN		(0x01 << 3)
 #define RK817_USB_ILIM_SEL		(0x07 << 0)
 #define RK817_PMIC_CHRG_TERM		0xe6
+#define RK817_SYS_CAN_SD		(0x01 << 7)
 #define RK817_CHRG_TERM_ANA_DIG		(0x01 << 2)
 #define RK817_CHRG_TERM_ANA_SEL		(0x03 << 0)
 #define RK817_CHRG_EN			(0x01 << 6)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

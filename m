Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A908606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LjFzzy0v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NhVfM1RZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5kHBNKX/Y9BLSGEA5YyXNV3991rDht2SonvnkgN0DLg=; b=LjFzzy0vtSaK5BqMAJ3y+D5qco
	Mmhg8fXPLh0G31z6Dn7eHvd5hD3x4vAOqLar8G8ENPcAa0w0dNG6IHgq65MudUcKU7UlNjUDzAhda
	QUXbg7rgfoExWqtKZNsW2C4qOYqdMEwsHX0ZhObhaGtRL06W0oXIg9fpXsoXGbBvaeWJGxV1v47/m
	QhL9Z/oZWlr/G2Kei4BmH3pE7NwUQ9w/uQUNXqtQiQt0vPeyRYaKPHhFA//UaOR55NcsFOxa1Msxi
	utdJxqyygiUJJaHCbdRtYo2V5bRQ3LVzfzrAGfOoWJsnqJea16n+CNgscUITGTaxir8cw0yu/xsje
	NKeeB6pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN1-00000007hFB-37Es;
	Wed, 11 Nov 2026 20:56:39 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMz-00000007hCy-0zRT
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:38 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-55e02e89f78so1152880b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430596; x=1795035396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HjOEWycR68mGwy6ar+uiqBKxOWb6Jsg7X9ya8m5L0hY=;
        b=NhVfM1RZnmEqWanhkXsl4vuJQHlYybhi+/3lAn7/SaiLwYlHw986SG1Eh9+vFOR/KM
         SHlTjfghJEVTe/ytcZ59skUAtISnD91bPqEG6FcMnVFBmfunSXH4euB8BfWl0A4bGvnl
         BSLDplIfr5x5Cs8UVbNtcVIUrcnHW5z5EpyJttWAPBgfMwnY0ATiJWZBor710Tv8V/X/
         B/QfIh3H/nx/zep6ln6/6e7fdFBDpHof3ewL9Th6WfWSt2d9UKpFG0FOn6c1aV8jhsQC
         tCVJcrGadvMPvKE67z7fw/ZNRvG/oIyeHnr+L8ZXXHS+QFQbNON9NawJO3xe9Oghvz2g
         Zxcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430596; x=1795035396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HjOEWycR68mGwy6ar+uiqBKxOWb6Jsg7X9ya8m5L0hY=;
        b=xoTEz59AONxyrt0gUzoeGWuxB740y1hj78GsTB9SQmjJNlDxQ3ZqO5X30q+ko0QFu4
         wkOcyiaclr+LLWGtYLqP8NTMUkS8o/FRWickw3hHBUzwOx0IWxblTFfeaRae4SYkxkhZ
         sLBL8za+WD/IQTc2ObTRx6t9BvNBoZJNvABLH93w1ocAn/xA2zTXK1RJd3vblChirdnz
         oBMDkL44qTXagC6ShgveTX5KmW5TT8Th6g/0465ZHBSRM6AJM6eVHzytvDG+LhcAjfBR
         1uDRE+cg0/bcuoXEZ2Bm7889RVn5j3Y0PLmaRptVTLF/VAq/zKQFWivUnLDmQVfJ90vk
         05kg==
X-Gm-Message-State: APuU4Z8if2UWOCt2/ZxvRQuxIBzoXmzfMUxpbIEeqd1+UghhImKjTUgc
	o2DUb7yiDcX6DBz27h2v1RbX6QKtSEtCuqGBS9a3yrfPbeyaxbZUeiGir3Jm7Y7Z
X-Gm-Gg: AYBFou1RzF+dKNWB8Xgw3chgsp/2r6d9v9lDcfhE5z/mOFnUA7MmfXv8Qea//HjXr1y
	rb/eN+l8FP+lcZlNH9yelQj8XLHtT+aV/Grh40BYJfQRu/p62XFgJCYC8Fz+MVtEEjXGyQr8gCz
	ni7DxBasjgcgC8OjzV4wG8F3lSCD+VfNXTypwXkDpBhUP8fkUYvk41lTwcMvb/NQrYGu4YjJjJk
	BoTiqJIaV0lqHfU+4jKOdWALh6VmQG3M+rzsGr9Hduz8fBo9SGSQhvDlY6eLlSQTcjc8ObGxO05
	jsYqOHMli7i6hDiOEIG88B50yCboCX+57acw7ejrpjiXk1CzlNHGMK+zLI3et9QpVbWt+VfMsGj
	7oh55UQPEA2DWnR/RDGJsusqX4Xfke1rN70cEIIU/U9q5+GC5jCaJqpjpkhLVGxcuNWnoNHSU9S
	45aHJlS2fwnZmCf00NChP2qK8u9w6G5IWTzACfqQdTSbJdSVpZUIVwfT5rLHg0iC8+6BQIE6gDh
	YJdxDIFrzeSmtB9N9aQenUkm8EIl5XvkzFX8r7AJEuvyDrDT0ZfNm4xqRGHUc/7WwNV3aRqkbOi
	uMelepiHIUBKfMI9bg4sNGwDJKJVAA==
X-Received: by 2002:a05:6808:14c3:b0:568:2816:33bc with SMTP id 5614622812f47-56b98330b4amr3383178b6e.66.1794430596314;
        Wed, 11 Nov 2026 12:56:36 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:35 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH V4 5/7] power: supply: rk817-charger: Expose boot voltage and OCV values
Date: Wed, 11 Nov 2026 14:56:25 -0600
Message-ID: <20261111205627.56652-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125637_302877_5A3F52C3 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Expose PWRON_VOL as POWER_SUPPLY_PROP_VOLTAGE_BOOT and the current
rested pair as POWER_SUPPLY_PROP_VOLTAGE_OCV. The OCV value will
return -ENODATA while the battery is not resting.

Co-developed-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 5b53cf288fcf..d334941ade5c 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -583,6 +583,14 @@ static int rk817_bat_get_prop(struct power_supply *ps,
 	case POWER_SUPPLY_PROP_VOLTAGE_AVG:
 		val->intval = charger->volt_avg_uv;
 		break;
+	case POWER_SUPPLY_PROP_VOLTAGE_BOOT:
+		val->intval = charger->boot_voltage_uv;
+		break;
+	case POWER_SUPPLY_PROP_VOLTAGE_OCV:
+		if (!charger->relax_voltage_uv)
+			return -ENODATA;
+		val->intval = charger->relax_voltage_uv;
+		break;
 	case POWER_SUPPLY_PROP_CURRENT_AVG:
 		val->intval = charger->cur_avg_ua;
 		break;
@@ -721,6 +729,8 @@ static enum power_supply_property rk817_bat_props[] = {
 	POWER_SUPPLY_PROP_CHARGE_NOW,
 	POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX,
 	POWER_SUPPLY_PROP_VOLTAGE_AVG,
+	POWER_SUPPLY_PROP_VOLTAGE_BOOT,
+	POWER_SUPPLY_PROP_VOLTAGE_OCV,
 	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
 	POWER_SUPPLY_PROP_CURRENT_AVG,
 	POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN,
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

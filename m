Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0225606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MXmO20h7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=nesO+vrp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oR5HD4VF1ddIf+dbtvdldkWODzA/G5za8nMix9MqXhM=; b=MXmO20h7Pjebp3AsXkeFM/jCY7
	ilXvm/T08t7IkkSOXJOOi0a4u84dTcV9XaTokfOGzWLvymD/t5aB6C7SqIWEI+ZmwXfNc9PMyJo3h
	H59aMjvEKuIIFDOdtTFs7LezX54RrMw0yAPJVHpIE+pcw8p/L1qYDoIbcNniscMLJi5VRjt9W3STn
	2WM+GCAi2mmKI5fXd6p5jz4q3ZQJ47W9XqU1XJCfUAQxyuZz2hXbrvLj14hU50OgDqp84q2IterOE
	gahybgCmP7R1SICOUy1o/M21PzOhGv472AXXaxTwg6/FjLC496Asp9Xa9w2Tmy3eMBYnOz1eJepEh
	vr3xVqCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoR-000000031CT-2Gv2;
	Mon, 26 Oct 2026 17:48:47 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoN-00000003185-1wPr
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:44 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-4932b13c4ccso1683012fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036922; x=1793641722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N9zgC4CWhJeh+seFqtnSsLa173CrHxMnNgtBBhqSpwE=;
        b=nesO+vrpUpiT/Ch5nnNR100NepBQzefeJsxv0DyjY8ubpvV0n1dqhQAaVHGxg56nEa
         ESk3SUy+2514iJ+ZkNQxiRX98F8Nh26A1AOcRLGe8eVM2+VZqNzKc+lV/XtVQQdmptE8
         MXDiqDVY02z1FpgWy11QuS7iMo1McZ3kH1ybDUktBv2kbjiPBRu5mgATA+h2kRqTkVnQ
         gWtXkRSRmmjrAljZVyhn1xdAr33hEiLMWYe1DR6R2qiIm4B44WZCfy6yG1/y4yvyeLA+
         vHJMVOm877GJrJGYyP6l1mCVVjsDKvGjiWjadYvZ5J8UCZ10/kTJu0xk6rw1zD+0XehE
         3vNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036922; x=1793641722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=N9zgC4CWhJeh+seFqtnSsLa173CrHxMnNgtBBhqSpwE=;
        b=NOWynfZGdVs6qM44PlGQLgQIx60ATtaG40IXcRWIMSLLcbsD+d7+K25LIJsj3ulTo6
         rQ8cFQViR+s79lpYSnNZuYtxMFRaqpxR2hs3JJt/n3nJcYVRq862iylLn2ttpQ1WP5xb
         ffNvlphvGDeNpjbMR4/Oo0c09rAT32+64nYQbD0mEUmxp/RChLv1d5vdL0MpeTORO4JV
         77KMeMAW9zeQC5gxIMUr5kN+R9f4BpVi4w1g9x+4lNlVXF0tWy6hX8+OmuiNm1nci4Nt
         zSnet9vSLXz3JmREQajNX3IRdLQgZDc/UlL6qezMU/CqrWSn8c28Pcq8fugNIe8L3bnh
         YPuA==
X-Gm-Message-State: AFq9FYJCxsLfoQJAPFC7JOUprMWoeoBCrOc/OE3y20k/XFEipmfUltz1
	mjJQzCUHJrqPJJ0RBqpjf5RuLBIHlHQBAJhDBndaK75hnrjuZJ2C1cpOTnbsMEQI
X-Gm-Gg: AYBFou1Rr4e7dOBoVdU/qogtEqxKiPcdSHnmhMZWAYvxNgX9WX10rTZaj2WJ2Jz9rZw
	7SXlyvzYNz6XF5s324zJsN7BdQbGVWHOZ/vtmjQ048E6mrkjYnTjcTpel3jqYpH0iM5XGsB6DB8
	nYX6uxU+n4GubsiBb8BPKBv8zFxWeq//+vefEAAKlkwUBqu8VaC1Rq2Bir6TxmtYn1knhjUdQyr
	s1Pi6ZEUaFRNXrOyy/T+vwsdQM3NjEAgchyiZun+FKfQu60ZGI9jnFAor5/i0rLcYMtpW87yDbM
	m900fJGk+plthAg+H6rcxJk5O3+DH5nx8gv7ZKH5HZh+v7TZixRd31Hh5V7qQkUwBrV8lbTLGe8
	nuwh9GF3ta/TWuvEGTiS9+2BI1rFknkuEBZ2M/XT1OBxFJbomJe4fHNkZSDWL4nbeCrwSabTIyx
	6weq/FXbo7JIyFHdgl/pv2Pvv45GhciaudPyv+39yLOrvHmUdf2N7pxGxuukjko6x/Qf+G4TGbQ
	3oslcTq8Sz1ZaZ9afsgNlWf4UFFTk2O7xrhsNJWtQPPTvA7KqAeiDnBr2x7ImnaMgd5FVxIMod+
	lQgjwYd/uFbOMr1g27Wd9PY9ub2xBQ==
X-Received: by 2002:a05:6870:4ccc:b0:4a7:9509:a937 with SMTP id 586e51a60fabf-4a83f63d5d7mr4284004fac.56.1793036922304;
        Mon, 26 Oct 2026 10:48:42 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: [PATCH 5/5] power: supply: rk817-charger: Clear SYS_CAN_SD register by default
Date: Mon, 26 Oct 2026 12:48:34 -0500
Message-ID: <20261026174834.1652309-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026174834.1652309-1-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104843_871515_1B0DEA0C 
X-CRM114-Status: GOOD (  14.82  )
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

The BSP driver for the rk817 charger by default sets the SYS_CAN_SD
register unless a specific attribute is set in the device tree. This
register tells the PMIC that the system voltage can be shut down in
battery off mode.

Though the BSP sets this value by default, it also has a device tree
value to override it.

When this value is not set, it can result in a persistent power
drain while the device is off, as observed by users.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Suggested-by: Zetarancio <zetarancio@users.noreply.github.com>
---
 drivers/power/supply/rk817_charger.c | 9 +++++++++
 include/linux/mfd/rk808.h            | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index b6714d8e4fed..6971f572c68d 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1148,6 +1148,15 @@ static int rk817_battery_init(struct rk817_charger *charger,
 	regmap_write_bits(rk808->regmap, RK817_PMIC_CHRG_IN, RK817_USB_ILIM_EN,
 			  (0x01 << 3));
 
+	/*
+	 * Shutdown the system voltage in bat_off mode, unless
+	 * gate-function-disable is set.
+	 */
+	if (!device_property_read_bool(charger->dev,
+				       "rockchip,gate-function-disable"))
+		regmap_clear_bits(rk808->regmap,
+				  RK817_PMIC_CHRG_TERM, RK817_SYS_CAN_SD);
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

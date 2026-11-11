Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C998606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nNXxepmu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=utL8sZv8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JLZatnI9Q6qiVAXMhVFVCGoHW5IvSfP2/kOg20geZ1I=; b=nNXxepmuAOdKyDQxqBCqAM6Koy
	fBFNDxQNZeT22gfK5sLeHmAIoyt736PLnv6yELN3JxNMhHVXdZzdzaps03pc8nFIzx0ze3dUIRQus
	ohUlxucmBljfci9VNXNTzrC/0n25XTG8u60BicWa+2bmRFsvUKpk6uT41jgspbz3sHi/2kA6TdH6C
	sEALz8wTf4opgdhDXUzt4Hbu67y8YUX8M3iVW0OBclLhpZilT86f79M0rssJF+WTjDxEU4/XyHS3p
	w5wfrHSxvqvj3r2xnUz8A0z8SA1fn+5beMEnLga8ya7bZpmT/nTmMJ0nf7kjTcV1y9aZYLoVCegHq
	AMoRXdTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN5-00000007hJc-17DU;
	Wed, 11 Nov 2026 20:56:43 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN1-00000007hEB-1wND
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:41 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-53dda625f63so2324026b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430598; x=1795035398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dfuuvi8PqCWBIxnlWDIfk4bUIBmycxlNRhh1kkQb58s=;
        b=utL8sZv8Y1lSMOBkHC3nr3LsvoXVowe0waOr13tyUetYeG7ljKgFsn3F/TsZpvgjq3
         TOB03F6JykfDppy96Ez2OilKRE29O0cNR0CWp3FF13MrMThiOcIZ56GI6sy447Yngdaj
         cOXVq046h3lDHuAzu5jXXeRLODpES3Fa7ihIgR5uJtygRa+fUZZEnXOM2BJwNRS+4Cc6
         /XA+Si0qTSUhNAPhff1YAv5wxL8h0GT0y0zxaCS7cIfCmVutHFU4RP5gCFZpaSxwJlPH
         hJDAc6SA24j6MNPeE3Qx1l2ETLY7CS2x4MLv6N8OBNRYmxbcMkqrjOA4Uto3el2Q2z18
         uSYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430598; x=1795035398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Dfuuvi8PqCWBIxnlWDIfk4bUIBmycxlNRhh1kkQb58s=;
        b=IboL9doMt4HkQUh2Wv7X35W46CsYy6bHhHAxMWRpYz1QlSFlvp275/1sXBpUSu5KBs
         IE/z5qOvbXkExCIstsMsUa+S4+leJnv3Yivg3tAvTfpTvspek5DIC4U2BjvwacvKL2Ox
         Y29MMpUabWOuxBQT5c++VVX6v46aoDCj51aw5Rs5keXru8OwSYPrWVO1//aRLequv8Ga
         Y6slbVAk98w45Fjfhr0Nw5s8ONMTsGvVgm8bhNYt4FZrxRgdtHkZEtki/bvN0Kdc12Iw
         76YTFgC+mnHgrOGMmnN6RY88AFN8WFHmRNuNUGOhCRGDNjnDd3ucm7m7e/qWOGG/4zl6
         1Qxg==
X-Gm-Message-State: APuU4Z80eANT5H3DTxXzhWxMylGds3Xl6dD0TiP9R0RaSqitekFIda4l
	iCQOQLQHilZUGXRJPqdz8/G8CjC5HrcTswd1HXqfPWl/uw+govwgKwGIA8NyAOko
X-Gm-Gg: AYBFou1uC7c0ZZdCQnr7+Z2/N56p6F+wou5o0nIMboRQtbD5XaA9YJRoS2Po9QivbgX
	5VNYTvzOuWCNUoXmSONDcnSCPOk71NS9AOo22d/prK9yO07utcUe6ru/ubdYbDJ5jT4yw8rEvBS
	5GRrpMt51ya4paBTqE9H/MrXpJaP1gtUFziCSby8BAzmaj0QR/8NIbtyQyHdJwhoJdQ5ZyWe7WV
	nzEs3ZJkV/T4rp2DiJ1WqwqDtG29lOkiSnqC3c56ig6LLOM2nUN5nI3Peq4hGrwuZqR9qhkBGnz
	mS4VeLuM9RYqQrXT+/UJ/JNQGcXp5XiNVDW/jqLo4HlgDN8+B8uP/lqYRJO8ml6/7fkRVRD+YhQ
	IjqF4FtGxy+dOshNGvYH8o0hZuvAoktcNc81fuMsvcUrU5JJi2bHRUfQPD++513zgELbtK2a6yb
	eO8bfMrb73CcbPCaTk138jb4TujfJWUrgIl+/G1zuDlBsswTOIm9GOQoT6oEa8PmUKXVzfRgtLm
	Ri5/1qDrsaC4hquJvugqISGTYm+DWMKbLBIttvi4ufEhU6X2J/DSyj0jMDIKnh/mWSuMTRCGRUu
	O4pjFhpzb96HZ6E4b5P92MU3GpT2WzE=
X-Received: by 2002:a05:6808:c12a:b0:4f4:4eef:52cc with SMTP id 5614622812f47-56b97717f4emr3116599b6e.43.1794430594226;
        Wed, 11 Nov 2026 12:56:34 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:33 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/7] power: supply: rk817-charger: simplify re-initializing coulomb counter
Date: Wed, 11 Nov 2026 14:56:23 -0600
Message-ID: <20261111205627.56652-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125639_524000_E30EC122 
X-CRM114-Status: GOOD (  13.53  )
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

There are multiple places we re-initialize the coulomb counter. Create
a function to do this to make the code easier to read.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 44 +++++++++++++++-------------
 1 file changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 39c945622c4d..939d4fefff14 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -167,6 +167,20 @@ static int rk817_chg_cur_from_reg(u8 reg)
 	}
 }
 
+static int rk817_initialize_coulomb_counter(struct rk817_charger *charger,
+					    u32 charge_mah)
+{
+	int tmp = CHARGE_TO_ADC(charge_mah, charger->res_div);
+	u8 bulk_reg[4];
+	int ret;
+
+	put_unaligned_be32(tmp, bulk_reg);
+	ret = regmap_bulk_write(charger->rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
+				bulk_reg, 4);
+
+	return ret;
+}
+
 static void rk817_bat_calib_vol(struct rk817_charger *charger)
 {
 	uint32_t vcalib0 = 0;
@@ -242,6 +256,7 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 	struct rk808 *rk808 = charger->rk808;
 	int charge_now, charge_now_adc;
 	u8 bulk_reg[4];
+	int ret;
 
 	/* Don't do anything if there's no battery. */
 	if (!charger->battery_present)
@@ -281,11 +296,9 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 		 */
 
 		charger->soc = 100000;
-		charge_now_adc = CHARGE_TO_ADC(charger->fcc_mah,
-					       charger->res_div);
-		put_unaligned_be32(charge_now_adc, bulk_reg);
-		regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
-				  bulk_reg, 4);
+		ret = rk817_initialize_coulomb_counter(charger, charger->fcc_mah);
+		if (ret)
+			return ret;
 
 		charger->soc_cal = 1;
 		dev_dbg(charger->dev,
@@ -313,17 +326,9 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 			dev_dbg(charger->dev,
 				"Recalibrating coulomb counter to %d uah\n",
 				charge_now);
-			/*
-			 * Order of operations matters here to ensure we keep
-			 * enough precision until the last step to keep from
-			 * making needless updates to coulomb counter.
-			 */
-			charge_now_adc = CHARGE_TO_ADC(charger->fcc_mah,
-					 charger->res_div);
-			put_unaligned_be32(charge_now_adc, bulk_reg);
-			regmap_bulk_write(rk808->regmap,
-					  RK817_GAS_GAUGE_Q_INIT_H3,
-					  bulk_reg, 4);
+			ret = rk817_initialize_coulomb_counter(charger, charger->fcc_mah);
+			if (ret)
+				return ret;
 		}
 	}
 
@@ -846,11 +851,8 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 	boot_charge_mah = charger->soc * charger->fcc_mah / 100 / 1000;
 	if (boot_charge_mah > charger->fcc_mah)
 		boot_charge_mah = charger->fcc_mah;
-	tmp = CHARGE_TO_ADC(boot_charge_mah, charger->res_div);
-	put_unaligned_be32(tmp, bulk_reg);
-	ret = regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
-			  bulk_reg, 4);
-	if (ret < 0)
+	ret = rk817_initialize_coulomb_counter(charger, boot_charge_mah);
+	if (ret)
 		return ret;
 
 	/* Set QMAX value to max design capacity. */
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

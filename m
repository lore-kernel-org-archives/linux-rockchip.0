Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4413F606A31D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FsYWewiU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=RZCBomIu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=68QJg6bSf/OdoSjelJUVX9BQgPM6gbQqBeK6ZLbQlu0=; b=FsYWewiUdPJ9grAssBZj1fHSvR
	Sb3Yz4UBgU2EDdumk0JCpvplMwqI+k/MRM7BKhkpIkyLb5Or+TRo2dFVOEJsjT/VON4NviHoWwePg
	kk1IwGtU1CAmzOAR02oVL+0KW7Ylv3044u/FByMLLKOdQzSbgUWIiivlhWIYH9ujau+dT37hUvPf7
	YT4Mf2unaPFqcD/OtTz8EXpXM/oXdMq2b9+sBMJ919GebqEH4P4UXTWfjh8rNhrg2oUVg2CHrpqa3
	TPvFJ4lPsvjh1KztFOkPlAbDNW8r1pyjjdwK8OVi14w5sefQnLJZK3dB0SVRPtLi6d4D3dAlVL84N
	7d8YSF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoP-0000000319W-0R44;
	Mon, 26 Oct 2026 17:48:45 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoL-0000000316z-21om
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:42 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-6dd4f3f696aso1937801eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036920; x=1793641720; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=j6K6VKKr5G0aLKZ1oiFgfUauuoWvD3xUE8KiOwmhjtg=;
        b=RZCBomIu6OnYbvLdlDWyRabL0yHkGPEm6ON8yipv0MBsl4eLH8mIuRH7mguqj79IFL
         nkf+VdoXm+kh5PYzyXTUz08oYEeRqGkBQxArkL6JQ0x2CsRZkr2VhyxZ4iej4V0P61QZ
         PWOQ73G+HDYqKEdbVVTqp2u5Cm2MZ1GFaSwKHs6RrPHdtVFUlvtt/Vf+0WUQJECcsD5W
         xIjwNjGjHWijx8qFGgK/B9M78BrEC1baDPn1ySrqWcnsHaQiUoJjkHJwMDbUXFbR9wlF
         cY36bjpDbTi+WgV9yy8ixarV/bTId3xonSPRHL+qIM20/+aYojVBduJKvNDL5xyXBmtP
         Z71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036920; x=1793641720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=j6K6VKKr5G0aLKZ1oiFgfUauuoWvD3xUE8KiOwmhjtg=;
        b=Lq2Tz6t99Wyjqf/cqFaRu0CNy0eWlwKGmnLsgNgerHcQCyJ6bbdYvtnqfhnsn360TT
         F5qbmpamogfLRVTlxbxrRDw7C66zgCm43TN1R2aiaDEbHnz+9xj3oGLrO0AVmz/k404f
         KHyvVpuPhViMlB1orQmx7cXBz/c36R+wRK2C5YdvnKvlXQgIhTpZ/kyule0oOIwDVAbh
         ML0NLd4mszWYyu5BCWDS9F+/+fkkPMr5qhPEih0XsaLdyTZY0t5tiX/JXiKS8JUBvyid
         0Td9zWdiqhtvjdfCiALotKZOU6cNHtCDfD5beE8PlzhRw9hsCYccZvkzdiUth1T8NGap
         kxmg==
X-Gm-Message-State: AFq9FYJ5EhguBjx8AK3GTNWepEjjefQu7e/hkIacBonI/PHxqNXZlY+E
	ONE6G2jhUvCE/dhPZh6XrTf3kHWuqpXK3IU2OHJHpaz5WpSDAK92uyhl
X-Gm-Gg: AYBFou3aP3Jtoo7SJdxRivuZLJXNBWj8e74X0d23dSKv3Hr7PYLhbKguLJin40tzI+2
	l6ih5GHUGGePBCTcr/If8Gq7DEHLULetLys0RuLfHXJ52wPXT4hWiGcyqswjMB6Q4ppqgpoSnne
	RymYvCWDrBv/fZTD2cAGuphXkloXf6CFRhPT0JovbTwEf26NhkVVHT1NvPFxvllF+JEfyf+/4iX
	trMFjVFDRtpg6XduVKFJuaZfDEBYK9fh+ma7u4dxO26Zbj57HNBM9Fg2JAsxA+6XkbOF6wFNNve
	lYMUDsX6I1D+XoK1vo7qrgVW+wIcXn5vr/VtqRi9Z0ye17QnWdGet4Ppuy9P43CzZXB4M0Prz0y
	tVE059A7ATjxR/HHDz/gI1mp+4/eBrE5L/M87mVwzIAhn03jy5pv2N20o3KAxymEd0bWeUgteMk
	JFGHpmdqMTAs8YrjQPdKR6/0Lkt7n6o7DU38QMyG/AbmrbBlUR6ZbkoMyXhsV7uRLZ2qEJWHobm
	WuRShe2gcDm7XRcNnI8pSXu1svmVio6cdmHvpKl5HZDpoauWgj7fFT5
X-Received: by 2002:a05:6820:820:b0:6f5:467a:aec7 with SMTP id 006d021491bc7-70ba0dcd56cmr3790438eaf.30.1793036920211;
        Mon, 26 Oct 2026 10:48:40 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:39 -0700 (PDT)
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
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH 3/5] power: supply: rk817-charger: Correct the gauge across system sleep
Date: Mon, 26 Oct 2026 12:48:32 -0500
Message-ID: <20261026174834.1652309-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026174834.1652309-1-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104841_568779_100565BE 
X-CRM114-Status: GOOD (  26.58  )
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

The coulomb counter is erratic while the system sleeps. On an RG353M
charging at 1.4A, one 15 minute sleep registered 69% of the metered
charge and another 139%, and a charge that finished during sleep still
showed the pre-sleep percentage at wake. The signals that could correct
it are gone by the time the driver runs again: RELAX_STS clears as soon
as the wakeup load exceeds the relax threshold (300mA here, less than
an idle UI draws), and CHARGE_FINISH disappears while the charger
re-detects its input. The BSP driver corrects at resume from sleep time
times current and from the relax voltage. Do the same from evidence
that persists:

- At suspend, stamp boottime, charge, current and charging state, and
  clear the relax-updated flags.

- At resume, recompute the soc from the counter, capped at full. A
  relax pair with its flags set was latched during this sleep:
  recalibrate from it without demanding a live RELAX_STS. Otherwise,
  if the system slept charging, credit elapsed * current where the
  counter fell short, saturating at full, which also covers a charge
  that finished during sleep.

The constant-current estimate reads high across a CV taper; the cap
bounds it and the next rested pair corrects the remainder.

Log the counter at suspend and resume, the battery voltage and the
relax pair, so the path taken can be read from the log.

Suggested-by: Jacob Cook <jacobmcook1984@gmail.com>
Co-developed-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Assisted-by: Claude:claude-5-fable
---
 drivers/power/supply/rk817_charger.c | 109 +++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 5 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 50fbea298127..b6714d8e4fed 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -10,6 +10,7 @@
 
 #include <linux/unaligned.h>
 #include <linux/devm-helpers.h>
+#include <linux/math64.h>
 #include <linux/mfd/rk808.h>
 #include <linux/irq.h>
 #include <linux/of.h>
@@ -104,6 +105,12 @@ struct rk817_charger {
 	/* Retained for the ocv-capacity table the recalibration needs. */
 	struct power_supply_battery_info *bat_info;
 
+	/* Stamped at system suspend to correct the gauge across sleep. */
+	time64_t slp_boottime;
+	int slp_charge_uah;
+	int slp_cur_ua;
+	bool slp_charging;
+
 	/* Values updated periodically by driver for display. */
 	int charge_now_uah;
 	int volt_avg_uv;
@@ -355,14 +362,20 @@ static int rk817_bat_voltage_uv(struct rk817_charger *charger, unsigned int reg)
 /*
  * Voltage the gauge latched while the battery was resting. Relax mode only
  * samples below RELAX_THRE_CUR, so this is a true open circuit voltage with
- * no resistance term. Returns 0 unless the battery is resting now and the
- * latched pair is inside the pack's design range.
+ * no resistance term. The update flags are cleared at init and at suspend,
+ * so a pair with them set postdates the last of those; live_only also
+ * requires the battery to be resting now. Returns 0 if there is no usable
+ * pair inside the pack's design range.
  */
-static int rk817_bat_relax_voltage_uv(struct rk817_charger *charger)
+static int rk817_bat_relax_voltage_uv(struct rk817_charger *charger,
+				      bool live_only)
 {
-	unsigned int need = RK817_RELAX_STS | RK817_RELAX_VOL_UPD;
+	unsigned int need = RK817_RELAX_VOL_UPD;
 	int ret, sts, vol;
 
+	if (live_only)
+		need |= RK817_RELAX_STS;
+
 	ret = regmap_read(charger->rk808->regmap, RK817_GAS_GAUGE_GG_STS, &sts);
 	if (ret < 0 || (sts & need) != need)
 		return 0;
@@ -472,7 +485,7 @@ static void rk817_read_props(struct rk817_charger *charger)
 		charger->charger_input_volt_avg_uv = 0;
 	}
 
-	charger->relax_voltage_uv = rk817_bat_relax_voltage_uv(charger);
+	charger->relax_voltage_uv = rk817_bat_relax_voltage_uv(charger, true);
 
 	/* Calibrate battery capacity and soc. */
 	rk817_bat_calib_cap(charger);
@@ -1323,12 +1336,96 @@ static int rk817_charger_probe(struct platform_device *pdev)
 	return 0;
 }
 
+/*
+ * The coulomb counter is erratic while the system sleeps, and the signals
+ * that could correct it (a live relax status, a finished charge) are gone
+ * before the monitor runs again. Correct from what persists instead, as
+ * the BSP driver does.
+ */
+static void rk817_bat_sleep_adjust(struct rk817_charger *charger)
+{
+	struct rk808 *rk808 = charger->rk808;
+	time64_t elapsed = ktime_get_boottime_seconds() - charger->slp_boottime;
+	int expected_uah, moved_uah, charge_uah, credit_uah, tmp;
+	unsigned int sts;
+	u8 bulk_reg[4];
+
+	if (!charger->battery_present || elapsed <= 0)
+		return;
+
+	regmap_read(rk808->regmap, RK817_SYS_STS, &sts);
+	charger->plugged_in = (sts & RK817_PLUG_IN_STS);
+
+	/* Start from what the counter did during sleep, not the pre-sleep soc. */
+	regmap_bulk_read(rk808->regmap, RK817_GAS_GAUGE_Q_PRES_H3,
+			 bulk_reg, 4);
+	tmp = get_unaligned_be32(bulk_reg);
+	charge_uah = tmp > 0 ? ADC_TO_CHARGE_UAH(tmp, charger->res_div) : 0;
+	if (charge_uah > charger->fcc_mah * 1000)
+		charge_uah = charger->fcc_mah * 1000;
+	charger->soc = div_s64((s64)charge_uah * 100, charger->fcc_mah);
+
+	/* Flags were cleared at suspend: any pair now is from this sleep. */
+	charger->relax_voltage_uv = rk817_bat_relax_voltage_uv(charger, false);
+	dev_dbg(charger->dev,
+		"resume after %llds: counter %d uAh (%d at suspend), battery %d uV, relax %d uV\n",
+		elapsed, charge_uah, charger->slp_charge_uah,
+		rk817_bat_voltage_uv(charger, RK817_GAS_GAUGE_BAT_VOL_H),
+		charger->relax_voltage_uv);
+	if (charger->relax_voltage_uv) {
+		rk817_bat_ocv_recalibrate(charger);
+		return;
+	}
+
+	if (!charger->slp_charging || !charger->plugged_in)
+		return;
+
+	moved_uah = charge_uah - charger->slp_charge_uah;
+	expected_uah = div_s64((s64)charger->slp_cur_ua * elapsed, 3600);
+	credit_uah = expected_uah - moved_uah;
+
+	dev_info(charger->dev,
+		 "slept charging for %llds: counter moved %d of expected %d uAh\n",
+		 (long long)elapsed, moved_uah, expected_uah);
+
+	if (credit_uah <= 0)
+		return;
+
+	/*
+	 * Credit the shortfall, saturating at full - covers a charge that
+	 * terminated during sleep. A constant-current estimate reads high
+	 * across a taper; the cap bounds it, the next rested pair corrects
+	 * the rest.
+	 */
+	charge_uah += credit_uah;
+	if (charge_uah > charger->fcc_mah * 1000)
+		charge_uah = charger->fcc_mah * 1000;
+
+	charger->soc = div_s64((s64)charge_uah * 100, charger->fcc_mah);
+	tmp = CHARGE_TO_ADC(charge_uah / 1000, charger->res_div);
+	put_unaligned_be32(tmp, bulk_reg);
+	regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
+			  bulk_reg, 4);
+	rk817_record_battery_nvram_values(charger);
+}
+
 static int __maybe_unused rk817_suspend(struct device *dev)
 {
 	struct rk817_charger *charger = dev_get_drvdata(dev);
 
 	cancel_delayed_work_sync(&charger->work);
 
+	charger->slp_boottime = ktime_get_boottime_seconds();
+	charger->slp_charge_uah = charger->charge_now_uah;
+	charger->slp_cur_ua = abs(charger->cur_avg_ua);
+	charger->slp_charging = charger->plugged_in &&
+				(charger->charge_status == CC_OR_CV_CHRG ||
+				 charger->charge_status == TRICKLE_CHRG);
+
+	/* Any relax pair found at resume will postdate this suspend. */
+	regmap_write_bits(charger->rk808->regmap, RK817_GAS_GAUGE_GG_STS,
+			  RK817_RELAX_VOL_UPD, 0);
+
 	return 0;
 }
 
@@ -1337,6 +1434,8 @@ static int __maybe_unused rk817_resume(struct device *dev)
 
 	struct rk817_charger *charger = dev_get_drvdata(dev);
 
+	rk817_bat_sleep_adjust(charger);
+
 	/* force an immediate update */
 	mod_delayed_work(system_percpu_wq, &charger->work, 0);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

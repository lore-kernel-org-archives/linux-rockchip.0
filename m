Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9583E606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PcyTIVsy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rL6XY+4/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Of0dAGzQ8W1+MZgYKl6Yk+56PfQQgvFp7Bp5gd3hago=; b=PcyTIVsy4TAi4pdWCNms9kGceR
	IQjnJzucB1HJGUIU9u58M8ALX4Y1ObqhnjrK4Q1vrlUbj6S9neAWTj30aOY5IgeBDwEmaloAvzbSB
	aq0VzX/b/nUfZnq175RKkZ1Je0lxIWrUpJWG9nW8NCspdF2GnL46VBVVetiLjOv1ipKs8pE31czvL
	i5nQVbaBRR0NHy9dfDIQVxpjCJy5JtZsTxCQuvVkS0zCpbt1JKJTMXT679szw6znukgVZAbnqYwIq
	1YDZox/kFebTGlikLeFlEoa1B/ZrMA1Ck2sPSdZP+ykO0Pcl0SJmFoNbheKrZj52JSqIRGaLBB8En
	fS5XBang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpb-0000000109J-3HQx;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpX-0000000105D-3r9y
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:46 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-4af81963f35so424700b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236323; x=1794841123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rSrsBT8DtXeYVrPrRAzwZbFwulF6KZOD6D/rIsqOAoM=;
        b=rL6XY+4/WT2Bn9oL6kFeVRiOu9zEE9pNnRuPQfAZ4YpIjN+LdAh5k81JLPvblW4HHc
         jiNEE+jN1WGrhDxqLKUQ9g3zLK/+u01iuyh/RK9sbvepW/gjVE1Pw3F8p9DTQy/RDAbK
         4KfwElkWHadgpSGWVB4aG6GX9Sll1Iyc2YJ/TQETLMFmOkxS8AsPvfcum2b/U6RYD7tv
         FjxSLMR/RQmRM/KZ6dA99tIFZXc3cvWbCBTzqzWrY11kLoH1VRCe56RunvM1EIhn53P8
         6i9I5WsILFNgHOTKlzjiY5B0qlINyI7u9niX+YNMP4U7NmGVTntizAL6aeLk5qi7oscN
         Qv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236323; x=1794841123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rSrsBT8DtXeYVrPrRAzwZbFwulF6KZOD6D/rIsqOAoM=;
        b=Ms/xp5kpdsSR9PNJsoWf8dVaw26QZGyM0R7wucPR0jXrnZH3CEF11Dz3G1jNLMT5Vf
         j99otR/sf5c5DI+M/GjepVZ0E5/3qMm3iErdTvgcNksF62wZ0Y7AQa36SJx9slJmMj2a
         Fy9BogX1PfR80xNQdJ/j2KTm07w/gIAnXYOR7abhFb72yLJhldg3B/m0P8KReVzxATbq
         ud1ZVqxnesjR0NxWRoydxoHz/T7vhFOqoWHLgmyHV1XfGy8+QPDUWENkYARJ+id7sBb2
         oqk86DhbB6rZsVIzm4QNnOXcDanNTvGtjeFGcrUolWzC6DCkyB7Swwwu336fbrnS+eom
         MyQA==
X-Gm-Message-State: APuU4Z/Yz15OPIpCd1K8hhl9JzDClvTqCy0ZQFiF3SIzrbC6gOE7hfa9
	nYYZdtMg5W9ISvz9OTLlrVVtzHfh+K2UpN+ov9jaKeOjL2ZBIFK53zIIiJ9U3oct
X-Gm-Gg: AYBFou39bphNeBhNj2G8jGF7SYwwXpYlFAt9OO37lU8Q4aDaCr4jJ+3UKFswfsiytuJ
	RyerwBdh884wpcnGTg+79n/ODoo0DkVfI8nn2Og21EA7DKncwzPdvAOe1sVm1uEpK9y42/E3L6A
	4/90ehmlxpWszDiCxoLwE2xRKz0pgWZgZkbbSmood+dtq4zsmlH16O5X6q43NA/kRn337/b21OL
	4BHO+OIZZuWPwwTXMc6V87KWGUEqsNeVmHfZX4C8hILNphgdAL8m7TggXRUPwixSfnrJTlBWQka
	KS5CZ8P14fYXn/bbzMI9aRf0PrUTN+9p9zrzqdmgB+gujDxqPFW/4EmjMJ94qSzHasacRhtsdWP
	EVI9HN82Rp4kxiHv2qTVq1uqJ20t4ZpGfPuTHSIE1CC5Wl9Ow6ffDwzT86bUCJoFwqmjoJgJEro
	hbLe3XHnoPFtIEYcnjWdEkKsSawq5XduyCtDbpx1wHlA4TaZVq3I4NYAftetphqdSeYCGPRddkI
	ESlzAuZmnucReI+Z8C/ZemERC8e114DSshIYT3W22EXn2RKhiYnk4I0UVVbGObxIvzIzkvougF4
	15HPRkpcPQu6J6WwFdjWYuJdL20n4A==
X-Received: by 2002:a05:6808:1522:b0:4f4:d914:8603 with SMTP id 5614622812f47-568143a8343mr3216075b6e.15.1794236322638;
        Mon, 09 Nov 2026 06:58:42 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:41 -0800 (PST)
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
Subject: [PATCH V3 4/7] power: supply: rk817-charger: Resolve boot state of charge from coulomb counter
Date: Mon,  9 Nov 2026 08:58:30 -0600
Message-ID: <20261109145833.1363319-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065845_192482_5962082A 
X-CRM114-Status: GOOD (  37.44  )
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

The boot state of charge comes from PWRON_VOL when OFF_CNT reads three
or more and from the coulomb counter otherwise, and both fail in the
field.

PWRON_VOL is sampled at the power-on instant. A power-on caused by
plugging in a charger samples under charge current: on an RG353M it
read above the pack's maximum design voltage while the pack was at
74%. An RG DS was seen holding 2.63V in the register while running.
Either becomes a wrong percentage on every boot that reaches it.

A negative counter was clamped to zero and reported as 0%.

The counter itself keeps counting while the system is off: the same
RG353M, saved at 74% and charged for 1.5 hours powered off, booted
with the counter at full. The BSP driver relies on this: it reads
OFF_CNT into a flag it never uses, consults PWRON_VOL only when
BAT_CON marks a new battery, and adopts the counter when it diverges
from the saved capacity ("system halt last time").

Keep the PWRON_VOL lookup for the first boot, but "guess" the SoC on
boot based on available signals such as the stored NVRAM value, the
state of charge from the battery voltage (which would be high if
charging, or low if discharging, but based on testing within about
10% of the actual value), and the value reported by the gauge. Then,
periodically read the OCV value reported when it is available and
use that to adjust the gauge if it differs too much from what the
OCV says the state of charge should be. This combined with calibrating
to full when the battery stops charging while plugged in should give
us a better way to report an accurate value of the battery's SOC.

Log the counter, saved soc and battery voltage at boot, as the BSP logs
its saved and present capacity, so a counter that diverged from the
saved soc is visible. Report it when debugging is enabled so as to not
spam the dmesg log otherwise.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Co-developed-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 241 +++++++++++++++++++++------
 include/linux/mfd/rk808.h            |   2 +
 2 files changed, 190 insertions(+), 53 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 8843871948b9..fe2c949ac5a5 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -95,6 +95,15 @@ struct rk817_charger {
 	int bat_voltage_min_design_uv;
 	int bat_voltage_max_design_uv;
 
+	/* Battery voltage the PMIC sampled when the system powered on. */
+	int boot_voltage_uv;
+
+	/* Rested voltage the gauge latched, 0 if it took no usable pair. */
+	int relax_voltage_uv;
+
+	/* Retained for the ocv-capacity table the recalibration needs. */
+	struct power_supply_battery_info *bat_info;
+
 	/* Values updated periodically by driver for display. */
 	int charge_now_uah;
 	int volt_avg_uv;
@@ -337,6 +346,42 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 	return 0;
 }
 
+/* Calibrated microvolts from one of the gas gauge's 16 bit voltage registers. */
+static int rk817_bat_voltage_uv(struct rk817_charger *charger, unsigned int reg)
+{
+	u8 bulk_reg[2];
+
+	regmap_bulk_read(charger->rk808->regmap, reg, bulk_reg, 2);
+
+	return (charger->voltage_k * get_unaligned_be16(bulk_reg)) +
+		1000 * charger->voltage_b;
+}
+
+/*
+ * Voltage the gauge latched while the battery was resting. Relax mode only
+ * samples below RELAX_THRE_CUR, so this is a true open circuit voltage with
+ * no resistance term. Returns 0 unless the battery is resting now and the
+ * latched pair is inside the pack's design range.
+ */
+static int rk817_bat_relax_voltage_uv(struct rk817_charger *charger)
+{
+	unsigned int need = RK817_RELAX_STS | RK817_RELAX_VOL_UPD;
+	int ret, sts, vol;
+
+	ret = regmap_read(charger->rk808->regmap, RK817_GAS_GAUGE_GG_STS, &sts);
+	if (ret < 0 || (sts & need) != need)
+		return 0;
+
+	vol = max(rk817_bat_voltage_uv(charger, RK817_GAS_GAUGE_RELAX_VOL1_H),
+		  rk817_bat_voltage_uv(charger, RK817_GAS_GAUGE_RELAX_VOL2_H));
+
+	if (vol < charger->bat_voltage_min_design_uv ||
+	    vol > charger->bat_voltage_max_design_uv)
+		return 0;
+
+	return vol;
+}
+
 static void rk817_read_props(struct rk817_charger *charger)
 {
 	int tmp, reg;
@@ -372,11 +417,8 @@ static void rk817_read_props(struct rk817_charger *charger)
 	charger->soc = charger->charge_now_uah * 100 / charger->fcc_mah;
 
 	/* Update reported voltage. */
-	regmap_bulk_read(charger->rk808->regmap, RK817_GAS_GAUGE_BAT_VOL_H,
-			 bulk_reg, 2);
-	tmp = get_unaligned_be16(bulk_reg);
-	charger->volt_avg_uv = (charger->voltage_k * tmp) + 1000 *
-				charger->voltage_b;
+	charger->volt_avg_uv = rk817_bat_voltage_uv(charger,
+						    RK817_GAS_GAUGE_BAT_VOL_H);
 
 	/*
 	 * Update reported current. Note value from registers is a signed 16
@@ -435,6 +477,8 @@ static void rk817_read_props(struct rk817_charger *charger)
 		charger->charger_input_volt_avg_uv = 0;
 	}
 
+	charger->relax_voltage_uv = rk817_bat_relax_voltage_uv(charger);
+
 	/* Calibrate battery capacity and soc. */
 	rk817_bat_calib_cap(charger);
 }
@@ -751,15 +795,88 @@ static int rk817_read_battery_nvram_values(struct rk817_charger *charger)
 	return 0;
 }
 
+/*
+ * The relax pair is a true rested voltage: where it disagrees with the
+ * tracked soc by more than 5% (chosen arbitrarily), re-init the counter
+ * from it.
+ */
+static void rk817_bat_ocv_recalibrate(struct rk817_charger *charger)
+{
+	int ocv_soc;
+
+	if (!charger->battery_present)
+		return;
+
+	if (!charger->relax_voltage_uv)
+		return;
+
+	ocv_soc = power_supply_batinfo_ocv2cap(charger->bat_info,
+					       charger->relax_voltage_uv,
+					       20) * 1000;
+	if (ocv_soc < 0 || abs(ocv_soc - charger->soc) <= 5000)
+		return;
+
+	dev_dbg(charger->dev,
+		"OCV %duV disagrees with soc, recalibrating (%d -> %d)\n",
+		charger->relax_voltage_uv, charger->soc, ocv_soc);
+	charger->soc = ocv_soc;
+	rk817_initialize_coulumb_counter(charger,
+					 (ocv_soc * charger->fcc_mah) / 100000);
+	rk817_record_battery_nvram_values(charger);
+}
+
+/*
+ * Since we cannot perfectly control the bootloader, we cannot trust the
+ * POWERON_VOL value. Instead, we have to guess with what we have available;
+ * the state of charge saved to NVRAM, the SoC reported by the gauge, and
+ * a lookup of the battery voltage against the OCV table. None of these will
+ * give us a true value of the state of charge, but it should ensure what we
+ * report to userspace is "slightly correct" until we can get an OCV value or
+ * we hit the charge_term_current_ua where we can stop guessing. If we have
+ * only the NVRAM value and the SoC from the gauge, use the NVRAM value if
+ * it's within 10% of the gauge SoC, otherwise use the gauge SoC. If we have
+ * all 3 values, sort them and keep the middle value. Then, drop the first
+ * or 3rd value (whichever is further away) and average the remaining 2 values.
+ */
+static int rk817_select_boot_soc(struct rk817_charger *charger, int gauge_soc,
+				 int table_soc, int nvram_soc)
+{
+	int soc[3];
+
+	if (table_soc <= 0) {
+		if (abs(gauge_soc - nvram_soc) >= 10000)
+			return gauge_soc;
+		return nvram_soc;
+	}
+
+	/* Sort the values so we can drop the outlier */
+	soc[0] = gauge_soc;
+	soc[1] = table_soc;
+	soc[2] = nvram_soc;
+
+	if (soc[0] > soc[1])
+		swap(soc[0], soc[1]);
+	if (soc[1] > soc[2])
+		swap(soc[1], soc[2]);
+	if (soc[0] > soc[1])
+		swap(soc[0], soc[1]);
+
+	/* Drop whichever end is further from the middle and average the rest. */
+	if (soc[1] - soc[0] > soc[2] - soc[1])
+		return (soc[1] + soc[2]) / 2;
+
+	return (soc[0] + soc[1]) / 2;
+}
+
 static int
 rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 				struct power_supply_battery_info *bat_info)
 {
+	int ret, reg, tmp, off_cnt, bat_uv, boot_soc, table_soc;
 	struct rk808 *rk808 = charger->rk808;
-	u8 bulk_reg[4];
-	u32 boot_voltage, boot_charge_mah;
-	int ret, reg, off_time, tmp;
+	u32 boot_charge_mah;
 	bool first_boot;
+	u8 bulk_reg[4];
 
 	/*
 	 * Check if the battery is uninitalized. If it is, the coulomb counter
@@ -769,25 +886,22 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 	if (ret < 0)
 		return ret;
 	first_boot = reg & RK817_BAT_CON;
-	/*
-	 * If the battery is uninitialized, use the poweron voltage and an ocv
-	 * lookup to guess our charge. The number won't be very accurate until
-	 * we hit either our minimum voltage (0%) or full charge (100%).
-	 */
+
+	/* PWRON_VOL only refreshes on a real power-on; bound it to the pack. */
+	charger->boot_voltage_uv =
+		clamp(rk817_bat_voltage_uv(charger, RK817_GAS_GAUGE_PWRON_VOL_H),
+		      bat_info->voltage_min_design_uv,
+		      bat_info->voltage_max_design_uv);
+
 	if (first_boot) {
-		regmap_bulk_read(rk808->regmap, RK817_GAS_GAUGE_PWRON_VOL_H,
-				 bulk_reg, 2);
-		tmp = get_unaligned_be16(bulk_reg);
-		boot_voltage = (charger->voltage_k * tmp) +
-				1000 * charger->voltage_b;
 		/*
-		 * Since only implementation has no working thermistor, assume
-		 * 20C for OCV lookup. If lookup fails, report error with OCV
-		 * table.
+		 * Nothing has been saved yet, so estimate from the boot
+		 * voltage with an ocv lookup. Since only implementation has
+		 * no working thermistor, assume 20C for that lookup.
 		 */
 		charger->soc = power_supply_batinfo_ocv2cap(bat_info,
-							    boot_voltage,
-							    20) * 1000;
+						charger->boot_voltage_uv,
+						20) * 1000;
 		if (charger->soc < 0)
 			charger->soc = 0;
 
@@ -808,39 +922,45 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 		if (ret < 0)
 			return ret;
 
+		/*
+		 * The coulomb counter keeps counting while the system is off,
+		 * so take it, capped at full, unless it reads invalid; the
+		 * saved soc is then at most one update interval old. A counter
+		 * that is merely wrong is corrected by the next rested relax
+		 * pair.
+		 */
 		regmap_bulk_read(rk808->regmap, RK817_GAS_GAUGE_Q_PRES_H3,
 				 bulk_reg, 4);
 		tmp = get_unaligned_be32(bulk_reg);
-		if (tmp < 0)
-			tmp = 0;
-		boot_charge_mah = ADC_TO_CHARGE_UAH(tmp,
-						    charger->res_div) / 1000;
-		/*
-		 * Check if the coulomb counter has been off for more than 30
-		 * minutes as it tends to drift downward. If so, re-init soc
-		 * with the boot voltage instead. Note the unit values for the
-		 * OFF_CNT register appear to be in decaminutes and stops
-		 * counting at 2550 (0xFF) minutes. BSP kernel used OCV, but
-		 * for me occasionally that would show invalid values. Boot
-		 * voltage is only accurate for me on first poweron (not
-		 * reboots), but we shouldn't ever encounter an OFF_CNT more
-		 * than 0 on a reboot anyway.
-		 */
-		regmap_read(rk808->regmap, RK817_GAS_GAUGE_OFF_CNT, &off_time);
-		if (off_time >= 3) {
-			regmap_bulk_read(rk808->regmap,
-					 RK817_GAS_GAUGE_PWRON_VOL_H,
-					 bulk_reg, 2);
-			tmp = get_unaligned_be16(bulk_reg);
-			boot_voltage = (charger->voltage_k * tmp) +
-					1000 * charger->voltage_b;
-			charger->soc =
-				power_supply_batinfo_ocv2cap(bat_info,
-							     boot_voltage,
-							     20) * 1000;
+		regmap_read(rk808->regmap, RK817_GAS_GAUGE_OFF_CNT, &off_cnt);
+		bat_uv = rk817_bat_voltage_uv(charger, RK817_GAS_GAUGE_BAT_VOL_H);
+		dev_dbg(charger->dev,
+			"boot: counter %d uAh, saved soc %d, fcc %d mAh, battery %d uV, off_cnt %d\n",
+			tmp > 0 ? ADC_TO_CHARGE_UAH(tmp, charger->res_div) : 0,
+			charger->soc, charger->fcc_mah, bat_uv, off_cnt);
+		if (tmp > 0) {
+			boot_charge_mah = ADC_TO_CHARGE_UAH(tmp,
+							    charger->res_div) / 1000;
+			if (boot_charge_mah > charger->fcc_mah)
+				boot_charge_mah = charger->fcc_mah;
+			boot_soc = boot_charge_mah * 100000 / charger->fcc_mah;
+
+			/*
+			 * The gauge re-derives this count from its own ocv
+			 * model while the pack rests, so bound it with the ocv
+			 * table: under load the terminal voltage sits below the
+			 * open circuit voltage, making the table a floor, and
+			 * under charge above it, making it a ceiling on any
+			 * saved soc that would displace the counter.
+			 */
+			table_soc = power_supply_batinfo_ocv2cap(bat_info, bat_uv,
+								 20) * 1000;
+
+			charger->soc = rk817_select_boot_soc(charger, boot_soc,
+							     table_soc, charger->soc);
 		} else {
-			charger->soc = (boot_charge_mah * 1000 * 100 /
-					charger->fcc_mah);
+			dev_dbg(charger->dev,
+				"coulomb counter invalid, keeping saved soc\n");
 		}
 	}
 
@@ -1046,6 +1166,7 @@ static void rk817_charging_monitor(struct work_struct *work)
 	charger = container_of(work, struct rk817_charger, work.work);
 
 	rk817_read_props(charger);
+	rk817_bat_ocv_recalibrate(charger);
 
 	/* Run every 8 seconds like the BSP driver did. */
 	queue_delayed_work(system_percpu_wq, &charger->work, msecs_to_jiffies(8000));
@@ -1058,6 +1179,13 @@ static void rk817_cleanup_node(void *data)
 	of_node_put(node);
 }
 
+static void rk817_put_battery_info(void *data)
+{
+	struct rk817_charger *charger = data;
+
+	power_supply_put_battery_info(charger->bat_ps, charger->bat_info);
+}
+
 static int rk817_charger_probe(struct platform_device *pdev)
 {
 	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
@@ -1174,7 +1302,14 @@ static int rk817_charger_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	power_supply_put_battery_info(charger->bat_ps, bat_info);
+	/*
+	 * Keep the battery info: the periodic recalibration needs its
+	 * ocv-capacity table for as long as the driver is bound.
+	 */
+	charger->bat_info = bat_info;
+	ret = devm_add_action_or_reset(dev, rk817_put_battery_info, charger);
+	if (ret)
+		return ret;
 
 	plugin_irq = platform_get_irq(pdev, 0);
 	if (plugin_irq < 0)
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 7ffc904c864c..72419d311626 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -1211,6 +1211,8 @@ enum rk809_reg_id {
 
 #define RK817_GAS_GAUGE_RELAX_THRE_H	0x58
 #define RK817_GAS_GAUGE_RELAX_THRE_L	0x59
+#define RK817_GAS_GAUGE_RELAX_VOL1_H	0x5a
+#define RK817_GAS_GAUGE_RELAX_VOL2_H	0x5c
 #define RK817_GAS_GAUGE_OCV_THRE_VOL	0x62
 #define RK817_GAS_GAUGE_OCV_VOL_H	0x63
 #define RK817_GAS_GAUGE_OCV_VOL_L	0x64
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

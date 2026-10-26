Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E214A606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=s1MW3Bov;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Tk1Rqwmm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RtKvF04+LnWtzKKie7XZGr4ME1kzaO+CW478yiIiWGI=; b=s1MW3Bovoeakxi03XJjebLuAw9
	xaVZSTgLrON9wtIGPhG//rT3TSp37MRJBNoJGdinEA4L0ySPbOivIW3H9KbqYpb1T1P+4i79fPiVZ
	7xFvdneOmF314UgUnxheypf7I/aP3TMJ9F+ja7Dwkv1Ej6dcMx26MgcDD3Ssdj2rcmdXF8GCuId5r
	UcPrIDiJsardfGFa5uBpfFeJGIXR7C/mhyq/gBKgZxx9XDleMbYua2yWuPFbT1mAJeOuy/9/0oR+B
	VqC2SsqvUrpoeV0Jn4ZhOM8vn0yMU3bW1FXvQYpRDfU0PiT3dF1aAvlbUXyZwYOlaDeWCKr5ZstMT
	wvYYvWnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoO-0000000319K-3yUY;
	Mon, 26 Oct 2026 17:48:44 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoK-0000000316f-3H6a
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:42 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-6b8e2d8df4fso2239523eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036919; x=1793641719; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Gi9rVZ5J+AU6Vbn9lYKs/qifiOeHPtbMwpCRLQsEzvg=;
        b=Tk1RqwmmEGCy6sWbTN3HBqk3RcB6IxkaFZDXzEAsR3OB39Y7FKE9RuOf2LF/UVytJd
         WvX2FRHFMO9yHUMBPzvMk0xPC3YNU9UAdibnQtDIddCxx0WfDtVvCz164rvrNRi6K21/
         vJbJUqPfSPOtRgq4cyT/gDBtXoAMtes+j7qznT5f004FYsE640FaHDlGMnh8P5KdPZY9
         FQ07fRMZUzlFOb3hEWn7WHRSRwg+PL8OVl86ktf1zMe8adfUUn3tSUi4uupsNbFTF8Ej
         FSjTVOXA2HZkTxBQrzBOFx5m78aAhcdixPQfzDkpZxqmxyzy6Z/LxulVURZ5WpOawJd1
         dKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036919; x=1793641719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Gi9rVZ5J+AU6Vbn9lYKs/qifiOeHPtbMwpCRLQsEzvg=;
        b=h9vyZSPMOy1K6HghwDq87Vlaq/rbVnrZbBoLf+aHn5XStiRFRxdbWswSXbt50LXw/O
         VCbexReJDACP5W2C/oGq8PkQs35Kd219NuvxOg3F/4Gy4ubooXIdvAHy47SmY9TWw+O9
         TVi0s73vJDJkMgsq+RfmpLVlcTxqImSAbYgwi2xAhXzSvWvy5lH38jo14zww4ETJhjO2
         QkbdpLoWAKIVaEvPLe9dVg63GhYzJfb6m4MU0q4Y78ZqqVZJVOEeFcLZD082k/BGsRcI
         PpUtOfltou3nR9/ty8PvUXF4FaXk6xih8hkuFsNCDjHY0Ydy6ye73uXMNLai/n/d8qG8
         KRhQ==
X-Gm-Message-State: AFq9FYJFRJedrIFbDlrESVY9t/4pJSEIR8/eSKLMJYj4avgmrTOPoB3Y
	1/630DWsiwck2PnAdOwLuPGboIajuSiTNOCeAwHSORt7561xsn2VakIs
X-Gm-Gg: AYBFou0vPtb+BuLpD9qSxJOoYpKHGvwfBflqwGww37PJ29u2YYtauniGeLUuzlQ7UO+
	vfwGBgBWa8KlRTPSa+2IFMvicmwy4Se9OQzdUENHlqRIhv19M9diud3Iipd8X7R6V3/ZP9Ybra4
	P8Vpq7phOnAp05xvezznUeppJyWlNxOMN8NRVxZ9xhjmbquezBln8e7RLO0Crl0XQcKpqa4u7fN
	EgfF7jZ47chiy/q0qRuIFkpSJAVtDN/gZYqxr6m0ArSalt3TvYv3ZNKi4BeP9Ije6gmmCMO2uUl
	Oo5lpuLv5zs7nbgkbfKqYM38MzFp5BP/uoYDwJx7zxIKLEevv8mOXwisFyeGJX3z57v5uqv50D1
	3ypf00hW3SUvsgpcqdjTa2/QbyewCigiHCa4ciB3eNMHBz32BKzLFNgPBBaP9FUyJ4EVCWD6D3a
	xJ93yCUeRq6wst1NP9y0ZkgOhYi7ZgNEJD10hu8JbwjqKMSu4HpRM8tr29c3fVCYDPD4M1MkC1b
	ZWO1XuJIg94WnAXhTC66Vijwtn4MF0PuvqN6xRvzOGV4A2FdBLHRt+s
X-Received: by 2002:a05:6820:80a:b0:70a:4053:52dd with SMTP id 006d021491bc7-70ba0b2310cmr4200119eaf.12.1793036919230;
        Mon, 26 Oct 2026 10:48:39 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:38 -0700 (PDT)
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
Subject: [PATCH 2/5] power: supply: rk817-charger: Resolve boot state of charge from the coulomb counter
Date: Mon, 26 Oct 2026 12:48:31 -0500
Message-ID: <20261026174834.1652309-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026174834.1652309-1-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104840_874776_E980347D 
X-CRM114-Status: GOOD (  31.93  )
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

Do the same. Keep the PWRON_VOL lookup for the first boot. Otherwise
take the counter, capped at full, unless it reads zero or negative,
in which case keep the saved soc, which is at most one update
interval old. Then read the
relax voltage pair every update interval and, while the battery is
resting and the pair disagrees with the tracked soc by more than 5%,
re-init the counter from it. The pair is a true open circuit voltage,
so this corrects a counter that is wrong by any amount, and it is the
mechanism the BSP driver uses at resume.

Expose PWRON_VOL as POWER_SUPPLY_PROP_VOLTAGE_BOOT and the current
rested pair as POWER_SUPPLY_PROP_VOLTAGE_OCV, -ENODATA while the
battery is not resting.

Log the counter, saved soc and battery voltage at boot, as the BSP logs
its saved and present capacity, so a counter that diverged from the
saved soc is visible.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Suggested-by: Jacob Cook <jacobmcook1984@gmail.com>
Co-developed-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Assisted-by: Claude:claude-5-fable
---
 drivers/power/supply/rk817_charger.c | 222 ++++++++++++++++++++-------
 include/linux/mfd/rk808.h            |   2 +
 2 files changed, 171 insertions(+), 53 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 86da0462fb59..50fbea298127 100644
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
@@ -332,6 +341,42 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
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
@@ -367,11 +412,8 @@ static void rk817_read_props(struct rk817_charger *charger)
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
@@ -430,6 +472,8 @@ static void rk817_read_props(struct rk817_charger *charger)
 		charger->charger_input_volt_avg_uv = 0;
 	}
 
+	charger->relax_voltage_uv = rk817_bat_relax_voltage_uv(charger);
+
 	/* Calibrate battery capacity and soc. */
 	rk817_bat_calib_cap(charger);
 }
@@ -516,6 +560,14 @@ static int rk817_bat_get_prop(struct power_supply *ps,
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
@@ -654,6 +706,8 @@ static enum power_supply_property rk817_bat_props[] = {
 	POWER_SUPPLY_PROP_CHARGE_NOW,
 	POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX,
 	POWER_SUPPLY_PROP_VOLTAGE_AVG,
+	POWER_SUPPLY_PROP_VOLTAGE_BOOT,
+	POWER_SUPPLY_PROP_VOLTAGE_OCV,
 	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
 	POWER_SUPPLY_PROP_CURRENT_AVG,
 	POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN,
@@ -746,15 +800,50 @@ static int rk817_read_battery_nvram_values(struct rk817_charger *charger)
 	return 0;
 }
 
+/*
+ * The relax pair is a true rested voltage: where it disagrees with the
+ * tracked soc by more than 5% (chosen arbitrarily), re-init the counter
+ * from it.
+ */
+static void rk817_bat_ocv_recalibrate(struct rk817_charger *charger)
+{
+	struct rk808 *rk808 = charger->rk808;
+	int ocv_soc, charge_now_adc;
+	u8 bulk_reg[4];
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
+	charge_now_adc = CHARGE_TO_ADC(ocv_soc * charger->fcc_mah / 100000,
+				       charger->res_div);
+	put_unaligned_be32(charge_now_adc, bulk_reg);
+	regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
+			  bulk_reg, 4);
+	rk817_record_battery_nvram_values(charger);
+}
+
 static int
 rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 				struct power_supply_battery_info *bat_info)
 {
 	struct rk808 *rk808 = charger->rk808;
+	u32 boot_charge_mah;
+	int ret, reg, tmp, off_cnt, bat_uv, boot_soc, table_soc;
+	bool first_boot, keep_saved;
 	u8 bulk_reg[4];
-	u32 boot_voltage, boot_charge_mah;
-	int ret, reg, off_time, tmp;
-	bool first_boot;
 
 	/*
 	 * Check if the battery is uninitalized. If it is, the columb counter
@@ -764,25 +853,22 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
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
 
@@ -803,39 +889,54 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
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
-		 * Check if the columb counter has been off for more than 30
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
+			if (charger->plugged_in)
+				keep_saved = boot_soc < charger->soc - 10000 &&
+					     charger->soc <= table_soc + 10000;
+			else
+				keep_saved = boot_soc < table_soc - 10000;
+
+			if (keep_saved)
+				dev_dbg(charger->dev,
+					"counter %d, voltage allows %d, keeping saved soc %d\n",
+					boot_soc, table_soc, charger->soc);
+			else
+				charger->soc = boot_soc;
 		} else {
-			charger->soc = (boot_charge_mah * 1000 * 100 /
-					charger->fcc_mah);
+			dev_dbg(charger->dev,
+				"coulomb counter invalid, keeping saved soc\n");
 		}
 	}
 
@@ -1044,6 +1145,7 @@ static void rk817_charging_monitor(struct work_struct *work)
 	charger = container_of(work, struct rk817_charger, work.work);
 
 	rk817_read_props(charger);
+	rk817_bat_ocv_recalibrate(charger);
 
 	/* Run every 8 seconds like the BSP driver did. */
 	queue_delayed_work(system_percpu_wq, &charger->work, msecs_to_jiffies(8000));
@@ -1056,6 +1158,13 @@ static void rk817_cleanup_node(void *data)
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
@@ -1172,7 +1281,14 @@ static int rk817_charger_probe(struct platform_device *pdev)
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

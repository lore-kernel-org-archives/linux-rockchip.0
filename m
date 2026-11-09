Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14FA606A330
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z2CmLZwr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ykEiWyM/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HAY5bBSq+fW09naRpBE0OL1b20zQAV9pujZNb+Ho39A=; b=Z2CmLZwrJuXKghLdVLNnoxTCkO
	gs1HM66rKruGB1pDyBThAlisWzKJuQ9MZsXUlcGGpXnQqX3/Roxzi9xyqddbpNDB1es+VUgOe3OM0
	orl7q0cKmllHPmDcpotXuNjbWbbNnrG6ej7hr2POkOAyXstO4+fGbGBq9JtUXgCw+IOR4MKsNIvIR
	E5k0rPeQDGcxRUQ8PkrcEx6r4bZIL/woiXy7ZSNm8qCfcSKBenrog5DWHPpLm8jF7GWUm/Eqrx+/N
	p4W9KYjqmVVHENCkw1Q3yNipN50KTTI+8ghUdItfEsQaorJWF4XtCR6TqaZqfUecZGGNxx2tBvkob
	iAYuUOiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpb-0000000109l-3mcm;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpY-0000000105E-1QGN
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:46 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-53ec92375d2so353713b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236323; x=1794841123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HOe3P3bdXfzRt/rk1PMSRuU3ijfiEPXGoVY8shAg4P4=;
        b=ykEiWyM/dR/gfn85DjsbIZNAs0oNrvE5E0AjzX+/AcLYMSmMz4HXLuUpox1wu327qF
         wgauJF2HVyVYvUml0g9ME2wY9051+Fi7RMlwH6plVGiBEthev+G2lRuGXpFkBiApbNS1
         W5gENX+XDAuCtj8uO/V8gqhdYuQFKvSwOCpCcHyyyO1Xc8yqHqMHc47PMruFQaG/0vMT
         2WqcnG5QPGX6TBq0qEVK4gzO60RscUBJM0o3taeCDl2bxcF3MEHUJTDRY6B7cxtpiBDx
         Ie2Qot1GaTgkj9mOspo0bqb8yUVAkun7fNnCevr4nTYhi3hKCoGQ1Eh4BNTPZnuYl+lV
         24PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236323; x=1794841123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HOe3P3bdXfzRt/rk1PMSRuU3ijfiEPXGoVY8shAg4P4=;
        b=q+kXnrFBZ1vU9QP6Ly7+jxjE5D4yiUtbgmjcd2J9wYEPnDA3sUGf4B6efunFKvOsB0
         vhSVfVKK+1qkLCwYa90G43ls6N2KDPpItWH670l1ih/5gzUH536DsoCwIK6etArTmkJQ
         NGmbkEjHvti0UIelOrIy4h4cqpbQY5lCxxKGzXxzZDflfw+HB8/owb28eAOFxtxE7Abm
         qV+poRTyQcPk90WovKvDwANn9fhwodC3EQmTDKV1P30DGmbnS3tN+oHwERlqLcq2YXCv
         rJ+E5V0+SnvdVqXANzWQ1Ak3fRW5s+sIHKx/jCNa1qluYWqAwbDnQjHXbqUm757qJgSy
         SSfA==
X-Gm-Message-State: APuU4Z+O0SjkEOcLRj+kAYKyZf8yTslmDooZMpmYi0rLPS3x4RWWUe2w
	30TijfyrjNdk8OWR6ThsagBruSJghYt5X+M8CiS1j49wRcX1I6qEbilZYU+tu2dr
X-Gm-Gg: AYBFou1iEYtsT9LmJ2KRF/Vjm8H+osiET3L+2dWDPB1fpJ/KY5bTWQezsQtsE+Px+aF
	agWf8bq8U5w9v01vo+F1ddhJ/hOym8ylJvT/N99F9Ln6C2DsgbX10jmcIa26bKnifnHkEGtQCWd
	4Ioic1jqcwg1WtFONTpAxNgleKh1FYpTJEKi2XiOrWSSnb+aa3LGVWnxj09WliBqMrgj0Emj/xk
	oqeB/m8sK+kfW5e1boYAWp9+qjqRUuxGOLR70ln+OjalyMzJbK3Nxc6t+4XXxBBQRONoT24rwtj
	Gzv9lS5wj/CdY5GPLi0Vv+Azyt8KYhmR8F8eTaNg7ojtPO1Nd+/f/fGKNKb8r6cZbFW6NMg7M6X
	xguw0YlYpCX4ut94bSAtTl6FdQb9g66AhyC4OFzKBgEWX8OktG+xX7ndm3DO1tgaNweesKztDDD
	H5iQoCFJI1NvNxheAZEui8e5xE9Tn8bdHjY77MtHPleyXBK9Xf8vfYsOtm/i9t23Bw0sQJ4TuDJ
	ZRCUJrgLiFt+n0Jj5TRv4rVb7fAEC9weHR4/vtHo7JH2v1yKQYURNwtjZ2JiNzPH4IVyYK0ogmK
	vrj3TEp6LqjJ5/491I8KwiuppajnGQ==
X-Received: by 2002:a05:6808:3c48:b0:540:5827:6d8a with SMTP id 5614622812f47-5681442f9aamr2752959b6e.66.1794236323292;
        Mon, 09 Nov 2026 06:58:43 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:42 -0800 (PST)
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
Subject: [PATCH V3 5/7] power: supply: rk817-charger: Expose boot voltage and OCV values
Date: Mon,  9 Nov 2026 08:58:31 -0600
Message-ID: <20261109145833.1363319-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065845_232637_7698A1EE 
X-CRM114-Status: GOOD (  10.01  )
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
index fe2c949ac5a5..ede89d84ab0e 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -565,6 +565,14 @@ static int rk817_bat_get_prop(struct power_supply *ps,
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
@@ -703,6 +711,8 @@ static enum power_supply_property rk817_bat_props[] = {
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

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC96606A331
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ptNDqWqJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=bK2CvIZY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=QXnxVgSywrIc/8iPaHEmRF1/AeJQWJ3SD4p9yEKva/o=; b=ptNDqWqJorCi212DDYdVBtjSje
	3TcG8wnf5RXLoFdA2o0lAVnj4e1Gura/4vc5VGcDoZg15+oLbnYzWZPqZUxQ0bFUm5+dXqNnG3HQs
	W/f6Gi045x+fItfUZMdGo6T672WasnTjxJVJudTvQzFgyeDtygLkTzA3BgBr20bPsb1OSWa/P/ePy
	DRZpbz3O4gnIW7e7VaaFMQ5yBNKxLDEf9O7TXDlmiUx9dPPfgMTbCSvk0ojkG3k1GYpNTT0CtMQUT
	rwyYTFhZWisyaPWi3SGPAbj/uqZVZO+m/68xTHqqOYU6ymW10HVUn1dc2e043eQbNH7Q30fxwZ1L4
	8NNbJWbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMy-00000007hCi-2193;
	Wed, 11 Nov 2026 20:56:36 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMv-00000007hBK-02qZ
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:34 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-4f488ba6e90so1339422b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430591; x=1795035391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=T17Fr+e+17o1j7Dkt/Qb3JOQLQzRIyBH08kPjcz8Hbo=;
        b=bK2CvIZY9lhrLdyWUdXNyzEvCzsDb9iLCNlXT4LY6lsnNJxaPZvU48zkxSrgl8CvFN
         MhlSEHI7+9MInLq4m31LV2O7TTRDjJKDFlcfx6MjLvP5xi3P9AZLIII0SVp+iFcN6Wly
         9hZ3mgR6okPoxlUt86R13A+e/UzQ75UglZwy87YGroNjmFrgB3i7YbuGfHtxMUI6riv+
         C1IBxQM1KC7DSEwj2qUI2MVuZWjy3Kfa46K7ypDz+69CeoU3E67446aBmmIeMcQUL/zc
         34jgOdmcoS7oKxdgTfRUEcTCf/eRJcpsxga2Ahg12zc8lVtIP+Z7Letk9/jLcU0Uq9uV
         MNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430592; x=1795035392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=T17Fr+e+17o1j7Dkt/Qb3JOQLQzRIyBH08kPjcz8Hbo=;
        b=QLviArDDuim5pi9eJnFYwJIrPY6m/uFNeM7ltCvAxLj2GC/lqUXBSCdNzPqS9pRaHL
         /CU41Xw91dWhGaxudcasUsa+1uL10pFntzFZrmsVVN4Glmp+6qp6tQYFfUUj9gsE5oE4
         832YVbnMzC0UtIl7WjEWGxX/GrFtBRj47Gpu/5w474WsdSQOAIcoNaaOeCpdnuCPFC0U
         Q5IJuRF8/Hnz9XPPw2w5lnadgTdoJvXOAW1F+4XM2Ml5j0dowvTUC2L2m1dKMZ3KEWc5
         8yU0KU53Vnf/6zAYHCcHf643byF3LgXvek6ExgbvqHdQfYg3NA1GVjRsFr1iqZyuE9SP
         W1wQ==
X-Gm-Message-State: APuU4Z9J5/0zdqZTTo2IVi8I8DFuPLdRlvsvybWV+iGWHYUIaSPJw4h9
	WCkT96xjLIEuU2CvRNNWdeeAhzcn7InK7OUm9L1ZmPVhvzNLiWcV6zSR3T8LvhwG
X-Gm-Gg: AYBFou1qNYv2AF3fArPSsC4W9UQBvDwOrA2T0nTcWmHzCJYBKk/nMhy9nP4H4fHuFjz
	BrRuo4MipkIJPzXGkV95wL6aMYd9zOCNYRvN3F2LZQJc7/WwTaBFRFjaiXTKDoSRh65I56CDs9/
	tb5Y0eQpDGjsUCrD8uKxDIAysvEOJ4xySA4RZbdMafhuh+eWwAs7DACZBoLyD03aWIZkZ0RToKC
	/0ehtR6482Im9wEqrRsnIitDEuPuTRl4dbQEl5/b55jxQzGrdjdGGoGLPZ+KVzVOnrLpgNd8WtK
	JyHpIq0XkV2ko+qOq7BmQMrGfiGy9Txr6up3Vqlx6+Qj1KFQj0pHF0eDXS0uSpD/5H8tWx9flIG
	hdkgRJngMrSvwZ4B4xFQQ8bthTCBh+mAo7x6HkrRloDy+bGcUP2X8DsBt6SDFk6uzQD2kwnKUbh
	H0n0IzSiwaEDjvlOcRlJFtz5orFTasEJtlAeKiRsWV33CdbmHYvl2yqr7oiGDL9r2BirUMidMZo
	niTmUg64utv/y8B+I2pcuZxtTgTaWU+VoSVasHC09kPJNaIIzLs5xzz067zKxu8DcD3INryMFDi
	t1A314WLa36hZIKJNniPfG+L6D2ddjZo8TXyODIh0F80QUCOLsGk
X-Received: by 2002:a05:6808:4f06:b0:4e4:627a:e094 with SMTP id 5614622812f47-56b96194399mr3306216b6e.11.1794430591483;
        Wed, 11 Nov 2026 12:56:31 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:30 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/7] Fix Incorrect State of Charge for RK817
Date: Wed, 11 Nov 2026 14:56:20 -0600
Message-ID: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125633_060495_E2A0B730 
X-CRM114-Status: GOOD (  26.11  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Users of the popular firmware RockNIX had identified a few bugs with
accurately displaying the correct state of charge for RK817 battery
devices. With the help of one user analyzing the code with Claude
they were able to identify a few potential bugs along with potential
solutions which I was then able to verify. These bugs are as follows:

1) Incorrectly clamping a value with a max of 10000 instead of 100000.
This bug caused the state of charge to sometimes read as 10% instead
of 100% as it should have.

2) Using the boot_voltage value to calibrate the battery in scenarios
where it could not be trusted. The boot_voltage register populates
immediately at power-on, and the driver would check if this value
was older than 30 minutes before using it. Unfortunately when combined
with the default behavior of the bootloader to turn the device off
when plugged in (requiring a user to explicitly power the device on)
the boot_voltage and boot_timer values were wrong. The boot voltage
would not account for any voltage added while the device was off,
and the boot_counter that tracks the time the device was off would
be reset. To fix this we changed the behavior to (outside of first-boot
scenarios) use a value saved to NVRAM, the value from the coulomb
counter directly, and an OCV lookup from the live battery voltage,
and then using those values provide an initial "guess" of the state
of charge and recalibrate with the OCV voltage once it is available.

Included in this series is another fix that would cause the battery
to drain while the system was shut down. This patch replicates the
Rockchip BSP driver to clear a shutdown register. Unlike the BSP there
is no behavior to bypass this since no boards have yet been observed
using the SYS_CAN_SD bypass on the BSP kernel.

Lastly, it has come to my attention that I misspelled "coulomb"
throughout the driver, I have included a patch to fix that.

Changes Since V3:
 - A few bugs pointed out by Sashiko bot were fixed.
 - Corrected spelling of coulomb in new function for resetting counter,
   after Sashiko pointed out I made the same mistake I just fixed in a
   prior series. Also corrected variable name to the right units.
 - Updated rk817_bat_voltage_uv() function to check for
   regmap_bulk_read success. If it fails, we return the error and then
   check later for voltage values less than 0 and treat them
   appropriately.
 - Change logic so an SoC of 0 is handled correctly when looking up
   values from the OCV table while selecting the boot SoC.

Changes Since V2:
 - Added a patch to correct the spelling of "coulomb".
 - Split off creating a new coulomb counter function into another
   patch.
 - Split off exposing the boot voltage and OCV values into another
   patch.
 - The code should be identical for series v3 as it was for series v2,
   all that changed was the spelling of coulomb and splitting one patch
   into 3. I'm keeping the ack from v2 since the code has not changed.

Changes Since V1:
 - Dropped the sleep fixes, as I would like to test them a bit more
   extensively first.
 - Dropped the devicetree parameter, as since no boards have *yet*
   needed to alter the default behavior there's no need for it.
 - Changed the behavior of how we select the initial SOC and made
   it its own function to ease in code readibility. This new method
   was tested with various boot scenarios. The average error was less
   than 5%, and in a worst case scenario where the device was
   discharged to 0%, then left to charge at the bootloader the device
   over-reported its state of charge by about 10%. When this occurred
   the device reported its SOC as 100% but that it was charging, which
   was corrected by the new OCV logic that kicked in once charging
   completed.
 - Scrapped the more complicated sleep fix in favor of simply telling
   the battery to recalibrate at full after suspend, in case of a
   counting anomaly.

Chris Morgan (7):
  power: supply: rk817-charger: correct spelling of coulomb
  power: supply: rk817-charger: Fix NVRAM SoC value
  power: supply: rk817-charger: simplify re-initializing coulomb counter
  power: supply: rk817-charger: Resolve boot state of charge from
    coulomb counter
  power: supply: rk817-charger: Expose boot voltage and OCV values
  power: supply: rk817-charger: Clear SYS_CAN_SD reg by default
  power: supply: rk817-charger: Clear full charge cal on resume

 drivers/power/supply/rk817_charger.c | 350 ++++++++++++++++++++-------
 include/linux/mfd/rk808.h            |   3 +
 2 files changed, 268 insertions(+), 85 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

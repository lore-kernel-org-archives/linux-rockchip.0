Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0752606A322
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G5RyNWFQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WKh8kKrx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=h7EZA38URqpm3Mq1RQw3YR/elX+fgAuHvbbKwsUxJHs=; b=G5RyNWFQvtPUi7nhdzUZfXJWCd
	CzcoQJLNAXy6qJ6yeXecvonRq9wkXMk4qnkdnN7vVEEvZAGcN1guO7SPACAmdMoIsppsN2n+n89KJ
	phm+c7AVfE5JNfYHRBWZO9aEm8wc6QRq1tyoltKkuoYbpf6X34llhNSYTuiCYvmgHs6993Dw1XnrY
	aTtnBoE76b1aowYtqnXzNKZOT6wBTHnQzzpEXkogpOUINoBEx288UlmKR85ASU9zxGn+MuUintJuc
	iqLZ62pFNlXVNnHI2hay8EB55b0N9nZ8WVWU2JHbdtRiv9qCh3TJf6PmpjdfNV87gsPgITOLLNl70
	PrLnCRtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpZ-0000000105F-0ijk;
	Mon, 09 Nov 2026 14:58:45 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpU-00000001045-2ZCv
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:41 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-48ed0b68895so579169fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236319; x=1794841119; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=seKl/U/n6NYOsgLq7EY8yxXTtms+ghjcRgX+g6eIMn4=;
        b=WKh8kKrxxUSdJ8bzAdgdBzF3PbSB0SnXmDkLcMUkW8gHMkK47uJ6Ow7TK00RKfBPm9
         5L7iafhocVM3diy5YXf+xzxRGmxusFJiyLIUikneoLfoBqYa/vjeCrSO7xSm9SAVfCpI
         zizFKKrfeBThhCLucRk6pCXq31eJNNuZoFSB11evpjQjFQA519oE5jNbMNRCIRgC7tHI
         fNc5tV3R9NNgme/rwHBj+7lKMfamaFBK7/aAPvSGtmWK13pHqhzi29Pt9tTI4cVYfVp2
         AUTw/PiYdD6QZkF9xJclPLnM5WQjuhADO/pcNCKpGE6bAsD75joTY8EwaeUDs8DPyADX
         rJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236319; x=1794841119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=seKl/U/n6NYOsgLq7EY8yxXTtms+ghjcRgX+g6eIMn4=;
        b=mcEqZ0GHNTr44fpXbpDmsHUx44gGr3J9ijuJb/mWy12wSvTT78U77d4nRnR562ZGOx
         pPg1mDA7yM/akecFn45FFAINf7SY9lcjrKI8p/mSca0seLupMQ6MhunwJ4dQ9pXN3wWw
         zbAtcr77TTtBZHOl+hWON6rJTtXq6xdkP4Au9rgFCobfBHYyA3DWMLmLVfyu8kCjI3Zi
         RDlgBWunH0jzUIMJXUgXOuxItOYsFiV3iNa11CEK+7hVAxt5UoagqRO+zVMjwvI5+64B
         cGv5syNV1pvO2vtpnI4NIDZe0m9JJQjfDZeezfQnJ5x+j1jebZZQz14J12Nwhj4/Gd+y
         LDvw==
X-Gm-Message-State: APuU4Z/oPkdwoq4LNl+fIDYoThcnU/ygMLjGOsMKVg23ONbaZrHfRuYB
	bdM3YYIMrT3zzfp2XxSyp5Pahglqkql0WXeonkY7TEKxiYUxDjim0h8UBzuqcRL+
X-Gm-Gg: AYBFou0wgroGfztblyBLq/p+4O5udwI+sG+4IPFHpDhLSlqEZ1tmLvmvVTrV1ky66fB
	46B/MoW1yh9gkvKKfnXOkP4J4IwjYZjQeYhS1mP705Y34d/Osf/f4PRwazDKSmwq83h8VHFAmVg
	iAmSmIe9cBrtEDQyahZuD1tlvVNUWSGF2qs2aaqCgrxPjBHGce3ZTJP81VblN64Fzn9abC9seIn
	CFPBGqdpFm0sdVt5hFW9eHaQHRPh4ry72vesTD6Q8mEYJHWDGsjR9yLJEExlCERqEkVIoWFl5TQ
	jvowlWusfKiHxVcg1r5pYdpcTFQ0xwG86LzKqvzJxyHT0pYxlOThRiJivQkxAGMohzgSBfSyhdu
	tFnerP8re4luf++9kz+N+5Hnicj2AoCAmlMa0twe+27k/oBx1zdhNWuenn7ESOCalEJR9jOVMl+
	PIF38SEabruyocIMu28cWidZtZ2J6q0T9+EaeVc7ESsyprY8wEYdv90dDoT7XVFgbdlSwhV3fvh
	RZS+vECyCgu+j3SoFMO9RGdjop0NRpoRfJIEqP1YqmMik7cfKMTAK6hUrYwdB7/BiDLSLABBvCv
	8pbrQZtNOLsoZlVTsFFTdyxoQIa91A==
X-Received: by 2002:a05:6808:690b:b0:53c:7298:3598 with SMTP id 5614622812f47-568145b6024mr3083943b6e.31.1794236318918;
        Mon, 09 Nov 2026 06:58:38 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/7] Fix Incorrect State of Charge for RK817
Date: Mon,  9 Nov 2026 08:58:26 -0600
Message-ID: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065840_660196_A0329E2A 
X-CRM114-Status: GOOD (  23.48  )
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

 drivers/power/supply/rk817_charger.c | 329 ++++++++++++++++++++-------
 include/linux/mfd/rk808.h            |   3 +
 2 files changed, 247 insertions(+), 85 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

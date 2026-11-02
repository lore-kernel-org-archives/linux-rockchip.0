Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D632606A5AA
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 14:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZBgVJYuR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BttblO9w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SZQjD/UC2unll89VaRol5QVd0q7ghclj31DHBgK0Tuo=; b=ZBgVJYuRFIQo+vX93OW9nKyBca
	52gb7aeROKFeqzqLiQ/k/FQDcjJ+0Azt52UrD76ov72ZkE6rJ1U1X3333uTvu7SsI11jxXz4biTqh
	bZA9fSZKfRVrVvZumTheEL71XOdcKkd53OuuoqUyTTWjw2/B5f6H+x89cM048i+iOMxwUitpLbUvY
	Eo/GRBnIzy9Q6VLcAwvoSYifxiBxu+NTZynx6kdMK3hP3My5jtgRk5rIZrfBZrp+4h8Dc1nhSPwN3
	iT/FPFIRcWXJS1IR5xRmqvKz3ng/KPvpN6L3PctFguvJAUgPbxffq2rYYyHlJctWGm3zVT/LHWKja
	3aVIGRLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCR-0000000GrNI-0o8l;
	Mon, 02 Nov 2026 14:39:51 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCO-0000000GrKo-31S8
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 14:39:50 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-84e513874f8so2162445a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 06:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793630387; x=1794235187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=myOSo9t6ieAaewgOL5tC6c8vmygWMsLZlyhCa3JKgpY=;
        b=BttblO9wU9gERdlXekP9QvaNVkEv9aWb6zAKriH02t9YVhaUMJIawpx1XJIqyirK1K
         m8IzjFhT7Zk2UN5d0HGQupP/ja/znPJsSprintDeQOBf9yolr9tslznVg0nmvAA4+Hos
         oKDn1Jdb/NwvEBwhGBt9UF/1Vix6f3FBCaalj5TzdSheO93BDukBgtKRf1wvheL2ttoK
         U5EjtUGRVPHGFDU7WoODhR9edNqr4He6m/h7xkU9TDm4kC7oKf94yYP7UFThj6FKcWEP
         P3AkQOtDCAqqrhi7YKd6sxlwV0x4kKpEZmBwy3Q4JBOssKi/n1urx3xzzdeQUximEsLX
         lTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793630387; x=1794235187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=myOSo9t6ieAaewgOL5tC6c8vmygWMsLZlyhCa3JKgpY=;
        b=udjRt+fMgZc+iJQ2cc87N858UrDsE74MEID6TuvZSDRwqAED+wAf5gA79JgRnbP0rU
         j/r2YfWT93SGX63oJem4ODEripEkKgVLfgUikNadZxnPUM0sZ0a7gy4YDncr4wn21Czu
         akcpBC09rfFG9wC/Bs//pTp6UnyOJAm/i3pvj+s+eyJVoBtxoFLbhDdiJ5XRM2pXO8OM
         S+aa/XB8G6PYslBuG6pvSdxHMyuCa27ekYhyhkBm8Oo0CZacyKNdtl1Iio89r2/QNQIJ
         5qsRiCVC/SLI/rYz7UWUNmak3PjfngROiRWfGzQXpUEuYsemGTV6LPZ/jQ7KSvxvjKAl
         L0Rg==
X-Gm-Message-State: AFq9FYL6zaGNE/G/V4zemNFmJ+888r+72WFuokmbwuQZqqhM+XrNyFr3
	HEEZTsUkSKDicBkZQkWD8SL11zoObposmIpK42wviBdIz9G8dkZnB5Txnkczlicr
X-Gm-Gg: AYBFou3tokqWRllON0NXbAvOYDG9yfrws0rwaG1vFvxb1q2nzOPQFVyD05ioKoUdlKi
	S891hyCt0zf7IbN0FoeJAfw6t9KSCYZJrkA+nu+Z1zocGRk+8ReVPkV9VAxUadLeMVKTBfQRx3w
	GiBpKGH2RX1mWsNsQ8SCRupaSmNcIaXOmzASe905aCsBR8zInq58xWKWNBsHF0POr8S4VAKxnBb
	UU8qRVl/qm9CUg4OYKbDqQCeABIey2toY4q/zhTYjEZN1jXV26S2DXIWA9IVkSUsXJrnLqt2PwL
	kZhZpne2y2xjHmTMwoJDMwk44zQ/Fd/VwqlNH9oT21KxC9L4Px6uhmOQ2+8MBtrFRBvJuF5Gxta
	xmDZ01mpc6KqcL86m3owP7wA/CHGLnSN6FNa85ZUvNrRH61fhEJjZCKDuZ88fw4Fo2ndR1VeUVK
	9Sdi3XLUTdeJRxdoSq2i+rpdoyyaaJaqNFt/wirRudwe3Aoyy1C1MuhXxn06hq7uRg55fMwWMMO
	wvdjhjwX45ChR6KiiakkI94M+41sbbLcwCZeHvVU4OPPh/isDt/lE3xg5A3JMsPT20irHc6G5jY
	Qaa3U0m3+Kr4fMBHTCiiNpq80DfjuqJXsvckRgDXAfgz0VLsFDk=
X-Received: by 2002:a05:6830:25d1:b0:80c:d30f:97b with SMTP id 46e09a7af769-85d36633c0fmr7911631a34.28.1793630387011;
        Mon, 02 Nov 2026 06:39:47 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85d3545b875sm9516327a34.5.2026.11.02.06.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:39:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/4] Fix Incorrect State of Charge for RK817
Date: Mon,  2 Nov 2026 08:39:38 -0600
Message-ID: <20261102143942.305293-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_063948_764914_AA89CA97 
X-CRM114-Status: GOOD (  20.59  )
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

Chris Morgan (4):
  power: supply: rk817-charger: Fix NVRAM SoC Value
  power: supply: rk817-charger: Resolve boot state of charge from the
    coulomb counter
  power: supply: rk817-charger: Clear SYS_CAN_SD register by default
  power: supply: rk817-charger: Clear full charge cal on resume

 drivers/power/supply/rk817_charger.c | 313 ++++++++++++++++++++-------
 include/linux/mfd/rk808.h            |   3 +
 2 files changed, 239 insertions(+), 77 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=Jt5i=NB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D03C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3402E60F11
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3402E60F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MTf0X78xi+ERi5qAHQ00rznI1RMo1A4IaDhoJR7LdKk=; b=pedhm62nL3N846
	e4Af43Xj+vsLlnsp1d+SUFHQ+f4E4lmW4XZUVc464C2Rj//KiiDSUII9NBvdJD8gg8VuKyGubzt+o
	kBr5k2wRxAP13+tAQz90domS9i/5cokpMV/Akufy1mca6KPlWpNIp5wqFt7nHzQNkhXV8Fkfmlff8
	XQzZdYg7XPj6YhxDNld867ibit2/3397DG4HQVKd4xOm6omrRuWH7fYay3/+77Q8QFDhtYfEIzmfw
	vIEH4Oe+ctQi2yH/ioLtiHBNMtdmQ+4fityxBkNUT/24d1BmfPePOimTC0QQYvrmaK0n/MyCptctT
	KHzcPHu7DzQFssGbqgZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDHup-002J0H-Ne; Tue, 10 Aug 2021 02:54:55 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDHum-002Iya-Et
 for linux-rockchip@lists.infradead.org; Tue, 10 Aug 2021 02:54:53 +0000
Received: by mail-ot1-x334.google.com with SMTP id
 v24-20020a0568300918b02904f3d10c9742so17084772ott.4
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Aug 2021 19:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hp5elchFMSgljRTpgVl4ksQKLgHUDuHAq3O323royD8=;
 b=ToXi3M/FBrMPWLWRVLSfG93Yb3qdjE1LpXnI2cR4Lfa5qIVyph+6pw4F8IwaoWu+t6
 2pxkSa03pXMtPCSIEoPuWuvSF6xLTRO9sMvvVXTZEzLWws1mkke2Q1ZktydubzHl9ars
 WquzLIid6BQwPp8IUrYbezgyYAUV2Vo/heNOe5NuAJ4OqdLLQlLEHla1j+hh83JWWets
 W8fvbDHbaS8ASPZJDDVs/rgb4vmrZBBCbZ5JCBkz91StPyR48NKqtGpNxwg63woNtu80
 X7Wpn56MAM/1Ij8WyBXAl8h2LeUmRg1djFfNZkKSpgmNepZQEDP23cklAVVST9JYxXKk
 NqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hp5elchFMSgljRTpgVl4ksQKLgHUDuHAq3O323royD8=;
 b=OflFk0Fs8bh5yK0Rt94hc4lGMgPhuAuL3rbJD/8hV9nF2L7oQM7puZxiyQ0pmydiu5
 43pc4CIyfEgdaocRArN7KWGrSmOXwidifr1kXrzHqIjbp6C/jwJjPYC2IsYQ+VjPerjo
 xwK40Kcal2xz/4C69rfMMmd8WChOaY3leyxJ/MeqS57Xp0sLZaTlYva61SDzhWj1tu2D
 ipHAaKvybrbZBXSO06ErccL/iRR8BjQ1y+OdI97ZzceQ9BjLM1r8bujqZ2l9zYBS9pMT
 2Xm1Lt6yQsFwscijo8WnNsd/2xpM6Ctx39kiT8J6r2T+09djxsGCl55GvsPcdsYGolAD
 Ywzg==
X-Gm-Message-State: AOAM532CGCh9hkFbx2opsJd1fZsviaxpUqDeWYFItSC0WY/mPiBgqA56
 ItHtQd21lysCQLOROq1o+1g=
X-Google-Smtp-Source: ABdhPJxwJJCdLwwwG/zkqNWug2qEx45WhKQV0FyuMGaceyHb//lIfuvWxPbL+ekzOSLYhFG7+PHagw==
X-Received: by 2002:a05:6830:43a3:: with SMTP id
 s35mr18606061otv.262.1628564090599; 
 Mon, 09 Aug 2021 19:54:50 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id h187sm3654898oif.48.2021.08.09.19.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 19:54:50 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 0/4] power: supply: Add Support for RK817 Charger
Date: Mon,  9 Aug 2021 21:54:32 -0500
Message-Id: <20210810025436.23367-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_195452_545081_2D22F8BC 
X-CRM114-Status: GOOD (  12.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

The hardware itself contains an ADC capable of measuring the voltage,
current, and temperature of the battery (though my implementation of an
Odroid Go Advance lacks a thermistor for temperature). It also contains
a columb counter, registers for tracking the measured voltage and
current at boot, and a few bytes of nvram for storing data.

Changes from V2:

 - Updated devicetree bindings to use common property units.
 - Removed unneeded includes.
 - Updated rk817_chg_cur_to_reg to make more legible.
 - Simplified formula for displaying calibrated voltage.
 - Updated power supply type to POWER_SUPPLY_TYPE_USB.
 - Implemented get/put_unaligned macros for bulk reads and writes.
 - Changed numerous dev_err() to dev_err_probe().
 - Call power_supply_put_battery_info() at end of probe function.
 - Removed unneeded whitespace.

Changes from V1:

 - Fixed a CLANG warning regarding an uninitalized variable.
 - Fixed a CLANG warning regarding a pointer as a bool value always
   returning as true.
 - Added Maya Matuszczyk to the Signed-off-by.

Chris Morgan (4):
  dt-bindings: Add Rockchip rk817 battery charger support
  mfd: Add Rockchip rk817 battery charger support
  power: supply: Add charger driver for Rockchip RK817
  arm64: dts: rockchip: add rk817 charger to Odroid Go Advance

 .../devicetree/bindings/mfd/rk808.txt         |  36 +-
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
 drivers/mfd/rk808.c                           |  16 +-
 drivers/power/supply/Kconfig                  |   6 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/rk817_charger.c          | 922 ++++++++++++++++++
 include/linux/mfd/rk808.h                     |  87 ++
 7 files changed, 1092 insertions(+), 2 deletions(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

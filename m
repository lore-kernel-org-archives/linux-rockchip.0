Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C8AC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 20:38:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 288B8611C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 20:38:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 288B8611C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Evk6z3AHzGUYVZDB++X2xwpbZ9G7CBgdcaMyRa0cGp4=; b=ZvHSHASmnYqSpDbVIRPBgFt1+E
	0Xh25q3MRwkB+lQBBO7H7fLyMVscg2zY3QwwQfm/+ig+083oIdMWTyKgiiI4msOuReDJ7i3nFPgwF
	uMbFdhB+40wNFXC5jmZZpSP1ZHhpKd3ml5y4bPn6PTTym7O8JQMQIwhhAgzO2GZ7jcCac95t7qvXW
	ab0utf0qpmT/0FoHXhNE4GriTn69GhV9a6xtJq9d8c9KyvEZayPbkLn41gXJxNRc/aP48KK+OsbQh
	s17wfws8RrjdeAzNoN+fNgFITo9HgrY8j9jnc18Yh9ajtSm9U4duGhKN3/iX6l9sT4E8Y0b9M+A94
	wjGOgo7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljSxR-0053N9-8l; Wed, 19 May 2021 20:38:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljSxE-0053JW-UF
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 20:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zoJsK2/3QCBxYlpIkU9Vv7NwsJFupqw/wU/nB19xMXc=; b=26bjlUoT9h3L53sY4/byxyLvqK
 rZhFm6lr8dosH0AKgc5SYbY1upphvudiIKBh9lvyCGlOArJGzCK2eSaytxdqEeCW+0rezJRVl+ecw
 BK/7d+7RVU6YHw/eKjyAyrjPMmtEcKfjOqjtHLvaYw76wCflP3R/q8aTHEoNa6Oy/UhW+A2ZaxkBC
 GnSGUKBtkoZAQLmeqv2AleUmjklBQJyfi9cyQIqlm6KldkCx55X6IUPjjhXcdpUidap5Ff4ICAxc/
 cvX4RTOe9Yidd2OOb/WRx6Mk/6QdAFDP6KFrljZBCKXmhdE2lZcE24TmZGYsltUChdHaNKIj7kXbR
 tOvLJTOQ==;
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljSxC-00FmEY-1a
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 20:38:07 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 i23-20020a9d68d70000b02902dc19ed4c15so12980661oto.0
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 13:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zoJsK2/3QCBxYlpIkU9Vv7NwsJFupqw/wU/nB19xMXc=;
 b=vY8qkzr4c+lc8o4NVC8uztEgqhKsGcWE5hJ5LRL8y/GbdTOcwdx86hkt7waVPHlk3W
 XHypI1bKlLJWRz9cR42KQ0GQ1LXZ2AgdjLpy3jix2OLjACcAaTXBr5bmfABnarq84QZX
 MdI+Yq35QOGpCdx7FKYnpwuxL5+AbIr3g0Kg2N9wEZkp5cgJmydRiWGJxXW2b3fADLAd
 J21vHUrdgEA0rloEsnMrqPztnASsr6afqHEia6EZjHwDZdoWN9wPz2WixrFZZe4K3D4i
 Vx0ReVImMZEf4h1QOLU0cBxmrUctXqvZWOl15/yNp8W9IpKJVyDSvO1FnQtoCKDRYH9v
 LPTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zoJsK2/3QCBxYlpIkU9Vv7NwsJFupqw/wU/nB19xMXc=;
 b=OogPrIROfWRonCpxZxGqXS4tNOjHDIipEZh3N+RNyz6tsMbsGITn2jJ5aH6a5q4vyb
 VBFve1xkp3VZizE7uZ5r2gMAJ0bPiuNxKFnqnBumohckB8IPMnIqEDyawb00/uyC1B8P
 aXDoIZnDuoRu4k2TE9uG+OT5TQfajvJxa+9sxeioTmp1MH2WYCIEYTIRDrsm9UV8qkuo
 IgaCXLpoySfrhhMDmZm5Z0qoXiEhNgro8MTJ+4nk25PJ7NRivMHJqsZVPJIwuGzk/YDw
 yLI7h/45n88GdqJTwyeVhJN6uFigdhe967g0d8mb4vJg0fyEwc4LDddssIbtfrHH1lQA
 dGqQ==
X-Gm-Message-State: AOAM5308jLpS1HUbylEX5kcRCz7U16hQWyvSKxJ1yPtegF7h0bTrmXCK
 AzytmEUvFLj2/B/KUI7vItU=
X-Google-Smtp-Source: ABdhPJySgaibEkkhNuEo+cdWp/uOpKYJKp5GKX3bingGqeu3+KD77l3RbQHH3sA3PdeITiNBdGdWKA==
X-Received: by 2002:a9d:6255:: with SMTP id i21mr1120079otk.284.1621456682631; 
 Wed, 19 May 2021 13:38:02 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id w6sm189223otj.5.2021.05.19.13.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 13:38:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v12 0/4] ASoC: codecs: add rk817 support
Date: Wed, 19 May 2021 15:37:50 -0500
Message-Id: <20210519203754.27184-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_133806_116274_52F058F3 
X-CRM114-Status: GOOD (  20.85  )
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

This series is to add support for the Rockchip rk817 audio codec which
is present in all Rockchip rk817 MFD chips.

Changes in v12:
 - Updated codec cell in MFD driver to a single line.
Changes in v11:
 - Stopped checking for presence of parent node in codec driver, as
   driver should never be called if parent device doesn't exist to call
   it.
 - Made codec subnode optional and stopped returning errors if it is
   missing.
 - Downgraded missing codec clock message from dev_err to dev_dbg.
   Users who choose to use the rk817 PMIC but do not choose to use the
   codec will not get an error message unless they have debugging
   enabled, whereas users who wish to use the codec but don't have the
   clock defined will not get an error message unless they have
   debug messages enabled. This seems like a fair compromise between
   mututally exclusive users. Note that errors with the clock or codec
   will still result in a dev_err.
 - Updated DT documentation to note that codec subnode is optional if
   no properties are to exist beneath it.
Changes in v10:
 - Correct order of test/ack/signed-off to chronological order.
 - Removed ifdef from mfd driver keep cell from being added when the
   codec was not to be built.
 - Changed codec DT parsing messages from error to debug to prevent
   errors in dmesg log in the rare but valid case a user has the rk817
   PMIC but does not use the codec.
Changes in v9:
 - Add cover letter.
 - Remove documentation for interrupt parent per Rob Herring's request.
 - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
   robot.
Changes in v8:
 - Added additional documentation for missing properties of
   #sound-dai-cells, interrupt-parent, and wakeup-source for mfd
   documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to
   "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in separate
   series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

Chris Morgan (4):
  mfd: Add Rockchip rk817 audio CODEC support
  ASoC: Add Rockchip rk817 audio CODEC support
  dt-bindings: Add Rockchip rk817 audio CODEC support
  arm64: dts: rockchip: add rk817 codec to Odroid Go

 .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  36 +-
 drivers/mfd/rk808.c                           |  81 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 539 ++++++++++++++++++
 7 files changed, 931 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

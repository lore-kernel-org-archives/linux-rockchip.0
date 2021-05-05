Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43908C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:09:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C86D610D2
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:09:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C86D610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dl6E5v49gJOtDLH6JP/oOYVFdmu1EHfFWnyvDZtxinQ=; b=kO19shrB6ocNBA79NR7h32zHjB
	DJpwQw8cqL7Mzn+AmpP4K2O5MXExQJ/WUGyyDs4dYWEABLfT9pYcm54YeIYgk6uvBFB599FBBG96S
	bsL5J8mp8kuDePaKUzSTowJbH6Itm8AViaHe+hLPEnH1ZwCQ2hR7RyjWzLAjLS4dq8rB4Wxo19rN8
	VY0U7Cphj8gr3sM3UWDmkqBOM3f9pO+kIUI3RpsQbrDgFmdny7U+d2Ncgv82NPwcxGVVmEHdGD0Kx
	0c4/YgglLdvnWL6q2LoIkIGWB4RE+O6mLzE7x4XaiAxaMaEpovthHBSJ8Pw6EwCh6KdVwfT9TeJdv
	JZ2cDGyA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leIDB-001O35-UW; Wed, 05 May 2021 14:09:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leID9-001O2K-T8
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 14:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=poYtoBQ28iFBlsMtYMW7HQWFnHpillGEdoSkendtk9o=; b=p0Qze+HaZfVIYavVkILxWGLu3M
 GzSu39cfQkr3z8MttMcjnLS58mZCQLBh0aqYd8F5hD5bMBGv/zhS4KeoAqyXkBmzgMLIcEf+XsvuI
 tZ8KGWyQ4R5F6b0WUp3pHUns1XWzSX058uCemiQnsQqs7O1qVKtUQmYRDru5c3ScsKwwP+yEe7NOO
 9gdVJ28fpiaD1XdTpvlZvVxrZDXLigFHSRSO82MW1EgNyJkSKgnEs3nFmhv+I2OO/orvYIJUgj84D
 l9aX88C2Xz4+QGIL3++xvOE4TEPaj/0upPgbXmNF59FZ94ftomxlVfLZi6IGdCcm7cbmSzihgCr6g
 oD4/OrCg==;
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leID7-004oI7-67
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 14:09:10 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso1791590otm.4
 for <linux-rockchip@lists.infradead.org>; Wed, 05 May 2021 07:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=poYtoBQ28iFBlsMtYMW7HQWFnHpillGEdoSkendtk9o=;
 b=Tca7V89Ry/y/4wYnVFBSFUuf0/C1C9YCRcy8/g9VqYowQPyblDEf2+7yjM99NPKpBG
 4sgSXJkzjhtwVPmJ2uALZPUe463jfYCzB82UfRlFF4zlyg6/UO3VqC/KjhywW/WxIvaN
 nh21aas9W89mAFinvip0VZCFPuKkDH1LtePmegCCsJsuzMoo3bwAdtXIbV2xBm3+MpfQ
 TpiFVpgI33CkW4ofJ6lh4tcsp+0MzHNz0VX7suZ+qyozSeXX/HJqDIKP+UM8W3kH2q8w
 gAji0XqgMULGHkUNruVwModfKfiJZevNvLZI0xaQPwA8I7FaYdEuJiJlih3gnQLldKOM
 cdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=poYtoBQ28iFBlsMtYMW7HQWFnHpillGEdoSkendtk9o=;
 b=gy59d3qIe0pTcz2MRUUP5F67kLOH0XIrf2jT8J9MatLpxb/EZLpUS5722nFWpiYIYF
 b6vX86FXqavhdGgCL1NBr6beNS0hMrINfg0rxA2WyNoN3AGOhCWYG8YwBMfon0bl36R9
 +mM+EZ3SHLPWL68XfFRDRHhHwD2ZG/BnljRDfbq7JOmYDA/gfq4M79Gr5oboqvs+ZMMY
 7B7BjM3GdtS2w/8AYGL5FvkWdfN8rfZFc+LONLc0MhawYPGpZRotwAZN19yBzfjIcarf
 9/4aeihonpfRLv/0d+pqjaGRNKESPrxEDJ1DXIPkBCJiE3Pg3XAhkGiIWYoupRQ8E327
 gitA==
X-Gm-Message-State: AOAM530vsQ0T5WRT/QwAj8f97kYckmCCJcpkpmIVeh8kEAl4W7quF1Tv
 IGUlEnLo0hk7ICYSIVQJEVs=
X-Google-Smtp-Source: ABdhPJxMy8wTe1oizpsT9wETaixL/t9MkgcgAxAs7a6hSm9qjcaGmQkTCGlBpmkbJm5WfAsVNnBb3Q==
X-Received: by 2002:a9d:6c95:: with SMTP id c21mr23128676otr.85.1620223745680; 
 Wed, 05 May 2021 07:09:05 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id k20sm621707otb.15.2021.05.05.07.09.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 07:09:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 0/4] ASoC: codecs: add rk817 support
Date: Wed,  5 May 2021 09:08:50 -0500
Message-Id: <20210505140854.15929-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_070909_250508_60735836 
X-CRM114-Status: GOOD (  13.12  )
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

 .../devicetree/bindings/mfd/rk808.txt         | 186 ++++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  36 +-
 drivers/mfd/rk808.c                           |  85 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 558 ++++++++++++++++++
 7 files changed, 952 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

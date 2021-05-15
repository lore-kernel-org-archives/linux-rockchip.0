Return-Path: <SRS0=uf4h=KK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0611C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AA9F61177
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2AA9F61177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5zyI+OY/TbINQaHTq/sRFer6pOGdC1cZin7e4oRkfHw=; b=lq8MsunrZsYT56ypG+vCQZwB8W
	XHbs3u6gN/itDtU6mM2Kq4+SCQO8mLHu6O0ONGtoLFXMdNtwyDEC78TYyEXcKaoV+IvqioZ9lWbMD
	euqufOAg0A6Kd1zJiOK61Lxvc9s+wR00iWC+6dKRO2IXM+ytg3gzPJFkvqw/9RpvsHOEU5u+BDY3r
	fLL9NO0GiAa8RfLWtmnuv9sz7jWOqx76n1PdUPuaFtprilaO/K7rtdcMB4PtWeCnu9e6ULNPw01eO
	drdwpRcneNQo6+CBTRtM0lOOfCVURJkFUJ4S/x7uEXcnSjBP9fKWEYtGJAqukb4Y+xnzvMpL8vdxL
	U8h4nKaA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhkVG-009YYj-R7; Sat, 15 May 2021 02:58:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkVB-009YY0-BG
 for linux-rockchip@desiato.infradead.org; Sat, 15 May 2021 02:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Zg/5QXj0NQOLjGOpktrlON/n7PasEsK9TVYdrnmnD9Q=; b=Z7aLJtFYJFfMO1qs6DhSd9Cqiw
 +kvys1QD3bFIrM4qsWs8q8S5zFlAuObj0E2vC3Ipvfyzaei/4EeXmSRPPKDGMzJxSqI08HKFF5pY7
 4VKzIKMHWgb1+yRWo3hZWJrM28AlQY6iLbb8uHQ2MGMX33sIGS8bAQR/e0D70/U0UlWdTrOttiagf
 /TybiZ2ttKIQ0iY7N3RjQ9l2ugFh9tQavyAVVCrvGqhXIHXKLm1uGXFC2+zKQiRBM87qjfpVoPgjB
 DucSCP+QBWKMQpf8mHN2eSlxIwD3jdkY2LJ/CThaTurlKEYhaUX3WLmKbrUBT4UorrIvYe+dB8u6y
 8pz6h7hw==;
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkV8-00CMMk-BD
 for linux-rockchip@lists.infradead.org; Sat, 15 May 2021 02:58:04 +0000
Received: by mail-oi1-x231.google.com with SMTP id u11so1346046oiv.1
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 19:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zg/5QXj0NQOLjGOpktrlON/n7PasEsK9TVYdrnmnD9Q=;
 b=Tg0KsS2xPm6IpjBdv4c+49Dbxg4u+hq6+RuCVFvLqdPbB9ixMlNgfhV9rfec3OkBPZ
 IvTdvbhp3NHPb/aTkZ6qVfnKmnVrioOvM1eY5fJGJZ/5y7ocOCwL0wmy/hphA0DEnme+
 x+zdV+817e2/RINEYBv0hmRwrzfaQp1NLkFwLBQ6gosxm3hzWszs1DrIg0aRWHCc2/wc
 PClHridG4s67HGHPKUMO+8KMSKmtaq8zyDCHOTpGsf0yCVOR2QTg8/rkixJRcApJICEt
 TIRwB0S/yqYMTCipsL5yzXKzvTsOzCpODeYwblLFJFRS63R51qslMgwhtpGGdESrfuIp
 9YiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zg/5QXj0NQOLjGOpktrlON/n7PasEsK9TVYdrnmnD9Q=;
 b=c9Dj4i7mRUTW9f+4xE5qkhCYWMGYCzJYgInp2wni4z+6UWrN4+vXi0HsvYJwkXSIdx
 Jxld4nhNlEz5VR978O+WGzw6u3ZfB5c9cl/TfPYeN8u1j0TumHq8tHbsFp+ycpGj2gT4
 mz0MGWYQkfmHDJ+1xXtytH6PQAnsNYs4ZKLwRvBpQONhhpzC9nPNin5iMJBBeTBSA9rp
 KELjazJeXzH7gmxIznIe2xYaB9XsmM70CxySWKS5INkXYX/u81WEWAuDqU9WIh3+iGWW
 cfCLx5i4WZsLPjZNeM1sU7z2O/6xC0myfxjtcrUxQMRgek0gj6a/fMOKtvnjE0W3xKoI
 aHmA==
X-Gm-Message-State: AOAM530/MQRHcd1Qbk951nRy0qNJplyVZUWy36/lf8gV8LNYUnjw7kLT
 uo6vFYYm/C5Kh29KxvCPsxU=
X-Google-Smtp-Source: ABdhPJyx+Mj2Xnc1VVyohqVzJFvH4+AvlDMy34VVVb44+0ur5ea5Nbj7p61kmpDKkoWUZbqRkkNOFQ==
X-Received: by 2002:aca:7556:: with SMTP id q83mr36046438oic.161.1621047476637; 
 Fri, 14 May 2021 19:57:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id j16sm1689444otn.55.2021.05.14.19.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 19:57:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v11 0/4] ASoC: codecs: add rk817 support
Date: Fri, 14 May 2021 21:57:45 -0500
Message-Id: <20210515025749.11291-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_195802_408655_AD40D587 
X-CRM114-Status: GOOD (  19.34  )
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
 drivers/mfd/rk808.c                           |  83 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 539 ++++++++++++++++++
 7 files changed, 933 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

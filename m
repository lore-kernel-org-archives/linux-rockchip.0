Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF6EC43460
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F4C0613C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F4C0613C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nG17InlHBQLihEp3DGeUeNoyg3mrDqC+BrHIw0gL1hA=; b=VkNADt05xPK6xU/+3r/UoplZ01
	b2eKkkoHBjh85QjWXn9bnYB1w5wCOwNhP674ZwmLctwepqiYyGiIh2BIXYWSQ+uuxd9S+QdqBbWWS
	Cx97Uf8bQYdcqeoFy2Yn8HMlkpQE0whtwmzdSK44ruMTfd2WHCTEJlQJcuj8HvZSWjYF3/l2NdvnX
	dUrirXe/NAfUJ1iGUq3Ja9bXX5ytwcp1U+97mZh97u5S8WayvSoJ/9Ctimr0x8VSnUU7eKT/3togS
	srH6htbJotCw9Mofghj1Wo6QIYvGkGOz5Sn4r52rlJYyvRcR+q6izMyjTl+JbJQmDeFUikeLJhLPF
	y0+jgUsQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhbTp-008Zuv-Ar; Fri, 14 May 2021 17:20:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTn-008Zub-BP
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 17:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=xbWNyumSaakRF5+I6Q4pxoTvTeel3gGdC/C0gEVAsbs=; b=hmDMRT/Wb8eU/QV7U4b6Y/65Mu
 jcsD5D4MSQY470CFA4hmbctxWgoRRkLFLY4giEzogweJXs6lJJESusLWTUnHn/hToi1serY+/PmTK
 rzuqYOeX6ww5oLIxIafbtQ0VIF9G3rQjp3xQ5iS0fS1hS6SZjd7ayZJWuJXrrR6nJNBsWBxRaJzbj
 M0xEm7xepNNqKhCyizkKDo//bYoOZeUWcsCa7svUH95kTMZrpM2o2y5Z1cjNdjfp42HX85zUnOVi1
 +F+lfj+w57UhWf1FntgpPJbYppafKuyGPZpULwVu+H1VuTYrsPSC/bfJwXBGTnVlOM2z6o9frhE6e
 gp0yHH6A==;
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTk-00C91c-Bj
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 17:20:01 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 t4-20020a05683014c4b02902ed26dd7a60so16918761otq.7
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 10:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xbWNyumSaakRF5+I6Q4pxoTvTeel3gGdC/C0gEVAsbs=;
 b=Dwh3atl/PTSoQ9H/H6a4cNIEThJZNPerQ/tXcinbE0bdgxFqsgtR4mDIVyHWQfpqkY
 xyYiaAxBFmQpDsRfiAgy5/Gojr+l9GFDoLHGrVtts6zQPc361s8FuuW8vRtSPq/d5Gbb
 wXFleeaW6uF49icg9V0zwivLUghj1VBU08G+iXJ2w2sG1/XOWtnEnlAk0pLlR3hljbA1
 lX84pynsasB32TLHxeOQSJ/eBG1DT0ZchbXlMpuoi5GzN4EvN+Z8Hu5FPprMArWzWvS7
 01Q0FVdxIcXacYkRo+0THJxQfkPjHJT6bw4Yl01DQMI0ed6BtkkJYcBitt+XRtd9xQWU
 rw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xbWNyumSaakRF5+I6Q4pxoTvTeel3gGdC/C0gEVAsbs=;
 b=eVGTgU7GqAcUy5DyL23Q3JM1AdAcg4qiwXwrSIFM1VsAoIx9qXqSfYF7akZaJ5kKCO
 m2kXlrwaDPD131z3NOqP6ZWvCDfC42NOcZmq4yDI16ZnXem57+STLfqHWpPwFCkz6UIA
 7nZZ2xdZpQ6mMot5Bzgl5smjTdQDHH2HG+GGHb0gyOam7AR4D4cIWd624S4OC5Ot18Yf
 hLHDHsLd757gXYaNHPQ+ySiFH+sbF/zAHRJlFNUL9x0BY/ttHML5+MW7O/VKpVBvAMY8
 utGTnOc6oBGBfAEMqauzf57bX167xqAqyc9XqcYI6Y4BvM1X8XmSYNmnWRdO/5FX3yVe
 uPOg==
X-Gm-Message-State: AOAM531veDxKjDK4JOUF99H7SFoYpnt70Z1sXrtw5N1haQFWJfTPnhPl
 yWoTT44W3Q2GmQtSxm/ppjtdY4Htsl4=
X-Google-Smtp-Source: ABdhPJz8lMS4CDvotbsdOQuc1xfRx11VPyOBYz3m8DpVxMvPMreE9czwFp9QfdXU1nZqX/SyzbqqNQ==
X-Received: by 2002:a9d:5a10:: with SMTP id v16mr40663546oth.187.1621012795795; 
 Fri, 14 May 2021 10:19:55 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 10:19:55 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v10 0/4] ASoC: codecs: add rk817 support
Date: Fri, 14 May 2021 12:19:36 -0500
Message-Id: <20210514171940.20831-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_102000_435197_F670C9A0 
X-CRM114-Status: GOOD (  15.31  )
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

 .../devicetree/bindings/mfd/rk808.txt         | 186 ++++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  36 +-
 drivers/mfd/rk808.c                           |  83 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 558 ++++++++++++++++++
 7 files changed, 950 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

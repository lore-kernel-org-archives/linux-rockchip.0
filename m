Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5336C47097
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 09:56:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A696613DA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 09:56:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A696613DA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZ6Fpa1Oht5q6L7YhnzKxiAh+wZC/8h/tP+1dTYAmkU=; b=09wkfdjl7kbHCx
	RJufOPHnh+P+bUJvvDKfjGN1d2mN+RfZxUyyuc7EYPBtX5HkRL4eKGI7mRUKDMC+U3j7dOjC9GkD2
	L6L7Mf4i7DV2KwbBTqmNgugh4myNUuw/5XucF6fqOOODuKiRf0SWU/X5l+xcPLnArL47A/iWQ2keK
	RA9WxARkViHtrdTr+mg9WZhW6aoaOamHJ1+EAfUAC38ptN3q367KeYSPyKLW20gu5T++WFBXx8/RP
	dRRDHeC9QPZsVpV7UGQAqOXHhNbjZwFfYunT54tLWMDDGga6UyjGOI01b0jpvju4H2vApXAGZ+/D4
	HwrGnTgFYRssd7/4iTRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lok5d-007wnP-Dl; Thu, 03 Jun 2021 09:56:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lok5Q-007wkz-D7
 for linux-rockchip@lists.infradead.org; Thu, 03 Jun 2021 09:56:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lok5L-0004PQ-Ne; Thu, 03 Jun 2021 11:56:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: alsa-devel@alsa-project.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, maccraft123mc@gmail.com,
 linux-rockchip@lists.infradead.org, jbx6244@gmail.com, robh+dt@kernel.org,
 tiwai@suse.com, lee.jones@linaro.org, pierre-louis.bossart@linux.intel.com,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: Re: (subset) [PATCH v12 0/4] ASoC: codecs: add rk817 support
Date: Thu,  3 Jun 2021 11:56:17 +0200
Message-Id: <162271417225.3165003.1198477663030831596.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_025624_469774_BC192A90 
X-CRM114-Status: GOOD (  28.45  )
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

On Wed, 19 May 2021 15:37:50 -0500, Chris Morgan wrote:
> This series is to add support for the Rockchip rk817 audio codec which
> is present in all Rockchip rk817 MFD chips.
> 
> Changes in v12:
>  - Updated codec cell in MFD driver to a single line.
> Changes in v11:
>  - Stopped checking for presence of parent node in codec driver, as
>    driver should never be called if parent device doesn't exist to call
>    it.
>  - Made codec subnode optional and stopped returning errors if it is
>    missing.
>  - Downgraded missing codec clock message from dev_err to dev_dbg.
>    Users who choose to use the rk817 PMIC but do not choose to use the
>    codec will not get an error message unless they have debugging
>    enabled, whereas users who wish to use the codec but don't have the
>    clock defined will not get an error message unless they have
>    debug messages enabled. This seems like a fair compromise between
>    mututally exclusive users. Note that errors with the clock or codec
>    will still result in a dev_err.
>  - Updated DT documentation to note that codec subnode is optional if
>    no properties are to exist beneath it.
> Changes in v10:
>  - Correct order of test/ack/signed-off to chronological order.
>  - Removed ifdef from mfd driver keep cell from being added when the
>    codec was not to be built.
>  - Changed codec DT parsing messages from error to debug to prevent
>    errors in dmesg log in the rare but valid case a user has the rk817
>    PMIC but does not use the codec.
> Changes in v9:
>  - Add cover letter.
>  - Remove documentation for interrupt parent per Rob Herring's request.
>  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
>    robot.
> Changes in v8:
>  - Added additional documentation for missing properties of
>    #sound-dai-cells, interrupt-parent, and wakeup-source for mfd
>    documentation.
>  - Corrected order of elements descriptions in device tree documentation.
>  - Changed name of "mic-in-differential" to
>    "rockchip,mic-in-differential".
>  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
>  - Removed unused resets and reset-names from the i2s1_2ch node.
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in separate
>    series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
      commit: 18d5c7bf50c6d820c366c2a23d71d468b14c87d6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

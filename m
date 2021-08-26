Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21710C43214
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 14:16:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E823060698
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 14:16:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E823060698
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhfZ8ceKqi4R4yZqEe7eAXwmQzTgXKdEW/nBwixumYk=; b=02yV019Z4JrT0m
	GhD8W/vc65DBJ0Rv2I1UO/Lu6cAYFjVbiS41YoQ7GMVjTownQi7dvsaaqt+pgjS7X2Zlb38AV3G54
	L7CHCd8F7SAsDOKFb2uHhLRTSiuHN0SUv0IGYI7BAu/6Db9uUSevQC39epjgcG7/BaU8cOnjb6YLq
	kbNs1yo33FjnR/Nf4JFcUZqPLXea2Vf7TzQpawNxL5hDmG/X8xgmR3+prRyJGM1M+8q5WrA2NtQKd
	74L56dBP+lBwIVVld9PZ4lTHcpNrIK/mWfv2H/ddh5o1KxpXyGJDBcWTWgD7f53mFMY0oO+Exw4YV
	PLt2mEgim5vYWvoJ57Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJGBP-00ALHJ-Pk; Thu, 26 Aug 2021 14:16:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJGAz-00AL97-Dr; Thu, 26 Aug 2021 14:16:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9776660698;
 Thu, 26 Aug 2021 14:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629987377;
 bh=19+SFriioNrfn3fwOrICbeSKe/bS5e7OWPAEUGfvvhY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MiooJBf9vLHfA09AxSvssoyn5b3Bc2xmYjYaAxykMO2iKnb2iN9ekqCwAlZxQHzEK
 uLLysvFtjaJz84LAO+B2tysgq/eWeVtlYPJQWV5FmVRl2hcavEa2U9T8t+r3DD20BY
 mGbPAbnc2UoF6ISLRcF5HDPi4g8AYCPTOyQgUjDG0vULCorsXNgbJsMoNBliliFYPg
 gkREbGYP1VB/nBgfTH3RRipsuUJ/+qM72Ar8Nu2v0LV97tN/2u/6vtTsAsDtg+GgVI
 m5VSOy9qqqn8E42UYKYiXKQ7QqozvBfuN6QmgNHqc47ozhekbZwfIXUN8CUTyNMCbN
 iKagMWY1z60Jw==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/4] Patches to update for rockchip spdif
Date: Thu, 26 Aug 2021 15:15:43 +0100
Message-Id: <162998707937.5647.10936208575135633257.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1629800162-12824-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629800162-12824-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_071617_526435_1A6827B0 
X-CRM114-Status: GOOD (  12.55  )
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

On Tue, 24 Aug 2021 18:15:58 +0800, Sugar Zhang wrote:
> These patches fixup or update for rockchip spdif.
> 
> 
> Sugar Zhang (4):
>   ASoC: rockchip: spdif: Mark SPDIF_SMPDR as volatile
>   ASoC: rockchip: spdif: Fix some coding style
>   ASoC: rockchip: spdif: Add support for rk3568 spdif
>   ASoC: dt-bindings: rockchip: Add compatible for rk3568 spdif
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: rockchip: spdif: Mark SPDIF_SMPDR as volatile
      commit: 023a3f3a1c4f9be9cc1ae92579ba816120fb5807
[2/4] ASoC: rockchip: spdif: Fix some coding style
      commit: acc8b9d117912c2d5952868fba0d4fca49cde3c8
[3/4] ASoC: rockchip: spdif: Add support for rk3568 spdif
      commit: c5d4f09feb9f74e704d87a304f0c20001488fe10
[4/4] ASoC: dt-bindings: rockchip: Add compatible for rk3568 spdif
      commit: e79ef3c2cfe0b39878496eac87450698a2e84e3f

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

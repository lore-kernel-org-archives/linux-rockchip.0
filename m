Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B188CC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 14:16:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F4B560698
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 14:16:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7F4B560698
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGoYWEGVGuCKCwUC/QsA5byzFAz8BJG4d3fREAujKdg=; b=SDFvN8QuEf+O81
	8s8JlXa+BmquPxb9Xtk9wpYvPfmobiS73/xQYv8+Pi7UARymTnY+lj8wrfBpQq0f7+1QcUh/ZjLxv
	q5CYOrtazajZG0c7PQ1gEfEGQGFZ0f95vT26lFDpi2Gpe2iqScTfEYBV1JqLKxYrtj2tzP7UPg3RN
	IKiVM3tCKGXNj80uOudgMac4bLiTm2EyAnsZ70XSP+Nsh6HpY5gDd1D1jZL+2FWUI0W5gaDlJSlQF
	492xhgsN8edPxHvU+cfWH2rlxyOejFSnNbgqpPmWV1vJF3df8FMxAmWRUDn4GbAQouPh6GmmtAxqv
	MpBeyCyLhxxG95Jf8JaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJGBQ-00ALHY-FL; Thu, 26 Aug 2021 14:16:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJGB2-00ALA5-6T
 for linux-rockchip@lists.infradead.org; Thu, 26 Aug 2021 14:16:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4CAF560E90;
 Thu, 26 Aug 2021 14:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629987379;
 bh=7pq1u4/Atbx0cmAC/gh6HFySRRvxLwwcOzRTNjLv0PE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VkOpy1kKEPF/UBvPPeB+yv01g2UJY/wDAVuji11aEf7mpMt8W6UDJRoT7rxwuVHaM
 /t38hFwkjrxE62uhQRV/x7wxTzW9hZT5hinC6LHJ/rDX/nU7h1weK17+DovH9pGcBn
 L8HohFabGcJIOCqzNlCyiUdyYQQzKFOTHunwIFWc5CQdbtZSM5zGf5V86nkEMMWmZk
 vujYdzln/ialJhvXIaxQDWBE8bEBEXir8zUlXzPHWsSXR0wPYE31LHAtABL1UEeu1X
 gc5AH8Mjl55ML3WOqrM8OmOe4vBnQMKbPRGevWIBITBlkOX900Hlib4/ozK5Wv3YGj
 uCs2FdSdZ7QdA==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/14] Patches to update for rockchip i2s
Date: Thu, 26 Aug 2021 15:15:44 +0100
Message-Id: <162998707937.5647.16412877707086770642.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_071620_303638_EA4EF003 
X-CRM114-Status: GOOD (  12.69  )
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

On Thu, 26 Aug 2021 12:00:41 +0800, Sugar Zhang wrote:
> These patches fixup or update for rockchip i2s.
> 
> Changes in v3:
> - Drop property 'rockchip,playback-only', 'rockchip,capture-only'.
>   Implement it by 'dma-names' of DT instead.
> 
> Changes in v2:
> - split property trcm into single 'trcm-sync-tx-only' and
>   'trcm-sync-rx-only' suggested by Nicolas.
> - split property trcm into single 'trcm-sync-tx-only' and
>   'trcm-sync-rx-only' suggested by Nicolas.
> - drop change-id
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[01/14] ASoC: rockchip: i2s: Add support for set bclk ratio
        commit: ebfea67125767a779af63ae6de176709713c8826
[02/14] ASoC: rockchip: i2s: Fixup clk div error
        commit: 6b76bcc004b046ea3c8eb66bbc6954f1d23cc2af
[03/14] ASoC: rockchip: i2s: Improve dma data transfer efficiency
        commit: 7a2df53bc090a161713da057df7455b39f6cd00d
[04/14] ASoC: rockchip: i2s: Fix regmap_ops hang
        commit: 53ca9b9777b95cdd689181d7c547e38dc79adad0
[06/14] ASoC: rockchip: i2s: Reset the controller if soft reset failed
        (no commit info)
[07/14] ASoC: dt-bindings: rockchip: Document reset property for i2s
        commit: 296713a3609deaf4ad2c460ffe196c09084792e0
[08/14] ASoC: rockchip: i2s: Fixup config for DAIFMT_DSP_A/B
        commit: 1bf56843e664eef2525bdbfae6a561e98910f676
[09/14] ASoC: rockchip: i2s: Make playback/capture optional
        commit: 4455f26a551c86e31c7d27495903a11c3d660034
[10/14] ASoC: rockchip: i2s: Add compatible for more SoCs
        commit: f005dc6db136a477166dd86e983351fec9129cce
[11/14] ASoC: dt-bindings: rockchip: Add compatible strings for more SoCs
        commit: d5ceed036f7cde29bf17173e9a9c8bbde0a70389
[12/14] ASoC: rockchip: i2s: Add support for frame inversion
        commit: 917f07719b133093680ed57dd7b5bc30b6a5b45d

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

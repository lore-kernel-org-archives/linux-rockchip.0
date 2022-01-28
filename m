Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA261C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 23:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFQysaXbEi8NeA88S0jgkhxZNkGESy3aNVSkUr9K70g=; b=43NVQc2wxTQ3nI
	7PoFAFsesVBUtgbkqmFdabfZzJixnIsaUunIa9KYZsliLX4e5Q6zuFLIjBuFKPHjh1Uudv3Im/R4l
	pXB1YiyAbDiFmLOTfffK63kkcf7SU39zzATPrgvQeth3Ly07dLqY76nf34rNR1QYXJHCj3LpDQH02
	rMwbxLXCgwwK7RbjFeIGhY8ce5haGEGTdb48NotuiyeCgBOYI8V4zo7ROqPfIG/s3Hl9LitmYK9gS
	yOg9z+YPzQvY5CqDzLVJhUYuk4d/8PZrIk2uGb/PaINQ0sX8byXZjdAv6CCrsfOwHMJNcZnhuDtV7
	4qmuksJV2M7r3my/vz2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDaxV-003nVx-Ng; Fri, 28 Jan 2022 23:47:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDaxJ-003nU0-QL; Fri, 28 Jan 2022 23:47:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4DFE361F3E;
 Fri, 28 Jan 2022 23:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1611DC340E8;
 Fri, 28 Jan 2022 23:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643413620;
 bh=YbZLwG+eJY1ZimQ3PDJ414ftXS0oYjH5t+IwvoH0++s=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=H6N+qa02zvveNZcva5WhrGiGfFlJ66Cb6+yfRLYilkduh+hulF7T0OeTu/hburMzI
 yri78rLL6daKW9gr8X08EibZESI18/IBpN1Pbc1hUchVwsl9f1LfyCo1WFwktqwb8/
 WhMvDqfjoXFeMWDKTJAFvPq07d9H9J95VdV4XpgahRGHn8cMJcF4WTXB1tus4t4Uh1
 5GnvTRmAL9qKEWspIPzel0cYJTWOmOhQW3fmKwYGPfuBHC5T3VxISuz3I97zsJVC+N
 KJ0PrtCoVJ9qsR9tTbUB13DANVzaUtP5ujdmoAOK3ZTdma0dMi9TkcPU5eWB2rSYik
 XmBrYqh7uuWpQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 alsa-devel@alsa-project.org
In-Reply-To: <20220114230209.4091727-1-briannorris@chromium.org>
References: <20220114230209.4091727-1-briannorris@chromium.org>
Subject: Re: (subset) [PATCH v2 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Message-Id: <164341361780.694709.13259283241590347085.b4-ty@kernel.org>
Date: Fri, 28 Jan 2022 23:46:57 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_154701_943876_7BE6700E 
X-CRM114-Status: GOOD (  15.32  )
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

On Fri, 14 Jan 2022 15:02:06 -0800, Brian Norris wrote:
> This series fixes DP/HDMI audio for RK3399 Gru systems.
> 
> First, there was a regression with the switch to SPDIF. Patch 1 can be
> taken separately as a regression fix if desired. But it's not quite so
> useful (at least on Chrome OS systems) without the second part.
> 
> Second, jack detection was never upstreamed, because the hdmi-codec
> dependencies were still being worked out when this platform was first
> supported.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[2/3] drm/rockchip: cdn-dp: Support HDMI codec plug-change callback
      commit: 9da1467b49ad6c02840e8f331c5da69f6a5bdb2e
[3/3] ASoC: rk3399_gru_sound: Wire up DP jack detection
      commit: 6a8bc4b68ca0c6ef73518b692c00b7e1e010d056

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

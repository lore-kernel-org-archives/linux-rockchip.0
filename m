Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8485C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 10:56:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFE6361004
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 10:56:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AFE6361004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXMkDpWyHECUOsDKFBkC80qr2wV2JLgiHUkb2k1BteI=; b=uAd6W6/r89/3Xv
	sLhBps8TXqvpNbD80LL893DJq+cWz6lHgjaFBpz7io6oRu7XMrZDg/mgYQB01JjpJ4N2smGk6ikn5
	6Zi4MagWc/s5dpoRB5A+YfK4Ok6mxpKg6SFw+upWniVX7R9eTnNuSrimwSvL7RwC+nzKECFw8eS8l
	S4IScU9m0eomW1j+et+olUr012JzpPVJgQMnK6oV93uGknlDEn/D7W7Nu9rQDjwdfi9iTTUBXj02N
	N/HqI2Lr9ypVqk4yFOdrRouWdmUtUiANT4X9aZdp44mVS93e2I6IApdY+Pxt7hWWq/Qx0qPOIbyCF
	CtaeiK4/0x/BwzQJvbgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPjd5-001P2v-Se; Mon, 13 Sep 2021 10:56:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPjcV-001Ol9-J2
 for linux-rockchip@lists.infradead.org; Mon, 13 Sep 2021 10:55:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC46261029;
 Mon, 13 Sep 2021 10:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631530527;
 bh=B3WACOWaU5Afzv3Vm7VAdPhu0oyR6Yu45R6CaWCqSI0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aH4zYEtKk8ayJHkzsUGqom6WuSU00WV6ODNFUSJ6nAxlHlOAkqN+abtsoXjKH7BOj
 3HsHLkxoA/w+g7AOlHPC3KsTlBq+456/xyDBP463NeAIY1xrLlz0FPK3q/f/UWP3TM
 GFDNrZJ4Z0CQlMt6oH1aNtxaqiSVwndrOL3JHgF5fAAof51a8ehn7ZpXTAZ5y8vjSZ
 oaZlVIpMcWlj4DW1kIhzcZln4B449ONaqFIcIdMHlgwjslZ460undJtEbCVXhh9uo4
 3o6OYw3BGiCvBa0Tn4kiQOyURacorH+zIVXVrs/zHpdvKcY0QByTSArr6AOkdWCrHD
 48qAg4Z4/qAZg==
From: Mark Brown <broonie@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>,
	heiko@sntech.de
Cc: Mark Brown <broonie@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v4 0/7] Patches to update for rockchip pdm
Date: Mon, 13 Sep 2021 11:53:33 +0100
Message-Id: <163152996585.45703.15904928941100821408.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_035527_740158_E91795A7 
X-CRM114-Status: GOOD (  12.21  )
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

On Fri, 3 Sep 2021 21:22:37 +0800, Sugar Zhang wrote:
> These patches fixup or update for rockchip pdm.
> 
> Changes in v4:
> - Acked by Rob Herring
> 
> Changes in v3:
> - Fix property 'path-map' suggested by Rob Herring.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/7] ASoC: rockchip: Add support for rv1126 pdm
      commit: d269aa2ab975807764dc2509e4156bb9b6bd0d34
[2/7] ASoC: dt-bindings: rockchip: Add binding for rv1126 pdm
      commit: 49a7a625ad79e5b995be313472743b278c90c853
[3/7] ASoC: rockchip: pdm: Add support for rk3568 pdm
      commit: d00d1cd4ab42f92d4d871deb9cdea1d7c262a213
[4/7] ASoC: dt-bindings: rockchip: Add binding for rk3568 pdm
      commit: f80e5a14ac2730b441c71d191e6538a74706cab3
[5/7] ASoC: rockchip: pdm: Add support for path map
      commit: 13e6e042a6f9c2be676f421935e026308de3303c
[6/7] ASoC: dt-bindings: rockchip: pdm: Document property 'rockchip,path-map'
      commit: b2527dcd65b3e141e9363af5b256aa484bd4c06f
[7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings to yaml
      commit: 8ece5ef67edca06e54460b244f4043c237c90a21

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

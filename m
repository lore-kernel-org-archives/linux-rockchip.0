Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88719C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 20:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66ETSqm7uXB8tmxrY4O37KQsdDnefr+5uTAIinfahu8=; b=sbSggsd0yc870y
	N4WNGaY1BSJIIe7CaT5eN3fpEy6IDV6ch9Pa4nTHdCWN157wuNTw7mZuhUGMLQcA59epWJ1i+1Yx4
	U9e72nSa17oMQHBVsaxJeMdMCtyyHXU5K2i9A2EEpGvAiIAdoZLFgykwidLTHTQkVtCtMWdgDUkV4
	+od/u2puO+3totvBxDKUaa0zdZ3isN5SZTqJ6Uv1T2oPYq9P7X8x7ZUDG73Ouoa5MVBUYRPU6BQ95
	o7hXNrZLDe/Jz8Nk7EmfjbZgb8tyNh+wUjW+jj70tQvciUKdnHHdFcIiyFN8D2HdZkUvPNrAg2xI6
	i0IRU75Ok00BcJ3Qt07w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qW0rS-002RY1-0s;
	Tue, 15 Aug 2023 20:41:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qW0rP-002RWo-1E;
	Tue, 15 Aug 2023 20:41:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AA3456192B;
	Tue, 15 Aug 2023 20:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29FFDC433C8;
	Tue, 15 Aug 2023 20:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692132110;
	bh=N7ipikLuPtGgetkxcY+A3Ut1e/FpcdlgAB/lDl1fW/w=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=RGz9IEfwwSDU6RkRCDeWBhsyJ+y2VV6ZRXXHxyIz7K8wWaxdNlc5MB+oifALvzeFx
	 xVp2/GLHXEFshr5NDyFnNwpxhhc1x0I7k+Opw5udpcBO3Cw9s+a5GrJ8p4D1Lp4M0J
	 3RoPY6uyfLC5ThJEynhJt2NUQat69iIK0PyC31cFkaxrPBNi2LpskBL6VFq+HAgmB1
	 lVis78itGCJiqXLjUD8UCCrPk77UTS1P2qaKKk9DM5lHzxvQTKeFw2tsbgstnd86k5
	 LcGYGqEIYoS93FvFWe+XHckNIw2VkSrCd6lMs4RaVMVTtbSRnymapWooXYIrjYRqv0
	 rFTAGSJRqdiVw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, 
 patches@opensource.cirrus.com, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
References: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH RESEND 1/3] ASoC: codecs: tlv320aic32x4: Fix
 Wvoid-pointer-to-enum-cast warning
Message-Id: <169213210789.572973.6949298748225335967.b4-ty@kernel.org>
Date: Tue, 15 Aug 2023 21:41:47 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-034f2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_134151_485372_2F22152C 
X-CRM114-Status: GOOD (  11.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, 15 Aug 2023 16:32:02 +0200, Krzysztof Kozlowski wrote:
> 'type' is an enum, thus cast of pointer on 64-bit compile test with W=1
> causes:
> 
>   tlv320aic32x4.c:1352:18: error: cast to smaller integer type 'enum aic32x4_type' from 'void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: codecs: tlv320aic32x4: Fix Wvoid-pointer-to-enum-cast warning
      commit: 66de320b0214a60095287ba1afa09e870d8cdbe5
[2/3] ASoC: codecs: wm8904: Fix Wvoid-pointer-to-enum-cast warning
      commit: 5a1803324949f4ebdf6e887b59e0e89afc3ee0bb
[3/3] ASoC: rockchip: Fix Wvoid-pointer-to-enum-cast warning
      commit: 49a4a8d1261230378a8931d0859329057686b6eb

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

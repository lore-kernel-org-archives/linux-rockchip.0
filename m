Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 681CCCD98D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RLIWce8AZVrUTUsaMISKZhen4M30AlUdkLND+SeK2A=; b=e7cdTkBJeJ844G
	aEOR0thSpshCfhuZJwFz5fWX3d3PFFbZ5P5SHugHrGChs984Xd6IVWXa4NcDJjc/+WZfcQJ+yRzI3
	eG+i7dp6ilvsyb3inIC/KI3NTpoHAyqc3E7pMutju2QBrIprdm5rkCx2hYs3C2JV2gkpCojyzyy2d
	smlwrdXP4eL2F7XWDWe9B5IxhkIBCBsX5AcnlrE0MiwHrwFzbsPvmQCvN75UmSpjz//TiG7am5Pza
	pFBwyXm9TASnl2zTdCptjdCqwwBwGixZi6ykQAs8XH4oNyXgwbmU1uR3++HajNtTekLVsvdPTqGDb
	tebs9rKT2u12ARskknLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbe2-000000097a6-2Qxh;
	Thu, 11 Jun 2026 09:24:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbe1-000000097Zw-36AL
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 09:24:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E65F5600AA;
	Thu, 11 Jun 2026 09:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F7A51F00893;
	Thu, 11 Jun 2026 09:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781169852;
	bh=kaDbe2Wtadm1CovoX1M+pm7BWifn8mTlFUxuaDqLi0Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=WnTU/27NgzOoYes/IzeMe1761wQ9wdP19YpDfXsYUpxxGG6XZMQ25Hl4AFte7UTPd
	 BL8I0iSXCAKoGHxIb9Ayper7xIpPamXXxwv5m5VsIiasCQHvnvOZuqv9I5+4qGtxV3
	 XbwKGgLUZRH+j7fA58Q7D/JhvHB0y0wcsc6r2X3U98aesHk1zaDTi+9qcueDmAeR+J
	 uAZns5DnSAzUES0mpChef3CG3k+CVsNG+l2VlDg1dyvN6UstFwo7GOoSJ0aO6k7pYP
	 puMZojS8gK/7CxwD2v0LuFfPk9L1CJ7Si0BZmcwSj1+lCPXpKE5+MQ1KAquwU90sVk
	 P5Dpa3PvD9p2w==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Zhang <zhangyi@everest-semi.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20260607105913.355966-1-diederik@cknow-tech.com>
References: <20260607105913.355966-1-diederik@cknow-tech.com>
Subject: Re: [PATCH] ASoC: dt-bindings: everest,es8389: Document audio
 graph port
Message-Id: <178108992684.232889.2776738169377861702.b4-ty@b4>
Date: Wed, 10 Jun 2026 12:12:06 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1142; i=broonie@kernel.org;
 h=from:subject:message-id; bh=mfT8gSVDCWk4JyRaaMo+/qGlPesjAc/rwMATv4G2nsg=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqKn65dqvazU4B177fGwRd8nxToenUhgxdKVsld
 sQPpxJGuxuJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaip+uQAKCRAk1otyXVSH
 0F0bB/9PSDgrxCKFj6Vx5OG4742eNYZfdMZGWRmtZMqx1jEsWbsOTc1La2BjnRVl1v3bTjNqWTT
 o6OyxjkETr5eVJG+c6mpNoJYNumnURYwFUK9NKXk0eHHcLxw2LN62kTG1il1q4kOemlEGKb5CT3
 OCM98D214M1rKGCcpeR+A50ik03quJF8PL0hBYuTfgpczE/pOXGDSJKanc50sAq2bdnRTWZPbpr
 5eDQxgiESXTCYokAEvP+SExqeDHFdz8g5NLcy4C2Je93hx8+x9hcaTVkSAgjC+JB9srp6dwIrp7
 Tj2XVH18GBsUMlpB/cJ9mj9CStveBRbsE+xJYp4NQTRBXHP8
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

On Sun, 07 Jun 2026 12:58:49 +0200, Diederik de Haas wrote:
> ASoC: dt-bindings: everest,es8389: Document audio graph port

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/1] ASoC: dt-bindings: everest,es8389: Document audio graph port
      https://git.kernel.org/broonie/sound/c/aa283db3bb8d

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

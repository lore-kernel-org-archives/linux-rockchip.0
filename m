Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5312CD98ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 12:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iySIXwG8PE79X8BTUcAeMrUeymZxw4mwjXLU2EnFi8E=; b=mGt3pR7LO1zLqC
	JXjgkoP+HaEFJvMiIwRXN0Y8YKIpd4K8O3E4RO15EoV3ErilMxO3YtoBvoRxc2uG2cg82m86WQzEV
	mappV30Y4+Ajaic2d6Bg1kr2n+TFzWd+nHqCmAeRF8Bhl40FWwNgKNi4zwWY4Z8+kMQ3z4Ko7w6ZL
	vFhXnTHpiDNXL3p2mImuji0VEpf5s1L3kQfTe81eHHPTsdX0XhsTwdHFIL1jrPHaPEr6CBfOTCqpr
	9LzWG5KOirPxrVPCn9j2k3rw+FsVNCiRq0BdgmMgEPKpNLkXuh1F7cRSnoBL19qNx/ZWlyGY2UrEP
	FX8VzWpV8A4uIVCurITg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waCEI-00000001Hux-3JV2;
	Thu, 18 Jun 2026 12:52:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waCEH-00000001Hub-2YZj;
	Thu, 18 Jun 2026 12:52:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A079460008;
	Thu, 18 Jun 2026 12:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A67C1F00A3D;
	Thu, 18 Jun 2026 12:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781787140;
	bh=L+sZTuqfAwZOvcHkddEpZ2hQIeARdrjBTwFIa3TnH4M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=QJuMtccOvtTNhNy4ODHt796eaLXGIqqNI+marKFA2Y68RH49mxSJ6Qp3LLMeWvpA7
	 7rhuBdSJwOd+Oarwz8U7s73cCMhSY0Egz1BIxE4hcvlXYuHpjMaTIPf+34ZvWreuyt
	 iQtzRD9HUjRzQw0SXQK0IqxlIgxpxn30RWy5OMWWHGMFbCSApvSEVAfqtevhvRJYj0
	 FRCLlTv77nVKmx3pDPV9sUicVg828RE3qUOoaaP8T22r0+2q6cx4pUqm0wHuirGr18
	 sooykekHs1U1rDl9xrEAK1iqWbM9HaViAH7hhWXJVPX3CW7SJhg2LqeRGEurr/A3iU
	 Rg72rnATGbq2Q==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: bui duc phuc <phucduc.bui@gmail.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20260617-sai-revert-v1-1-e46adda2213b@collabora.com>
References: <20260617-sai-revert-v1-1-e46adda2213b@collabora.com>
Subject: Re: [PATCH] Revert "ASoC: rockchip: rockchip_sai: Use guard() for
 spin locks"
Message-Id: <178170382923.38451.6156134773470813531.b4-ty@b4>
Date: Wed, 17 Jun 2026 14:43:49 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154; i=broonie@kernel.org;
 h=from:subject:message-id; bh=5dwo2XrqeVLORSUE1lwRd6yNZITVOczsLi9vIE3RgdU=;
 b=owGbwMvMwMWocq27KDak/QLjabUkhizjV4x857jfRDss/Ki4/oiiVfyyI4xbXvw039x12jpg6
 57stvPfOxmNWRgYuRhkxRRZ1j7LWJUeLrF1/qP5r2AGsTKBTGHg4hSAiaQ3sv93uKJ7O7bFj4FH
 vKElisvm3LuW1/7dZsadbOveHUt85RSjwjMlnzlu0V1ezq0ys/brLWU+F5sWEKbS7lS5bN+flaK
 uHx96ML5Jz5ndEzNztdNte2EJfz83K+6K0jPbudQi1E4dkNu1XDWt0V/v/B4D3rcMzo8P26iGcl
 vY+sxPD+dXusB2UdXsmk6bmeqDzOn/HwW/OnN0ZUubwtvFvE/ZZmmq8Or/n679cNbqCz/tzm1w/
 d1R3Pr5n8KqlpiMRNH7bIHTt3seruMN1puVfVum4rt2u9E9piWqhavKNE3j3Np/zE53Xmc8N7ni
 unKR7mQNrT+Bm2oPcQSz3JxjxN9wxlOc02/Fo98mqi2KAA==
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

On Wed, 17 Jun 2026 13:46:04 +0200, Nicolas Frattaroli wrote:
> Revert "ASoC: rockchip: rockchip_sai: Use guard() for spin locks"

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/1] Revert "ASoC: rockchip: rockchip_sai: Use guard() for spin locks"
      https://git.kernel.org/broonie/sound/c/1a3c8e289597

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

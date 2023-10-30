Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD12CC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Oct 2023 19:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hdSyzgPJcP4ne+okwwNkjZEXEy/JNDASD+PYTNksxI=; b=S+bZVv+GqWYoPh
	hOHvAtKxSPjKAI9SSA8Y3FWQMlbJFF7i/QVcIpbYltWF7qCy5nz2QdkTfCRQlt27pRR5IH2KwiowT
	Q7yBPVllmFWTryjLvbxCK/DKPbN73/DRHOtTia9ZzGNgt/9QI/tgmNyx6c4dzXjNg1FV4pL/sPpZ3
	2l5euL44+YjbLLbQfUDsrswqj3RBfF4M3YCsJKiiO1QNA2tFup89RkSvUObJ+vPZe1WMyhRpABHGS
	31vIN5N2fi0JLEgWtXOpLYbPREisF3J9hBfkGCiey/WmqSn+mA6Tyxdk+/VMZScsYEOfm3hj4Qxic
	VpBgEMgf0q9B07j16wHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxXoY-003ujr-08;
	Mon, 30 Oct 2023 19:20:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxXoU-003uhy-1n;
	Mon, 30 Oct 2023 19:20:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 735B1603F1;
	Mon, 30 Oct 2023 19:20:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 928E7C433C8;
	Mon, 30 Oct 2023 19:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698693633;
	bh=hvnFWiwDyeUV5ubEK9oHUg2sWcW5EpgpZngLeQIpoMY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EJzgFNmYO53E10LQkruS2JsXQZtLvvKbm9vj7nl/74BTKiDlxt0soP8CJX9uB060J
	 tOMtLpXUyM8O3fIowI/N34vI8ucBg4vcI/2tznGIUHvECCTN9kqVA/1Vkf9+M4V5jo
	 yAYV2jA60EBQzZJv35lejkGjN3jcnaHb+ZbVODCOZok34TYymzvVPM/RUbT5iFjPmv
	 fwLgubHrrQ5LuE1jIrkz+oFFq50M3mxyaHaAA0bdwajqz4oP7fPNMFoLuypgpqtwKR
	 /aSMJNaDF505q5+Yc6P7RUHcw5b/jZeECUlw4Wz7enpXLdUlxVXnUZmjRBQLWCh0RY
	 7hx91YEjzQJtA==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-rockchip@lists.infradead.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231030142337.814907-2-robh@kernel.org>
References: <20231030142337.814907-2-robh@kernel.org>
Subject: Re: [RESEND PATCH] ASoC: rockchip: Fix unused
 rockchip_i2s_tdm_match warning for !CONFIG_OF
Message-Id: <169869362917.44249.630029762300338773.b4-ty@kernel.org>
Date: Mon, 30 Oct 2023 19:20:29 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-0438c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_122038_639556_4A66DD33 
X-CRM114-Status: GOOD (  13.86  )
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

On Mon, 30 Oct 2023 09:23:38 -0500, Rob Herring wrote:
> Commit 9958d85968ed ("ASoC: Use device_get_match_data()") dropped the
> unconditional use of rockchip_i2s_tdm_match resulting in this warning:
> 
> sound/soc/rockchip/rockchip_i2s_tdm.c:1315:34: warning: 'rockchip_i2s_tdm_match' defined but not used [-Wunused-const-variable=]
> 
> The fix is to drop of_match_ptr() which is not necessary because DT is
> always used for this driver.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: Fix unused rockchip_i2s_tdm_match warning for !CONFIG_OF
      commit: 04f8c76de983a5c1e8913e442e791a9e8d0e0dfd

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

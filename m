Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C933CEF14A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 09:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3l1W3qHHzLnRC/TkNlGptCYya/aEBRbpYL9GrCZW5o=; b=KhujTWXfIgYnuO
	+6ZHikWUfRQ7NjX9yePuxdBneYQxP7r5h2GT7JATThbioR2DIqQwQUE0w8wzlReq68vMV2e71RRTN
	y+els2WMhqWDo7leS6tCNJk3d6k7Q5vWgRczbUrqJWHW8obUzjt6BAILzJaBa/GPSb1/iRWniG2Ex
	VXfEXpKrm3y+fU+XALgUbezb/i02tv21+NG7QFAe9B6U0Yry35kdatAih+Ik9bMMw8jweLmPhhbaf
	cym7aQNTunN/LUJ12VsdN8Gf97sT806TphMDcftV/BSzuWsyIM7RRmkjcQH0PbhFpYKUGdp5RcoLn
	wSJlZRlUyn1HOEVPNjxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy6qG-00000005N0f-2I3h;
	Tue, 08 Oct 2024 09:49:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy6ov-00000005Mld-3Yza;
	Tue, 08 Oct 2024 09:47:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4018EA4344C;
	Tue,  8 Oct 2024 09:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 609F5C4CEC7;
	Tue,  8 Oct 2024 09:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728380876;
	bh=ykHfEdBXhl1fXBnfbo9MF4au8+Teea347Ae9LYLabp4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mAfwGVMLzJiAlIHjTdcfj2bCS5f//Oq8LHfH9ojls6gbEYbHS65QLvHAbMg86EIEM
	 XRKZBJkiPNsj49zMtC8YXY0tXnEZN5z3hLbGNDU0myId76zlo8R73AT2sYIelkIecO
	 cn9V6hZF6+FTi3Pk+4UEtzbrT4s517yG1fGMriQtGMUscV88brG5RLMJC03DFy2Zvy
	 8OxiPWOStuqDL0+OQUAiV1//nFo1ku699FxJE31Ua88KMeBZH5bLSrbZfZunwsyddy
	 4CvKR78HoY/4Ux1Q9dnOQ5aYPu/FnV9DRVf7k9C4CQftkeLvaeJAKMQSVr8GUpXetN
	 +0mDZBZDJlKVg==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20241007205639.2477635-1-heiko@sntech.de>
References: <20241007205639.2477635-1-heiko@sntech.de>
Subject: Re: [PATCH v2] ASoC: dt-bindings: rockchip,rk3036-codec: convert
 to yaml
Message-Id: <172838087307.2574699.1959235888192800827.b4-ty@kernel.org>
Date: Tue, 08 Oct 2024 10:47:53 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_024758_010717_B3467DF9 
X-CRM114-Status: GOOD (  14.60  )
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

On Mon, 07 Oct 2024 22:56:39 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml.
> 
> The codec seems to be from Innosilicon, but the compatible has ever only
> been rockchip-based, as they sythesized the codec for the rk3036.
> 
> So the yaml file gets a name matching that compatible.
> The only other notable change is the addition of the #sound-dai-cells
> property, that is always required.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: rockchip,rk3036-codec: convert to yaml
      commit: 5cd575a87f141e438b3e062533bf0c6cc9eba99a

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

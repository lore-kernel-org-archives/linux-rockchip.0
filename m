Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C246AC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 18:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkzKJuDS0r2nr+jLd0IwgAcEcgkjpwJba+AsUzUme/4=; b=19MDB4C7hZgcof
	83P9UkyKhYd3054LA2KCRkR0R+p7P829HoSkYh7KWhP71iZZoks6bs1eEp8oEouBWSAKAqTwnd4xO
	STZFfoab/J4nJJcjbKDthfnpIyoACqm9aqd6M4GKJX7azQIw1ToAxDKJDnFRUKFfPg39a8GnzHlyS
	MAzCkxGBBPySB73SwTPkniNEV6QvUdB4MoOr9ayDQWnidMc+RgmO9QLErWPrrTUfPrd2xft7/gJg7
	Q7JkTzcujZs8/c+WjtqNHyhZ418Pr0MkqtGpDkX92y9D+1GrbnrjtvCYapa6F/nwBmUXooTBbzlmF
	xcBdoE54Dkf4EUC6Xfbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1morwo-00EAWy-Kr; Sun, 21 Nov 2021 18:52:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1morwl-00EAUe-N0; Sun, 21 Nov 2021 18:52:16 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1morwi-00086u-T8; Sun, 21 Nov 2021 19:52:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Artem Lapkin <email2tema@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 gouwa@khadas.com, jbx6244@gmail.com, nick@khadas.com, wenst@chromium.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 christianshewitt@gmail.com, art@khadas.com, robh+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: remove mmc-hs400-enhanced-strobe
 from rk3399-khadas-edge
Date: Sun, 21 Nov 2021 19:52:06 +0100
Message-Id: <163752071859.2241976.7994917045018325320.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211115083321.2627461-1-art@khadas.com>
References: <20211115083321.2627461-1-art@khadas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_105215_797325_4E754A98 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
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

On Mon, 15 Nov 2021 16:33:21 +0800, Artem Lapkin wrote:
> Remove mmc-hs400-enhanced-strobe from the rk3399-khadas-edge dts to
> improve compatibility with a wider range of eMMC chips.
> 
> Before (BJTD4R 29.1 GiB):
> 
> [    7.001493] mmc2: CQHCI version 5.10
> [    7.027971] mmc2: SDHCI controller on fe330000.mmc [fe330000.mmc] using ADMA
> .......
> [    7.207086] mmc2: mmc_select_hs400es failed, error -110
> [    7.207129] mmc2: error -110 whilst initialising MMC card
> [    7.308893] mmc2: mmc_select_hs400es failed, error -110
> [    7.308921] mmc2: error -110 whilst initialising MMC card
> [    7.427524] mmc2: mmc_select_hs400es failed, error -110
> [    7.427546] mmc2: error -110 whilst initialising MMC card
> [    7.590993] mmc2: mmc_select_hs400es failed, error -110
> [    7.591012] mmc2: error -110 whilst initialising MMC card
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove mmc-hs400-enhanced-strobe from rk3399-khadas-edge
      commit: 6dd0053683804427529ef3523f7872f473440a19

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA97C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 23:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmhTbMLyfLIdTOaWERwfSCcUHpe7M1ldo7dkrisMNkg=; b=I1TM5SAjXMaizV
	V3/KYBtN7UnO8+IdgvmS215kFrw4SXjJ4Zw9+TtsMdTBcA2voa/Wn1Qr7j35VLKe+3ZIJkdwdfAqa
	/GDS/wEYDRZUO8ovNfQ0vbfp4mBHcQztYY3k/6sj5mj3397wv81uFaerNNwQ9aQ3nLtvcvOBqQy/M
	kOZBSeOx8l1gzxV2YJtYbLyOK7eSV46SIgoFNdPBlos+5RQbwuqO/f2w49tlxO0qZZM9TZDGCNL4b
	zTK4rsLD03rddccp90FbKlreb9mFB166bt3cAg9/l1scrGQN1ASLcWdUMbrj/sSoVK0zABVLejmEj
	ZWPxxuOU0mUtSy/b1OhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6dg-00000007Bza-0NWS;
	Tue, 27 Feb 2024 23:13:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6dd-00000007Bxs-0yiZ;
	Tue, 27 Feb 2024 23:13:30 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf6dX-0002LS-AB; Wed, 28 Feb 2024 00:13:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Tim Lunn <tim@feathertop.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] dts fixes for Sonoff iHost
Date: Wed, 28 Feb 2024 00:13:19 +0100
Message-Id: <170907558762.800427.11245323145550658595.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215110425.934740-1-tim@feathertop.org>
References: <20240215110425.934740-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_151329_300325_8A6A7AD6 
X-CRM114-Status: GOOD (  10.21  )
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

On Thu, 15 Feb 2024 22:04:23 +1100, Tim Lunn wrote:
> A couple of tweaks to the dts for Sonoff iHost.
> 
> Add aliases for sdio and sdmmc to ensure consistent ordering of devices
> on boot.
> 
> Tweak sdio properties to improve detection of the rtl8723ds sdio wifi module.
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: mmc aliases for Sonoff iHost
      commit: eb246eaaa55aaa52c0c183f835157a56270ce81e
[2/2] ARM: dts: rockchip: Wifi improvements for Sonoff iHost
      commit: 391f46c775fa2108952c8f9a88b5bea2c3c74d1d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

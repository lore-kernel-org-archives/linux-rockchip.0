Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EAE9EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86WATyr0+KdfqOa+LYFNzx7yJ0qOtkKDzke0w3nZveg=; b=IbEZ/2cX9NaJUQ
	b1idmT+pg0Xy/Q4cET4Nq4LxldQ9H7r9+sRfaUdHOJPPNi7Vu9h2DfEDSogNpwEQYjY/k5N9nPGVz
	TdMMUVq8UaqbFpaShUNrbS3LpR7BZlTkJTycK+A2EDXnC/hZKPXLFwMGw3m8idjoiFursbOMNVAxY
	8C1ZoX0mG6Hffa1wd6gVs+YihGnYx1jwbXaO/R8gMhoHldlVEzeJ5CQqFCRh5vQmZ5hYsUZ4WSgmb
	/6gfjRMKmXH5DZCOD5fuBbiMGCVxNMz1u/P7vu/2eis/xYMbrXzft3XII4Ll/gD6JPDMVc7vxsSzV
	rOdRbjfilriQTdGTsUgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrhH-00BrUT-3A;
	Mon, 10 Jul 2023 14:17:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrhF-00BrSU-1D;
	Mon, 10 Jul 2023 14:17:02 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qIrge-0001RE-D4; Mon, 10 Jul 2023 16:16:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Riabchenko <d3adme4t@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Furkan Kardame <f.kardame@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Anand Moon <linux.amoon@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Shengyu Qu <wiagn233@outlook.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Dan Johansen <strit@manjaro.org>,
	Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	Wenhao Cui <lasstp5011@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Lev Popov <leo@nabam.net>,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jonas Karlman <jonas@kwiboo.se>,
	Fabio Estevam <festevam@denx.de>,
	Dongjin Kim <tobetter@gmail.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
Date: Mon, 10 Jul 2023 16:16:16 +0200
Message-Id: <168899855919.1747213.9998138836668928892.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_071701_415999_18551439 
X-CRM114-Status: GOOD (  12.83  )
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

On Fri, 7 Jul 2023 19:22:17 +0300, Cristian Ciocaltea wrote:
> The 'regulator-init-microvolt' property is not currently supported by
> any driver, it was simply carried on from downstream kernels.
> 
> The problem is also indicated by the following dtbs_check warning:
> 
>   rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
      commit: 4d08b19629495b29601991d09d07865694c25199

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F965EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 07:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRXcwXvcuccWpkvTW8jxgmd51eJdv8VKbJl3FuiG7Ko=; b=iyAEOdYtUDnM4A
	focv7nqEAdSu//ip8HDpdTTIjiUaCjwCiDDyeMwTB4Xxq61vwiTC5r8oPOij5pgQSvqFASRec5HCa
	9M9MXscMhdHkdZVYcDvjSKGqCt1GOaOMEkBBBNeGsKUIhHmwrg1EXXON2lP4HIC+wnslwl2Dtnl5Q
	ZYyGlRgv7oyLhL4JbQreNTWTijVHpAhQJNXthCeE2N16ykM2CqTH6egF26TX8EeQdBqpAlxEMq3le
	dqGw1T5VsUk3vHeJ+2ayKIuUWhAJXSpwxiWdFoE6yBWdnNTXjSKaGuv3v2SjpQQ8cT199I+wBGRKX
	tqDoE7dTZURaNRNDqO3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIlYb-00Ajag-2D;
	Mon, 10 Jul 2023 07:43:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIlYX-00AjZj-33;
	Mon, 10 Jul 2023 07:43:39 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D77176606FF3;
	Mon, 10 Jul 2023 08:43:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688975016;
	bh=RSNmmnHziTlDAgu8JEig41GnRrvBNbskDgsAtQQf8+U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hFGNfK9TNWyWktDhE5Gu+sDu37Xp/SX097k01OprOFLhkjIwwLny4u2dCKzqH57lN
	 3zxcXBOi8BnkYWYnLpICsp4tlkvSppwuEiZvvuEeErHtJrv9jpOVn2sRLwegECGC2n
	 72/DduMIMO68/K72A1DttBi2yTZ5Nf2BOydWy5Y9pg4PGhfzUTZr49KPDuOBb4zoQw
	 HULSeJ0y01wBZehJlFFllV3hWpi12/Ln8i96DCmhZu5bpRj9X5nt5IMRY5BFbRtUrL
	 Bx4sGb6EBPraeDqiEbZbdGMguDPP7dcCnfBPkrxUapc+whLADpsrnqahI22m/ATEue
	 8Wv1YGz088S7g==
Message-ID: <e910864b-51ac-80b8-40d0-c7450bbc4e5a@collabora.com>
Date: Mon, 10 Jul 2023 09:43:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid
 regulator-init-microvolt property
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Jensen Huang
 <jensenhuang@friendlyarm.com>, Chris Morgan <macromorgan@hotmail.com>,
 Fabio Estevam <festevam@denx.de>,
 Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
 Furkan Kardame <f.kardame@manjaro.org>, Yuteng Zhong <zonyitoo@gmail.com>,
 Wenhao Cui <lasstp5011@gmail.com>, Lev Popov <leo@nabam.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Peter Geis <pgwipeout@gmail.com>,
 Dan Johansen <strit@manjaro.org>, Frank Wunderlich
 <frank-w@public-files.de>, Alex Riabchenko <d3adme4t@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Tianling Shen <cnsztl@gmail.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Andy Yan <andyshrk@163.com>, Aurelien Jarno <aurelien@aurel32.net>,
 Dongjin Kim <tobetter@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>,
 Anand Moon <linux.amoon@gmail.com>, Shengyu Qu <wiagn233@outlook.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_004338_115564_5C621785 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 07/07/23 18:22, Cristian Ciocaltea ha scritto:
> The 'regulator-init-microvolt' property is not currently supported by
> any driver, it was simply carried on from downstream kernels.
> 
> The problem is also indicated by the following dtbs_check warning:
> 
>    rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
> 
> Remove the invalid property from all affected DTS files.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

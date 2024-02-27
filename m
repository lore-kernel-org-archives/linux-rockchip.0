Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3988DC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 23:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ao7gt/mnDjQrdi3u7wOrc0E+vtGZ/Jyv7oZsS99U34=; b=AdvPj88/A+gi/I
	iO/ivgO4QHkYD0cm+nnHexQDOY7Ya+RWNbimheetUB+lkJMzmRbUhA8Fl/OPhzX6vrGY9DpuuQF4a
	n/vZrs0My4QqTOlKNwJfVuof+X6z5Eb+LdzttVXHAauqlESTHErmw8mejx5w++0IOTYbTYUHXFEen
	QWSgoVpy5Z3BJDbwmVgmDb2Ojd08qD2Go8v8HLINzEMKRLOG6dSh9Na0xb5Rhv2iUqOgc3UzH0t9h
	HQ3eOjGb1fPCAM8oyBrlQ20HTXsC0d8x1iezY51xYF4dzZa3K/STmzTppUzgsrmaNmdFeonWAzmMX
	6EBYFoVkbY61WPmK3oSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6e5-00000007CAd-0WCC;
	Tue, 27 Feb 2024 23:13:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6do-00000007C3C-0RLp;
	Tue, 27 Feb 2024 23:13:41 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf6dY-0002LS-1X; Wed, 28 Feb 2024 00:13:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Tim Lunn <tim@feathertop.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Andy Yan <andyshrk@163.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Tianling Shen <cnsztl@gmail.com>,
	linux-kernel@vger.kernel.org,
	David Heidelberg <david@ixit.cz>,
	Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
Date: Wed, 28 Feb 2024 00:13:20 +0100
Message-Id: <170907558762.800427.12078271862090822070.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_151340_163610_CB35DA0B 
X-CRM114-Status: GOOD (  10.64  )
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

On Wed, 14 Feb 2024 15:07:27 +1100, Tim Lunn wrote:
> A couple of rockchip boards incorrectly list their vendor as Rockchip
> when they are in fact not manufactured by Rockchip.
> 
> Fix the vendor strings to correctly list the manufacturer
> 
> 
> Tim Lunn (4):
>   dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
>   dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
>   arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
>   arm64: dts: rockchip: adjust vendor on orangepi rk3399 board
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
      commit: db51e128df1010653aab71c07e06280e37fecaeb
[2/4] dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
      commit: a03fd4b3bebc9775c921a965c4c22b1a0d3a2503
[3/4] arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
      commit: 437644753208092f642b7669c69da606aa07dfb4
[4/4] arm64: dts: rockchip: adjust vendor on orangepi rk3399 board
      commit: 7ec958ed6a32daad36918d200b594f33cb4e0dd7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D97C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Dec 2022 04:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbJiTXraloQAo4iyU9DKPJYJJ41Vtpuav7Hytucd7VM=; b=byHpG5AwwpzdOo
	DxqR1aM3yaVPV5179QKeRJz8lu56TSkEKEDDPOlr+3dDltltGl/kR/1ueTm6yndjTjruVYAdH8cS7
	ofzVKHyl7HfYEPrCtQqFCQfgBu2HIB90LxqVwBMsN0w0dtmr252EZ1S3pzYferOlVURoFuEXo1B+r
	gbCkUWJTdqh9qwCHBjUZ9x5VxXjfwMcefk/InPjKALwBY6PByQ2BsMnM6WgKGAOXYCTpiVGlPisCi
	A9wgMgYU3phbyzr/IaxwQhGUn9ZYbo2WUFMXG2JwrPCZT9IBMbw4a9OxL89TFfAb6+xbktukDPA/l
	u7ZAlXuDWSoCYn9r+uhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0xNg-00D6bp-0D; Fri, 02 Dec 2022 04:10:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0xNT-00D6Xm-7U; Fri, 02 Dec 2022 04:10:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6AF8B61198;
	Fri,  2 Dec 2022 04:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2FAD9C43470;
	Fri,  2 Dec 2022 04:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669954217;
	bh=HaP17cY8bC6Z7s7UbiuxYbq8Tj2YqlDJaygBIxTtgLE=;
	h=Subject:From:Date:References:In-Reply-To:To:List-Id:Cc:From;
	b=ceAE5Mxrl5cb2x2vxCvkWYLuAKVIUSda9eDgrj/v/dsN0Vo4tt9V/HX2M1h78crwH
	 d03jz31h574qWxU5y0Q6ocFqqylNVBdzBI9uTKgsYl38Y8QLSLrfk+o4bDBD8VeCNC
	 hOf+Q9VR7k40jlRRbcnmmPma/ihKnDAxNqujnGgx/nv1JtJ94HtmmJ+5QA/ZoM/ljG
	 RbLwj0w3XtuqtUeWwYO5QEIDqRz2znS9lfFPx2OW5XdmmmHyWdfTLPeNqAhADtZ0Ow
	 Pk/KqULn6e3dQaK9ZYBlnyp5ewEhowWzruyM0J9zZHiExqyTEM2UT4whZS83/WJftY
	 F7YUJMQy9oi4w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 0DDFCE52545;
	Fri,  2 Dec 2022 04:10:17 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 0/5] remove label = "cpu" from DSA dt-binding
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <166995421705.16716.5360501255567828327.git-patchwork-notify@kernel.org>
Date: Fri, 02 Dec 2022 04:10:17 +0000
References: <20221130141040.32447-1-arinc.unal@arinc9.com>
In-Reply-To: <20221130141040.32447-1-arinc.unal@arinc9.com>
To: =?utf-8?b?QXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPg==?=@ci.codeaurora.org
Cc: vladimir.oltean@nxp.com, krzysztof.kozlowski@linaro.org, soc@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
 gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 linux@armlinux.org.uk, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 hauke@hauke-m.de, zajec5@gmail.com, ulli.kroll@googlemail.com,
 linus.walleij@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 matthias.bgg@gmail.com, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, wens@csie.org,
 jernej.skrabec@gmail.com, samuel@sholland.org, stefan@agner.ch,
 heiko@sntech.de, tsbogend@alpha.franken.de, sergio.paracuellos@gmail.com,
 mpe@ellerman.id.au, npiggin@gmail.com, christophe.leroy@csgroup.eu,
 tharvey@gateworks.com, peng.fan@nxp.com, rasmus.villemoes@prevas.dk,
 frank-w@public-files.de, michael.riesch@wolfvision.net,
 linux@rempel-privat.de, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_201019_365741_4E6F7717 
X-CRM114-Status: GOOD (  11.13  )
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

Hello:

This series was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 30 Nov 2022 17:10:35 +0300 you wrote:
> Hello folks,
> 
> With this patch series, we're completely getting rid of 'label = "cpu";'
> which is not used by the DSA dt-binding at all.
> 
> Information for taking the patches for maintainers:
> Patch 1: netdev maintainers (based off netdev/net-next.git main)
> Patch 2-3: SoC maintainers (based off soc/soc.git soc/dt)
> Patch 4: MIPS maintainers (based off mips/linux.git mips-next)
> Patch 5: PowerPC maintainers (based off powerpc/linux.git next-test)
> 
> [...]

Here is the summary with links:
  - [1/5] dt-bindings: net: qca,ar71xx: remove label = "cpu" from examples
    https://git.kernel.org/netdev/net-next/c/ce36d7ef4e08
  - [2/5] arm: dts: remove label = "cpu" from DSA dt-binding
    (no matching commit)
  - [3/5] arm64: dts: remove label = "cpu" from DSA dt-binding
    (no matching commit)
  - [4/5] mips: dts: remove label = "cpu" from DSA dt-binding
    (no matching commit)
  - [5/5] powerpc: dts: remove label = "cpu" from DSA dt-binding
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

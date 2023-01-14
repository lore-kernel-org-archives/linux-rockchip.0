Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79AE8C6379F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Jan 2023 04:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCWSQDTDJ451PAC9jDjMr6xEv0UAw0cv4ITKfYom1XI=; b=JigEnsxXA0yjdT
	38SPvTtdD597JuMG3WGP2yI0PCI/AKUUFEUlrF9eK5iEBf8r6iwbTa9e4ZaBR8A/5ow+zqaVo3Jig
	UJEgxmeX6fMhREDw+qnEiUYK5jeR58B7E37/DyOHnWPY5VMKIdxjeum8+5dWHZnRT+PZpNAstgZ11
	F0Z1DDfnZRmnl3Zr4hAyzme9z1JSNlLpawqJcnI5x4GOW+n+NFkV22lWwfwEKsU2L6iTxamCMsSgZ
	eS3c7/1Hk8gnRos9Vo+rNdelXj7wDkbLJHHwwzXviZUTTsYg7KSAX/fsJPzj4Hzvs1v8WSxMyeBBZ
	KddreuxZw95Po/gN/xyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGY1y-005Ca2-1h; Sat, 14 Jan 2023 04:20:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGY1n-005CYo-3k; Sat, 14 Jan 2023 04:20:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 88C2F60905;
	Sat, 14 Jan 2023 04:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E254BC433D2;
	Sat, 14 Jan 2023 04:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673670018;
	bh=0dhxVKVYAQCb3I8V/YstF7Gf/H5D9l/vkiCFM10OCHw=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=OMSOfAul4s8g9qt1FUnfo3pZ8uH212gnkdbgTCxGys3iARj92IsifxSXm9SDBoRJ9
	 qylKkPxR0CDJtPiy/P1kSNjInaJDmnC4HJRBXvBVy5AfSc2dKokm7QUM6utqMYlnxJ
	 Dk5ljJ75xqPsebqC7dxtKLDRcTfkcmb47lN3vQrNdm7ovksTmtidljOGOFALLH6+w3
	 ROzNJeZONvNfa0hRRMk7zlCnfURctDnvXzgmd9EqMquu8f92WmLeLdanoVx4+mi8Gx
	 jw7FCi9aXjoSyUfGacei0e5FKM7BNISNFMftGCzygZ4XonH6bsKgLvzdmNir70RtsS
	 jIXb3+71AjUWA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BE181C395CA;
	Sat, 14 Jan 2023 04:20:17 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v5 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <167367001777.13418.2773898976513419135.git-patchwork-notify@kernel.org>
Date: Sat, 14 Jan 2023 04:20:17 +0000
References: <20230111172437.5295-1-anand@edgeble.ai>
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
To: Anand Moon <anand@edgeble.ai>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 heiko@sntech.de, david.wu@rock-chips.com, jagan@edgeble.ai,
 jbx6244@gmail.com, robh@kernel.org, krzysztof.kozlowski@linaro.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_202023_229909_79DF470A 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

On Wed, 11 Jan 2023 17:24:31 +0000 you wrote:
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> fix below warning
> $ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> 		 compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> 
> [...]

Here is the summary with links:
  - [v5,linux-next,1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
    https://git.kernel.org/netdev/net-next/c/e471d83e1fa0
  - [v5,linux-next,3/4] ARM: dts: Add Ethernet GMAC node for RV1126 SoC
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

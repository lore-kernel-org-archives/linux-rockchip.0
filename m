Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D268C001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 10:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iRvqUat3HLH174yYXQddZnk13hGf4JSiv2p5KM6eWg=; b=AkMeBWZyYJqfve
	3SCg0jixrHVHSPvdkC2S0SWZ50ioUUELWhRa6xSEA+h+mcAotXiAa2yjJYs9foripTsxVbZXNb5vl
	0n6QnNgJdfpOC5kTuQ3eWB41SyF0BmHE2PlgpqWxv7Icd+mZeVB7rZrqVkCJZaLGkaqrTJk4iJul+
	/sf2L2r6AmjUjXs03AfPS9SUxm3x3sNqPxmz6igCVt957/PYv4Kefzm9ObQMbB9bGxqPPYQTI4D99
	XfJewDS3uTpZME4SNTPli8tWy3mER6qr0wU/hXU37HhaR9IV23hHxeWHILcekGlDrTh/fwguN6uzu
	dLHQ3WfLooF3Ecs2B8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPKGq-002jt0-35;
	Fri, 28 Jul 2023 10:00:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPKGl-002jqc-3C;
	Fri, 28 Jul 2023 10:00:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1B7BF62096;
	Fri, 28 Jul 2023 10:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAD5C433C9;
	Fri, 28 Jul 2023 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690538422;
	bh=ZIcz/QLug4MnlRNXI4CQ6phjwPWDIizZBNVnXkgRYWE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=SgqvEM5JS7Fi6F7g6KpyoR1eSK4KPZRUOyvBMBoTDiTfxVs9cJjfig2iiYPYIECAj
	 jPHq0H8MQQM/qMlX/3WYnBjg1m4Smv61CoomLHQgntHCdh03e2FJk/VPz7+ns0aI89
	 FGSAmq4tM9rrgOWnkTHqiTz6l7IF8MU15IcOnG5nH2/KcKQV8axMFi7Eqh/V8j27K2
	 0uD6Qtv4r1wxr44neXUAyUtOapVrkNi+ITpGv9xIycBaL8ZBw52UpRdzc5xh38nmLe
	 hxfxjLFDRlSVMbNwj3PDAcUQArnhjODZtb8GSxu73qnxNzjVI+zveqqDCYJfbYuIU4
	 UPh3l/5R/XnAg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5E0D9C64459;
	Fri, 28 Jul 2023 10:00:22 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay
 defaults/range in schema
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169053842237.6578.2445331118496951237.git-patchwork-notify@kernel.org>
Date: Fri, 28 Jul 2023 10:00:22 +0000
References: <20230726070615.673564-1-eugen.hristev@collabora.com>
In-Reply-To: <20230726070615.673564-1-eugen.hristev@collabora.com>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, david.wu@rock-chips.com, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_030024_089161_33A4F2ED 
X-CRM114-Status: GOOD (  11.32  )
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

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 26 Jul 2023 10:06:15 +0300 you wrote:
> The range and the defaults are specified in the description instead of
> being specified in the schema.
> Fix it by adding the default value in the `default` field and specifying
> the range as `minimum` and `maximum`.
> 
> Fixes: b331b8ef86f0 ("dt-bindings: net: convert rockchip-dwmac to json-schema")
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> 
> [...]

Here is the summary with links:
  - [v2] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay defaults/range in schema
    https://git.kernel.org/netdev/net/c/5416d7925e6e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

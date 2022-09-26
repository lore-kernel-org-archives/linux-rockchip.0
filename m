Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E328C32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXjUyPJ5h6RXyMdv6h2ayeE4e2z4TVwLKSrT8WxFCOE=; b=qoODxQfl4HmmGZ
	N8hSZ+/i57ypHKypm5dg8wTuGZATmLq7LrRqFatMkPcB55hcn/0ApUUAfQ57g8Br0zSjCvffGt9c3
	vdnLH0jedkoUpFIeq3slBdN9hpWZ1GCRMmvr2k1k2HrLy5CmQA6CnGBcHONfMPt1DR3Zuc7mof2ga
	zv3Iu0sAHjaMM0Xp/dS4xRJ5kNV+WJ1XvD2SSyKbKCyOvYOgvHakCUMyOdcjtjOnTIC4V8gQjADw3
	kNaVrb+iRGEWXWxETD2CTzA4PjpNcPovmwwC8r4axQf9pulLjNg8D14De2/IBEcLhLASpaYm+nuRJ
	n5MQvIWtkcgG9uLC/czA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct9N-006Q59-PL; Mon, 26 Sep 2022 18:48:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct1f-006KrT-9q; Mon, 26 Sep 2022 18:40:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6402AB80D69;
	Mon, 26 Sep 2022 18:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C0CCC43142;
	Mon, 26 Sep 2022 18:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664217616;
	bh=HcPJFpL/M1ZGby70MyF+4H1pa7B2wwargZhXC5X3umc=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=satmSBg/pzKe1bqzGKCUnd7A30Px5JXNcKhbFVC7wZZ357zcUKFRM3y5eCJSlDvi4
	 KWJuiCQxkigSa5XN5DpvAfHqDMQ6K9/mUwLrhQFlyQVoi28oo0M65A3N+nEBmpQX6I
	 gJvb6i9uyVlfSTVlFQ1TK4FjJGbGI241zA6yLFFgM4ZbHyn9JzxVvj46AqBmN7+Z/6
	 ufM7pSzkpnzgkLcX85oRnzDoiWsAIiI56OTIAbyeOh7gLcLJDKJVsBzn/RhCn5b9Su
	 UFsoFBz+grOnSiVGSZCEYt4WfF2LLYxOkw4dJamKsPdPyhMGPTen8EaKty9PRpvb6L
	 UMgjJGCOIo/cw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F2573C070C8;
	Mon, 26 Sep 2022 18:40:15 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v3 1/2] dt-bindings: net: rockchip-dwmac: add rv1126
 compatible
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <166421761598.17810.9168180824427436208.git-patchwork-notify@kernel.org>
Date: Mon, 26 Sep 2022 18:40:15 +0000
References: <20220920140944.2535-1-anand@edgeble.ai>
In-Reply-To: <20220920140944.2535-1-anand@edgeble.ai>
To: Anand Moon <anand@edgeble.ai>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 heiko@sntech.de, david.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 krzysztof.kozlowski@linaro.org, jagan@edgeble.ai, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_114019_528981_22E223D4 
X-CRM114-Status: UNSURE (   9.97  )
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

On Tue, 20 Sep 2022 14:09:40 +0000 you wrote:
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> 
> [...]

Here is the summary with links:
  - [net-next,v3,1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
    https://git.kernel.org/netdev/net-next/c/b36fe2f43662
  - [net-next,v3,2/2] net: ethernet: stmicro: stmmac: dwmac-rk: Add rv1126 support
    https://git.kernel.org/netdev/net-next/c/c931b060f093

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

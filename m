Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71FE1C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 22:20:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3832261453
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 22:20:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3832261453
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:Message-Id:From:
	Subject:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7eP9oT0KRlZCC13wEoCyhqHCFVPjv18B3MSd2jq5Jo8=; b=PxyOy15smYgL0S3NywyTrSxki
	qMarMjnZe2ftlT9Uw5OPqA6i8VnmEb047hyfSHGEJI3gxb73BmpLT9mQWi7ee7DpCfCIH7ahoVMX/
	piezH8/GKBJsqxMk6AH9RzkhnuDLivILrZ/36Mahnvp0Xl4wjD1aOMz5H+OzPPrweYKdUPBH4BGDJ
	/cJSpA1kAh2KAjA96hsmOfvEgiWyL+aA/k4UCYXqxLvDdw28aggHCwhMMIQp0IHZt/gTpABVomjUp
	nCRDPry5RrfeikTUdCXpoaEB9mnMBuDRiU4Ej9eTxTYqEaCymTbQqOremZ/iF9p+tINVhBnI79vbQ
	MOxC1S9qQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhgAX-0099NR-TJ; Fri, 14 May 2021 22:20:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhgAL-0099MW-Gk; Fri, 14 May 2021 22:20:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Cc:To:In-Reply-To:References:Date:
 Message-Id:From:Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=jsqe4Q77Gx1z7s4ABEJrmGvQBRLrbVSnblvdOFtRgfc=; b=LX7XdRwOS51G8MylazxUoRBIfQ
 l26wbTJiTjvz7i5VU1cprpW56VlKa+2Odv8yLWhP1LHbKoTNeVfpTjX+DOsQcW+g8qAW6eKACFHrn
 pMmmVP/Rn2rt6NwzcG6PsWeu//Wl9zppzez/Oe8O0E7Q0ECrvOTCDsEjRk09Wa/9029Qp4dSbeJjX
 z28oVDSL941w+6MmZfoNNaYpgqnsyf8m1euVlfB802vX7IsjmfR6O5Y7wV9bdQBjxlfm318GEzeWa
 q2cBXZql8+x5FrwAjzvzwWl0rKfwRxDdEwSn8DT/lPcubRrwfR1XIMdYoSmSqf1t8MFwwUb/pV6T3
 9ssSZSkA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhgAI-00CIQP-Tr; Fri, 14 May 2021 22:20:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 0D5516145E;
 Fri, 14 May 2021 22:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621030814;
 bh=et/+s01ZLmVUPLGTxR/l1iI6VdyfGm9pv83vQp8CHgQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ZyJlsxL4sDXiIj3RpBALT0xM5AZWgtQjlMF41JenVx08//A1+FWlTZP3Hs8Strcqu
 A/MlA0ZIYSPYzat1E7wRuyvTHWDREfGSqw65nYBwB9ubym+KCf4DAyGliOPLKQHikj
 3kQGePe6xVYY3kmZvEdMQ1nzr3HbUeZ/g6KeSChlqBx5J+vVQQeBmPW2kWBDsqFNg9
 zsm7O/V8qTvuyLRJ2BnXFbmvrpSVZSRTpqpyWk3XJa15kNYdSAAYLBEhYjzacwAT0E
 KMxIAY1vY3ONAJ1l7sbXdMtLwkE43fKKMYw2o5grl8QXvf9Ahf4moSGq0NR9DX/7Jc
 AyPrcDyzm1iJw==
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] Add support for RK3308 gmac
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162103081400.6483.16712842906186927250.git-patchwork-notify@kernel.org>
Date: Fri, 14 May 2021 22:20:14 +0000
References: <20210514113813.2093534-1-t.schramm@manjaro.org>
In-Reply-To: <20210514113813.2093534-1-t.schramm@manjaro.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de, davem@davemloft.net,
 kuba@kernel.org, robh+dt@kernel.org, peppe.cavallaro@st.com,
 david.wu@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_152014_999628_42923782 
X-CRM114-Status: UNSURE (   9.58  )
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

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Fri, 14 May 2021 13:38:10 +0200 you wrote:
> The Rockchip RK3308 SoC features an internal gmac. Only the signals
> required for RMII are exposed so it is limited to 10/100 Mbit/s operation.
> This patchset adds support for it.
> I've tested the patchset on a Rock Pi S, works fine.
> 
> Cheers,
> Tobias
> 
> [...]

Here is the summary with links:
  - [1/3] dt-bindings: net: rockchip-dwmac: add rk3308 gmac compatible
    https://git.kernel.org/netdev/net-next/c/2cc8c910f515
  - [2/3] net: stmmac: dwmac-rk: add support for rk3308 gmac
    https://git.kernel.org/netdev/net-next/c/b4ac94565c14
  - [3/3] arm64: dts: rockchip: add gmac to rk3308 dts
    https://git.kernel.org/netdev/net-next/c/8d1a81f21a9e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

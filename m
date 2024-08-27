Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96608C54731
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 20:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mtXtlPgKBsIZvAFI0hf3ZhIybgyodsWsmt9RFQN6eQ=; b=wtnGCcyZSKBqHV
	rhiWUIcjThoki0gBJePs0u8bx33DMtnK6tULg/+ryEb1G0fKtdlMOkBbkr45WHKuXB6mNQHrHhxIm
	KxdnWHYo7U/NT5Njo4LwmTcVUNRNujdgLWWP5g2Ztq7k/sCHIHBKRuXwxtf0ovwKF0Zsph4n6jMQW
	uZm7bpHdP5VwFH+y+eXJU5ZQ84pAbtVMy4KhUwMIla0VQxSPkEKSaHAgOXmdpMHLTl2erJgmnOTtn
	9sNUgZ72A72aFjd0nfFh/WwmBxlMp0Zi2l0MmkD3a3kUlX3E35Pu06UYb5XGI8bO166HSeX8OGPMI
	5yM6isa+0BHOgdleEaNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj36w-0000000CmxP-0Lnj;
	Tue, 27 Aug 2024 20:48:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj365-0000000Cmsu-2mr3;
	Tue, 27 Aug 2024 20:47:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3EF6BA429CA;
	Tue, 27 Aug 2024 20:47:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5324C4DE03;
	Tue, 27 Aug 2024 20:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724791230;
	bh=amNQT/VxWUy7VWv80n0WN7qgd2O+vHViMddE7CoLX4o=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=uORUqKvYIKr0CkNsCVy+SoZhql6MTFE24wL5FoidSG4j77xWjy7fL3P5Ul1bjJa2y
	 UxUSKCPedbg51ruQeZTLZRFVwdAbrF3neGHd1oCZ147SesZEq3V41Wh1Y8APOAqZ6v
	 3nADBVjZBLhC0g3qIkyLHWKAZL5SspC7w/KQesIBe8Pmd17CCbPKa1hxgwxGA3BzKw
	 N9tNgFfSkREpQE0Y96Gi8GB8OMaxnYJu8eNiH44K1PUBLmMw7JcIdhzOdHl7cDOb1k
	 rMz1PSdBnioiR0BNcT9geagPICu/HqAlv3F751TGmxUeJDqB64EZVI57J5XCeypyug
	 wqEpQ/9exHOpw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 341353822D6D;
	Tue, 27 Aug 2024 20:40:32 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v3 0/3] Add GMAC support for rk3576
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172479123102.757308.5208156223047265532.git-patchwork-notify@kernel.org>
Date: Tue, 27 Aug 2024 20:40:31 +0000
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
In-Reply-To: <20240823141318.51201-1-detlev.casanova@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, david.wu@rock-chips.com,
 peppe.cavallaro@st.com, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_134725_772171_D3A2A52C 
X-CRM114-Status: UNSURE (   9.89  )
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 23 Aug 2024 10:11:12 -0400 you wrote:
> Add the necessary constants and functions to support the GMAC devices on
> the rk3576.
> 
> Changes since v2:
> - Fix typos in RK3576_GMAC_CLK_SELET_*
> - Also fix typo for RK3588_GMAC_CLK_SELET_*
> 
> [...]

Here is the summary with links:
  - [v3,1/3] ethernet: stmmac: dwmac-rk: Fix typo for RK3588 code
    https://git.kernel.org/netdev/net-next/c/78a60497a020
  - [v3,2/3] dt-bindings: net: Add support for rk3576 dwmac
    https://git.kernel.org/netdev/net-next/c/299e2aefb159
  - [v3,3/3] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576
    https://git.kernel.org/netdev/net-next/c/f9cc9997cba9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB821ECE57E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 08:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQZfIT7AH+gq0DQ2dlHLNU0Rw/44Kis4F3A1nab9TDE=; b=jQIwHWWVagb4e7
	zyOhb5GV2uzThTSAC9e9F7UOVF2xP/PFl8YGFpllH9f9VJRKkIAp1t6h9a5qYbrAvdAEj6oCahkr4
	p7pzwENJ+RrrhWXNWSkqLAzlOHOLG+0gEF5vgjAoOAPKSYRBOrvPM7WaImOWyZgcyWeYEMVf9uIZ7
	TDD6gqcHy6o9wixC782iKIV2BQISNnFUUuWMAExPGAjloirvv9QMIDU0g+jCzB24UxYD4sC+XymxC
	JShzpN/BVTf/xZGXZJBMkFJp+bY9vyGvadvFZvsOuHObejwVpdZ260/ElbRbebBEQP5TOghTcA12W
	sd1TI1mpTAa+fJ5MMBKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sna9p-00000001C1n-1W6D;
	Mon, 09 Sep 2024 08:54:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sna11-00000001AIA-2D9p;
	Mon, 09 Sep 2024 08:44:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DF21EA428C2;
	Mon,  9 Sep 2024 08:44:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27DBDC4CEC5;
	Mon,  9 Sep 2024 08:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725871494;
	bh=pxwM3hSVCglKIf6EY3IGEl3ujf1W94/lMRDKTRO7k1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caX8MYpZb9kl5CtRpFChwjoo+mPfLkxCM4HtGqCmEm0QDaIhRoPIprkfXTtm+JAas
	 LmNd9As91CDNi38gy9YLO++ILkd4S0cr7q1S424GVVGq4BoptWsrldGI3pGz+et2V8
	 qo6Z2VLIUCbTW+fQcZWYx6Bu3vOXTXEdr0yUm33/HMZaallcrdBwEE5B/hyJedujsl
	 vMXHkUd36/2BzPM2fi33MeyJ8MoHEXK4h5TjjhcOfKHjFSmw8K4xNPWLZnjf8nlVqi
	 iHXTe9OQbM5STDecrBzkNQA2XIMM21gDE0b27c27+p4LPDr02+RpIyS3UbkTEVE+j+
	 JFT7sSQOXZ2Sg==
Date: Mon, 9 Sep 2024 09:44:48 +0100
From: Simon Horman <horms@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, llvm@lists.linux.dev,
	patches@lists.linux.dev
Subject: Re: [PATCH] can: rockchip_canfd: fix return type of
 rkcanfd_start_xmit()
Message-ID: <20240909084448.GU2097826@kernel.org>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_014455_654784_79BDEBE3 
X-CRM114-Status: GOOD (  14.46  )
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

On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
> indirect call targets are validated against the expected function
> pointer prototype to make sure the call target is valid to help mitigate
> ROP attacks. If they are not identical, there is a failure at run time,
> which manifests as either a kernel panic or thread getting killed. A
> warning in clang aims to catch these at compile time, which reveals:
> 
>   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct net_device *)') with an expression of type 'int (struct sk_buff *, struct net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
>     770 |         .ndo_start_xmit = rkcanfd_start_xmit,
>         |                           ^~~~~~~~~~~~~~~~~~
> 
> ->ndo_start_xmit() in 'struct net_device_ops' expects a return type of
> 'netdev_tx_t', not 'int' (although the types are ABI compatible). Adjust
> the return type of rkcanfd_start_xmit() to match the prototype's to
> resolve the warning.
> 
> Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks, I was able to reproduce this problem at build time
and that your patch addresses it.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B13EECE57A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 14:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJ9wQDp3P6dfWVexB0gDMZXL3Ilhna96csNW1YXi390=; b=kx6TuQ9wd0wDBd
	1m8M1QgHPdKMUo9/SeXU5cy4jS5+Uicu6WtVlC8wPdbp5Sv52lz6fCWQkChq1E4Tv9mJPsZP5Z3t3
	Zq5lSIvutyGIp+D7q/Gw/AhEHd5saCqUbbiU8Wgw0M7Cu9yTOOAfCe7bLZHCAmscxyQbM02QyNFMa
	jITVI+HqRKFhFJr9+LGxU2JLkZp2N8OFeWjPUsvB84ko2WLY2XY03yILCYPHGWb4ldDjXexMfv+LZ
	bwCMMeXUF2vD7CZ18grpH0P3k/JFWoC8JSuqYkNX/HBk4kFyoIeY6lJ7qJKiQmw4OnKIdzDjw9TjQ
	g3p+OAPGG6QZn2gl7lYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snfVp-00000002JS5-20ol;
	Mon, 09 Sep 2024 14:37:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snfUf-00000002JBJ-3Z4d;
	Mon, 09 Sep 2024 14:35:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A05215C01A0;
	Mon,  9 Sep 2024 14:35:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A70D5C4CEC5;
	Mon,  9 Sep 2024 14:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725892551;
	bh=FZKxzFRyz9Op8EvuEP3cZ3bXtDG2HWdMHdwMe2g59vw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1v7sjN3LNrEZl6o3gbfDHJL/srLbCjmQhFTT9iKdRjFei0qYil6a8RA/j709kphV
	 5dt/5lLGlU4JUEf9HDqXDA13POjv3B1tsyQkm6HxD+ogSgqSlk2+fiDnRPWYcae0le
	 E2/MgNhSOdJxBj5n/kowlKW1eAEzlfAhR66Qb+Qjalo8Nh1XuS01FvByl1Gv6CVO+b
	 cBcNQMbEgp5Am40Xxh57lCui4kSPYtYgztxxydnF+MrtWp6rmQZM8HRjdAeoJKeyWz
	 xkIwGRbL4dHCn0baIOZLiV4oILm1sVaSbi3zL6AqG79UPOnkNp2EDRKThVLbpQr2Bf
	 I2TFUukUj/OqQ==
Date: Mon, 9 Sep 2024 15:35:46 +0100
From: Simon Horman <horms@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel@pengutronix.de,
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
Message-ID: <20240909143546.GX2097826@kernel.org>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
 <20240909084448.GU2097826@kernel.org>
 <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_073554_042827_D534F26C 
X-CRM114-Status: GOOD (  22.15  )
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

On Mon, Sep 09, 2024 at 10:57:06AM +0200, Marc Kleine-Budde wrote:
> On 09.09.2024 09:44:48, Simon Horman wrote:
> > On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> > > With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
> > > indirect call targets are validated against the expected function
> > > pointer prototype to make sure the call target is valid to help mitigate
> > > ROP attacks. If they are not identical, there is a failure at run time,
> > > which manifests as either a kernel panic or thread getting killed. A
> > > warning in clang aims to catch these at compile time, which reveals:
> > > 
> > >   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct net_device *)') with an expression of type 'int (struct sk_buff *, struct net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
> > >     770 |         .ndo_start_xmit = rkcanfd_start_xmit,
> > >         |                           ^~~~~~~~~~~~~~~~~~
> > > 
> > > ->ndo_start_xmit() in 'struct net_device_ops' expects a return type of
> > > 'netdev_tx_t', not 'int' (although the types are ABI compatible). Adjust
> > > the return type of rkcanfd_start_xmit() to match the prototype's to
> > > resolve the warning.
> > > 
> > > Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > 
> > Thanks, I was able to reproduce this problem at build time
> > and that your patch addresses it.
> 
> FTR: the default clang in Debian unstable, clang-16.0.6 doesn't support
> this. With clang-20 from experimental it works, haven't checked older
> versions, though.

FTR: I checked using 18.1.8 from here [1][2].

[1] https://mirrors.edge.kernel.org/pub/tools/llvm/
[2] https://mirrors.edge.kernel.org/pub/tools/llvm/files/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

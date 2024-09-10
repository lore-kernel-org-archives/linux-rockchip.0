Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60175EDE9AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 19:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syryohoe0/BkHAsy0CTMIF4cIFO0n6pqytPFEnBl4pQ=; b=f5Ed/Bbsa/Ikob
	NcYRZOXdSfsQ9hMsVQvUqQq9DIFOM2mCBgNRql9Fh8E4xtFTr9nssT5+p8b8i7pwPHQd5nmpGHh6Z
	2P2GMFAzQ2KJRS/Vs3lHaKdcEP3FnwtCs2c8MxzX44X/+svQ2PgjPCrbyTeJIZZ87LTEB5ZyShrRU
	rxA0liPpCxs2zpQGqRe43EVM5tGj5Lp5b65cec/helXzp3OefCe8J6cE6ZvXtHcMkzTlxwKvCuV5h
	d+OSyCyo1Zx15jI5wufzNbrMckzEfbgB9jtmTUFhJ4T5av2/LYQMcsxQp+7En6O6YMAyJuQbq3kuz
	T4ur/05c4ZL7Aq5QBhVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6CZ-00000006q8B-11rT;
	Tue, 10 Sep 2024 19:06:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6B8-00000006poM-0s2D;
	Tue, 10 Sep 2024 19:05:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DCE535C0531;
	Tue, 10 Sep 2024 19:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D09C4CEC3;
	Tue, 10 Sep 2024 19:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725995128;
	bh=C3ZeDgPXAfSZWBVnm4n6Mx6Y3fiU3fMZS6UYTtOPrlg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YjSugIzeeRXzHGAJbdqovwScWPHDefcg+9ae1ZDyTfsEdeU6f585fk10WsHZEjz2E
	 EpHRZwbZ4+fWyVsdGg+QLZO6owVh0YfFdqbz3fh2rF7AwRH8VGzLOzNtY1b2zz+h7x
	 tPugLSz2hmgZf+Ki46pc5Len5aMX06ccJcaIvd086t0Jl4fcn4cqqExpkmRBzUiEJQ
	 ZE1s3hwjknbd8Imr/eJ/igayIH3DoVg1sk7AkWW+4y5gjuTpFWnybXmaK6VWpI1DTU
	 bATKAfrlf/B4g8+D12kjDwuUEG/l1J8sJDPhGvn3UGcQgtV/7mzFHlSNar6Ib/aTPp
	 begjABtc63sRg==
Date: Tue, 10 Sep 2024 12:05:25 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Simon Horman <horms@kernel.org>, kernel@pengutronix.de,
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
Message-ID: <20240910190525.GA1169362@thelio-3990X>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
 <20240909084448.GU2097826@kernel.org>
 <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
 <20240909143546.GX2097826@kernel.org>
 <20240910-utopian-meticulous-dodo-4ec230-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240910-utopian-meticulous-dodo-4ec230-mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_120530_407641_544E72E7 
X-CRM114-Status: GOOD (  33.89  )
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

Hi Marc,

On Tue, Sep 10, 2024 at 11:56:56AM +0200, Marc Kleine-Budde wrote:
> On 09.09.2024 15:35:46, Simon Horman wrote:
> > On Mon, Sep 09, 2024 at 10:57:06AM +0200, Marc Kleine-Budde wrote:
> > > On 09.09.2024 09:44:48, Simon Horman wrote:
> > > > On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> > > > > With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
> > > > > indirect call targets are validated against the expected function
> > > > > pointer prototype to make sure the call target is valid to help mitigate
> > > > > ROP attacks. If they are not identical, there is a failure at run time,
> > > > > which manifests as either a kernel panic or thread getting killed. A
> > > > > warning in clang aims to catch these at compile time, which reveals:
> > > > > 
> > > > >   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct net_device *)') with an expression of type 'int (struct sk_buff *, struct net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
> > > > >     770 |         .ndo_start_xmit = rkcanfd_start_xmit,
> > > > >         |                           ^~~~~~~~~~~~~~~~~~
> > > > > 
> > > > > ->ndo_start_xmit() in 'struct net_device_ops' expects a return type of
> > > > > 'netdev_tx_t', not 'int' (although the types are ABI compatible). Adjust
> > > > > the return type of rkcanfd_start_xmit() to match the prototype's to
> > > > > resolve the warning.
> > > > > 
> > > > > Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
> > > > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > > > 
> > > > Thanks, I was able to reproduce this problem at build time
> > > > and that your patch addresses it.
> > > 
> > > FTR: the default clang in Debian unstable, clang-16.0.6 doesn't support
> > > this. With clang-20 from experimental it works, haven't checked older
> > > versions, though.
> > 
> > FTR: I checked using 18.1.8 from here [1][2].
> > 
> > [1] https://mirrors.edge.kernel.org/pub/tools/llvm/
> > [2] https://mirrors.edge.kernel.org/pub/tools/llvm/files/
> 
> I was a bit hasty yesterday, clang-20 and W=1 produces these errors:
> 
> | include/linux/vmstat.h:517:36: error: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Werror,-Wenum-enum-conversion]
> |   517 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
> |       |                               ~~~~~~~~~~~ ^ ~~~
> | 1 error generated.

Unfortunately, this is a completely tangential issue. You can see some
backstory behind it in commit 75b5ab134bb5 ("kbuild: Move
-Wenum-{compare-conditional,enum-conversion} into W=1"). To be honest, I
should consider moving that to W=2...

> However I fail to reproduce the ndo_start_xmit problem. Even with 18.1.8
> from kernel.org.
> 
> 
> The following command (ARCH is unset, compiling x86 -> x86) produces the
> above shown "vmstat.h" problems....
> 
> | $ make LLVM=1 LLVM_IAS=1 LLVM_SUFFIX=-20 drivers/net/can/rockchip/  W=1 CONFIG_WERROR=0

FYI, you could shorten this to just:

  $ make LLVM=-20 drivers/net/can/rockchip/ W=1 CONFIG_WERROR=0

As LLVM_SUFFIX will be set through LLVM and LLVM_IAS has defaulted to 1
since 5.15.

Does CONFIG_WERROR=0 work? It seems like it is still present above.

> ... but not the ndo_start_xmit problem.
> 
> 
> Am I missing a vital .config option?

No, I might not have made it clear in this commit message but this
warning is not on by default. I am looking to turn it on at some point
so I keep up with the warnings that it produces but there is one
subsystem that has several instances and I am unsure of how to solve
them to the maintainer's satisfaction. You can test it by adding

  KCFLAGS=-Wincompatible-function-pointer-types-strict

to your make command above and it should reproduce.

Cheers,
Nathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

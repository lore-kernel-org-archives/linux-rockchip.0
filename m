Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B4BECE579
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 15:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APvuSuXswh3q8pyNKRxnyGgp1ik6RZR2Ze61+OPjy2s=; b=kiVKhJ2swLL2K/
	0th8UzwzDl1zIkHwQ4kNrbkGWTbV+0e4nkfg2Klm6qCAkh6rdYqGQs6AaiGZytVEEUcY/qtkne3Gm
	bc2Ndu5jgvI4gWc25PMcu6ncKwl0o29qpurOQXH3cQvUe+9pG64nbTbKWanoBZRHNVIlTFR2rN/pQ
	gEw/iqNeNnzxYwOaAVPtOhFaQIiNfrAt7l+foDi3vLHLCDvqhMb8BFrGyi0J2NtxdtFMR8uBpPhq4
	9GmJhE8s6HJ0q/7Jy5CTOxzd/7ueiAbdJqMmpukiA7LnIOyfq1cYywsjlJ2j75S8bPO6qWAXMt041
	IIS/OSzX3m9h0Fps8keA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngK7-00000002TML-3Gm6;
	Mon, 09 Sep 2024 15:29:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngIm-00000002T4m-2uGy;
	Mon, 09 Sep 2024 15:27:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2654D5C0200;
	Mon,  9 Sep 2024 15:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39236C4CEC5;
	Mon,  9 Sep 2024 15:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725895659;
	bh=bkf0FPBXI9ffG3pgzuSvrT/omg9CfDr3n4aP+Ydrft0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=frarv78YKu9T5tWlwTYmYfDLTkkR7U+/3o3Bys2C8DHmqmwnP4kfag/9hBM0O6KKb
	 vi8KkYkqHU0/rO3NfdLgBNfSvQn+wCs5aU8S9P0amI9KEzw8g4LA+2oyjmn7D5DUzc
	 a3imUOStMdC8AjO7RcUwiMzy/thY2xWuSP58mQV/URkEBNxTRkH+q064e38N/OMvr3
	 vkfZ7g+Ra0Vqu6XMBBfCPKFch3Wj0aRX18jYGIDvHSRksO16P04xaekzRINf7BDyEk
	 bOe1CKZDUGTvf2eCM50SHbgSL79CrZUEYkm4geGBjscqV0GNiE17Kaewgcfq1jH2j/
	 Rx5H/UvGwxmDg==
Date: Mon, 9 Sep 2024 08:27:36 -0700
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
Message-ID: <20240909152736.GA1406978@thelio-3990X>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
 <20240909084448.GU2097826@kernel.org>
 <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_082740_796737_BD9C0660 
X-CRM114-Status: GOOD (  16.08  )
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

On Mon, Sep 09, 2024 at 10:57:06AM +0200, Marc Kleine-Budde wrote:
> On 09.09.2024 09:44:48, Simon Horman wrote:
> > On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> > >   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct net_device *)') with an expression of type 'int (struct sk_buff *, struct net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
> > >     770 |         .ndo_start_xmit = rkcanfd_start_xmit,
> > >         |                           ^~~~~~~~~~~~~~~~~~
...
> FTR: the default clang in Debian unstable, clang-16.0.6 doesn't support
> this. With clang-20 from experimental it works, haven't checked older
> versions, though.

Hmmm, interesting, the patch that added
-Wincompatible-function-pointer-types-strict was added in LLVM 16, so it
should work for 16.0.6...

https://github.com/llvm/llvm-project/commits/41ce74e6e983f523d44d3a80be5ae778c35df85a

I don't have easy access to Debian at the moment so I can double check
it later. I would like to get this turned on for the whole kernel soon
but there is still one subsystem that has several instances that I have
not been able to workaround at this point so I've just stuck to adding
it via KCFLAGS when testing.

Cheers,
Nathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

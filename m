Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815DDECE57A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 14:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzJKCeZhjX0GjvlsbfUCb9EDFGwwq729BkdkImG623c=; b=MguszoNSTGK9DC
	Xg49arVA/gIZarkfo3qmA/KDzHWFP5zB4CHBeYJOaa8NojBWjuj7hyG3KA6ffaZtcErVuisfnjQAk
	nkI2YsdNLuw6an0B5xii0qdE/WPakF/jmPARG8V5x5WI+/+ItSuUKvaPJyb/vfZoRYPT7hYGstd9V
	G0mRFsP5Ado+hE2XjThJtmnncQhW0cIHZ0ay3UzgLP6bGkmllLMFvYoo0YFN64VRWiagDwb3O01rL
	6offD8YV5ZHXRvgLHYu+ROrO6E5OhxXJkUHRfFgaiw0DMDY18phxd2i15lRzTUKoDhuWlH6Q3xkfk
	wanvsE75pBUTSl9YtDPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snfJe-00000002GW5-1fTc;
	Mon, 09 Sep 2024 14:24:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snfIa-00000002GHd-3xv2;
	Mon, 09 Sep 2024 14:23:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A9D6C5C0162;
	Mon,  9 Sep 2024 14:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 393C7C4CEC5;
	Mon,  9 Sep 2024 14:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725891803;
	bh=kQNUgMMqW2iwr2oAKBhQG32X6tXltITcAFqjMRNSyXY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dl4odoGPDk3MUUCdQbLXfEPlxfKbjDQqtUOJTe8U98J/G9P2r8gXGTZXfSYYTsL3N
	 cAdEhvX1DpuXRcPSap7JPkXhorFohALU/HXJuz2bPHMhc4Ad46QelmSa+7TyHlarVY
	 kog9TVkgf9YPD1EGbID8ky1iZlPi0PvOAv3zVAu2wfcICLivIuJzbNC9J4C7Od0qRj
	 xZScqLoBUTWa+PO35n8Zo0U9L+K7jNV7tw+hiOoSNBM4Z3nCUzg7zu5a6qbXKvfyx+
	 /4cUvFwNs5G/qVka1SseRhMSXn21yUTPzVzILhqjeVPuTUiDLAVyyTufxQinQ0n5+x
	 juKE6cM8j8x4w==
Date: Mon, 9 Sep 2024 15:23:18 +0100
From: Simon Horman <horms@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] can: rockchip_canfd: rkcanfd_timestamp_init(): fix 64
 bit division on 32 bit platforms
Message-ID: <20240909142318.GW2097826@kernel.org>
References: <20240909-can-rockchip_canfd-fix-64-bit-division-v1-1-2748d9422b00@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909-can-rockchip_canfd-fix-64-bit-division-v1-1-2748d9422b00@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_072325_070271_8AB91355 
X-CRM114-Status: GOOD (  12.23  )
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

On Mon, Sep 09, 2024 at 08:21:49AM +0200, Marc Kleine-Budde wrote:
> On some 32-bit platforms (at least on parisc), the compiler generates
> a call to __divdi3() from the u32 by 3 division in
> rkcanfd_timestamp_init(), which results in the following linker
> error:
> 
> | ERROR: modpost: "__divdi3" [drivers/net/can/rockchip/rockchip_canfd.ko] undefined!
> 
> As this code doesn't run in the hot path, a 64 bit by 32 bit division
> is OK, even on 32 bit platforms. Use an explicit call to div_u64() to
> fix linking.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202409072304.lCQWyNLU-lkp@intel.com/
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Reviewed-by: Simon Horman <horms@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

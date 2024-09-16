Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75A32C3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 07:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKk9VcIesS4bBHBhNjsNHOvVyC2Fn3N9Xz4mkLz2z5U=; b=j0SwHSC9RMqgj8
	kJpNsAK5pGXb7jmAFULp0e8QxXRv14OoxCVO1IxS6I0wcPn76+nuYsSkgdPe6Yg+ATEbnXYa/Y4+R
	N+8cStvQ5RCJWr1XjQLFPMI0sH1F0lr2POIX7bvlifWpoiPByN63NnUAQZPce+d89E/dJDfSlGvmy
	o6dVZsaOytaQwLMbz/YRkvINvA3hdK5X70banFhUuAwVvVk5zV5KDdVgj/FyZ0CeMIA0xZs1UUTAj
	gFdM0yjD5/yhjn8MZC7kBZIJC+l3/ObOxUIK4fb9QYrki+8gRP9/Mgn0XP7wss2C4E60h6lOFTgvx
	yoy/Llmf7MBw8IyCtOFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq6EO-00000003Ju8-2YXw;
	Mon, 16 Sep 2024 07:33:08 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq6DI-00000003JmB-01lr;
	Mon, 16 Sep 2024 07:32:01 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2184123C92;
	Mon, 16 Sep 2024 09:31:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ra5D3m98mpsN; Mon, 16 Sep 2024 09:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726471914; bh=2bTZu7joD1ImKzjNsHvEHaAk+oEt0DZuYQsH7FNuClA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IetheAX8+p3M6gP7pLTOWuWhvl9kGjnfZOauuxwVXDSJ2zICGrOQMVR3BaMxODbaY
	 u+xU3gOx5GNQnZ3b+bhIswcJb230xPFXAqgtbj838ED5OHo/0pXoCUrPt4HxVRXCtX
	 J0hQFjPBnoFqAmNgDur4NAd3w3NZkEh4d5LJJjW8ShKjrYj1uqdXg006qk5Sktk6o6
	 KsdtTCTaZ+kXmch5EqHSpyb7kcUY8VQ+K+ueZkkLnBsROFMcYo3ZL5Dfh+HLa+b/Zj
	 IYVQ80HlUWPFcyWo8507eVn6FV5ynA8L2vmfrLCP85QRRfwfFJAIh+48qO9dXuF9db
	 0FfYZ5BOeL9iw==
Date: Mon, 16 Sep 2024 07:31:25 +0000
From: Yao Zi <ziyao@disroot.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: fix finding of maximum clock ID
Message-ID: <Zufezf_lr7GlYm6u@pineapple>
References: <20240912133204.29089-2-ziyao@disroot.org>
 <fmfvorsje7fjto3c4bwyqxsa6xrs234xlse4whcsu3ebm3lrvs@oyppckftaeok>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fmfvorsje7fjto3c4bwyqxsa6xrs234xlse4whcsu3ebm3lrvs@oyppckftaeok>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_003200_486713_093D045A 
X-CRM114-Status: GOOD (  13.70  )
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

On Sat, Sep 14, 2024 at 08:48:53AM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Thu, Sep 12, 2024 at 01:32:05PM GMT, Yao Zi wrote:
> > If an ID of a branch's child is greater than current maximum, we should
> > set new maximum to the child's ID, instead of its parent's.
> > 
> > Fixes: 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> oops, good catch. Note, that the function returns the correct value
> for RK3588, since the clocks with the highest IDs are of GATE_LINK
> type and do not have their child field set.

yes, but it does hit me when working for rk3528 clock controller unit.

> I have not checked all
> the Rockchip SoCs converted for 6.12, so I suggest sending this as
> fixes material for 6.12.

I have done a rough check and think no code in 6.11 release is affected.

> 
> Greetings,
> 
> -- Sebastian

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

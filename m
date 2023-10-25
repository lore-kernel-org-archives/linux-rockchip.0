Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF299C25B6B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 21:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmdcprDo2jTDPY/JiWYlRkfr3vZGgdFQ/giTCW4vCUE=; b=vDE5KuNEGBglw/
	n42ToQnIK6kJyV2vEFJK/zGuOkw4lYv0GkEDZocgMAsp66YGPPQExFrc+7Vvm6sHErPhUcU539bfB
	M0dLzv8tznn+61cCZmmBZu6kx03EXjJ9jmWy0wSTac0YsKFBijgxnT4ZpLIf75x42ve6vlYqM3JZu
	OejLaYcmm8VprXnheICf7Z8HdSIYtOX9npVOt1/hOs4e7Qlb+2Mv01jGrH0s6fAp7nXLi5Kk9Y+8F
	eXR88PbmcBGAE/uKH7zaLx1KYQY8cbv3sQGAXvvPjvG1NTScbq5NcAAwbnSUvOA27920GVH2JLODz
	uQB8k4W/9AzmTylKNN4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvlcI-00DBiF-14;
	Wed, 25 Oct 2023 21:40:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvlcE-00DBh3-2b;
	Wed, 25 Oct 2023 21:40:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 54BF6B81C52;
	Wed, 25 Oct 2023 21:40:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F36DC433C7;
	Wed, 25 Oct 2023 21:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698270032;
	bh=ObgKYH0fS2mj/mvGmpx0d95XPn9BwP7C8YrKDWzCovk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=OeJhxYPboBK9ff7+ZjAslTD2fIqdeh0FrTxfSIPime7vzUJU/fooEUtZSFrjba7m1
	 2kV+6SB9OXWRiwWJId/Ufw8gFs7dSeo4T9a8IoB/FKWTv4f7r8V3Pf/q+ggoD6l7xG
	 /lDRH8qUW7a0/9ALY0UYkKK/mCqCrgO5wfYuETCef92QYbtd9pSjUWOYDUEAncfSrd
	 yraO/WFH1lJC1TYbeasVWZrfjTKy5bYbOHoc1NwRNwnRjgbftW9WB9iUwDX9/0ZEsh
	 4fb+bFJrq4WNZZmiD8meyc90OC1TPxTaxt355RZH+l7+sZnzGaNiVXkNR8ZpWViiPT
	 IFFTM3zuxWGlA==
Message-ID: <dc96dc36c6df1d3bfa3006298e353f39.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org>
References: <20231018070144.8512-1-zhangqing@rock-chips.com> <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org> <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, zhangqing@rock-chips.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Wed, 25 Oct 2023 14:40:30 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_144039_027121_801AF238 
X-CRM114-Status: GOOD (  15.78  )
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

Quoting Sebastian Reichel (2023-10-25 12:48:49)
> Hello Stephen,
> 
> On Mon, Oct 23, 2023 at 06:47:17PM -0700, Stephen Boyd wrote:
> > Quoting Elaine Zhang (2023-10-18 00:01:40)
> > > Recent Rockchip SoCs have a new hardware block called Native Interface
> > > Unit (NIU), which gates clocks to devices behind them. These effectively
> > > need two parent clocks.
> > > Use GATE_LINK to handle this.
> > 
> > Why can't pm clks be used here? The qcom clk driver has been doing that
> > for some time now. 
> > 
> >  $ git grep pm_clk_add -- drivers/clk/qcom/
> 
> Maybe I'm mistaken, but as far as I can tell this is adding the
> dependency on controller level and only works because Qualcomm
> has multiple separate clock controllers. In the Rockchip design
> there is only one platform device.
> 
> Note, that the original downstream code from Rockchip actually used
> pm_clk infrastructure by moving these clocks to separate platform
> devices. I changed this when upstreaming the code, since that leaks
> into DT and from DT point of view there should be only one clock
> controller.
> 

Why can't the rockchip driver bind to a single device node and make
sub-devices for each clk domain and register clks for those? Maybe it
can use the auxiliary driver infrastructure to do that?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 492D0C531D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9v7NCTfYk5aZQk2XZK3LayL8dznl/XRA4zJiqblBHI=; b=QDGWTGNHskUjUg
	zcxTMu6oc1ZybcFmt0UhWQ4hwldHyWZFIt3PNPRbpA65PGHS8SOzJnNnUs+6xH3I3KfONxKykvktf
	yLIq5pzOL4LdFCTgptl60pq5DMQhvQ4RETzeu1Sy2DxW2ncuLdqof3fj+hKw6FV2UukyQfH8huUS3
	YbNzu0dlznnqUnWhAQVwh1S0/TnMDpdb3Hyh2Fd+OXKygszJIjGWQXHhwRR9L8kJRStP0elEV0LZW
	1WU78pEcFazBKqSg1KM0kuwP1t9S0eCk3rtnpvhWjF1DR4BROJbdaFuoAFA6wHNUhft53b0MuMXMy
	r+1jQQljTqWR6MCDdhoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmuUb-0000000EVPW-48wR;
	Thu, 23 Jul 2026 14:33:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmuUZ-0000000EVOZ-08kq
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 14:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784817220;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2njy+/zspbCzy0izhWL1wi7/dDBKbdf0HpY/B2TDfoY=;
	b=QTKfXad+ncfLcR+Xpvo+ysfguNhj/X2g05l+MNDXrRJMXlDikMVUxYRJVqZ7n6VPiQtHtT
	xhr9tZGJtEyNPSCaXh9/5EJxOUTjT2u76QHI1RSOsU5YZwddgSTtjegT7jLPEzLFWuhPoX
	3wAZnFGIxdiN7iSqMS7HdHcPr4bY2aA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-RwIOU9QFMviPWKgnAkolEA-1; Thu, 23 Jul 2026 10:33:38 -0400
X-MC-Unique: RwIOU9QFMviPWKgnAkolEA-1
X-Mimecast-MFC-AGG-ID: RwIOU9QFMviPWKgnAkolEA_1784817218
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8e97889ac8aso14259576d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 07:33:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784817218; x=1785422018;
        h=user-agent:in-reply-to:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2njy+/zspbCzy0izhWL1wi7/dDBKbdf0HpY/B2TDfoY=;
        b=cQx8eChQ83Lp92CSE5iXidH7AM6aT2wZCW6XNs1+yEcZCsCfL8Qf1Y46OwF2l/agmm
         exjBHfpLJjGr5jRBHEBTGjAdrd4rCS2xKZO4uvVbLfE002BLg1LLJt53byRbxmg+x67r
         lTc6ZEmkHwGjvpDiVxfACZiasy3gGRm+rWgRqc4VqoNwjqlSgca/MGPrmZSAS3lu7z3c
         0uwA7J57vAWa72aSZrxbF/mpAwbFM0tZizt4fYKnEZC93f3H7Q5Wwzf/BM7iqqypTisJ
         xptQHK7t8HYuOqaIr1ZlKrhotd9NbHdNMBLyazjEgsuHwemZlrcC/Bo395sCUJhRnRor
         3FNQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr+Htub4nKhDHpo5hauhSotf9y221Zp9gOJYckthvbTQfMjsZQZZ5q5LBub/t5/jQSx0hav2VCrCjyOEPM36Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUOurUCfp1X//DVFL9b7DOK6x5//pMxcOiZ90jkexnJ/vvQmpL
	8Qfw0QVKwBoA/hoxur/PLBo2Bd38YuvIYkElfVoPOBiDxdMUeM81LF0VvvjycQGTLNd1E1lSTJU
	fk+CNwQi1xwekv1iaYHhwlnx3nUCavHVS5YuWBJbTHO/rTaBI3Gp1vcrYc9IdAgjG5xDKiQNN7A
	==
X-Gm-Gg: AR+sD13uKAawT+Mk/qLhgX8Lu935HQlXRLvuK76vO7MteO+KzbOCB/HqOtyVz1MPrRT
	CFP4H8OScX/DjlaSJHHnNJGiDoa6hpUIKSM7B5fAytF1fzTm3gqvjtOzL7TP2c9xis8AwkJYree
	DbYGXBOGv//4CHVndXZZOOiy8nQeQLeM0585YL1Nrh0MrnKP/UnU3jI9xnenFQJLxlM2OcPMZ0X
	tfUbRNkv1xZkjki/r02nikYrHoToD/o47eDdX/6mOWVlWzsMA+33szboBU1ZVNRIcVQPaLiSykF
	j9D8tdmEG1VWD5ZRNb+fij7a3yzU3KddSMftP4CVMpsrdnuEddzhh52bZEIK6Hx+i7dCH5TUxn5
	NHaxezI6mJTiCkrvstbKnYC7qgK98nJuLHf4=
X-Received: by 2002:a05:6214:2aa5:b0:907:aec2:6cdf with SMTP id 6a1803df08f44-907ca363063mr40225886d6.8.1784817218115;
        Thu, 23 Jul 2026 07:33:38 -0700 (PDT)
X-Received: by 2002:a05:6214:2aa5:b0:907:aec2:6cdf with SMTP id 6a1803df08f44-907ca363063mr40225316d6.8.1784817217491;
        Thu, 23 Jul 2026 07:33:37 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-907ba8b5f85sm46744846d6.2.2026.07.23.07.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 07:33:36 -0700 (PDT)
Date: Thu, 23 Jul 2026 10:33:35 -0400
From: Brian Masney <bmasney@redhat.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: Re: [PATCH] clk: clean-up simple provider misuse of the consumer API
Message-ID: <amImP6sFlv-sNhMh@redhat.com>
References: <20260723-clk-provider-simple-clean-v1-1-0c9668240467@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20260723-clk-provider-simple-clean-v1-1-0c9668240467@baylibre.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9Dt6oEC9DrK39_z0KsCdHZf7N0PbWoRylg7MtzgKhAQ_1784817218
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_073343_144660_DCCE749F 
X-CRM114-Status: GOOD (  14.06  )
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

On Thu, Jul 23, 2026 at 03:20:59PM +0200, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
> 
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist:
> * __clk_get_name() -> clk_hw_get_name()
> * __clk_is_enabled() -> clk_hw_is_enabled()
> * clk_get_rate() -> clk_hw_get_rate()
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
> The change being very simple, I did not think it was necessary
> to split it into multiple changes. If you prefer it to be split,
> just let me know how.
> ---
>  drivers/clk/mvebu/clk-cpu.c            |  2 +-
>  drivers/clk/qcom/clk-hfpll.c           |  4 ++--
>  drivers/clk/qcom/clk-krait.c           |  2 +-
>  drivers/clk/qcom/clk-rcg.c             |  4 ++--
>  drivers/clk/qcom/clk-rcg2.c            |  2 +-
>  drivers/clk/renesas/r9a06g032-clocks.c |  2 +-
>  drivers/clk/rockchip/clk-pll.c         | 24 ++++++++++++------------
>  drivers/clk/st/clkgen-pll.c            | 20 ++++++++++----------
>  drivers/clk/tegra/clk-tegra210.c       |  2 +-
>  drivers/clk/ti/clockdomain.c           |  2 +-
>  10 files changed, 32 insertions(+), 32 deletions(-)

This looks good to me however can you split this up by clk subsystem at
the very least so that the various submaintainers can pick up these up?

With that:

Reviewed-by: Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

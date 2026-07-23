Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F497C531F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqZIxcH9XA6OpfS2wDm05TQa6++U4eA7AOxrOhT7/pQ=; b=Pxedh5mYUbUiF7
	EwcT8AyXtkAa/R9ML5f1k1YbwH9nUUeB2mi79pGVieRvWXmQyXiyd+jPKNAf3biyaqj2gDp6xWzZe
	3XDEWwmQ+KMysdsxGqGocOCfKYE+uYTUweR9YFEOXyKOBwTQWPvLVIIZmc2aPH81vstIeJIwhpWC8
	pBROPhQ8gWRkkFKX4pktOgAWSFot3UtO6yJdkGMi8ur5KxqxqZ7LKdQoWPKKhGzUs5C/7Dv4J1zjc
	tKxnf5vSqTWPZKZLQZEe0xZLIEJCCmvT65b1+dciYmue3QfdbtiWgEphmmxLtsE0huAqyzXiykT5b
	bEVSircDfnyeq5iPkCUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmwqT-0000000ElZZ-43Kp;
	Thu, 23 Jul 2026 17:04:29 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmwqR-0000000ElYj-05fO
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 17:04:28 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f3b39f2a1so830450f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 10:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784826265; x=1785431065; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:user-agent:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=jhojDdHC94+BdjAE5gd50YRzJP7qSAXpLrLf8nMSLLo=;
        b=HjGQQ7YCZY3NW9pJcNY6cKLsLBe8scZt50mkwns5uLuXkoQNXkSun+vpj9rLF5Hx0j
         AzEmFqJo9AhvnTQ0Bz00Ue6dk9lYHx6AQvB3bei6fhnpqeiDG5pvufDtNrQt/25DzH/J
         PBe8fSXwVdC/OKgh/FwlHIkfJuhDMh3dY5VqEemmyOjgdUqb8PKqzk0GUoql9RbKQXcG
         dZJ67y4/MQ0AXo+qTQ3scOkkoJaTsYY8GpGH3FoumQkwgxxG2E/UrCI5jQ0lAmSBRhN/
         wVi/p2FRhJnJhcFEvqpWGd/SXUOTAsQw/hVT21k0JqlXb2cmFgIf04j55GLRHoX2tXef
         cgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784826265; x=1785431065;
        h=content-type:mime-version:message-id:date:user-agent:references
         :in-reply-to:subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=jhojDdHC94+BdjAE5gd50YRzJP7qSAXpLrLf8nMSLLo=;
        b=ry1bWAxVD2u+yPP3dpABI6l2RyToPhsCu3Yi+PWzVwDF53PUqRs0pNqB1RNq3Q/tJ/
         Lkt4laDmQBm1e9f9T5DtD+9LD5eBS/o0wiMBIlTMoGzyei/WctJj5HPPRKPtylPxxl6q
         8mzxrzvpIwRxSn8tGoDseGLIJ4kZazRRvqMNXAdsy78lAeWLy4fSLKiSFUy8ZDfcuGAs
         fGfyI37BQZl4SXCSF5d59P/mazI/3IR3oe0c5pdUmM9YiylE9H79PNnpz05QH5LoORDD
         cNXh8XqReuP6lLS1MNenDMgP8RChqun6nriCVGUY95kLeaPdRn+tVKj+lrInJvBfioqG
         kh2Q==
X-Forwarded-Encrypted: i=1; AHgh+Rp7F9yH9UYvhuJOy4JdQMABxIVQgyEtTLqf05txipHHOkVf4I00vTqd5dQ3KPwmWx7yuGBD9DlU+r5D85uTaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDqs5UdKZlSj8eZ+zB8R/Ii19Jd+sR87FTuqYk7eSXnanUsZM8
	wsIJ3aBIu9K7Zh8/Py04AD+UrJFEo2r6JWBl6EVk10sMIqRlfOjX/q7nLdeO47kk4uM=
X-Gm-Gg: AR+sD13cu177N0/K+jKX8z/0kkGEgaeA6S/VwHOsfsXznQTwTTqUGRARaMaZBvsL8vW
	gEcZWL29pfmxtGhV8kXxfFoMCpaSZoj5sd0TOROAqa1LkwWetfU/f5cC+bCbpqJ5VptBzopShDx
	d47DdnKhOMjls6NKOzQWUvoRpI/OEl4lEL2d94c2V/f2DjLphDjM3NdbzaFHYHChm6Yz2wOG+YR
	AWNZTFg4NYVUnMeriw5nsYBSiqQxrk7K3fLb8qztgGzlp19VoxkBBzSzxvgMK0+L4q/U1oFIoyW
	FZKoHAY7C4qTnnTV4+B9jQtmkIEOA5oyEZCGTj/F/ghGyQ2B6jg9TkMcLsqL+acGwPoefS2xW6j
	rlFERb335GASSBCgcvfnmmZZHbMAgKp7pnfE5aLjYIKo1UkxHFzbP/eep3n6S+75lSOkzuNRSvp
	VH
X-Received: by 2002:a05:6000:230a:b0:47f:8aba:8a9a with SMTP id ffacd0b85a97d-47f8d71c7eamr5497660f8f.18.1784826265170;
        Thu, 23 Jul 2026 10:04:25 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:5f98:8c28:3e2c:1c72])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47f85c67339sm17937986f8f.31.2026.07.23.10.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 10:04:22 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Andrew Lunn <andrew@lunn.ch>,  Gregory Clement
 <gregory.clement@bootlin.com>,  Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,  Bjorn
 Andersson <andersson@kernel.org>,  Geert Uytterhoeven
 <geert+renesas@glider.be>,  Heiko Stuebner <heiko@sntech.de>,  Prashant
 Gaikwad <pgaikwad@nvidia.com>,  Thierry Reding
 <thierry.reding@kernel.org>,  Jonathan Hunter <jonathanh@nvidia.com>,
  Tero Kristo <kristo@kernel.org>,  linux-arm-kernel@lists.infradead.org,
  linux-clk@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-msm@vger.kernel.org,  linux-renesas-soc@vger.kernel.org,
  linux-rockchip@lists.infradead.org,  linux-tegra@vger.kernel.org,
  linux-omap@vger.kernel.org
Subject: Re: [PATCH] clk: clean-up simple provider misuse of the consumer API
In-Reply-To: <amImP6sFlv-sNhMh@redhat.com> (Brian Masney's message of "Thu, 23
	Jul 2026 10:33:35 -0400")
References: <20260723-clk-provider-simple-clean-v1-1-0c9668240467@baylibre.com>
	<amImP6sFlv-sNhMh@redhat.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Thu, 23 Jul 2026 19:04:08 +0200
Message-ID: <1j5x25d4dz.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_100427_080068_5F8E18A5 
X-CRM114-Status: GOOD (  13.09  )
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

On jeu. 23 juil. 2026 at 10:33, Brian Masney <bmasney@redhat.com> wrote:

> On Thu, Jul 23, 2026 at 03:20:59PM +0200, Jerome Brunet wrote:
>> Clock provider should not be using the consumer interface.
>> In other words, a provider should not be dealing with struct clk.
>> 
>> This change targets occurrences for which the provider uses the
>> consumer interface and corresponding clk_hw interface exist:
>> * __clk_get_name() -> clk_hw_get_name()
>> * __clk_is_enabled() -> clk_hw_is_enabled()
>> * clk_get_rate() -> clk_hw_get_rate()
>> 
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>> The change being very simple, I did not think it was necessary
>> to split it into multiple changes. If you prefer it to be split,
>> just let me know how.
>> ---
>>  drivers/clk/mvebu/clk-cpu.c            |  2 +-
>>  drivers/clk/qcom/clk-hfpll.c           |  4 ++--
>>  drivers/clk/qcom/clk-krait.c           |  2 +-
>>  drivers/clk/qcom/clk-rcg.c             |  4 ++--
>>  drivers/clk/qcom/clk-rcg2.c            |  2 +-
>>  drivers/clk/renesas/r9a06g032-clocks.c |  2 +-
>>  drivers/clk/rockchip/clk-pll.c         | 24 ++++++++++++------------
>>  drivers/clk/st/clkgen-pll.c            | 20 ++++++++++----------
>>  drivers/clk/tegra/clk-tegra210.c       |  2 +-
>>  drivers/clk/ti/clockdomain.c           |  2 +-
>>  10 files changed, 32 insertions(+), 32 deletions(-)
>
> This looks good to me however can you split this up by clk subsystem at
> the very least so that the various submaintainers can pick up these up?

Will do

>
> With that:
>
> Reviewed-by: Brian Masney <bmasney@redhat.com>

-- 
Jerome

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

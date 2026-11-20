Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E08606A326
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 07:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nxyK2sUB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x9OZDLuu9RbkscqQaUljZkxw9NpAhOPILA/xFVme5kM=; b=nxyK2sUB2DLIO1LsoafUW8r8Ub
	kYIkqJtNe7cp+KErmQoANkS13wNOYk3d1KqC/AtfMPStOY3iw5oKgzdrgpHhwbNusWfwZ9fXHKGoz
	x9Sa5yNNGIJqdgTQ/Y7zRmm0mDgPbriQsPzATMorbKD89NKV5t1rRFM6QJxuSRBHlpQBoyJVZtJn4
	nSPe9U9+U9dqkpt6O+hRkBreWIDiGqpSWQMeQNqUtATjol8cd0HEYapToYEZ0LxsLg4Qz6MVvzLkK
	64ZRo7BFZrV8HPh5fueVSNBOGttA2ZkFa5v+xUm73mECdGzlm4Sk3RYnz93BjghN/WMH6KNWK9Nwc
	y5EqlDgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUJIf-0000000EGiv-1Wvl;
	Fri, 20 Nov 2026 07:44:49 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUJIc-0000000EGhi-1Mbc
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 07:44:47 +0000
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-74ab99038afso397531137.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 23:44:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795160682; x=1795765482;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Vu6IMQbhyMpXX+yWtY4enAtEpk8kj3N3fFV230nsSvs=;
        b=FtRUkQQ1AdVEuJxZ+qnVdPCRJgGxwC4ORSSfjEsXEopdz1tyaiuTGQlZT/Hqu+EiL1
         Scbm3/MiJjlN3IiqXIsWSPnJ0YGFYHvD/8nwo5bcw7RGhI7VJ8lgaEYPyb98kWXAEoHk
         hYy9wCuqDf6QywrbhRwfbRlm9P8pKc4KZ3W5MrN9XHzSWNSzJxijRXYXxPRYlBO3dCGq
         fSvikI3zhK3UMlHMJdaaiuntzWlAT/M+E1M9kc4XjT7CeYK58Jg92NwmU6qJkkU2Jkqx
         S6TQoJgxsP5b6y998nEiJkUZyGiULpcGqvjTK2KJHgaOgOaNNVpGJ9bi05HsTwnajvlw
         1yDw==
X-Forwarded-Encrypted: i=1; AL+hErEsP8oh5WSunMUVdBFyHBlrVZot4WWD7I17uwOZw9M7/5iw9K47R9QUiddL6YxnrPDl73n3XDt2nqI6oM6TiA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/jiNzJhu0C6DqGQsb3gKri2E7rWCNQbq4jzslEqoBR5i7dSwM6
	NLouF6tFvRV3XWockdgeSU3knAuSukC7p2wLbTcpT0nQiFNyLxN6RhhQY6x0DI73
X-Gm-Gg: AZFdTZfZtd57sKaHIXCNTu+5ow4VHPgztXHFR+bWZUmSVafyHTYhY6nobsU5vkHKpbf
	1xYAfWbCQFQRaVdAwiVNZJPHP7YUS052xs+7T0nFLGvfqWO83pLg5rkjD2tqoH6MVkpxnAvACZ3
	FcGWCFRMeuYLerSb8C5q4QJkmQRMeUMIKBZWUn5puuNnzZv5rllC76I3ojIHaSia8DB3briv3mo
	K4jDqRUDSG1YLA8JAzflyiA0TJlzGqNOLx9GR7du4LE14YH+GIKLa7dhbHJofS5blk9BWGCXiNF
	5o3WjcB1gpCSxidg73Lor9x9lYQQaTfKmP1H2XPVoNp5JrMCXjJWB3lTTmsxC26IxukqgCFDQ4/
	fvxgKZYTe6lWc4dEqztfZnwTF9nVOl1Dpmv8v/Hz36gvNzGUPCl9U6whkKAvjXYsEtZjJV6rHb6
	q4vCgmgGt3ny1zWPKYEPk39RgU1hyHBDeVKu7PCjE6bc9yIY0bZ6MAUf1vFTfZfS5I1xjOmWQqH
	zptIrqZ2/0fX5dmF42pRBqwH2UePTPvFS5PeXwH2vVqUA8nAEPpweUWGYg6maeJYL3oFiV3jThm
	RPRXwMPFFr5rVUrWeP9nSUFI2+Snuwj24NnVe+z7rkkATgSlcQfWp4rfFyHn1B/veDs=
X-Received: by 2002:a05:6102:4245:b0:7ce:62a0:6a14 with SMTP id ada2fe7eead31-7d7393908e2mr928641137.9.1795160681767;
        Thu, 19 Nov 2026 23:44:41 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7d6e8265e55sm2256450137.11.2026.11.19.23.44.41
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2026 23:44:41 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-7d6554d96d3so358030137.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 23:44:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErFiZOB1Sqok1VSoRi53bOlu8Y1iF5EPnejI27p2J8H51k2LGJ/vOjOqqzwU7xeuQCfoeyt5booacAY+Z6jYGg==@lists.infradead.org
X-Received: by 2002:a05:6102:441e:b0:7cb:bda3:27ab with SMTP id
 ada2fe7eead31-7d7393925f5mr941037137.13.1795160681386; Thu, 19 Nov 2026
 23:44:41 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1795094688.git.geert+renesas@glider.be> <a896e5bdb29c7c6de39df9b28b11d55614f2ec2d.1795094688.git.geert+renesas@glider.be>
 <179513882271.284394.17357508909448455391.b4-review@b4>
In-Reply-To: <179513882271.284394.17357508909448455391.b4-review@b4>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Nov 2026 08:44:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWJ8zK+kzcznM7FJ3JCo1xWzjRZ5MQz9jhSUcYQfO5rBA@mail.gmail.com>
X-Gm-Features: Aa3M54p6yw1Lhc431P_jQfP5g0YMf_od8mct8UUR6SclOJC7dcSgYi-awR9w8qQ
Message-ID: <CAMuHMdWJ8zK+kzcznM7FJ3JCo1xWzjRZ5MQz9jhSUcYQfO5rBA@mail.gmail.com>
Subject: Re: [PATCH 1/6] clk: Remove unused clk.dev
To: Brian Masney <masneyb@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, 
	Ulf Hansson <ulfh@kernel.org>, linux-clk@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_234446_652517_A4B12C0C 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.7 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Brian,

On Fri, 20 Nov 2026 at 02:40, Brian Masney <masneyb@kernel.org> wrote:
> > This basically reverts commit efa850487a6b6742 ("clk: Inform the core
> > about consumer devices").
> >
> > This commit added a struct device pointer member to struct clk and a
> > parameter to clk_hw_create_clk(), but the new member was never used
> > beyond setting.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- a/drivers/clk/clk.h
> > +++ b/drivers/clk/clk.h
> > @@ -5,8 +5,6 @@
> >   */
> >
> >  struct clk_hw;
> > -struct device;
> > -struct of_phandle_args;
>
> Did you mean to remove of_phandle_args?

Yes, it was added by efa850487a6b6742, too (although it was
used in that header file before). Currently it's not used.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

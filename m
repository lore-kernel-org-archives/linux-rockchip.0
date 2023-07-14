Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BE9EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 05:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGoHbiOSMhchNTleT6wSg4MvUfIAP+2cZ/d5w2QLzhE=; b=jl/sqYFUJ6o0of
	wCn21Qf6WSQlZV5oLGYczH8v3Cz7l75bUWQlG/83cIHOpeVc4UItQv5eb7HqQSObWQOhbOmEDigKK
	U79gzPDlKCYBilxi+w2JjMZAs+vWAkbAEBbD4k6I/o1VsDW8/R/jUmIKajFMSgLP4zexTx80x2g6q
	lJAJPPmpj9d174hxb/W13kJr6cfwFBb3mcIq4urNauYpTXhB/7Ym69aqpYb0lbtZ0SoGf0tb7bzM1
	OA5/Kh8RSTp3U+OY7jFBXxgq1ZjI42Fsu/UKobSWLQ2vlJnF+lexCVnao+pS0sogoY/YhxF5nCXTe
	BZtRU7VNNLlB+cIyEKHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKBQk-0054b9-24;
	Fri, 14 Jul 2023 05:33:26 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKBQh-0054a2-2g
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 05:33:25 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-bc379e4c1cbso1433013276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 22:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689312803; x=1691904803;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cO93OCrQNlLCZA+MMbVD/bFScGU9EicCldb08idSeGU=;
        b=xBgejHrRR1ZPmQWWVcZZ13sWt5Ofu+iTDPRYzWWl6gJKPsKmamGqKOT/8OjniwAsTG
         JjQGYJuscLmU4kpmBNcnYXKhZs8Jr8q2rjUAr2LtgDJaAhl2iiy0xdlkRji58y7/TJGg
         L9lcnSnB4aTCrtEtVgibS9vJQgbLuXedWyf885FAUqc0pL3v7IWG2uEXuJxbbPINw19E
         eGQzj46HD2NmBOzuNuPjKVmsjRyFTnqN/vDTXI61n22KtcjIfHoijhgmwopUxo7s2548
         HOk3lrefVTcJCZmSqpp+nnBUpnaViPJUAbHnVCdiLq3GznGvRN5fkwwKOtKlecebFJ3M
         dyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689312803; x=1691904803;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cO93OCrQNlLCZA+MMbVD/bFScGU9EicCldb08idSeGU=;
        b=ELtndt1PiLY9S2THRadDGMzzBsVPyNZ2Y3zF45oUB50JgnUKOsn79D5pUJDsvgAVJs
         bo7REnPWGQtTbGFzElB0TDEtBrx4ZXHlsdid5f8b2Jtr0grBgEIzaEnbwwkQPMrf91gV
         HH/+5w4Huc4kvc2QE7g1VoHgNfBks9CK7x0DsjiwItUqaBGmNEvfLP28cllF/BHENdcB
         CGoU19c0BBkNsLAQNyPtbTVAmWqLILqeBi5WwQVRBMQ0uSyRRo3vW2Ar0kdpPWT7aupg
         GfX0gGaJ7oR05h2LJpPxKaq8278lVH0mESJy4nqKCIEsitxSFB2A26O4dLn6oUU8w0ka
         awAw==
X-Gm-Message-State: ABy/qLaNtf9S1IWPIq9pP54ZEaxCOI/Rk8zApC2NSwKKBlCLfdYB4J3u
	1kezfgLRQIZyDDtKTkUEbJFN8lETFa1e9Kh0E98P+A==
X-Google-Smtp-Source: APBJJlER1ImBn8SyF4nvZFu6jfUXHV0RYVHgsrGbzlXI/WqrC2ZszrwiB0XPgpV3SfHRs1CKdVmSZ5f1SuUUQOe0xkE=
X-Received: by 2002:a81:ab50:0:b0:56d:9b15:72a with SMTP id
 d16-20020a81ab50000000b0056d9b15072amr3845945ywk.33.1689312802990; Thu, 13
 Jul 2023 22:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230403193250.108693-1-sebastian.reichel@collabora.com>
 <20230403193250.108693-2-sebastian.reichel@collabora.com> <CA+VMnFz4USPcXmQMyUB9n5EVmvQrJARDvnpO7iBrXZ8q2xcyAA@mail.gmail.com>
 <20230713193812.px7q4sdfdppuywsg@mercury.elektranox.org>
In-Reply-To: <20230713193812.px7q4sdfdppuywsg@mercury.elektranox.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 14 Jul 2023 11:03:12 +0530
Message-ID: <CA+VMnFwjFx5+h9=KGR-1o0ejSaxbE=-5wH3iqEEkn6k4q_he7Q@mail.gmail.com>
Subject: Re: [PATCHv2 1/2] clk: rockchip: rk3588: make gate linked clocks
 ignore unused
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Peter Geis <pgwipeout@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Vincent Legoll <vincent.legoll@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_223323_873334_82D8C84A 
X-CRM114-Status: GOOD (  23.92  )
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

Hi Sebastian,

On Fri, 14 Jul 2023 at 01:08, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hello Jagan,
>
> On Thu, Jul 13, 2023 at 08:25:03PM +0530, Jagan Teki wrote:
> > On Tue, 4 Apr 2023 at 01:03, Sebastian Reichel
> > <sebastian.reichel@collabora.com> wrote:
> > [...]
> > > + * Recent Rockchip SoCs have a new hardware block called Native Interface
> > > + * Unit (NIU), which gates clocks to devices behind them. These effectively
> > > + * need two parent clocks.
> > > + *
> > > + * Downstream enables the linked clock via runtime PM whenever the gate is
> > > + * enabled. This implementation uses separate clock nodes for each of the
> > > + * linked gate clocks, which leaks parts of the clock tree into DT.
> > > + *
> > > + * The GATE_LINK macro instead takes the second parent via 'linkname', but
> > > + * ignores the information. Once the clock framework is ready to handle it, the
> > > + * information should be passed on here. But since these clocks are required to
> > > + * access multiple relevant IP blocks, such as PCIe or USB, we mark all linked
> > > + * clocks critical until a better solution is available. This will waste some
> > > + * power, but avoids leaking implementation details into DT or hanging the
> > > + * system.
> > >   */
> >
> > Does it mean the clk-link topology in the downstream kernel can be
> > reused the same as normal clock notation?
>
> Yes.
>
> > For example, I'm trying to add HCLK_VO1 directly to VO1 syscon instead
> > of routing to pclk_vo1_grf(done downstream)
> >       vo1_grf: syscon@fd5a8000 {
> >                compatible = "rockchip,rk3588-vo-grf", "syscon";
> >                reg = <0x0 0xfd5a8000 0x0 0x100>;
> >              clocks = <&cru HCLK_VO1>;
>
> You need PCLK_VO1 (which is currently not exposed; I somehow missed
> it).
>
> >       };
> >
> > This seems breaking syscon for vo1_grf and observed a bus error
> > while accessing regmap.
>
> I investigated the issue you are seeing some weeks ago when my
> co-workers started to work on HDMI RX and TX. You are probably
> just missing this patch:
>
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/ecc6415344957fa88356cec10f8b75a9da603a7b

In fact, I tried this solution as well, by connecting the PCLK_VO1GRF.

        vo1_grf: syscon@fd5a8000 {
                compatible = "rockchip,rk3588-vo-grf", "syscon";
                reg = <0x0 0xfd5a8000 0x0 0x100>;
                clocks = <&cru PCLK_VO1GRF>;
        };

But the result seems the same, accessing vo1_grf triggers an abort [1]

[1] https://gist.github.com/openedev/e241da8180341ffbf4dc6a26de7efa31

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

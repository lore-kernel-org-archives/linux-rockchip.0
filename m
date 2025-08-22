Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F6ECCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7G2bBI2kbNMdEtqHFm7F/pgYtxfFRT6+/q0k6IuVW9U=; b=R6q122VhG2m7vh
	+bSKhJAe18br+2BeH+JhcAhfwapcpJfdRCm9p0dHphN8RZ8zIzukFE9CicdXpfd2XU6Xnky5CESie
	U1Z3TSRXfUkl90LszEZkjRBELMbosQZyYezOKmSJ03sVXm2IMF9jHqxS64O/eVjioXKgLjz+Vxkcc
	acST5oyynCP06IMv3PApjtUQCNgz2RCNM/y5ryVWNHniXD5uWdA+bvEWuTHbIUMoLzG9fXTvTSgS9
	+l8YBhurN2S7LmQpg+uQ9wNYUX6uhKRfWy32prGLhLS1Y+E5vDKi/MxdnIPlFvbLb1X3PGBlGQk/w
	fRhro0OIis/e64dvJWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAobw-0000000DH0F-2msN;
	Mon, 20 Oct 2025 12:03:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upRW8-00000002aIO-3iVX
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Aug 2025 13:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755868156;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a26YwWriI/cAZNSFk7MZK1EJDFmLtTh5uMUvUQRBu1c=;
	b=e5JcKPQpMPpiORnmnxJoAeuLPnzAdfa90NM9JK3H273fWWIkszLJ1cdgJfpOAIfErssA3O
	ETkMAbC/gje/pEudqa7HDbMI/IV3Kn8ISjloK2IlvSvWxobn9O+gH6L3UnAKbfVvwryZoN
	Kc2EaAF84ycUCbdFN7fs2NIZDJXV564=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-18-Wy4tVuqLPHeiMfpFEgPZ0w-1; Fri, 22 Aug 2025 09:09:13 -0400
X-MC-Unique: Wy4tVuqLPHeiMfpFEgPZ0w-1
X-Mimecast-MFC-AGG-ID: Wy4tVuqLPHeiMfpFEgPZ0w_1755868153
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e9fa5f80e7so503712985a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Aug 2025 06:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755868153; x=1756472953;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a26YwWriI/cAZNSFk7MZK1EJDFmLtTh5uMUvUQRBu1c=;
        b=jZU5aM5Q0t4T74v6w+St3tVemk1SQ7aZG899YErQMhx6sFvIaXNom4qhMLxMSpqv2h
         Ps3BjavppukCNmnKOJLOCjlCOxHGqMvKC79oTx0mHqIDG+4SRTeG3qJxOJ0gm55NigjA
         Hw9bJJ26pl8PwU+MfC+VBKmnJvC2jXfMzmnj98AnZ7XBnQYS4WSzWwAmOC6hlPpz9Yi0
         Kq37WZdbe/+FnTeID6dlLvyJwQ3DRevtJbldOxUnJkd5jSopU1qKIgIO8qSLNOge/sn9
         zXLJBSrTkrFk3wl8wBpIkgyRbzIBl0/z279jzhfANspoGYqHCmqtkE/ATJbkvBlj5Zmj
         vCgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQMheQbgbktNPismoRPiTZBp/ElBkHJuaUtNA+ALR/CrIxpBpOdzcpqZS3rZkhno4rONinGGZ+uLuewUst3A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/MfEvC/tOXGd1+lfJEsuNoXyKvFDVESLXdADP0Sq4vT+6onU+
	nDEXduhQulQn/HaFe2VksIph4Lbq0lAqw3wV9HQj3VLn0HHg0EnvF3DJbHxTPUKWyZKtEFD3FZy
	H/tsEiGouf8dv2e33yXcQIIquPsUxx6ms5jV37RalJvY1LksshiumtuUHmkJXfrFqFRY5Z5gyIA
	==
X-Gm-Gg: ASbGnctiBxJT9TPzAiy0Xtrp7MWEgCy9YxydaLpO9gvhZHzFZ8io3ZZ3pPm8/107arE
	Jx/3GojlURRETn/YCNSTic00NpJVhWmOw1Q7L5HakyOyPgKFb3e2w9gh89J690BJ2h6XGP1a2V6
	fc99w1FUWiwlwqlWm03t6bwkJXsUXLfWZ4+m0Dle7h7vvRLU0G0rz77xLJtPRnGj1Vb1bWqjZZv
	WjfxwjrM5fGTgAuiWJB4GvrtUIHVHb2g9dMiN1e6vBgoqICvq3TOPBeSLXCldK6ZHEl8ZqxzPGK
	+3C7sEB8VBTb71hQr4BKTdmoz1Kjkd8BiWLTLxkvNJ+HMIfrpDfKxRtZ5ftQWxHkpuUaZbo64TB
	8dEMEbNsgbStoghf9JqU=
X-Received: by 2002:a05:620a:6cc2:b0:7e3:6a01:e6ba with SMTP id af79cd13be357-7ea10f538ddmr299224285a.8.1755868152257;
        Fri, 22 Aug 2025 06:09:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEW1uvjDvOlgb0eZoGZSzJHV+ZTat1aB9dEJTqNDB/h4VuJNJ3Q109+V4G1CkIe7Ilb4zQPqA==
X-Received: by 2002:a05:620a:6cc2:b0:7e3:6a01:e6ba with SMTP id af79cd13be357-7ea10f538ddmr299210885a.8.1755868151398;
        Fri, 22 Aug 2025 06:09:11 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e87e1c9b9dsm1332247685a.70.2025.08.22.06.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:09:10 -0700 (PDT)
Date: Fri, 22 Aug 2025 09:09:04 -0400
From: Brian Masney <bmasney@redhat.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Paul Cercueil <paul@crapouillou.net>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Taichi Sugaya <sugaya.taichi@socionext.com>,
	Takao Orito <orito.takao@socionext.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Yixun Lan <dlan@gentoo.org>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Michal Simek <michal.simek@amd.com>,
	Maxime Ripard <mripard@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Neal Gompa <neal@gompa.dev>,
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daniel Palmer <daniel@thingy.jp>,
	Romain Perier <romain.perier@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrea della Porta <andrea.porta@suse.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>, Viresh Kumar <vireshk@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Alex Helms <alexander.helms.jy@renesas.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	sophgo@lists.linux.dev, linux-mips@vger.kernel.org,
	imx@lists.linux.dev, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com,
	patches@opensource.cirrus.com, linux-actions@lists.infradead.org,
	asahi@lists.linux.dev, linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, soc@lists.linux.dev
Subject: Re: [PATCH 000/114] clk: convert drivers from deprecated
 round_rate() to determine_rate()
Message-ID: <aKhr8NYhei59At0s@x1>
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
 <1907e1c7-2b15-4729-8497-a7e6f0526366@kernel.org>
 <aKhVVJPEPxCoKKjI@x1>
 <4d31df9e-62c9-4988-9301-2911ff7de229@kernel.org>
MIME-Version: 1.0
In-Reply-To: <4d31df9e-62c9-4988-9301-2911ff7de229@kernel.org>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wUiPUxzHACGdl8AFfVGZ0K53qwFAw1xK1r1yTf4CMu0_1755868153
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_060916_993645_40114A4C 
X-CRM114-Status: GOOD (  22.01  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:36 -0700
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

On Fri, Aug 22, 2025 at 02:23:50PM +0200, Krzysztof Kozlowski wrote:
> On 22/08/2025 13:32, Brian Masney wrote:
> > 7 of the 114 patches in this series needs a v2 with a minor fix. I see
> > several paths forward to merging this. It's ultimately up to Stephen how
> > he wants to proceed.
> > 
> > - I send Stephen a PULL request with all of these patches with the minor
> >   cleanups to the 7 patches. Depending on the timing, Stephen can merge
> >   the other work first, and I deal with cleaning up the merge conflicts.
> >   Or he can if he prefers to instead.
> > 
> > - Stephen applies everyone else's work first to his tree, and then the
> >   good 107 patches in this series. He skips anything that doesn't apply
> >   due to other people's work and I follow up with a smaller series.
> 
> Both cause cross tree merge conflicts. Anyway, please document clearly
> the dependencies between patches.

This series only touches drivers/clk, so it shouldn't cause any issues
with other subsystems, unless there's a topic branch somewhere, or I'm
missing something?

There are some drivers under drivers/clk/ where there is an entry in the
MAINTAINERS file that's not Stephen, although it wasn't clear to me if
all of those people will send PULL requests to Stephen. I described on
the cover how how the series was broken up.

  - Patches 4-70 are for drivers where there is no clk submaintainer
  - Patches 71-110 are for drivers where this is an entry in MAINTAINERS
    (for drivers/clk)

For the clk subdirectories that had say more than 3 patches, I sent
those off as separate patch series. The ones in this series have an
entry in MAINTAINERS only have a few patches for each maintainer.

As for patch dependencies, patches 111 (clk/divider) and
114 (clk/fixed-factor) should go in last. It doesn't matter the order
everything else goes in.

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

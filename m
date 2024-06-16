Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E729C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 08:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4hna6QLPGj2cmXRUkR1AlhYN6dBV7rW6GFnbyMHQUU=; b=rhm9rBiEYJnvch
	Nmn4u8HIvIupILy+KztyLj8wUzsm9b8HNlO95oFJHdb6/AXBOI1z2/mYcENvnKSLYogLnpU0/0n35
	8Etp8mxXupsApRFZh1y0H4lJvq+x/P8+FcUi/1JkFGZaJCZfkeiF7N/iCntOAjtHCgIUfPx1fYo3d
	3F1Uy0tfOXzjCvQ0YuSvaYp+E48iFl3sKvag/fiNW/jd5R0n0GAwer8wPN3ZHm8SKnpPyaHoOISwF
	eqsQEvJivkvoH5CjD3VG6yeWeCR/Kkb2xxckYNjTWIKjAgkxn26V6RU1AmkV0hYL1SK7w1g/L6d7N
	s4kQ+2QEQ1JHBFr7mqTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIkoC-000000075DU-2ri1;
	Sun, 16 Jun 2024 08:00:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIko8-000000075CI-3W6q;
	Sun, 16 Jun 2024 08:00:14 +0000
Received: from 79-98-74-242.sys-data.com ([79.98.74.242] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sIko5-0000Vp-S0; Sun, 16 Jun 2024 10:00:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH v1 2/4] clk: rockchip: Switch to use kmemdup_array()
Date: Sun, 16 Jun 2024 10:00:07 +0200
Message-ID: <6087515.R56niFO833@phil>
In-Reply-To: <ZmhPBccSC0Uc2fjQ@smile.fi.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
 <8182279.JRmrKFJ9eK@diego> <ZmhPBccSC0Uc2fjQ@smile.fi.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_010012_911047_5DD2D8DF 
X-CRM114-Status: GOOD (  12.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 11. Juni 2024, 15:20:05 CEST schrieb Andy Shevchenko:
> On Fri, Jun 07, 2024 at 10:13:04AM +0200, Heiko St=FCbner wrote:
> > Am Donnerstag, 6. Juni 2024, 18:09:32 CEST schrieb Andy Shevchenko:
> =

> ...
> =

> > > -		cpuclk->rate_table =3D kmemdup(rates,
> > > -					     sizeof(*rates) * nrates,
> > > -					     GFP_KERNEL);
> > > +		cpuclk->rate_table =3D kmemdup_array(rates, nrates, sizeof(*rates),
> > > +						   GFP_KERNEL);
> > =

> > are you sure the param order is correct?
> > =

> > According to [0], it's (src, element_size, count, gfp), while above
> > (and below) element_size and count seems switched in the
> > kmemdup_array calls.
> =

> I'm glad you asked. The parameter order is going to be fixed [1].
> =

> > [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/mm/util.c#n149
> =

> [1]: 0ee14725471c ("mm/util: Swap kmemdup_array() arguments")

ah that clears it up :-)


Thanks for the pointer
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

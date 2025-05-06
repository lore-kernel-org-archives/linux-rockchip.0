Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411C7C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 05:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5i67oz/6yz3xeY/hfqokXEcBkxaUq/HR6J+uriM85/Q=; b=QgDeQG9gDZQqrh
	Os9ywX+k0R/LdIa+4MgXgTwn12GhLgwvP6EqMLE+S4MTmFipfaMYkKUfLx3s2sisEs0bzuFgXcQfb
	DLiFgWn8HB44zXdM21ZB6yMRQhcDssicaYBAT7pa9x+QArNnEBWYCe9BAWEH+YepynYWq6Xik5l4b
	hKIvYempFAi1hUJ1yY+QesxDAyJhg+XBIY/Tvc4TFVh/TcCgbfOkJJfd13iL6cRhk820lEE+eJbW5
	ZyWVtZRVoH/D3mtaM9tIp3qqSopdO9YY4cWiyRrmMmSTqBKfL37/tRT3rsUVqhs3XZGN3uDpFV/NW
	kg3rcxY7j6IAoPIKmC/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCAiz-0000000APUI-44kU;
	Tue, 06 May 2025 05:20:13 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC7wi-00000009j2n-2C11;
	Tue, 06 May 2025 02:22:14 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id CDEBD257FC;
	Tue,  6 May 2025 04:22:05 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4JOhvh70GMPC; Tue,  6 May 2025 04:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746498124; bh=RzobY4XVcgkDJ0doe1YwuuhTaZEvjGgriYp4dbdw2KY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LGeMnYHh13eXvQTo6b7jVRLViK27EHHbt6IGVuHYYHpsIFoAkHvSmHGbngDO7cfAz
	 wAsobVQPuGvv4+GR4WyjeK9NNLXQMp4Ov1vGVlIpk4dtb2liJA3MXhc38OlFxaMU9j
	 oAEUu46pPkg24ZfAdG7sMr8L4CLSgOzPjJMjKhDWKB7y4JjZiJopx5LtZLzPHqWnDT
	 UDaPlS9B27kMd8W9tEo0PLmUBQtLqFyGDJ7dtc2EY/YdGr9pzXMluLcTsHdPUw8yCk
	 xArCj1nQZ7LzlKsbwlRfcStwfM25FiVr7y5bIMV+7hpL7JRqgXEHbYIub5rU9vq1lj
	 C51EJbsxNlGmg==
Date: Tue, 6 May 2025 02:21:48 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v4 2/5] clk: rockchip: Support MMC clocks in GRF region
Message-ID: <aBlyPL_1TFh9lNr3@pie.lan>
References: <20250417143647.43860-1-ziyao@disroot.org>
 <20250417143647.43860-3-ziyao@disroot.org>
 <2737556.Isy0gbHreE@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2737556.Isy0gbHreE@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_192212_983551_4DE90108 
X-CRM114-Status: GOOD (  19.23  )
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, May 05, 2025 at 11:39:05PM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Donnerstag, 17. April 2025, 16:36:44 Mitteleurop=E4ische Sommerzeit sc=
hrieb Yao Zi:
> > Registers of MMC drive/sample clocks in Rockchip RV1106 and RK3528
> > locate in GRF regions. Adjust MMC clock code to support register
> > operations through regmap. Also add a helper to ease registration of GRF
> > clocks.
> > =

> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> =

> > diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> > index cbf93ea119a9..ce2f3323d84e 100644
> > --- a/drivers/clk/rockchip/clk.c
> > +++ b/drivers/clk/rockchip/clk.c
> > @@ -590,6 +590,7 @@ void rockchip_clk_register_branches(struct rockchip=
_clk_provider *ctx,
> >  				list->name,
> >  				list->parent_names, list->num_parents,
> >  				ctx->reg_base + list->muxdiv_offset,
> > +				NULL, 0,
> >  				list->div_shift
> >  			);
> >  			break;
> > @@ -619,6 +620,11 @@ void rockchip_clk_register_branches(struct rockchi=
p_clk_provider *ctx,
> >  			break;
> >  		case branch_linked_gate:
> >  			/* must be registered late, fall-through for error message */
> > +		case branch_mmc_grf:
> > +			/*
> > +			 * must be registered through rockchip_clk_register_grf_branches,
> > +			 * fall-through for error message
> > +			 */
> >  			break;
> =

> please don't create separate structures for specific clock-types.
> Being able to "just define" clock branches is helpful and starting
> to require separate blocks just causes issues down the road.
> =

> For handling multiple GRF sources, I just merged Nicolas' patches for
> handling auxiliary GRFs [0] and GRF-gate clock type [1] .

Thanks for the hint, it does look like a better style which I'll adapt
in the next version.

> So ideally, please base off from there.
> =

> Thanks a lot
> Heiko
> =


Regards,
Yao Zi

> [0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.=
git/commit/?id=3D70a114daf2077472e58b3cac23ba8998e35352f4
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.=
git/commit/?id=3De277168cabe9fd99e647f5dad0bc846d5d6b0093
> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

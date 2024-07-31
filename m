Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A2CC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 17:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwVHzYyKtQSn4vB6WHW+G/8wrOvPW+l70KVW8zaxZUw=; b=r9yEGBwTsNcJG+
	mMiLHSN5bWWCF08aA0+y9c5ymp50TD1OsQfY1z6PJgh1Jv12sIKmrF1RJliAwztElFj2oWxbrL7J3
	wQqRxyOu350UCuGQox7wYRsfW5X9Y9t3aqNyv4Uz7zfJmc3U9XjVDjdyAJZ1f7p2qLXlnX+uyATUl
	FLCBu7fs3i04+XHb3zgU3343pIqhIXeMMzOMwmtw6lVyW6kh1EpuclYDX9uQLnpSqZakFLoE1r/6C
	fWmD7Zv1dsLRwO7hHPClhrlUy6cfqjnuGUzqAh0tmtM3FmGprbbhX4ABoUDCmaKKQXpeOHmiIpBI6
	S4i5Ma4gRtT7AWb4k3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZCii-00000001xGD-12pW;
	Wed, 31 Jul 2024 17:02:36 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZCif-00000001xF5-06dn
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 17:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722445349;
	bh=qGzzunRIYxeTcWj7omTdrSNOG9dCO97PljZMNVe2e5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s4exjKh3pPkozbOL087t7JdBLujhE58hBWR4pRjZIQiFw6BFLy23cVUT6pHCgqZ/R
	 GzdliexMTTvKJWsF0/s7Wb/EUOvnr4wKFc2wPL9WWohIYkqGAWPkVWGC8rckcNgCun
	 +VeHg1wA2ZaXr4MxlQepFutykpxl2uS5mCRzVVPWHcHBRDoV05HLzM+4Gy2taYrhq+
	 hGO5AiZYlEe21wlPL3N54CMU37hhqgPjB/bTLgc8s56DUfkx0Hy5bmRxNeLFX5myr3
	 Qg9lFuKhugDHlD57DMhcf4g3N+9eQox5zwml4mvFh+vth2nGTEAkmtAJNEEnoT1/nw
	 NM5qijnvXlfTQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D7DC13782200;
	Wed, 31 Jul 2024 17:02:28 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 7EBA710609BB; Wed, 31 Jul 2024 19:02:28 +0200 (CEST)
Date: Wed, 31 Jul 2024 19:02:28 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	jagan@edgeble.ai, andyshrk@163.com, jonas@kwiboo.se, t.schramm@manjaro.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 2/5] power: supply: cw2015: Add support for dual-cell
 configurations
Message-ID: <2eh5iqwtwlbpg5kpr4lvvhxo2tngw4w7qanelr6filcrru62le@o7cwpsahp2n7>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
 <20240726194948.109326-3-macroalpha82@gmail.com>
 <eimocj6mlvo6u4x54heywblwrfnftxelzpvfcogpjp7vjmunor@5eqlqsszk6ni>
 <MN2PR16MB2941F5FFA92B056533586FBDA5B12@MN2PR16MB2941.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB2941F5FFA92B056533586FBDA5B12@MN2PR16MB2941.namprd16.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_100233_225142_734CAB89 
X-CRM114-Status: GOOD (  45.64  )
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

Hi,

On Wed, Jul 31, 2024 at 11:02:11AM GMT, Chris Morgan wrote:
> On Fri, Jul 26, 2024 at 11:06:21PM +0200, Sebastian Reichel wrote:
> > Hi,
> > 
> > On Fri, Jul 26, 2024 at 02:49:45PM GMT, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > The Cellwise cw2015 datasheet reports that it can handle two cells
> > > in a series configuration. Allow a device tree parameter to note
> > > this condition so that the driver reports the correct voltage values
> > > to userspace.
> > 
> > I found this:
> > 
> > http://www.cellwise-semi.com/Public/assests/menu/20230302/6400076806706.pdf
> > 
> > Which says:
> > 
> >   CW2015 can be used in 2 or more batteries connected in series, or
> >   several cells connected in parallel.
> > 
> > So dual-cell seems like a bad property name. Instead the number of
> > serial cells should be provided. This property is then not really
> > specific to the Cellwise fuel gauge and instead a property of the
> > battery pack (i.e. simple-battery.yaml).
> 
> It's conflicting information (which further confuses me). I see in that
> datasheet it says 2 or more, whereas the datasheet found here says only
> 2 cells:
> 
> https://www.lestat.st/_media/informatique/projets/python-cw2015/cw2015-power-management-datasheet.pdf
> 
> But I agree in principle that we should be setting this as a property
> of a simple-battery rather than a manufacturer specific parameter.
> 
> > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  drivers/power/supply/cw2015_battery.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/drivers/power/supply/cw2015_battery.c b/drivers/power/supply/cw2015_battery.c
> > > index f63c3c410451..b23a6d4fa4fa 100644
> > > --- a/drivers/power/supply/cw2015_battery.c
> > > +++ b/drivers/power/supply/cw2015_battery.c
> > > @@ -77,6 +77,8 @@ struct cw_battery {
> > >  	u32 poll_interval_ms;
> > >  	u8 alert_level;
> > >  
> > > +	bool dual_cell;
> > > +
> > >  	unsigned int read_errors;
> > >  	unsigned int charge_stuck_cnt;
> > >  };
> > > @@ -325,6 +327,9 @@ static int cw_get_voltage(struct cw_battery *cw_bat)
> > >  	 */
> > >  	voltage_mv = avg * 312 / 1024;
> > >  
> > > +	if (cw_bat->dual_cell)
> > > +		voltage_mv *= 2;
> > 
> > Unfortunately there are no details in the document, but this looks
> > very fishy. Does it only measure the first cell and hope that the
> > other cells have the same voltage?
> > 
> > This (unmerged) series also applies to your problem to some degree:
> > 
> > https://lore.kernel.org/all/20240416121818.543896-3-mike.looijmans@topic.nl/
> 
> I think based on the application diagram it is in fact measuring the
> cell voltage.
>
> That said, this ultimately boils down to a cosmetic thing
> as not having this property simply means userspace sees the battery
> voltage as 3.8v instead of 7.6v as is written on the side.

With the cells being connected in serial, the voltage of both cells
can be different. There is not "the cell voltage". Instead there is
a voltage for cell 1 and a voltage for cell 2. In a perfect battery
they are the same, but in reality they are not. In the extreme case
one of the cells may be broken while the other is still fine. It
sounds as if this is just measuring the voltage from the first
cell and assumes the second cell has the same voltage.

Ideally the voltage on these platforms is not exposed via the normal
VOLTAGE property and instead uses a new property for telling
userspace the voltage for a single cell. The kernel simply does not
know the voltage of the whole battery pack.

FWIW this is the worst battery measurement system I've seen so far
if my understanding of the hardware design is correct.

-- Sebastian

> I think for simplification sake I will remove this from the series, add
> a note to the device tree, and wait for the other battery series to get
> pulled. When it gets pulled I'll request a device tree property so we
> can add POWER_SUPPLY_PROP_NUMBER_OF_SERIAL_CELLS to the simple-battery
> and then parse this value. Or if that series ends up getting abandoned
> I can just add a quick and dirty new property like this.


> 
> Thank you,
> Chris
> 
> > 
> > -- Sebastian
> > 
> > >  	dev_dbg(cw_bat->dev, "Read voltage: %d mV, raw=0x%04x\n",
> > >  		voltage_mv, reg_val);
> > >  	return voltage_mv;
> > > @@ -587,6 +592,8 @@ static int cw2015_parse_properties(struct cw_battery *cw_bat)
> > >  			return ret;
> > >  	}
> > >  
> > > +	cw_bat->dual_cell = device_property_read_bool(dev, "cellwise,dual-cell");
> > > +
> > >  	ret = device_property_read_u32(dev, "cellwise,monitor-interval-ms",
> > >  				       &cw_bat->poll_interval_ms);
> > >  	if (ret) {
> > > -- 
> > > 2.34.1
> > > 
> > > 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

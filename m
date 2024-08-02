Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9987AC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/9e+OEQcQEvYPIU5FRCkyk9AHz0Evbfel86IVhfkkFo=; b=P3SKCX3eHYFiUUtWRutiRPQjV9
	qinqOvYYHTKcsqZ0Uku3QAdMKobAdO/2epiN7ljG+U3ogsyjV8wpr0A2nsxHw0eP/6OYsAI6WMorI
	XzjMEztx/WbZb1yDnicrZvdduIyhuqVgzpnWyqiV/Nddo2g5Iklt91BiVnBJVlLYJac9/ijPDw+5t
	lxUDYsDY0FEjwyqQrz6e8N3Z5NfiHgasaoavPOr6I5IMUa5Wwq6gQ/orl5QOmRU/vDxtRg7jkPnyt
	LjUhFuuO8sM6V52siLz+D+KiZZnyQVrHGT0Y+VkUiXal9WwuEPIaqV0Owmpw0tuqhw7Ua5TmuBFC2
	EQF5XYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa01h-0000000A96n-03Kf;
	Fri, 02 Aug 2024 21:41:29 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa00R-0000000A8mc-3QSO
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 21:40:14 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722634808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HWMyYtD9HK9CL+9iAAmomFr8bDQZhT426xXIoar2PO4=;
	b=jhnH7NOmvKHbeckNNNCSIxFjs1VR5Wl7QgbxFULSYt2W7QYbtSSHmIrhtOiZFNDAr8YJcQ
	5Co2ZRt4oZ5sCaebD/dNWNQJhxd2ObJStjjO1i0bfJDisx/VknrCjRHDdFuPVPdou8674x
	7kAh1MwSo406N8cdOVtUU65g8ALBXwmtCesnPAaEBe1/RdC3SORrEJhhxJ4KuiEbJmjvfq
	jhCQgAbrKPNAvbOhitmtgLBdtEt1rYuPz1bpgiI/I4VcFiPw6gpvikQouhSss9oskeB+yK
	4XMwWmM0t4UjphNCXe76bJVE+PZkBpv0U2DU6+Buj3m3lI8DDnCYOCpuw8FLhw==
Date: Fri, 02 Aug 2024 23:39:24 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Morgan <macromorgan@hotmail.com>, Chris Morgan
 <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, jagan@edgeble.ai,
 andyshrk@163.com, jonas@kwiboo.se, t.schramm@manjaro.org, heiko@sntech.de,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 2/5] power: supply: cw2015: Add support for dual-cell
 configurations
In-Reply-To: <2eh5iqwtwlbpg5kpr4lvvhxo2tngw4w7qanelr6filcrru62le@o7cwpsahp2n7>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
 <20240726194948.109326-3-macroalpha82@gmail.com>
 <eimocj6mlvo6u4x54heywblwrfnftxelzpvfcogpjp7vjmunor@5eqlqsszk6ni>
 <MN2PR16MB2941F5FFA92B056533586FBDA5B12@MN2PR16MB2941.namprd16.prod.outlook.com>
 <2eh5iqwtwlbpg5kpr4lvvhxo2tngw4w7qanelr6filcrru62le@o7cwpsahp2n7>
Message-ID: <8c44fcf923c5697ca55c8e32f3938d3b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144012_491399_00591A9E 
X-CRM114-Status: GOOD (  42.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,

On 2024-07-31 19:02, Sebastian Reichel wrote:
> On Wed, Jul 31, 2024 at 11:02:11AM GMT, Chris Morgan wrote:
>> On Fri, Jul 26, 2024 at 11:06:21PM +0200, Sebastian Reichel wrote:
>> > On Fri, Jul 26, 2024 at 02:49:45PM GMT, Chris Morgan wrote:
>> > > From: Chris Morgan <macromorgan@hotmail.com>
>> > >
>> > > The Cellwise cw2015 datasheet reports that it can handle two cells
>> > > in a series configuration. Allow a device tree parameter to note
>> > > this condition so that the driver reports the correct voltage values
>> > > to userspace.
>> >
>> > I found this:
>> >
>> > http://www.cellwise-semi.com/Public/assests/menu/20230302/6400076806706.pdf
>> >
>> > Which says:
>> >
>> >   CW2015 can be used in 2 or more batteries connected in series, or
>> >   several cells connected in parallel.
>> >
>> > So dual-cell seems like a bad property name. Instead the number of
>> > serial cells should be provided. This property is then not really
>> > specific to the Cellwise fuel gauge and instead a property of the
>> > battery pack (i.e. simple-battery.yaml).
>> 
>> It's conflicting information (which further confuses me). I see in 
>> that
>> datasheet it says 2 or more, whereas the datasheet found here says 
>> only
>> 2 cells:
>> 
>> https://www.lestat.st/_media/informatique/projets/python-cw2015/cw2015-power-management-datasheet.pdf
>> 
>> But I agree in principle that we should be setting this as a property
>> of a simple-battery rather than a manufacturer specific parameter.
>> 
>> >
>> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>> > > ---
>> > >  drivers/power/supply/cw2015_battery.c | 7 +++++++
>> > >  1 file changed, 7 insertions(+)
>> > >
>> > > diff --git a/drivers/power/supply/cw2015_battery.c b/drivers/power/supply/cw2015_battery.c
>> > > index f63c3c410451..b23a6d4fa4fa 100644
>> > > --- a/drivers/power/supply/cw2015_battery.c
>> > > +++ b/drivers/power/supply/cw2015_battery.c
>> > > @@ -77,6 +77,8 @@ struct cw_battery {
>> > >  	u32 poll_interval_ms;
>> > >  	u8 alert_level;
>> > >
>> > > +	bool dual_cell;
>> > > +
>> > >  	unsigned int read_errors;
>> > >  	unsigned int charge_stuck_cnt;
>> > >  };
>> > > @@ -325,6 +327,9 @@ static int cw_get_voltage(struct cw_battery *cw_bat)
>> > >  	 */
>> > >  	voltage_mv = avg * 312 / 1024;
>> > >
>> > > +	if (cw_bat->dual_cell)
>> > > +		voltage_mv *= 2;
>> >
>> > Unfortunately there are no details in the document, but this looks
>> > very fishy. Does it only measure the first cell and hope that the
>> > other cells have the same voltage?
>> >
>> > This (unmerged) series also applies to your problem to some degree:
>> >
>> > https://lore.kernel.org/all/20240416121818.543896-3-mike.looijmans@topic.nl/
>> 
>> I think based on the application diagram it is in fact measuring the
>> cell voltage.
>> 
>> That said, this ultimately boils down to a cosmetic thing
>> as not having this property simply means userspace sees the battery
>> voltage as 3.8v instead of 7.6v as is written on the side.
> 
> With the cells being connected in serial, the voltage of both cells
> can be different. There is not "the cell voltage". Instead there is
> a voltage for cell 1 and a voltage for cell 2. In a perfect battery
> they are the same, but in reality they are not. In the extreme case
> one of the cells may be broken while the other is still fine. It
> sounds as if this is just measuring the voltage from the first
> cell and assumes the second cell has the same voltage.
> 
> Ideally the voltage on these platforms is not exposed via the normal
> VOLTAGE property and instead uses a new property for telling
> userspace the voltage for a single cell. The kernel simply does not
> know the voltage of the whole battery pack.
> 
> FWIW this is the worst battery measurement system I've seen so far
> if my understanding of the hardware design is correct.

Please note that two facts should be considered here:

  - The GenBook schematic [1] clearly shows that the individual battery
    cells aren't exposed at its internal battery connector and, as a
    result, aren't available for individual cell voltage monitoring

  - The GenBook uses a CW2013 as it fuel gauge, [1] instead of CW2015
    as mentioned here a few times, but I haven't went through the CW2013
    datasheet(s) yet to see what are the actual differences between it
    and the CW2015

[1] https://wiki.cool-pi.com/notebook/coolpi-genbook-v20.pdf

>> I think for simplification sake I will remove this from the series, 
>> add
>> a note to the device tree, and wait for the other battery series to 
>> get
>> pulled. When it gets pulled I'll request a device tree property so we
>> can add POWER_SUPPLY_PROP_NUMBER_OF_SERIAL_CELLS to the simple-battery
>> and then parse this value. Or if that series ends up getting abandoned
>> I can just add a quick and dirty new property like this.
>> >
>> > >  	dev_dbg(cw_bat->dev, "Read voltage: %d mV, raw=0x%04x\n",
>> > >  		voltage_mv, reg_val);
>> > >  	return voltage_mv;
>> > > @@ -587,6 +592,8 @@ static int cw2015_parse_properties(struct cw_battery *cw_bat)
>> > >  			return ret;
>> > >  	}
>> > >
>> > > +	cw_bat->dual_cell = device_property_read_bool(dev, "cellwise,dual-cell");
>> > > +
>> > >  	ret = device_property_read_u32(dev, "cellwise,monitor-interval-ms",
>> > >  				       &cw_bat->poll_interval_ms);
>> > >  	if (ret) {
>> > > --
>> > > 2.34.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

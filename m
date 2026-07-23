Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CD9C531FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 23:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9h8DijCN5bRX7K1hqRCtDmP0XoiQf1yjJ38GwoRgpas=; b=nWds6qDv+A/fUj
	FL4VdCRVZ5CNdMGLFyiZRP3VMHHcmC8s419g+7kJq4+sW2FLqH4EYr+rkR7xRamsXEosDdU1rQeDn
	XB3AuOQyRpi7wwQU3vq7r6eAMOkMxvb4XMUNMb0NDPQR6Ni9szFOa9sIXd4cmWHRN65dKUoSejhut
	sGwz42M8Tba9FsBvgJN008nCBQ37Z374C6GkrBhapKKHbEM8lSSooHjVlikjOqPUJvogKiW2c+gt8
	qBtga8a6b4FeNiZEtX7DJ/jdmQgpCQQDyuje2r+Uk9nJiuNBLf1VVsDEnshFLEvD99WAO54WNGv2X
	Kj22UD/FidLPo7OgyE3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn2eq-0000000FFe8-3n4j;
	Thu, 23 Jul 2026 23:16:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn2eq-0000000FFdx-0Hbx
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 23:16:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7ED3D43886;
	Thu, 23 Jul 2026 23:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07CF21F000E9;
	Thu, 23 Jul 2026 23:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784848611;
	bh=BFrMt62NqeFuclmvLG54QxWcXXQphRnPpV2D2DMQvWE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=GiS989qKpihuRzkk1feA0KG3d20Qw3TAUn9oTnxZxC8M+6dxiiYrsfwfkE/2w8a01
	 McSOvwN77a/FW4JdASB6JwIpD71C3/nNTz8RFpJnbWG4vwnGVhFG+Xoq63YMB7gX6N
	 vRrFG03gW7OCh+NwcjVle+0fuRjTQ0Ehoo4dTfZUF4ut4gcX6sbLlTMrKVhSZO9zoj
	 FBrL/fK995h3SB7vqZ9pWLsqGrrpP3gm3thDihlbmw0Hv2iiU3l16HzlEjOvBZ3cwd
	 +m5Ebr/U6WzCxdiD8194CtSEGTDYOIcFBXAatotfY3F4l4QblZjXY3cETACyIHFEeX
	 uaW9yOMkXl/RQ==
Date: Fri, 24 Jul 2026 00:16:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V17 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260724001647.42af95ff@jic23-huawei>
In-Reply-To: <DS4PR19MB9973350E9251D329E03A96066FA5C32@DS4PR19MB997335.namprd19.prod.outlook.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
	<20260716182637.24310-4-macroalpha82@gmail.com>
	<20260719000530.62bad145@jic23-huawei>
	<DS4PR19MB9973350E9251D329E03A96066FA5C32@DS4PR19MB997335.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Mon, 20 Jul 2026 12:15:06 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sun, Jul 19, 2026 at 12:05:30AM +0100, Jonathan Cameron wrote:
> > On Thu, 16 Jul 2026 13:26:30 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add the core component of a new inv_icm42607 driver. This includes
> > > a few setup functions and the full register definition in the
> > > header file, as well as the bits necessary to compile and probe the
> > > device when used on an i2c bus.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>  
> > 
> > Hi Chris,
> > 
> > Just one small thing below given you are probably going to do
> > a v18.  If it had just been this I might have tweaked it whilst
> > applying
> > 
> > Thanks,
> > 
> > Jonathan
> > 
> >   
> > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> > > new file mode 100644
> > > index 000000000000..8f74bf38aad1
> > > --- /dev/null
> > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c  
> > 
> > ...
> >   
> > > +static int inv_icm42607_probe(struct i2c_client *client)
> > > +{
> > > +	struct device *dev = &client->dev;
> > > +	const struct inv_icm42607_hw *hw;
> > > +	struct regmap *regmap;
> > > +
> > > +	hw = i2c_get_match_data(client);
> > > +	if (!hw)
> > > +		return dev_err_probe(dev, -ENODEV, "Failed to get i2c data\n");
> > > +
> > > +	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
> > > +	if (IS_ERR(regmap))
> > > +		return dev_err_probe(dev, PTR_ERR(regmap),
> > > +				     "Failed to register i2c regmap\n");
> > > +
> > > +	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
> > > +}
> > > +
> > > +static const struct i2c_device_id inv_icm42607_id[] = {
> > > +	{
> > > +		.name = "icm42607",
> > > +		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data,
> > > +	}, {
> > > +		.name = "icm42607p",
> > > +		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data,
> > > +	},
> > > +	{ }
> > > +};
> > > +MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
> > > +
> > > +static const struct of_device_id inv_icm42607_of_matches[] = {
> > > +	{
> > > +		.compatible = "invensense,icm42607",  
> > 
> > I'd expect to see the data here as well.  Look at implementation of i2c_get_match_data()
> > and consider what would happen if there was a slightly mismatch between which devices
> > were listed in each table.  To avoid that fragility we normally just put
> > the data pointers in both places.  
> 
> I was advised in the notes for patch v16 that it could be removed. Should I go back and
> undo the remove?

Ah. I missed Uwe's comment. I've replied to that email. Let's give
it a day or two to see if Uwe comes back with an reason beyond it
working without it (which is true as long as the IDs always match!)

Jonathan

> 
> Thank you,
> Chris
> 
> >   
> > > +	}, {
> > > +		.compatible = "invensense,icm42607p",
> > > +	},
> > > +	{ }
> > > +};
> > > +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);  
> > 
> >   
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

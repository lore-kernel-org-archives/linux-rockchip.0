Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38B4EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 11:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUSTdD72EdULcf6N4oQJKtrwHOZr0rxxhwzsumKtlHo=; b=iWx9fDSwreOuFP
	7w4Z6VDa/uXg61BywphzGQ72k8RuWW+y3OIpBNQQeJAFZA9Pog94ZmSXZpnui07QJ81Rq2PMa5NCu
	a0XZqxxdp0Vi7plIZP3BbLHW3uI2J4mHqn8owx7DEmX8wETmX6OIaR2cx/bnZ4CCiElFjjNmcrDFk
	KLmjyhzAnWk8qLLIZK0Pn7Im8jxZEIJRWirQ0e4y1jL4CkJU13WaM1GAPII4fqlC3UpMfSl5F4en/
	NKp3WbhrqN87odrFN4cwdE8FYfe+toQHMKQHxg7rBaxCTGQOzJ9CxcKbO18mZXiEiXsBZ44Q4Usj7
	99gMtxFi0HZ1G/JNznoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8JzH-007W6p-5u; Mon, 04 Jul 2022 11:11:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8JRT-0074pK-6M
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 10:36:37 +0000
Received: from pyrite.rasen.tech (softbank036240127029.bbtec.net [36.240.127.29])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 65A1C735;
	Mon,  4 Jul 2022 12:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656930991;
	bh=4HYhwVxv0cO37GEKoq6/N1bKLFEbQ4Ole4I76e5nS1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UbM3hwG8ZlpUCE4Qvw5H8dV7gfaBOaCScwbI7ynXonyN0ihNcm87F70NyaRMY9/6t
	 +7vcz3AAr5nEKxE+LRLQ4K3wm9rtIowiDtmnNcsbzF4jCY1L6YuoW3o2Sx3Dn8NALo
	 uH0GK01Qfw8uvL6jsjoNEIiZRYieN8yo3EkGo6wo=
Date: Mon, 4 Jul 2022 19:36:21 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, linux-media@vger.kernel.org,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 48/55] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <20220704103621.GD3886060@pyrite.rasen.tech>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-49-paul.elder@ideasonboard.com>
 <Yq0NnksDldH1PDfp@pendragon.ideasonboard.com>
 <20220626040543.jswxbusyyydfoxfd@guri>
 <Yrg96r2vRewNpMFl@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yrg96r2vRewNpMFl@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_033635_487171_B4E7A508 
X-CRM114-Status: GOOD (  47.42  )
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

Hello,

On Sun, Jun 26, 2022 at 02:07:22PM +0300, Laurent Pinchart wrote:
> On Sun, Jun 26, 2022 at 07:05:43AM +0300, Dafna Hirschfeld wrote:
> > On 18.06.2022 02:26, Laurent Pinchart wrote:
> > > On Wed, Jun 15, 2022 at 04:11:20AM +0900, Paul Elder wrote:
> > >> Add match data to the rkisp1 driver to match the i.MX8MP ISP.
> > >>
> > >> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > >> ---
> > >>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 ++++++++++++++++=
+++
> > >>  include/uapi/linux/rkisp1-config.h            |  3 +++
> > >>  2 files changed, 25 insertions(+)
> > >>
> > >> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/d=
rivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > >> index 62fa2bd275fe..3a0115bdcee5 100644
> > >> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > >> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > >> @@ -486,6 +486,24 @@ static const struct rkisp1_info rk3399_isp_info=
 =3D {
> > >>  	.features =3D RKISP1_FEATURE_MIPI_CSI2,
> > >>  };
> > >>
> > >> +static const char * const imx8mp_isp_clks[] =3D {
> > >> +	"isp",
> > >> +	"hclk",
> > >> +	"aclk",
> > >> +};
> > >> +
> > >> +static const struct rkisp1_isr_data imx8mp_isp_isrs[] =3D {
> > >> +	{ NULL, rkisp1_isr },
> > >> +};
> > >> +
> > >> +static const struct rkisp1_info imx8mp_isp_info =3D {
> > >> +	.clks =3D imx8mp_isp_clks,
> > >> +	.clk_size =3D ARRAY_SIZE(imx8mp_isp_clks),
> > >> +	.isrs =3D imx8mp_isp_isrs,
> > >> +	.isr_size =3D ARRAY_SIZE(imx8mp_isp_isrs),
> > >> +	.isp_ver =3D IMX8MP_V10,
> > >> +};
> > >> +
> > >>  static const struct of_device_id rkisp1_of_match[] =3D {
> > >>  	{
> > >>  		.compatible =3D "rockchip,px30-cif-isp",
> > >> @@ -495,6 +513,10 @@ static const struct of_device_id rkisp1_of_matc=
h[] =3D {
> > >>  		.compatible =3D "rockchip,rk3399-cif-isp",
> > >>  		.data =3D &rk3399_isp_info,
> > >>  	},
> > >> +	{
> > >> +		.compatible =3D "fsl,imx8mp-isp",
> > >> +		.data =3D &imx8mp_isp_info,
> > >> +	},
> > >>  	{},
> > >>  };
> > >>  MODULE_DEVICE_TABLE(of, rkisp1_of_match);
> > >> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux=
/rkisp1-config.h
> > >> index 583ca0d9a79d..40677d47825c 100644
> > >> --- a/include/uapi/linux/rkisp1-config.h
> > >> +++ b/include/uapi/linux/rkisp1-config.h
> > >> @@ -140,12 +140,15 @@
> > >>   * @RKISP1_V11: declared in the original vendor code, but not used
> > >>   * @RKISP1_V12: used at least in rk3326 and px30
> > >>   * @RKISP1_V13: used at least in rk1808
> > >> + * @IMX8MP_V10: used in at least imx8mp
> > >>   */
> > >>  enum rkisp1_cif_isp_version {
> > >>  	RKISP1_V10 =3D 10,
> > >>  	RKISP1_V11,
> > >>  	RKISP1_V12,
> > >>  	RKISP1_V13,
> > >> +	/* TODO Choose a better version for this */
> > >> +	IMX8MP_V10,
> > >
> > > Time to address this ? :-)
> > >
> > > Does anyone know where the current versioning scheme come from ?
> > =

> > It was added by Heiko St=FCbner, basically trying to figure out the
> > versions from the vedor code,
> > see https://lore.kernel.org/all/20210121144407.9045-6-dafna.hirschfeld@=
collabora.com/
> =

> Is that public code ? Heiko, do you have any pointer to it ?
> =

> As far as I understand, this ISP IP has been forked, and is now
> developed in parallel by Rockchip (for their own SoCs) and by
> VeriSilicon (under the name of ISP8000Nano). The versioning schemes on
> the two sides are different, and may have common roots. The fact that
> the ISP8000Nano can be customized at synthesis time also complicates
> this.
> =

> The question at hand is how to expose a single coherent versioning
> scheme to userspace in this driver. The hardware has a version
> identification register that we could use, but I don't know if it gives
> us enough information (as in guaranteeing that the same version value
> won't be used for different IP versions that would need to be
> distinguished from each other in userspace). The fact that Rockchip and
> VeriSilicon probably develop their own new versions without cooperating
> increases the risk of collision.
> =

> We will also have to tackle the question of UABI. Newer ISP versions
> will require extensions to the ISP parameters structure. The i.MX8MP has
> extra processing blocks that are not supported by the driver today. One
> option would be to duplicate the top-level rkisp1_params_cfg structure
> per ISP version, as well as a set of lower-level structure where
> appropriate (how to handle that easily and efficiently on the driver
> side will be interesting to figure out). Another option is to only add
> parameters to the end of the rkisp1_params_cfg structure, but I fear
> that won't scale. We'll end up with a large structure where lots of data
> will be irrelevant for any particular ISP version, and that will be
> error-prone.
> =

> Comments and idea will be appreciated.

Thinking out loud:

The most sure way is clearly to have feature flags for each feature.
Maybe one set of internal ones that only affect the driver, and another
set for userspace to see what the hardware is capable of. On the other
hand, from the top of my head, the ones that userspace cares about could
be probed in other ways, like the presence of the self path can be
obtained from the media graph, and available controls/formats from...
the list of available controls/formats.

Also if we have flags then... what's the point of the version number? Is
there any value in letting userspace know some version number if it
doesn't particularly correlate with the actual features that are
available? Plus, we run the risk of version numbers (from the version
register) colliding between VeriSilicon and Rockchip. Plus my
understanding is that the current version number that we have right now
(V10 ~ V13) is fairly arbitrary anyway? (but we have to keep it for
compatibility reasons.)

So...

1 - Do we need a precise version number for the purpose of probing
capabilities? Can it just be replaced with feature flags?
2 - Do we need feature flags? Can all information (that userspace cares
about be obtained by some other source? (I guess this needs more
investigation)
3 - Maybe userspace doesn't care about the precise version number at
all? We could just continue with an aribitrary version number (like
IMX_V10)?
4 - Or we could just expand the version number with what we get from the
version register? And have different... labels (?) based on the vendor?

Lots of thinking out loud with no clear conclusion :D


Paul

> =

> > >>  };
> > >>
> > >>  enum rkisp1_cif_isp_histogram_mode {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

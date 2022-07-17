Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04FD7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 14:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HW3tDysmKjlrEI5jpcSiJqMSoyVmw+DPZfnny0Gu8lk=; b=F2Rb/eA1GdmaVC
	j1dn/b+hs3xJSCYNb2m8JQb3NVWvfxEkfbGyQU63SVMy7dNbuqdcONOY2kHPyg2GewJkgGkp8Jrhx
	L0GXxGmz5crSl0ofyzGOSGGgDLkb7qp4Dg0Kga7S5h60dEsRiIPu278BTt/gU2IjKwcA9/FxMJ8ec
	2rOQCMxpbYtuziX8BCiD1dvL3Kp6SgSe/Iq9LG1+a9Jg/TjbqBdZeWuiDWE/GxWlaPdxoKtxp4ZkS
	0XLNY+7Zw1VQ6hUw/Nx09VOhF6cnP9p0B07X/iK93UmJRj7gpnWzk7/bkhBkYmAv/qH9hpLvxZ/P7
	blVLDa75bOyHZPuF6m/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD5iA-007V3b-Gl; Sun, 17 Jul 2022 14:57:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD5i8-007V1b-67
	for linux-rockchip@lists.infradead.org; Sun, 17 Jul 2022 14:57:33 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2E3C033F;
	Sun, 17 Jul 2022 16:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658069847;
	bh=dgPkeSFD5S1R6+m27aNTNcgpn+g22Zut/lLrKDEpRQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MUpPyITm7RWOGk2mz/CDqwBuMSRXSY2b9y/ULfGMphjbefKFoOsDMkRTfkmMyhBgq
	 nouKoraz2azX6XM/6AJ+8pp1A1MI/ZEX0E4dA70dAl9G7P6lZq8JyIpBJlUhRJus2V
	 17inzN8rgXcFwWglPXOBwEErZjGwiTikj5tRhAOI=
Date: Sun, 17 Jul 2022 17:56:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>,
	"open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 48/55] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <YtQjN6/hQpJautjv@pendragon.ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-49-laurent.pinchart@ideasonboard.com>
 <CAHCN7xKVzrExUvK+fEKiTXV71J5K-VOcqxVFrew0f2dN5mjAOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKVzrExUvK+fEKiTXV71J5K-VOcqxVFrew0f2dN5mjAOQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_075732_431402_B44C8A12 
X-CRM114-Status: GOOD (  24.87  )
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

Hi Adam,

On Fri, Jul 15, 2022 at 06:56:57AM -0500, Adam Ford wrote:
> On Thu, Jun 30, 2022 at 6:27 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > From: Paul Elder <paul.elder@ideasonboard.com>
> >
> > Add match data to the rkisp1 driver to match the i.MX8MP ISP.
> 
> I am testing this series on an i.MX8MP with two Sony IMX219 cameras in
> 4-lane mode.
> From what I can tell, the ISP_1 doesn't enumerate if ISP_0 is already
> enumerated.  My guess is that the name of the ISP is hard-coded so the
> second instance isn't able to load because the names conflict.  I
> don't see any errors, so it's just a guess.

I'll have a look.

> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++++++++++
> >  include/uapi/linux/rkisp1-config.h            |  3 +++
> >  2 files changed, 25 insertions(+)
> >
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index f2475c6235ea..a41f89807dd7 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -496,6 +496,24 @@ static const struct rkisp1_info rk3399_isp_info = {
> >         .features = RKISP1_FEATURE_MIPI_CSI2,
> >  };
> >
> > +static const char * const imx8mp_isp_clks[] = {
> > +       "isp",
> > +       "hclk",
> > +       "aclk",
> > +};
> > +
> > +static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> > +       { NULL, rkisp1_isr },
> > +};
> > +
> > +static const struct rkisp1_info imx8mp_isp_info = {
> > +       .clks = imx8mp_isp_clks,
> > +       .clk_size = ARRAY_SIZE(imx8mp_isp_clks),
> > +       .isrs = imx8mp_isp_isrs,
> > +       .isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> > +       .isp_ver = IMX8MP_V10,
> > +};
> > +
> >  static const struct of_device_id rkisp1_of_match[] = {
> >         {
> >                 .compatible = "rockchip,px30-cif-isp",
> > @@ -505,6 +523,10 @@ static const struct of_device_id rkisp1_of_match[] = {
> >                 .compatible = "rockchip,rk3399-cif-isp",
> >                 .data = &rk3399_isp_info,
> >         },
> > +       {
> > +               .compatible = "fsl,imx8mp-isp",
> > +               .data = &imx8mp_isp_info,
> > +       },
> >         {},
> >  };
> >  MODULE_DEVICE_TABLE(of, rkisp1_of_match);
> > diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> > index 583ca0d9a79d..40677d47825c 100644
> > --- a/include/uapi/linux/rkisp1-config.h
> > +++ b/include/uapi/linux/rkisp1-config.h
> > @@ -140,12 +140,15 @@
> >   * @RKISP1_V11: declared in the original vendor code, but not used
> >   * @RKISP1_V12: used at least in rk3326 and px30
> >   * @RKISP1_V13: used at least in rk1808
> > + * @IMX8MP_V10: used in at least imx8mp
> >   */
> >  enum rkisp1_cif_isp_version {
> >         RKISP1_V10 = 10,
> >         RKISP1_V11,
> >         RKISP1_V12,
> >         RKISP1_V13,
> > +       /* TODO Choose a better version for this */
> > +       IMX8MP_V10,
> >  };
> >
> >  enum rkisp1_cif_isp_histogram_mode {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

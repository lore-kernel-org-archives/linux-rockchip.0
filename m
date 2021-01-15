Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E356EC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 20:29:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E01F23A5A
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 20:29:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E01F23A5A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XKw7mO4D0W1H8ojbq+ht/YqLbix0l0tJOU0DI4+WN3k=; b=eDTo2U4Tyf7+ahlElwHsUtqsO
	P41ULxzq6VhZtwob5ND9dLuFfqORUThtIBFfcrzcbEPvOCwUpN3aN8QNEjHlWXfdPhviynnZXB4vI
	wiPjURIsXN2th12lM2yzgwkiQbjLCsC2GCPnvONm3G+2KHSYcxLcsS2H1VTHrU56S4FNKlGsjTwlm
	MAkhG726sKLc0cGzwff02mJ42Q3Xr98/rv3FmUWpIHVJ6RFchKY0HA7WCxZldzZMHfIcR6f92JNKP
	jiFx1JX4CVJKKINx4OKqaySJcpPCFtTHqhPwZF6QJv3rs2ezq7pfsrYsv4dzLhpvp2rIKnaOiB84G
	wlLNJ4HrQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0Vj5-0007n2-4A; Fri, 15 Jan 2021 20:29:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0Vj2-0007mU-OV
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 20:29:41 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l0Viu-0008If-KE; Fri, 15 Jan 2021 21:29:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 2/3] media: rockchip: rkisp1: carry ip version
 information
Date: Fri, 15 Jan 2021 21:29:31 +0100
Message-ID: <2867818.687JKscXgg@diego>
In-Reply-To: <YAHwMb4DD0eRoeg3@pendragon.ideasonboard.com>
References: <20210115163829.217131-1-heiko@sntech.de>
 <20210115163829.217131-3-heiko@sntech.de>
 <YAHwMb4DD0eRoeg3@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_152940_919417_7570DC70 
X-CRM114-Status: GOOD (  37.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: dafna.hirschfeld@collabora.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 christoph.muellner@theobroma-systems.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Laurent,

Am Freitag, 15. Januar 2021, 20:42:41 CET schrieb Laurent Pinchart:
> On Fri, Jan 15, 2021 at 05:38:28PM +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > The IP block evolved from its rk3288/rk3399 base and the vendor
> > designates them with a numerical version. rk3399 for example
> > is designated V10 probably meaning V1.0.
> > 
> > There doesn't seem to be an actual version register we could read that
> > information from, so allow the match_data to carry that information
> > for future differentiation.
> > 
> > Also carry that information in the hw_revision field of the media-
> > controller API, so that userspace also has access to that.
> > 
> > The added versions are:
> > - V10: at least rk3288 + rk3399
> > - V11: seemingly unused as of now, but probably appeared in some soc
> > - V12: at least rk3326 + px30
> > - V13: at least rk1808
> 
> In addition to changes to the ISP itself, are there changes in how it is
> integrated in the system, in particular in how it is connected to CSI-2
> receivers ?

Hooking up my camera on the px30 was pretty straightforward.
As you can see in [0] the actual csi-phy block is different, but structurally
everything else stayed the same and the px30 series merely accounts
for some isp-specific changes, like the split interrupts and the V12-specific
parts.


> Do all the above SoCs have two ISP instances ?

Nope, I think only the rk3399 has two ISPs.

All others only seem to have one instance and maybe an additional more
simple video input processor. (like the rk3288 has both an ISP and something
called VIP - a simpler block)

Similar is the rk3326/px30 (same soc) which has an ISP as well as a VIP that
Maxime Chevallier is working on [1]

Heiko

[0] https://lore.kernel.org/linux-media/20210108193311.3423236-1-heiko@sntech.de/
[1] https://lore.kernel.org/linux-devicetree/20201229161724.511102-1-maxime.chevallier@bootlin.com/


> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  Documentation/admin-guide/media/rkisp1.rst    | 16 ++++++++++++++
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 21 +++++++++++--------
> >  include/uapi/linux/rkisp1-config.h            | 16 ++++++++++++++
> >  3 files changed, 44 insertions(+), 9 deletions(-)
> > 
> > diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
> > index 2267e4fb475e..ccf418713623 100644
> > --- a/Documentation/admin-guide/media/rkisp1.rst
> > +++ b/Documentation/admin-guide/media/rkisp1.rst
> > @@ -13,6 +13,22 @@ This file documents the driver for the Rockchip ISP1 that is part of RK3288
> >  and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
> >  and uses the Media-Controller API.
> >  
> > +Revisions
> > +=========
> > +
> > +There exist multiple smaller revisions to this ISP that got introduced in
> > +later SoCs. Revisions can be found in the enum :c:type:`rkisp1_cif_isp_version`
> > +in the UAPI and the revision of the ISP inside the running SoC can be read
> > +in the field hw_revision of struct media_device_info as returned by
> > +ioctl MEDIA_IOC_DEVICE_INFO.
> > +
> > +Versions in use are:
> > +
> > +- RKISP1_V10: used at least in rk3288 and rk3399
> > +- RKISP1_V11: declared in the original vendor code, but not used
> > +- RKISP1_V12: used at least in rk3326 and px30
> > +- RKISP1_V13: used at least in rk1808
> > +
> >  Topology
> >  ========
> >  .. _rkisp1_topology_graph:
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index 68da1eed753d..f7e9fd305548 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -104,6 +104,7 @@
> >  struct rkisp1_match_data {
> >  	const char * const *clks;
> >  	unsigned int size;
> > +	enum rkisp1_cif_isp_version isp_ver;
> >  };
> >  
> >  /* ----------------------------------------------------------------------------
> > @@ -411,15 +412,16 @@ static const char * const rk3399_isp_clks[] = {
> >  	"hclk",
> >  };
> >  
> > -static const struct rkisp1_match_data rk3399_isp_clk_data = {
> > +static const struct rkisp1_match_data rk3399_isp_match_data = {
> >  	.clks = rk3399_isp_clks,
> >  	.size = ARRAY_SIZE(rk3399_isp_clks),
> > +	.isp_ver = RKISP1_V10,
> >  };
> >  
> >  static const struct of_device_id rkisp1_of_match[] = {
> >  	{
> >  		.compatible = "rockchip,rk3399-cif-isp",
> > -		.data = &rk3399_isp_clk_data,
> > +		.data = &rk3399_isp_match_data,
> >  	},
> >  	{},
> >  };
> > @@ -457,15 +459,15 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> >  
> >  static int rkisp1_probe(struct platform_device *pdev)
> >  {
> > -	const struct rkisp1_match_data *clk_data;
> > +	const struct rkisp1_match_data *match_data;
> >  	struct device *dev = &pdev->dev;
> >  	struct rkisp1_device *rkisp1;
> >  	struct v4l2_device *v4l2_dev;
> >  	unsigned int i;
> >  	int ret, irq;
> >  
> > -	clk_data = of_device_get_match_data(&pdev->dev);
> > -	if (!clk_data)
> > +	match_data = of_device_get_match_data(&pdev->dev);
> > +	if (!match_data)
> >  		return -ENODEV;
> >  
> >  	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
> > @@ -494,15 +496,16 @@ static int rkisp1_probe(struct platform_device *pdev)
> >  
> >  	rkisp1->irq = irq;
> >  
> > -	for (i = 0; i < clk_data->size; i++)
> > -		rkisp1->clks[i].id = clk_data->clks[i];
> > -	ret = devm_clk_bulk_get(dev, clk_data->size, rkisp1->clks);
> > +	for (i = 0; i < match_data->size; i++)
> > +		rkisp1->clks[i].id = match_data->clks[i];
> > +	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
> >  	if (ret)
> >  		return ret;
> > -	rkisp1->clk_size = clk_data->size;
> > +	rkisp1->clk_size = match_data->size;
> >  
> >  	pm_runtime_enable(&pdev->dev);
> >  
> > +	rkisp1->media_dev.hw_revision = match_data->isp_ver;
> >  	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
> >  		sizeof(rkisp1->media_dev.model));
> >  	rkisp1->media_dev.dev = &pdev->dev;
> > diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> > index ba443771cc0b..9fecb6bc457d 100644
> > --- a/include/uapi/linux/rkisp1-config.h
> > +++ b/include/uapi/linux/rkisp1-config.h
> > @@ -124,6 +124,22 @@
> >  #define RKISP1_CIF_ISP_STAT_AFM           (1U << 2)
> >  #define RKISP1_CIF_ISP_STAT_HIST          (1U << 3)
> >  
> > +
> > +/**
> > + * enum rkisp1_cif_isp_version - ISP variants
> > + *
> > + * @RKISP1_V10: used at least in rk3288 and rk3399
> > + * @RKISP1_V11: declared in the original vendor code, but not used
> > + * @RKISP1_V12: used at least in rk3326 and px30
> > + * @RKISP1_V13: used at least in rk1808
> > + */
> > +enum rkisp1_cif_isp_version {
> > +	RKISP1_V10 = 0,
> > +	RKISP1_V11,
> > +	RKISP1_V12,
> > +	RKISP1_V13,
> > +};
> > +
> >  enum rkisp1_cif_isp_histogram_mode {
> >  	RKISP1_CIF_ISP_HISTOGRAM_MODE_DISABLE,
> >  	RKISP1_CIF_ISP_HISTOGRAM_MODE_RGB_COMBINED,
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

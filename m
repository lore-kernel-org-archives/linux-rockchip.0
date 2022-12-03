Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BCC0C47088
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Dec 2022 19:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTJV7zIWlANX2uLuRnFuwu9rvjL+tZyka+7BZTOw0fo=; b=Cla2+fhahT56qC
	miDuEpqRze3oBRCJ3ck/FW87QpBisbBVP0bfysfBCEixo71gguoziKkzMWGcxGm5mEM/61k61hduM
	y5xp7x6Bu4EZ47Qdg5tgQEU1FuKc9mP7CgwxWQ3H4R1a4xsziO/1dVZCdXgkk4UAF+niU0XeOXM/z
	2RBZhK9cZKGpKRCQHutWL2fYjwEidtZmlkzB9U6yu5LicG+79SZQdgimp0zGHCgR1U0JB0EGPBwz6
	elfu126phWGVHmxu2mAtBI+B/xBksoMq/Ugl6PdNq1GtQ19yGc7JTjjkvMdWRtQceh4D3Zq4+kw6V
	HAqfzRWe8S3mkIxwgZnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Xlx-004n9x-FB; Sat, 03 Dec 2022 19:02:01 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Xlt-004n7l-PY
	for linux-rockchip@lists.infradead.org; Sat, 03 Dec 2022 19:01:59 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-14449b7814bso4107748fac.3
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Dec 2022 11:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oBz8aAlIFE523Wl96pS75VCti7mPLH+4FVInpxV4BbM=;
        b=HyPdeDLYepnjmZjo0dWp/lACeLV0P6xNLE7ta5eU+MG61eEYxppXlZW+Bk+TIBuZka
         GnNX91ONUjpRJk6gC/BhVbEHmFc7gnB4xSTL2N7tzYEJW47WQFtorbzyD9u51trJHjg0
         2jR8FpN/jswExrEkRp4u8lMVJmgpygyqfEry5tiQc9sP8KkXU4wVlsTxPnXsNjUAZqjs
         Rpcb6FIc1GmSOEcT091Oa2FE86GMnKDt4AD3/guCRaupmfK3N/pT0PcRLzlmbnvXPmRj
         ahjTEX+VnWC5strpgxYxJrHir/TTgRJzvlb9aAhl17suPLsewuftGMwM27CCBHKtt7Yt
         aTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBz8aAlIFE523Wl96pS75VCti7mPLH+4FVInpxV4BbM=;
        b=U8mxZRq2McZg9gPak4ryJWJzX8wv3j7uEqDrUTIdj2NhoQvg51QkJMrzkkpxfSzxXm
         VdetoCxIqRyOD6T9RvArDFDb1CH55k9iqlw3zs9xOTHDSNWZxKc0T4tUdZ6Y2lbCmltj
         2xd2wC0vQvrYP1UIKWGEhE7A3ztKylEgxkM7sgUFoICLUYSWfoh9jHV5w48fun4zpL/S
         VR+rLDCbiB+EB5lsA+B/RIgsdrnzvZskJnwtSOXDSh+pMw0LqSe98+RAeqoVlN4+4X2L
         7TF92G3EtRGwNjToO0mXX11GtMgXIxt7g+k0oDpiAKsW7RYgqnivLqQF36AnbdUmVCGS
         HaOA==
X-Gm-Message-State: ANoB5pkzyyAdXm073bNr/Koa94tT4oaiyfR8EvkoV5g4lLSjKURk6Jd0
	/r4Cv+t5DSSmDLPphJnkDx4=
X-Google-Smtp-Source: AA0mqf575OceW2yq/LGw8uuGbWp4C/UT2fGSJfsho1DcVcGCMZsYWvIVUjQA39jwV3Fv33flRcYqfw==
X-Received: by 2002:a05:6870:65a7:b0:143:9967:7e81 with SMTP id fp39-20020a05687065a700b0014399677e81mr18962929oab.31.1670094115846;
        Sat, 03 Dec 2022 11:01:55 -0800 (PST)
Received: from wintermute. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id j2-20020a4a9442000000b0049f0671a23asm4327799ooi.9.2022.12.03.11.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 11:01:55 -0800 (PST)
Message-ID: <638b9d23.4a0a0220.37bf5.143c@mx.google.com>
X-Google-Original-Message-ID: <20221203190152.GA20895@wintermute.>
Date: Sat, 3 Dec 2022 13:01:52 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, thierry.reding@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD
 panel
References: <20221129172912.9576-1-macroalpha82@gmail.com>
 <20221129172912.9576-3-macroalpha82@gmail.com>
 <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221203_110157_882003_71EB15D0 
X-CRM114-Status: GOOD (  61.77  )
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

On Sat, Dec 03, 2022 at 10:03:42AM +0100, Linus Walleij wrote:
> Hi Chris,
> 
> thanks for your patch!
> 
> overall this looks very good. Just some nitpicks.
> 
> On Tue, Nov 29, 2022 at 6:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Support Samsung AMS495QA01 panel as found on the Anbernic RG503. Note
> > This panel receives video signals via DSI, however it receives
> > commands via 3-wire SPI.
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> > +config DRM_PANEL_SAMSUNG_AMS495QA01
> > +       tristate "Samsung AMS495QA01 DSI panel"
> 
> I am always a bit careful with these "Samsung" panels. Well the
> panel is surely Samsungs and usually it has that name, but very often
> it is mainly a display controller, made by someone else, then a physical
> panel slapped on and then the actual display controller is obscured.
> 
> Typical example:
> panel-novatek-nt35560.c handing Samsung ACX424AKP.
> 
> If you know the actual display controller, then the driver should be
> renamed after that, but keeping the compatible and DT bindings
> as is. The reason being that tomorrow there is an LG panel
> using the same display controller and then we don't get duplicate
> code.
> 
> It feels like this is a Novatek controller. Just a feeling I have.
> Mostly from the way it does brightness using ELVSS and
> gamma. But who knows.
> 

Will do. I'll make the changes and resubmit. For what it's worth the
documentation says this one is a Samsung AMS495QA01 panel on a
Magnachip D53E6EA8966 controller IC.

> > +       depends on OF && SPI
> > +       depends on DRM_MIPI_DSI
> > +       select DRM_MIPI_DBI
> 
> Nice that you use these helpers!
> 
> > +#include <linux/media-bus-format.h>
> (...)
> > +#include <linux/of_graph.h>
> 
> Hm. We get to this.

*gulp*

> 
> > +       /** @prepared: value tracking panel prepare status */
> > +       bool prepared;
> 
> Drop this and associated code. The framework keeps track of this.
> 

Will do.

> > +       /* Set gamma change */
> > +       mipi_dbi_command(dbi, 0xf9, 0x00);
> 
> For cases like this where you know what the command does,
> please add:
> 
> #define MCS_SET_GAMMA 0xf9
> 
> (MCS = Manufacturer Command Set, cf
> drivers/gpu/drm/panel/panel-samsung-s6e63m0.h)
> 
> and collect them somewhere, then you can drop the comment
> because it is self-evident what is going on.
> 

Gotcha, will do.

> > +       /* Undocumented command */
> > +       mipi_dbi_command(dbi, 0x26, 0x00);
> > +       /* Set ELVSS value */
> > +       mipi_dbi_command(dbi, 0xb2, ams495qa01_elvss[tmp]);
> 
> Same.
> 
> > +static int ams495qa01_prepare(struct drm_panel *panel)
> > +{
> > +       struct ams495qa01 *db = to_ams495qa01(panel);
> > +       struct mipi_dbi *dbi = &db->dbi;
> > +       int ret;
> > +
> > +       if (db->prepared)
> > +               return 0;
> 
> As mentioned skip this.
> 
> > +       /* Power up */
> > +       ret = regulator_enable(db->reg_vdd);
> > +       if (ret) {
> > +               dev_err(db->dev, "failed to enable vdd regulator: %d\n", ret);
> > +               return ret;
> > +       }
> > +       if (db->reg_elvdd) {
> 
> Do you really need to if() this? I thought the regulator
> framework would just ignore the calls for an optional
> regulator.

I don't know for sure, but I'll make the change if you request it. I
think other drivers had an if in this scenario which is why I did it.

> 
> > +       /* Password to start command sequence */
> > +       mipi_dbi_command(dbi, 0xf0, 0x5a, 0x5a);
> > +       mipi_dbi_command(dbi, 0xf1, 0x5a, 0x5a);
> 
> Use the #defines from:
> drivers/gpu/drm/panel/panel-samsung-s6e63m0.h
> I'm pretty sure they mean the same thing:
> 
> #define MCS_LEVEL_2_KEY         0xf0
> #define MCS_MTP_KEY             0xf1
> 
> > +       /* Analog Power condition set */
> > +       mipi_dbi_command(dbi, 0xf4, 0x33, 0x42, 0x00, 0x08);
> > +       mipi_dbi_command(dbi, 0xf5, 0x00, 0x06, 0x26, 0x35, 0x03);
> 
> Define MCS_ commands.
> 
> > +       /* GTCON set */
> > +       mipi_dbi_command(dbi, 0xf7, 0x20);
> > +
> > +       /* TEMP_SWIRE set */
> > +       mipi_dbi_command(dbi, 0xb2, 0x06, 0x06, 0x06, 0x06);
> > +
> > +       /* ELVSS_CON set */
> > +       mipi_dbi_command(dbi, 0xb1, 0x07, 0x00, 0x10);
> > +
> > +       /* Gateless signal set */
> > +       mipi_dbi_command(dbi, 0xf8, 0x7f, 0x7a, 0x89, 0x67, 0x26, 0x38,
> > +                        0x00, 0x00, 0x09, 0x67, 0x70, 0x88, 0x7a,
> > +                        0x76, 0x05, 0x09, 0x23, 0x23, 0x23);
> 
> Dito
> 
> > +       db->prepared = true;
> 
> Drop.
> 
> > +static int ams495qa01_unprepare(struct drm_panel *panel)
> > +{
> > +       struct ams495qa01 *db = to_ams495qa01(panel);
> > +       struct mipi_dbi *dbi = &db->dbi;
> > +
> > +       if (!db->prepared)
> > +               return 0;
> 
> Drop.
> 
> > +static int ams495qa01_get_modes(struct drm_panel *panel,
> > +                               struct drm_connector *connector)
> > +{
> > +       struct ams495qa01 *db = to_ams495qa01(panel);
> > +       const struct ams495qa01_panel_info *panel_info = db->panel_info;
> > +       struct drm_display_mode *mode;
> > +       static const u32 bus_format = MEDIA_BUS_FMT_RGB888_1X24;
> > +       unsigned int i;
> > +
> > +       for (i = 0; i < panel_info->num_modes; i++) {
> > +               mode = drm_mode_duplicate(connector->dev,
> > +                                         &panel_info->display_modes[i]);
> > +               if (!mode)
> > +                       return -ENOMEM;
> > +
> > +               drm_mode_set_name(mode);
> > +
> > +               mode->type = DRM_MODE_TYPE_DRIVER;
> > +               if (panel_info->num_modes == 1)
> > +                       mode->type |= DRM_MODE_TYPE_PREFERRED;
> 
> I think you should probably set the preferred mode even
> if there are several of them? But maybe just on the first
> or something. (A bit unsure here, Sam?)
> 

I'll keep 60hz as the preferred. 50hz was added at the request of some
userspace folks for running PAL based emulators and stuff.

> > +static int ams495qa01_probe(struct spi_device *spi)
> > +{
> > +       struct device *dev = &spi->dev;
> > +       struct device_node *endpoint, *dsi_host_node;
> (...)
> > +       db->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> 
> I would request this GPIOD_OUT_HIGH so reset is asserted on probe.
> 

Will do.

> > +       db->enable = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> 
> And this GPIOD_OUT_LOW so panel is disabled after probe.
> 

Will do.

> > +       /*
> > +        * Get the DSI controller that is supplying data for this display
> > +        * which is controlled via SPI 3-wire.
> > +        */
> > +       endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> > +       if (!endpoint) {
> > +               dev_err(dev, "failed to get endpoint\n");
> > +               return -ENODEV;
> > +       }
> > +       dsi_host_node = of_graph_get_remote_port_parent(endpoint);
> > +       if (!dsi_host_node) {
> > +               dev_err(dev, "failed to get remote port parent\n");
> > +               goto put_endpoint;
> > +       }
> > +       dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
> > +       if (!dsi_host) {
> > +               dev_err(dev, "failed to find dsi host\n");
> > +               goto put_host;
> > +       }
> > +       info.node = of_graph_get_remote_port(endpoint);
> > +       if (!info.node) {
> > +               dev_err(dev, "failed to get remote port node\n");
> > +               ret = -ENODEV;
> > +               goto put_host;
> > +       }
> > +
> > +       db->dsi_dev = devm_mipi_dsi_device_register_full(dev, dsi_host, &info);
> 
> I don't get this part.
> 
> Why do you have to go through all this trouble when no other panel
> drivers, not even the other SPI DBI panel drivers, does this?
> 
> drm_of_find_panel_or_bridge() should typically result in the core
> doing all the lookup and connecting for you from the host side
> should it not?
> 
> At the very least this requires a big comment about what is
> going on and why and what makes this necessary.
> 
> I can only guess the following:
> 

This is the path that "works", but I'll happily change to something
else.

> > +       db->dsi_dev->lanes = 2;
> > +       db->dsi_dev->format = MIPI_DSI_FMT_RGB888;
> > +       db->dsi_dev->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> > +                         MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
> > +
> > +       drm_panel_init(&db->panel, dev, &ams495qa01_drm_funcs,
> > +                      DRM_MODE_CONNECTOR_DSI);
> 
> Pixel data passes to the display using DSI but all display control
> is done over SPI, and the core will not help with this.
> 
> So from the display controller POV this is a DSI display
> and from the display POV this is an SPI-controlled display.
> So it sits on two buses. Data path is on DSI, control path
> is on SPI.
> 
> This would be kind of odd actually, normally DSI displays
> do the display control over DSI as well. SPI control is usually
> used on DPI displays. But I'm not surprised.
> 
> If this is necessary, isn't this something we need to teach the
> core to handle instead of adding quirks like this to all drivers that
> have this characteristic?
> 

You are correct, this panel is controlled via 3-wire SPI in my example.
The panel can be controlled either by 3-wire SPI or DSI commands
depending on whether or not pin 15 is driven high or low. Unfortunately
in my case it's hardwired high, so I am forced to do it via 3-wire SPI.
I have no way of testing it with pure DSI but that would simplify
things quite a bit. Pixel data is transmitted soley through DSI.

The way I have it implemented currently is to put the panel on the SPI
bus as a DBI panel; traverse through the DT bindings to find the
associated DSI controller, then attach it as a DSI device so the DSI
bus can transmit the pixel data.

I'm absolutely cool with making those functions part of the core and
not just specific to this panel, only I might need a bit of help on
that part to make sure I do it the right way. I just wasn't sure how
often that would be needed since this is the only panel I've ever seen
driven this way, especially since it seems like any sane person would
just want to do the whole control data/pixel data over DSI to keep
things simple.

> Yours,
> Linus Walleij

Thank you for your input.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

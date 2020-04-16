From: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v6 1/8] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
Date: Thu, 16 Apr 2020 22:15:19 +0200
Message-ID: <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA@mail.gmail.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-2-adrian.ratiu@collabora.com>
 <CAFqH_52eKB4jtmn5e4HQubv8ijOPqDqncp1dRGahhU3NOorJMQ@mail.gmail.com>
 <87lfmvjmt5.fsf@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <87lfmvjmt5.fsf@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Andrzej Hajda <a.hajda@samsung.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Arnaud Ferraris <arnaud.ferraris@collabora.com>, Collabora Kernel ML <kernel@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-stm32@st-md-mailman.stormreply.com, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-imx@nxp.com
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

[snip]

> >>
> >> +static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi
> >> *dsi) +{ +       regmap_read(dsi->regs, DSI_VERSION,
> >> &dsi->hw_version); +       dsi->hw_version &= VERSION; +
> >> if (!dsi->hw_version) +               dev_err(dsi->dev, "Failed
> >> to read DSI hw version register\n");
> >
> > Is this an error that should be ignored? If you can't get the HW
> > version, probably, there is something wrong with your hardware
> > so, don't you need to return an error?
> >
>
> After thinking a bit more about it, that error should be a
> warning.
>
> I added it because in some cases (for eg. if the peripheral clock
> is disabled) the reads can return 0 which is obviously an invalid
> version and the bridge will error in the next step when not
> finding a layout.
>

If you'll error anyway, why wait? IIUC at this point the clock *must*
be enabled, and if not, something is wrong with the driver, I don't
see any advantage on delay the error. do you have a use case where
this is called and peripheral clock disabled?

> So I'll make this a warning in v7 and explicitely mention that
> reads version == 0 can be caused by a disabled pclk.
>

-- Enric

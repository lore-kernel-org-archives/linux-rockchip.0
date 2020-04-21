From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc nodes for rk3328.dtsi
Date: Tue, 21 Apr 2020 10:37:44 +0200
Message-ID: <4769044.6T0MzsmYic@diego>
References: <20200416181944.5879-1-jbx6244@gmail.com> <2710874.PL6qFFFsBp@diego> <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 21. April 2020, 10:29:49 CEST schrieb Chen-Yu Tsai:
> On Tue, Apr 21, 2020 at 4:23 PM Heiko Stübner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> >
> > Hi ChenYu,
> >
> > Am Dienstag, 21. April 2020, 05:48:52 CEST schrieb Chen-Yu Tsai:
> > > On Fri, Apr 17, 2020 at 2:19 AM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > > >
> > > > 'bus-width' and pinctrl containing the bus-pins
> > > > should be in the same file, so add them to
> > > > all mmc nodes in 'rk3328.dtsi'.
> > >
> > > Nope. First of all, pinctrl usage is with pinctrl-N properties, not the
> > > pinctrl device, and there are no defaults set for any of the mmc nodes.
> > > Second, these are board design specific. For example, boards are free to
> > > use just 4 bits for the eMMC if they so desire. So this should be in each
> > > board dts file. If a board is missing this property, fix the board.
> >
> > you are correct that the pinctrl entries are missing from the patches,
> > bus-width and pinctrl should be defined in the same file each time,
> > but for the whole idea I tend to disagree.
> >
> > So far every board with a Rockchip socs follows Rockchip's reference design
> > for a lot of parts - for example I only see sdmmc nodes with bus-width=4
> > etc.
> >
> > So the basic idea is to have default pinctrl settings for the settings
> > everybody uses predefined ... if a board comes along that needs different
> > settings it is free to redefine that.
> 
> I think having a default is a great idea. :)

especially for controllers that only ever use the same settings anyway.

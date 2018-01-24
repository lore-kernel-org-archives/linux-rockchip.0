From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v1 1/2] drm/bridge/synopsys: dsi: Fix dsi_host_transfer()
 return value
Date: Wed, 24 Jan 2018 10:37:49 -0800
Message-ID: <20180124183748.l5iqoiyqxy4o2pyk@ban.mtv.corp.google.com>
References: <20180123142618.28384-1-philippe.cornu@st.com>
 <20180123142618.28384-2-philippe.cornu@st.com>
 <CA+ASDXNDpmVdARLCD-A6nfADgmomuscpwekb8M-j=MFJhpeC4Q@mail.gmail.com>
 <4a1b0208-3187-2f08-69fe-ca3b77ee88a8@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4a1b0208-3187-2f08-69fe-ca3b77ee88a8-qxv4g6HH51o@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>
Cc: Bhumika Goyal <bhumirks-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexandre TORGUE <alexandre.torgue-qxv4g6HH51o@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Maxime Coquelin <mcoquelin.stm32-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ludovic BARRE <ludovic.barre-qxv4g6HH51o@public.gmane.org>, Mickael REULIER <mickael.reulier-qxv4g6HH51o@public.gmane.org>, Vincent ABRIOU <vincent.abriou-qxv4g6HH51o@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Philippe,

On Wed, Jan 24, 2018 at 01:33:54PM +0000, Philippe CORNU wrote:
> On 01/23/2018 10:38 PM, Brian Norris wrote:
> > Hi Philippe,
> > 
> > On Tue, Jan 23, 2018 at 6:26 AM, Philippe Cornu <philippe.cornu-qxv4g6HH51o@public.gmane.org> wrote:
> >> The dw_mipi_dsi_host_transfer() must return the number of
> >> bytes transmitted/received on success instead of 0.
> > 
> > I'm a little confused. As of the latest drm-misc-next I'm looking at,
> > this still has conflicting documentation.
> > 
> > For ->transfer():
> > 
> > On success it shall return the number of bytes
> >   * transmitted for write packets or the number of bytes received for read
> >   * packets.
> > 
> > While mipi_dsi_generic_read() says:
> > 
> >   * Return: The number of bytes successfully read or a negative error code on
> >   * failure.
> > 
> > But it just returns the value that ->transfer() returns.
> > 
> 
> Not sure to follow you here: mipi_dsi_generic_read() will trig a dsi 
> generic read so it has to return "the number of bytes received for read 
> packets" as explained for the ->transfer() function... so it looks 
> "coherent"...
> 
> But maybe you want to point out something different?

Actually, reading back what I wrote, I'm not sure it made sense. I think
*I* was confusing "supporting TX only" with "supporting TX and RX". I
believe the documentation isn't conflicting, but your current patch is a
little misleading.

With your current patch, you're returning the 'mipi_dsi_packet::size',
which is the sum of both TX and RX. Since we only support TX right now,
I suppose that actually is fine (because 'rx_len == 0'). But if we start
supporting RX too, then this field is not the right one to return.

Anyway, maybe this patch was fine as it was. But when you get RX
support, this will have to be something like:

	if (msg->rx_len)
		return msg->rx_len;
	else
		return packet.size;

BTW, does anyone actually care about seeing the number of TX bytes
returned? That seems weird, because I wouldn't expect you'd get a good
result from a partial TX (dunno about partial RX). And I also see that
there are other drivers that get this all wrong too. See
mtk_dsi_host_transfer(), which only returns 0 for TX and 'recv_cnt' for
RX.

So all-in-all, maybe my problem isn't that the documentation is
conflicting, exactly, but that the requirements are somewhat odd, such
that either implementations get it wrong (2 of 3 that I've looked at!),
or they have to write somewhat odd special-casing.

> > So I'm not sure whether the documentation is still wrong, or if the
> > implementation is.
> > 
> > Anyway, I guess maybe that isn't super-critical to *this* patch, since
> > we don't have RX support yet...
> > 
> 
> The main reason why I want to "fix" this is because I do not want to 
> explain to our customers (writing dsi panel drivers) why we have a 
> different returned value compare to other platforms : )

Brian

From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [PATCH 1/2] drm/rockchip: dw_hdmi: Call drm_encoder_cleanup() in
 error path
Date: Mon, 7 Mar 2016 19:26:30 +0000
Message-ID: <20160307192630.GL19428@n2100.arm.linux.org.uk>
References: <1457133723-24869-1-git-send-email-dianders@chromium.org>
 <1693114.6CV9KAkHOO@diego>
 <CAD=FV=WeAp+SQFqrecPr4GwdpUVx+y=rzgAdUTGSZExd_B=Sjg@mail.gmail.com>
 <2630588.ZOL2q0FzuV@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2630588.ZOL2q0FzuV@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Doug Anderson <dianders@chromium.org>, Mark yao <mark.yao@rock-chips.com>, John Keeping <john@keeping.me.uk>, David Airlie <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Daniel Kurtz <djkurtz@chromium.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 07, 2016 at 07:56:18PM +0100, Heiko St=C3=BCbner wrote:
> Hi Doug,
>=20
> Am Montag, 7. M=C3=A4rz 2016, 10:49:53 schrieb Doug Anderson:
> > On Mon, Mar 7, 2016 at 9:57 AM, Heiko St=C3=BCbner <heiko@sntech.de=
> wrote:
> > > Am Montag, 7. M=C3=A4rz 2016, 09:36:07 schrieb Doug Anderson:
> > >> Hi,
> > >>=20
> > >> On Mon, Mar 7, 2016 at 12:37 AM, Mark yao <mark.yao@rock-chips.c=
om>=20
> wrote:
> > >> > On 2016=E5=B9=B403=E6=9C=8805=E6=97=A5 20:39, Russell King - A=
RM Linux wrote:
> > >> >> On Sat, Mar 05, 2016 at 12:11:16PM +0000, John Keeping wrote:
> > >> >>> On Fri, Mar 04, 2016 at 03:22:01PM -0800, Douglas Anderson w=
rote:
> > >> >>>> The drm_encoder_cleanup() was missing both from the error p=
ath of
> > >> >>>> dw_hdmi_rockchip_bind().  This caused a crash when slub_deb=
ug was
> > >> >>>> enabled and we ended up deferring probe of HDMI at boot.
> > >> >>>>=20
> > >> >>>> This call isn't needed from unbind() because if dw_hdmi_bin=
d()
> > >> >>>> returns
> > >> >>>> no error then it takes over the job of freeing the encoder =
(in
> > >> >>>> dw_hdmi_unbind).
> > >> >>>>=20
> > >> >>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > >> >>>> ---
> > >> >>>=20
> > >> >>> Does dw_hdmi-imx need a similar change?  I wonder if it woul=
d be
> > >> >>> cleaner
> > >> >>> to push this into dw_hdmi_bind() if it affects all of the pl=
atforms..
> > >> >>=20
> > >> >> I don't think moving it there would make sense - keep the
> > >> >> initialisation
> > >> >> and cleanup together in the same file so that it's contained =
together.
> > >> >=20
> > >> > I don't like this patch too, initialisation and cleanup not in=
 the same
> > >> > file looks bad,
> > >> >=20
> > >> > How about:
> > >> >=20
> > >> > drivers/gpu/drm/bridge/dw-hdmi.c
> > >> > void dw_hdmi_unbind(struct device *dev, struct device *master,=
 void
> > >> > *data)
> > >> >=20
> > >> >         hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
> > >> >=20
> > >> > hdmi->connector.funcs->destroy(&hdmi->connector);
> > >> > -       hdmi->encoder->funcs->destroy(hdmi->encoder);
> > >> >=20
> > >> > drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > >> > static int dw_hdmi_rockchip_bind(struct device *dev, struct de=
vice
> > >> > *master,
> > >> >=20
> > >> > -       return dw_hdmi_bind(dev, master, data, encoder, iores,=
 irq,
> > >> > plat_data);
> > >> > +       ret =3D dw_hdmi_bind(dev, master, data, encoder, iores=
, irq,
> > >> > plat_data);
> > >> > +       if (ret)
> > >> > +               drm_encoder_cleanup(encoder);
> > >> > +
> > >> > +       return ret;
> > >> >=20
> > >> >  }
> > >> > =20
> > >> >  static void dw_hdmi_rockchip_unbind(struct device *dev, struc=
t device
> > >> >=20
> > >> > *master,
> > >> >=20
> > >> >                                     void *data)
> > >> > =20
> > >> >  {
> > >> >=20
> > >> > +       drm_encoder_cleanup(...);
> > >> >=20
> > >> >         return dw_hdmi_unbind(dev, master, data);
> > >> > =20
> > >> >  }
> > >>=20
> > >> That'a a reasonable suggestion in theory.  ...but we run into th=
e same
> > >> problem I've run into before with the strange relationship betwe=
en
> > >> dw_hdmi and its descendants.
> > >=20
> > > I don't think handing off the cleanup responsibility is really in=
 question
> > > here. I.e. I do believe it should also be fine to expect (as defi=
nition)
> > > the core driver to cleanup the encoder _after_ it sucessfully cla=
imed it
> > > in dw_hdmi_bind().
> > >=20
> > > We do the same in the rockchip power-domains, handing off the str=
uct clk-
> > > pointer to the pm_clk stuff (due to the clk-pointer being unique
> > > per-device
> > > nowadays).
> > >=20
> > > So just making sure it is sucessfully handed off should also be o=
k.
> >=20
> > If I understand correctly, that means you'd be OK with the original
> > patch I posted?  In that case cleanup continues to happen in the ma=
in
> > dw-hdmi.c if dw_hdmi_bind() succeeds and my patch fixes the cleanup
> > when dw_hdmi_bind() fails (and thus cleanup responsibility was not
> > handed off).
>=20
> correct. I don't see the need to duplicate the cleanup (+added infras=
tructure=20
> to actually get the encoder in unbind) in all instances, if we just d=
efine that=20
> the dw_hdmi core takes control of the encoder _after_ it sucessfully =
bound.
>=20
> So only if dw_hdmi_bind() fails does the hw-specific instance need to=
 clean up=20
> the encoder it created.
>=20
>=20
> > Also: I noticed that Russell also didn't seem to say that my origin=
al
> > patch was bad.  I think he just said that he didn't like John
> > Keeping's suggestion.
>=20
> that was my reading as well.

The core code does not create the encoder - it merely stores a pointer
to the encoder, and registers itself as a bridge against the encoder.
It does call drm_mode_connector_attach_encoder() which adds the
encoder ID to the connector's possible encoders.

The cleanup (in dw_hdmi_unbind()) really ought to be moved out, but
that adds problems because of the need for two lots of driver data
to then be stored.

However, the bind() path really needs to be doing the encoder cleanup
before returning when an unsuccessful dw_hdmi_bind() returns.  I
wouldn't be surprised if there's a use-after-free bug here right now
because of the lack of that - core DRM will try to clean up the
attached encoder after it's been kfree()d.

Please, don't forget that the core driver gets used by two DRM drivers,
and if one driver suffers from a problem, it's possible that the other
driver does too - so both should be fixed.

This is very relevant in this case, the same author created the same bu=
g
in both when dw-hdmi was split in order to support rockchip - the
history shows that when it was a single driver for imx-hdmi, it did
not have this issue (as there was no failure path possible after the
drm_encoder_init() call.)

So, please fix both rockchip and imx DRM drivers for this same bug.

--=20
RMK's Patch system: http://www.arm.linux.org.uk/developer/patches/
=46TTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
according to speedtest.net.

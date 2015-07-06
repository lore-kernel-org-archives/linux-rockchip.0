From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Mon, 6 Jul 2015 14:02:12 -0500
Message-ID: <20150706190212.GN20779@saruman.tx.rr.com>
References: <1436207224-21849-4-git-send-email-dianders@chromium.org>
 <Pine.LNX.4.44L0.1507061450190.1860-100000@iolanthe.rowland.org>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1163077632243679399=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.1507061450190.1860-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============1163077632243679399==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RHdRtM27np9fZUoh"
Content-Disposition: inline

--RHdRtM27np9fZUoh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 06, 2015 at 02:58:16PM -0400, Alan Stern wrote:
> On Mon, 6 Jul 2015, Douglas Anderson wrote:
>=20
> > If the 'snps,need-phy-for-wake' is set in the device tree then:
> >=20
> > - We know that we can wakeup, so call device_set_wakeup_capable().
> >   The USB core will use this knowledge to enable wakeup by default.
> > - We know that we should keep the PHY on during suspend if something
> >   on our root hub needs remote wakeup.  This requires the patch (USB:
> >   Export usb_wakeup_enabled_descendants()).  Note that we don't keep
> >   the PHY on at suspend time if it's not needed because it would be a
> >   power draw.
>=20
> You know, this is the first time I've run across this optimization.
>=20
> In principle it applies to any USB host controller, not just to PHYs. =20
> There's no reason to enable wakeup for a controller if none of the=20
> attached devices can issue a wakeup request.
>=20
> I don't know if implementing this in other HCDs would save any power. =20
> Any ideas?

most likely it would. Enabling wakeup usually boils down to keeping a
tiny part of the controller (or PHY) powered up. Sometimes that lies in
an always-on power domain, so there would be no difference.

cheers

--=20
balbi

--RHdRtM27np9fZUoh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVmtC0AAoJEIaOsuA1yqREpswP/2e3nZ2edi+BQyY5ij5bVTzf
kgVMZqpV/4Tjdso6DVNgGy+JiVlQ92WphkgbiQ3lNhB/fYdBjD+ay4nHu046eljr
4KzLyTLBtct00ZLwoLPniplUnZvzRUvF0XG8Dut2aebQSuGboncOxtjDubuctCPT
+yxM8ETG80C2VlNNYopFuMW80diyn5/eMVllQH4WLDnN6DArXAle7CtNpvMMbrhn
6kdIczfvIJ4gIohb5dxVPImIDt6I1ToDxVPMPBYTJAlKTXYuN1/IcC/IgkOMicqX
6qaIZI2zKtxgxRidU7U/AAWtydsalx584HK8lWy7Q9LyGa55Izv8csWJQxi6PsUD
+eVTX/7ZeSRDonLo02cW3fEZVwd8TYu7f2jTsQiL+lVcsxr0YQgDkPmc36aPfhDy
d1Rt5ocIP00qozMCctC9In2PFiK+V0hiuq5IzD8oBVJepe8xur4Q3yu24M599//e
niAUy0LknZcHIEG901mNFTHztm1Q73M0WkmgSvXneq5s9tQqim1VKlCnhZ9BFjIU
/hg+/Hbx0fNVYVNlX4AzhQ9rXm9CBjL8d20PRj7ZdojPdGP8Jf26f8z9Uofu8vgg
KyKsIwC5ZMm4KGFTCvriiFP2Vmq+7if+KUGgTJWtuwsJUf3va7zmKEPRwNuEc541
w6pZyhQhimeB31lLpwA3
=0284
-----END PGP SIGNATURE-----

--RHdRtM27np9fZUoh--


--===============1163077632243679399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1163077632243679399==--

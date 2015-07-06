From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Mon, 6 Jul 2015 14:35:46 -0500
Message-ID: <20150706193546.GP20779@saruman.tx.rr.com>
References: <1436207224-21849-1-git-send-email-dianders@chromium.org>
 <1436207224-21849-4-git-send-email-dianders@chromium.org>
 <20150706183404.GI20779@saruman.tx.rr.com>
 <CAD=FV=XRY003C6ai4DFkcTogsW+g1AO955J_A4tB2tzu0PZy1Q@mail.gmail.com>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1334782071775322097=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=XRY003C6ai4DFkcTogsW+g1AO955J_A4tB2tzu0PZy1Q-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============1334782071775322097==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qd/SZIFVu+MYwfCR"
Content-Disposition: inline

--qd/SZIFVu+MYwfCR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 06, 2015 at 12:32:56PM -0700, Doug Anderson wrote:
> Felipe,
>=20
> On Mon, Jul 6, 2015 at 11:34 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
> > Hi,
> >
> > On Mon, Jul 06, 2015 at 11:27:04AM -0700, Douglas Anderson wrote:
> >> @@ -282,6 +296,28 @@ static int dwc2_driver_probe(struct platform_devi=
ce *dev)
> >>       return retval;
> >>  }
> >>
> >> +static bool __maybe_unused dwc2_can_poweroff_phy(struct dwc2_hsotg *d=
wc2)
> >> +{
> >> +     struct usb_device *root_hub =3D dwc2_hsotg_to_hcd(dwc2)->self.ro=
ot_hub;
> >
> > what happens on peripheral only builds ?
>=20
> The function is only called on if "dwc2_is_device_mode(dwc2)" returns
> false.  I think that means we're safe, right?

heh, missed that. Should be safe, yeah.

--=20
balbi

--qd/SZIFVu+MYwfCR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVmtiSAAoJEIaOsuA1yqREuz8P/jFFlDUJnFItxZc9XFG3go7V
VO5xG3TiapbVpzjTQ1QjI/0Zjk83Lv58sa/cP3+khqkKrO85vRPuRagaax1EKdpo
6c6pek63F1XXESqQXcxrABHg57OXCsjO8d8Noxn8Rk2jrKJMBuWNq8R2fyEqf7hX
3YLHhJnA67jS7894X5E4Z3T2MOVpDgdew869arH6q4nZKk+nqvxJM0Xm4v+G35dY
01o8dWBsAMvHk6cRs7GWPF9G1nWY0BfVyAHdQzrl7KnBuRg+6KNWGA/8ZxeD4Rvu
iGHQdhhfoOwogCdU/w2hC0Qa9LC0n4D2IaXrW0zaFh/n2Z1OEMXHeTfO2NRdlHv0
hhY9T48Zhbt+d89mVjd40c1B9LI46mzugSf3YjXftXaCIVobRQxpgaM8gdETgji+
FlvSSBdquZWKEXG3tm8LgrjJKu2WX6iw8OE++ozWiXkFtab7zYxW91X7aQumU7PT
Uc7AZgYTVTFWmX1IPZpHQS6TL6Qub6Y5vbf1cKHsPYGA8spOYZ+0TxC/LSrnocLI
3dfCLh0J5pOpmLco+nr4i4s0lRIlIGvuHIRlftgc8fZ/540wNu8mru2S2Bp7R7fO
wTVy1sjSE1lndHjh0IxcsYK00vFDhqIwGjESd6DT5GQLtbDpnAqyDY6R3VscVClw
F2cI7W51O1VHiQGDbio/
=lZJM
-----END PGP SIGNATURE-----

--qd/SZIFVu+MYwfCR--


--===============1334782071775322097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1334782071775322097==--

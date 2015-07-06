From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Mon, 6 Jul 2015 13:34:04 -0500
Message-ID: <20150706183404.GI20779@saruman.tx.rr.com>
References: <1436207224-21849-1-git-send-email-dianders@chromium.org>
 <1436207224-21849-4-git-send-email-dianders@chromium.org>
Reply-To: balbi-l0cyMroinI0@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0053255923701718469=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1436207224-21849-4-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============0053255923701718469==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GvznHscUikHnwW2p"
Content-Disposition: inline

--GvznHscUikHnwW2p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 06, 2015 at 11:27:04AM -0700, Douglas Anderson wrote:
> @@ -282,6 +296,28 @@ static int dwc2_driver_probe(struct platform_device =
*dev)
>  	return retval;
>  }
> =20
> +static bool __maybe_unused dwc2_can_poweroff_phy(struct dwc2_hsotg *dwc2)
> +{
> +	struct usb_device *root_hub =3D dwc2_hsotg_to_hcd(dwc2)->self.root_hub;

what happens on peripheral only builds ?

--=20
balbi

--GvznHscUikHnwW2p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVmsocAAoJEIaOsuA1yqRElQMQAJS+JCoyqscgfuI1c78wyuTR
houKXfTgrOKRhT0xkTm32RxyNhNonTo3hezHC2KkXIEqZEgSu5zGuKpuVqRmveD/
FpDzXJ0KPVsIbuSOIOAGsPeWwFWSPtxnJZjMViZFIj8cV0UZHIInTPrGclPdpD0S
ihSGv44aCihxQL3IYN6q4DUelTCouxNyP/wzhn8pXuxd5d+nXMuUuBz1NV3Wl0Pp
7BpGXMTg9NMusLRbry0nhFPk/St9r5tR+jv3KhuPVqLkPp1nURKwNOjxIZbWDBhp
wgoQ6ZlYSEZZO4fEd2LzIPGn5yTtG0jdZVLG1Uy+ZOX1igohptfcILwBSOV5HZ7d
PL9icQ1UdBnbYrcwKzA55WT79FcB9VqtGprTjoJoMCUcMWoCFofBVW3AYcYOdQw5
Z0hkFxskqaN0raISkNYow9L6XCNie9OLhFlCQ3kyCXb50HZpk31YdKIR2BXk6bGr
gQhijz0mdpihE+JBF7T6KW3BErkP20ZRVeI9DmXWvZY5kIw95mU2DHsZHT3PtG90
6BH69ln8ptQMYp9vM12tEf0b5e4tM50PVZhUTK8re87OpMY6G72WE9hGb8UsrtMM
Dg+XGPMaEUtVVqwUiKfHbBPyhz1Fk7tsc+LUhIzsL5mhYGtwSVKCNsRlWZQzeexJ
GUD3vlmVViPVplOVcJQ9
=Zi+W
-----END PGP SIGNATURE-----

--GvznHscUikHnwW2p--


--===============0053255923701718469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0053255923701718469==--

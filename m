From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Thu, 19 Nov 2015 09:34:11 -0600
Message-ID: <87lh9uf1fw.fsf@saruman.tx.rr.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
 <1447721484-22548-7-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8619717899737704460=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447721484-22548-7-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============8619717899737704460==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
> Until we have logic to determine which devices share the same TT let's
> add logic to assume that all devices on a given dwc2 controller are on
> one single_tt hub.  This is better than the previous code that assumed
> that all devices were on one multi_tt hub, since single_tt hubs
> appear (in my experience) to be much more common and any schedule that
> would work on a single_tt hub will also work on a multi_tt hub.  This
> will prevent more than 8 total low/full speed devices to be on the bus
> at one time, but that's a reasonable restriction until we've made things
> smarter.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v3:
> - Assuming single_tt is new for v3; not terribly well tested (yet).
>
> Changes in v2: None
>
>  drivers/usb/dwc2/core.h      |  1 +
>  drivers/usb/dwc2/hcd_queue.c | 40 ++++++++++++++++++++++++++++++++++++++=
+-
>  2 files changed, 40 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index 567ee2c9e69f..09aa2b5ae29e 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -782,6 +782,7 @@ struct dwc2_hsotg {
>  	u16 periodic_usecs;
>  	unsigned long periodic_bitmap[DIV_ROUND_UP(TOTAL_PERIODIC_USEC,
>  						   BITS_PER_LONG)];
> +	bool has_split[8];

why don't you use a u8 instead then just set each bit for each
"has_split" you need to take care of. This array is kinda ugly.

> @@ -386,6 +409,13 @@ static int dwc2_find_multi_uframe(struct dwc2_hsotg =
*hsotg, struct dwc2_qh *qh)
>  	bitmap_set(hsotg->periodic_bitmap, start, qh->usecs);
>  	qh->start_usecs =3D start;
>=20=20
> +	if (qh->do_split) {
> +		for (i =3D start / EARLY_FRAME_USEC;
> +		     i < DIV_ROUND_UP(start + utime - 1, EARLY_FRAME_USEC);
> +		     i++)
> +			hsotg->has_split[i] =3D true;

hsotg->has_split |=3D BIT(i);

> @@ -546,6 +577,13 @@ static void dwc2_deschedule_periodic(struct dwc2_hso=
tg *hsotg,
>  	}
>=20=20
>  	bitmap_clear(hsotg->periodic_bitmap, start, utime);
> +
> +	if (qh->do_split) {
> +		for (i =3D start / EARLY_FRAME_USEC;
> +		     i < DIV_ROUND_UP(start + utime - 1, EARLY_FRAME_USEC);
> +		     i++)
> +			hsotg->has_split[i] =3D false;

hsotg->has_split &=3D ~BIT(i);

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWTevzAAoJEIaOsuA1yqRE164P/3okfRduTpyxQruf+EPPe1wG
juAWq0QkbsySPoT/ang4ULeTxnBDJSoN61ztEdfYK63d3R+AxkieBmHR6pusjwEO
9tnDAZXBB/1NVB4QU9CcRYDoYqzFIAd1bQKrs4YUJvRbgpFl/MrBFGpuMBMyiLM0
bnMO7k4pl8WU2SGN0Rys4uMa7nV9Gi/C5pMPo3OuzZyhjq36PkQTjuWl8Bv33kj4
O0QQI+dKxe7RHWqHJ01pN5tc6knf69a4EYcamH0lS0iRMLVHT/X9mUJ1lA4OVcEs
6Ni2Slvi7TlDhVql0ZQrj9oHhTUva5c3UdqRUa9gHD/2fqRmb8OP89aer2N+4V5z
anHRRXCsUEdgOlawYsOcYz2HRJfLs6bEc9ZJgJiyiAtdywzNtJv4qpGsnKrbKM5f
2jNr9jYHYai2lZKggXyV/6Rgng2+xl5MDeGKWe8ilgBz1gxkGfX4n6I63xteYUd2
YKlKnf5uJvE+6caUKyhPdxJFh4IjvSOjpVD5G/XIErOjvYYtUqvwgLopmRrCIssh
Tc34PUVnzG1z/IK0e2l5YWGpNzqWqzTd0rw/V8RciUr8HLSrjxLUUUujt9CJZY8n
JNTLBYtKaKdmG4fWq12dc7NSvRDzLNqLL28jV++VFs89cdbfp1lwedzg/5SPBbo6
1+jbeS6lbwebmm6JDGnO
=lmDb
-----END PGP SIGNATURE-----
--=-=-=--


--===============8619717899737704460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8619717899737704460==--

From: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: kexec on rk3399
Date: Wed, 14 Aug 2019 16:06:04 +0300
Message-ID: <87v9uzaocj.fsf@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3631818242867994164=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c6993a1e-6fc2-44ab-b59e-152142e2ff4d-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: Matthias Brugger <mbrugger-IBi9RG/b67k@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Will Deacon <will.deacon-5wv7dgnIgG8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============3631818242867994164==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> writes:
> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote:
>> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
>> From 5.2 onwards, there are memory corruption issues as reported here:
>> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
>> kexec has been identified as the principal reason for the issues.
>>
>> It turns out that kexec has never worked reliably on this platform,
>> i was just lucky until recently.
>>
>> Please, can you provide some directions on how to debug the issue?
>
> Thank you all for your suggestions on where the issue could be.
>
> It seems that it was the USB driver.
> Now using v5.2.8 booted with kexec from v5.2.8 with a workaround and
> so far so good. It is being tested on the Sapphire board.
>
> The workaround is:
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -133,6 +133,13 @@
>  	return 0;
>  }
>=20=20
> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
> +{
> +	struct dwc3_of_simple *simple =3D platform_get_drvdata(pdev);
> +
> +	reset_control_assert(simple->resets);
> +}
> +
>  static int __maybe_unused dwc3_of_simple_runtime_suspend(struct device=20
> *dev)
>  {
>  	struct dwc3_of_simple	*simple =3D dev_get_drvdata(dev);
> @@ -190,6 +197,7 @@
>  static struct platform_driver dwc3_of_simple_driver =3D {
>  	.probe		=3D dwc3_of_simple_probe,
>  	.remove		=3D dwc3_of_simple_remove,
> +	.shutdown	=3D dwc3_of_simple_shutdown,
>  	.driver		=3D {
>  		.name	=3D "dwc3-of-simple",
>  		.of_match_table =3D of_dwc3_simple_match,
>
> If this patch is OK after review i can resubmit it as a pull request.

not a pull request, just send a patch using git send-email

> Should a similar change be applied to drivers/usb/dwc3/core.c ?

Is it necessary? We haven't had any bug reports regarding that. Also, if
we have reset control support in the core driver, why do we need it in
of_simple? Seems like of_simple could just rely on what core does.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl1UBzwACgkQzL64meEa
mQYOVQ//eKd2UVl0Lk/iBF9be4Qe4UnhUTXChWgQRk4zD9Xvjfgx16lvKHRd202Y
tDKEYXDrOeSfQZTopKUfO8d3vjPkxfqYMeLyiiXTA983oXVwc6ZeaE6+VA3AO9m1
nWdQthWGnpSiBaXhceBgMmAaKkvuFe/dDua9OhGkLz/aOYFQ5iLEVT/Ffkj8sr5g
u9oXIq/Vs49XFoymk8s+9qGip9l3ZbQNEkUkJbL4+hw83IiFR5SWtGG7kf/Uv/bI
sA6JUkcTDvOXkqI/9cSk9ZeCePbOQpu5lk9C5B78//hdDNpkopJ8OeIW6YOBh5HF
HIOZzyBgWjXu6fRM1XiqoRjWZvfpv/76CGml0zNKdDs5bvN4tbcUoJtf655JWdav
S+0cEGfvLMsh5UiFcsBTT63S7+/Gh/d8Z/m3JsgSw9i0TBZLhbGQ36SYX+RpNSrr
LNZsCbl67wc12ftHZOJaUTsdHy6MU4O5nf5vlSFTJCkRJtNKV65hODulCRMiTdkh
kgyjs98yUegt2siGNHbVg8LC14GjWQaAxRLB7BN4pCx4243vmpapRRWjHG63f2Jh
VZvYCB8hj5MBy+2BZ5S94siSoMS6+qaZ8DQ2L065EwdrlKLly4Rofh0FNhtbL5I5
F5P6V1xEnd0TN75wevzsI57lsNB2Cov8WoSeFQ0D7OSrS6eN38s=
=9b3X
-----END PGP SIGNATURE-----
--=-=-=--


--===============3631818242867994164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3631818242867994164==--

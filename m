From: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to platform_driver
Date: Tue, 27 Aug 2019 14:53:04 +0300
Message-ID: <87v9uix1sv.fsf@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8406532015048246717=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <8d48017a-64c5-4b25-8d85-113ffcf502c9-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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
Cc: Matthias Brugger <mbrugger-IBi9RG/b67k@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, MarcZyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Will Deacon <will.deacon-5wv7dgnIgG8@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============8406532015048246717==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi,

Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> writes:
> On Saturday, August 17, 2019 7:41:40 PM CEST, Vicente Bergas wrote:
>> Otherwise the device keeps writing to memory after kexec and disturbs
>> the next kernel.
>>
>> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>>  drivers/usb/dwc3/dwc3-of-simple.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> Hi Felipe, Robin,
>> this version calls 'remove' from 'shutdown' instead of just asserting
>> a reset because it looks like a cleaner way to stop the device.
>>
>> Calling remove from shutdown in core.c instead of dwc3-of-simple.c does =
not
>> fix the issue either.
>>
>> It has been tested on the sapphire board, a RK3399 platform.
>>
>> Regards,
>>   Vicen=C3=A7.
>>
>> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c=20
>> b/drivers/usb/dwc3/dwc3-of-simple.c
>> index bdac3e7d7b18..d5fd45c64901 100644
>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>> @@ -133,6 +133,11 @@ static int dwc3_of_simple_remove(struct=20
>> platform_device *pdev)
>>  	return 0;
>>  }
>>=20=20
>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>> +{
>> +	dwc3_of_simple_remove(pdev);
>> +}
>> +
>>  static int __maybe_unused=20
>> dwc3_of_simple_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_of_simple	*simple =3D dev_get_drvdata(dev);
>> @@ -190,6 +195,7 @@ MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>>  static struct platform_driver dwc3_of_simple_driver =3D {
>>  	.probe		=3D dwc3_of_simple_probe,
>>  	.remove		=3D dwc3_of_simple_remove,
>> +	.shutdown	=3D dwc3_of_simple_shutdown,

why don't you just have shutdown use the same exact function as remove?
Frankly, though, I still don't fully understand what's going wrong
here. Why is the device still alive during kexec?

cheers

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl1lGaMACgkQzL64meEa
mQYhbg//VhxND+8PhfDrBF/4qjnYwMvid5sPaWU7iMCvwpngkWYuA8yj5YNy5wEk
DdAzw6EQfwct42C9ctv96b6Ozd8BvJ3OCok1vmdBu3UMd+Pb5BghuTMPy4ammXnn
kIUCql5/uAf5pl+RrpeRRX2GrQQ1R+pS2oyvdXa3RTEM6AlHemnMBKJuKn3gC97J
2gqegwIYVEd+1n7bq3iuW5CkWqB3DQvc5yz9vnb3+T5J9zR1hdPviE2zbwzb/lOw
2TNyjeH2iflgNmKRp0RWHNxyciddE6JsNSnq7SjyuaCuNpkI+gvJ9bO8uZxNMzfF
hi3cSOgFENS5i3p/obhVaUH62SUK8ata+6L5tuTvmZxTca0z0UYq7s4+27b96BHE
8aM3bWx3OQdM/NXey3lJuuyuY3cQ+U3UIcE9HOm/PRUswtuO1Yi5pl+13pitw/Gl
9udb+YCir3Vm9L8ElG2JpeMdLlKacZ1m55JHZy4VRQCKE+dqQXXKkETQP9eMqQI0
7sSGQsVzMKTseojtivTjOKKuGyEUfIW24oiwzlVEB1u+DtdKQ3OJH1aF98AcYtqG
GNXbN+6BVSt6l+j1uPE+oWVvdoAvN2Zne7Swe7nxFU3LH3KaL34SQkGbIgbLrHE5
7BsAETdxZ6ikVtIxP70rbxInG5RdoQAQ2bLHGjVhHMdIaQcls/s=
=z8FN
-----END PGP SIGNATURE-----
--=-=-=--


--===============8406532015048246717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8406532015048246717==--

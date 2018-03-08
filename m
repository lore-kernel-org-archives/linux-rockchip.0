From: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Thu, 08 Mar 2018 12:43:40 +0200
Message-ID: <87ina6vodf.fsf@linux.intel.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0772461131903873611=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1515729616-8639-1-git-send-email-william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, Roger Quadros <rogerq-l0cyMroinI0@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, lin.huang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============0772461131903873611==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi Roger,

William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org> writes:
> The dwc3_core_init() gets the PHYs and initializes the PHYs with
> the usb_phy_init() and phy_init() functions before initializing
> core, and power on the PHYs after core initialization is done.
>
> However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
> USB3 PHY), it needs to do some special operation while power on
> the Type-C PHY before initializing DWC3 core. It's because that
> the RK3399 Type-C PHY requires to hold the DWC3 controller in
> reset state to keep the PIPE power state in P2 while configuring
> the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
> timeout. In this case, if we power on the PHYs after the DWC3 core
> initialization is done, the core will be reset to uninitialized
> state after power on the PHYs.
>
> Fix this by powering on the PHYs before initializing core. And
> because the GUID register may also be reset in this case, so we
> need to configure the GUID register after powering on the PHYs.
>
> Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

does this cause any regressions for your boards?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlqhE9wACgkQzL64meEa
mQbo8xAAtDhCIfBTcs4q9JOVmKiY9BpJ/u7lRXkm5jgNkuUD/DXSFIDiJAXijoNk
jVLw3sHf0HV+ba8EN8PM2TM18Ivv1K+ZFqQJOW06HKiE1xjrPlxoirWyxi97VdxM
wX9I9rQR/V/8O6WwM/nWLFeXlyaF7O7sNO+08zntExtPWeOK4L4yCkvAvpsH3csk
HfV4xGsnDKsU0rJ8xFo7TKOlB102f6NO5UL1kLowCLWSo8jRsnUDA7/NDpbl5yF7
sHmZbQmcBFCu2vzwdZqwxRIC+ziKjeWi/zbvTLH+8AH3fvDXtAY/0LAv1Um2ifrV
Q7XBOXYyJCcGNFA/uMS27KhGUFkOoHK3WB5+aLqbc6z544h5ZKf3PDo0g2CgzjEo
itkSrW/duxF7x/eXkn03JIuJN5X8UbTMsj6P9jdAw+NmKqnZZFQVYMtAAjK55q8o
+vN9hGbjGhq8kfaPoSL8Lm0TSYIglNcS/HliAd7VlgVP64K2ETEwZhaq8l7+MUIK
mScHu6KIFSkSq6BMBYm1GTILnXt8rVoTr5yPSmfPzki5V9W4Msa5HDZ35yoxHhFo
oEs2InHTLBZMeC+Vv6w77v8xy0X7mSGdz/BaXoJAlPRj/PfbzgKenP3z7/KnKqOo
YyMqKFnSKRpLFmUHGS2AscgnJhm5bQFAd5iRiJjq16FUmazeLJc=
=QuP9
-----END PGP SIGNATURE-----
--=-=-=--


--===============0772461131903873611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0772461131903873611==--

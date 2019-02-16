From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rock960: Enable tsadc device
Date: Sat, 16 Feb 2019 21:34:16 +0100
Message-ID: <3185590.aYss3V9hle@phil>
References: <20190215152539.16606-1-ezequiel@collabora.com>
 <4625663.tZDl4lH1EQ@diego>
 <aa2f376897ffb4fef02bd3e64812c8e1dbe4987a.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <aa2f376897ffb4fef02bd3e64812c8e1dbe4987a.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 16. Februar 2019, 03:55:01 CET schrieb Ezequiel Garcia:
> On Sat, 2019-02-16 at 00:14 +0100, Heiko St=FCbner wrote:
> > Hi Ezequiel,
> > =

> > Am Freitag, 15. Februar 2019, 16:25:39 CET schrieb Ezequiel Garcia:
> > > Enable the thermal sensor. This device also provides
> > > temperature shutdown protection. The shutdown value is
> > > set at 110C, as tested by the vendor.
> > > =

> > > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > =

> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi index
> > > d64d5ac0804a..599c9752ed4d 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > @@ -634,3 +634,10 @@
> > >          mali-supply =3D <&vdd_gpu>;
> > >          status =3D "okay";
> > >  };
> > =

> > doesn't apply against my 5.1/dts64 branch and our rock960.dtsi
> > also does not have a mali node yet (especially also not one with
> > space-indentation ;-) ).
> > =

> > =

> =

> Sorry about that, it was based on your for-next branch,
> but a mali patch slipped through.

I've fixed that up now and applied the fixed version for 5.1.
I've also moved the &tsadc to the correct position - alphabetically
between sdmmc and uart0. Please keep sorting in mind for future
additions ;-) .


Thanks
Heiko

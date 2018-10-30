From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: sapphire: add chosen node
Date: Tue, 30 Oct 2018 21:34:24 +0100
Message-ID: <3147034.AKaRkkQLNX@phil>
References: <5408972.CYYHPefPr5@phil>
 <20181030145941.15975-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20181030145941.15975-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 30. Oktober 2018, 15:59:41 CET schrieb Vicente Bergas:
> In order to use earlycon, the stdout-path property needs to be set in the=
 chosen node.
> =

> ---
> =

> Hi Heiko,
> =

> > shouldn't that maybe live in the shared .dtsi instead?
> this v2 applies the change in the .dtsi as suggested.
> =

> > I do guess the excavator will have the same default serial?
> Well, in fact it seems to me that serial2 is set as the default serial po=
rt
> at the chip level, although there are some exceptions. But on the other h=
and
> the baud rate is more free form.
> So, as suggested, it could be a good compromise to put it at the
> daugther-card level.
> =

> The point for working around the kexec bug is still valid, but with
> the update from the maintainer it is not enough to fix everything:
> http://lists.infradead.org/pipermail/kexec/2018-October/021762.html
> =

> Regards,
>   Vicen=E7.
> =

> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 4.21

Thanks
Heiko

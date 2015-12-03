From: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RFC] rk3368 idle states
Date: Thu, 3 Dec 2015 10:11:28 +0000
Message-ID: <20151203101128.GB2110@red-moon>
References: <20151202111858.GB18981@red-moon>
 <2472961.2QZIyIIJQ0@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2472961.2QZIyIIJQ0@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Thu, Dec 03, 2015 at 02:05:01AM +0100, Heiko St=FCbner wrote:
> Hi Lorenzo,
> =

> Am Mittwoch, 2. Dezember 2015, 11:18:58 schrieb Lorenzo Pieralisi:
> > while reviewing other dts idle states bindings I spotted the following
> > snippet in arch/arm64/boot/dts/rockchip/rk3368.dtsi:
> > =

> > cpu_sleep: cpu-sleep-0 {
> >        compatible =3D "arm,idle-state";
> >        arm,psci-suspend-param =3D <0x1010000>;
> >        entry-latency-us =3D <0x3fffffff>;
> >        exit-latency-us =3D <0x40000000>;
> >        min-residency-us =3D <0xffffffff>;
> > };
> > =

> > Could you please explain to me how you obtained these residency/latency
> > values ? They make NO sense whatsoever and I am quite tempted to
> > ask you to remove this data from the dts file, it is just wrong.
> =

> I took these values verbatim from the vendor kernel when adding the core =

> rk3368 support.
> =

> I guess I was overly enthusiastic, that psci worked out of the box for sm=
p, =

> that I didn't check the latency/residency values enough at that time. As =
time-
> values they are really overly long :-) .
> =

> =

> Nevertheless I have inquired now, what the background of those values is.

Thank you, they must be updated, hopefully they won't unearth any issue
with the idle state - ie at present the idle state simply turns out unused.

Lorenzo

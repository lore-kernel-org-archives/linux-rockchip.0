From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [GIT PULL 1/3] rockchip soc changes for 4.5
Date: Sat, 12 Dec 2015 01:57:21 +0100
Message-ID: <2125152.VIQO6FufKf@diego>
References: <1936935.FVZdWRYuBf@diego> <1650675.1PTvAK3nr8@wuerfel>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1650675.1PTvAK3nr8@wuerfel>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd,

Am Samstag, 12. Dezember 2015, 01:30:17 schrieb Arnd Bergmann:
> On Saturday 05 December 2015 01:53:38 Heiko St=FCbner wrote:
> > SMP special case for the rk3036 and making sure the arch-timer
> > supply is enabled, similar to the rk3288.
> =

> That is a rather ugly hack, I'd prefer if this could be done cleaner
> rather than duplicated into another place.

I do agree that it is rather ugly :-) .

The general opinion seems to be, that firmware is supposed to make sure thi=
s =

timer is enabled and at the time when it got introduced the consensus was t=
o =

not hack up the arch-timer to facilitate this and "just" put it into the so=
c =

code for the affected cpu.

It seems like the really new rk3228 (quad-core A7 and using psci now) actua=
lly =

gets this right now, in having its firmware taking care of this. So it look=
s =

like this hopefully won't be needed even for future arm32 socs.

I guess I should look at what the new and shiny mainline uboot support does =

for this, but I do think it might actually do it right as well.

So this is really only a hack for flaky vendor-bootloaders.


Which brings me to ...

> Sorry for not seeing this earlier. Can you replace the hardcoded
> RK3036_TIMER_PHYS and RK3288_TIMER6_7_PHYS constants with a DT
> lookup, to make it somewhat less hacky?

I'm not really sure how that is supposed to look like. Technically nothing =

should ever touch that timer, as it will only make the system hang if it ge=
ts =

disabled.

We do have a binding for the timer ip block (rockchip,rk3288-timer) but of =

course cannot use that, to make sure the regular timer driver doesn't bind =
to =

it. So I guess we could do something like:


timer@200440a0 {
	compatible =3D "rockchip,arch-timer-supply";
	reg =3D <0x200440a0 0x20>;
};

try to find this and enable it, but duplicating the hack and spreading it i=
nto =

the dts as well somehow doesn't feel like an improvement ;-) .

But I maybe you have a nicer idea on how to do this, than me.


Thanks
Heiko

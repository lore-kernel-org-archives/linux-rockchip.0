From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Sat, 09 Mar 2019 15:16:48 +0100
Message-ID: <3966706.LBvcXR5hB6@phil>
References: <20190306223454.2959-1-papadakospan@gmail.com>
 <1552101990.1401.3@gmail.com>
 <e9c539ce-f1cb-06f8-1083-ea64c9fd9e7b@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <e9c539ce-f1cb-06f8-1083-ea64c9fd9e7b-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas McKahan <tonymckahan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 9. M=E4rz 2019, 13:45:21 CET schrieb Peter Geis:
> On 3/8/2019 10:26 PM, Leonidas P. Papadakos wrote:
> > =

> >> So I discovered the cause of my TX issues, at least on my rk3328-roc-c=
c.
> >> The rk3328.dtsi is missing several rgmii tx pull strength values.
> >> This is causing them to default to 0ma.
> >>
> >> I've pushed them to 12ma, same as the other tx values, and I'm getting =

> >> 600 mbps tx, with no TX failures.
> >>
> >> I am also going to test his adaptive patch once it's done building.
> >>
> >> Thoughts?
> >>
> >>
> >> diff --git a/arch/arm65/boot/dts/rockchip/rk3328-roc-cc.dts =

> >> b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >> index c0519bc5884e..696627bf3331 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >> @@ -280,6 +280,26 @@
> >>              rockchip,pins =3D <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> >>          };
> >>      };
> >> +
> >> +    gmac-1 {
> >> +        rgmiim1_pins: rgmiim1-pins {
> >> +            rockchip,pins =3D
> >> +                /* mac_txclk */
> >> +                <0 RK_PB0 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_txen */
> >> +                <0 RK_PB4 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_clk */
> >> +                <0 RK_PD0 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_txd1 */
> >> +                <0 RK_PC0 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_txd0 */
> >> +                <0 RK_PC1 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_txd3 */
> >> +                <0 RK_PC7 1 &pcfg_pull_none_12ma>,
> >> +                /* mac_txd2 */
> >> +                <0 RK_PC6 1 &pcfg_pull_none_12ma>;
> >> +        };
> >> +    };
> >>  };
> >>
> >>  &sdmmc {
> > Good find! It seems like they're there in the dtsi, but configured as =

> > none when it comes to ma. I'll test it
> > =

> > =

> =

> With Ayufan's patch offload patch and my pull patch, I now have the =

> following results:
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.01  sec  1022 MBytes   857 Mbits/sec  885             sen=
der
> [  5]   0.00-10.01  sec  1022 MBytes   856 Mbits/sec =

> receiver
> =

> eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>          inet6 fe80::e8b5:5eff:fe49:d353  prefixlen 64  scopeid 0x20<link>
>          ether ea:b5:5e:49:d3:53  txqueuelen 1000  (Ethernet)
>          RX packets 39822  bytes 2668618 (2.6 MB)
>          RX errors 0  dropped 0  overruns 0  frame 0
>          TX packets 1005649  bytes 1516698158 (1.5 GB)
>          TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>          device interrupt 29
> =

> Much better overall, still not perfect, but I think it might be worth =

> re-running the delay tests now.

also you could check if the thres-dma-flag is still necessary or can
be removed - might be interesting to know if fixing the drive strength
magically also fixes that issue.


Heiko

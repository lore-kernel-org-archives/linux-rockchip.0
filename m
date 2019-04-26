From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v3 06/13] rockchip: rk3399: Add Orangepi RK3399 support
Date: Fri, 26 Apr 2019 20:15:29 +0530
Message-ID: <CAMty3ZCwN8bRopZugOeV=Ym4xZhncTFeEt8_Se7-wjSoA7Wu7Q@mail.gmail.com>
References: <20190425173427.13445-1-jagan@amarulasolutions.com>
 <20190425173427.13445-7-jagan@amarulasolutions.com>
 <51dab1c2fea1ca16b892c9face5fd4c6b451d07d.camel@bootlin.com>
 <CAMty3ZADnLE14jh14qM7a9-oeKHsrSu1XHzPBfLhBtqEOgBviQ@mail.gmail.com>
 <f89a6bbc7390db5f9ed6f7ad732b6451cdea15c4.camel@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <f89a6bbc7390db5f9ed6f7ad732b6451cdea15c4.camel-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Apr 26, 2019 at 8:04 PM Paul Kocialkowski
<paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
>
> Hi,
>
> On Fri, 2019-04-26 at 19:57 +0530, Jagan Teki wrote:
> > On Fri, Apr 26, 2019 at 7:47 PM Paul Kocialkowski
> > <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> > > Hi,
> > >
> > > On Thu, 2019-04-25 at 23:04 +0530, Jagan Teki wrote:
> > > > Add initial support for Orangepi RK3399 board.
> > > >
> > > > Specification
> > > > - Rockchip RK3399
> > > > - 2GB/4GB DDR3
> > > > - 16GB eMMC
> > > > - SD card slot
> > >
> > > Looks like you're missing u-boot,dm-pre-reloc to have it working, which
> > > will need to be introduced when moving to rk3399-u-boot.dtsi.
> >
> > Look like you are confused or doesn't check the patch. This patch have
> > rk3399-orangepi-u-boot.dtsi which included rk3399-u-boot.dtsi that has
> > u-boot,dm-pre-reloc for sdmmc.
>
> Well no, in your v3.1 patch, you no longer have u-boot,dm-pre-reloc in
> rk3399-u-boot.dtsi, so you need to add it in the device dts and remove
> it in your second series when you add it back to rk3399-u-boot.dtsi.

Which u-boot,dm-pre-reloc are you taking about?

v3.1 has u-boot,dm-pre-reloc for sdmmc, please check it again [1]
which were used by subsequent boards on the same series.

The diff between v3 vs v3.1 is like v3 removed u-boot,dm-pre-reloc on
existing board dts files thought that it will include
rk3399-u-boot.dtsi will automatically, but not ie fixed in v3.1

>
> It's not okay to submit the board with broken MMC support and fix it in
> a subsequent series.

Again, nothing broken. existing boards or dts(i) files are untouched.
Added only initial rk3399-u-boot.dtsi with sdmmc u-boot,dm-pre-reloc
node to make use of new boards.  and the same reused by next series
so-that I can add binman global to all rk3399 boards.

[1] https://patchwork.ozlabs.org/patch/1091534/

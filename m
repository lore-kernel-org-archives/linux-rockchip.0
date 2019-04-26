From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v3.1 03/13] rockchip: dts: rk3399: Create initial
 rk3399-u-boot.dtsi
Date: Fri, 26 Apr 2019 16:16:43 +0200
Message-ID: <863a27628b5e563bb769accf4595575e91023ebe.camel@bootlin.com>
References: <20190426131817.16776-1-jagan@amarulasolutions.com>
 <accbbfc8d9d0ff50996f12b23b7588c453236864.camel@bootlin.com>
 <CAMty3ZC5aN-=HKRNy9fYvnQ0wppvBu38WwaCiKWpcnMBTMb7vw@mail.gmail.com>
 <4dc7e2d0f4f0da508224e3ffa089f8780395493f.camel@bootlin.com>
 <CAMty3ZDpkyBP2M0i216Zn9OoebOK0nVtX6zuq5DqX+TJJufbFg@mail.gmail.com>
 <8221cbddf0a0e9e8645ef418a3dcbe4692223aea.camel@bootlin.com>
 <CAMty3ZC1200fH34qoOBTuokgmby-uLGp6ocCKtkFPQLo-8XLLA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMty3ZC1200fH34qoOBTuokgmby-uLGp6ocCKtkFPQLo-8XLLA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, 2019-04-26 at 19:32 +0530, Jagan Teki wrote:
> On Fri, Apr 26, 2019 at 7:28 PM Paul Kocialkowski
> <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> > Hi,
> > 
> > On Fri, 2019-04-26 at 19:20 +0530, Jagan Teki wrote:
> > > On Fri, Apr 26, 2019 at 7:12 PM Paul Kocialkowski
> > > <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> > > > Hi,
> > > > 
> > > > On Fri, 2019-04-26 at 19:07 +0530, Jagan Teki wrote:
> > > > > On Fri, Apr 26, 2019 at 7:04 PM Paul Kocialkowski
> > > > > <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> > > > > > Hi,
> > > > > > 
> > > > > > On Fri, 2019-04-26 at 18:48 +0530, Jagan Teki wrote:
> > > > > > > u-boot,dm-pre-reloc is required for SDMMC booted rk3399 boards and
> > > > > > > which is U-Boot specific devicetrees binding.
> > > > > > > 
> > > > > > > Move it on global rk3399-u-boot.dtsi file and rest of the U-Boot
> > > > > > > bindings will move it future based on the requirement.
> > > > > > > 
> > > > > > > This would help to sync the devicetrees from Linux whenever required
> > > > > > > instead of adding specific nodes.
> > > > > > > 
> > > > > > > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > > > > > > Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> > > > > > 
> > > > > > Since your patch has changed significantly, you can no longer include a
> > > > > > Reviewed-by that was given on a previous iteration.
> > > > > > 
> > > > > > It looks like we are still missing bits to have rk3399-u-boot.dtsi
> > > > > > included, so this patch does not get my Reviewed-by tag.
> > > > > 
> > > > > It will include rockchip-u-boot.dtsi automatically and I made the
> > > > > receptive changes to include other files in this patch [1] and sure I
> > > > > will ask Philipp to remove the reviewed-by tag, thanks.
> > > > 
> > > > Most importantly (now that I see the new series), you should certainly
> > > > have sent that patch as part of your new series because we now have an
> > > > inter-dependency between both series.
> > > 
> > > It is not like an inter-dependency the previous rk3399-u-boot.dtsi is
> > > not included by these files so they would work as before. and now this
> > > series would need this change to include rk3399-u-boot.dtsi since the
> > > goal here to add binman node to common for all rk3399 dts files.
> > 
> > Well, what I mean is that the latest series you sent mentions a
> > dependency on the first one, when it really should be the other way
> > round: you need the rework to make things in your first series work at
> > all, since that dm-pre-reloc is necessary.
> > 
> > We don't want to merge one broken series and then the fix for it later,
> > even if it would still build in all cases. Here there is a clear
> > logical dependency, in the reverse ordre to the one you are describing.
> 
> I don't understand your point, sorry.
> 
> This patch [1] will make use of the new boards added on that series it
> will not effect existing or previous rk3399 boards. in that case why
> it is broken patch or series could you elaborate? the existing boards
> are already supported dm-pre-reloc on their respective devicetree
> files.

On looks like I still didn't really get what you are trying to do.
Let's try and recap the situation:

- Currently, we have rk3399 boards with u-boot,dm-pre-reloc in their
shared dtsi;
- Your v3.1 adds rk3399-u-boot.dtsi but keeps the u-boot,dm-pre-reloc
in each device since rk3399-u-boot won't be included.
- Your new series allows rk3399-u-boot.dtsi to be included
automatically, so we can move the per-common-device-dts u-boot,dm-pre-
reloc to rk3399-u-boot.dtsi

If that's correct, then it indeed makes sense the way it is proposed.
Your commit messages just lack a clear explanation of what is going on
here, since it's not quite trivial for anyone but you.

Cheers,

Paul

> [1] https://patchwork.ozlabs.org/patch/1091534/
-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

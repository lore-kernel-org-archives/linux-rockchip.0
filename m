From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
Date: Tue, 31 Mar 2020 11:29:23 +0530
Message-ID: <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <016151d6786a0ea4-Sse5TxTiDWuxJFhkpKByzTXZidJgq2Oi@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 31, 2020 at 1:06 AM Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> wrote:
>
> > From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > Cc: sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org,
> >         linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org,
> >         Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > Date: Mon, 30 Mar 2020 23:46:10 +0530
> > Content-Type: text/plain; charset=UTF-8
> >
> > Linux supporting assigned-clocks for VOP on rk3399 by assuming
> > U-Boot not initializing it on this linux commit:
> >
> > commit <617f4472bdd3> ("arm64: dts: rockchip: init rk3399 vop clock rates")
> >
> > There is no specific need to initialize these assigned clock
> > in U-Boot as video drivers still work with default aclk and
> > hclk values. So, these clocks are simply not supported by rk3399
> > clock driver.
> >
> > But, during stdio probe of vidconsole, the device probe
> > will try to check whether the assigned clocks on that video
> > console node is initialized or not? and return error if not.
> >
> > So, delete these property via -u-boot dtsi as there is
> > no specific need in U-Boot.
>
> Deleting these properties isn't very helpful as it means the U-Boot
> device tree can no longer be used by the kernel.  Isn't it a better
> idea to implement these clocks as stubs in the u-boot clock driver?

I did try this before sorting out these changes, seems like it
requires a bit more tweaking the clock wrt display code. I really
didn't see any use case as of now for just to print u-boot log on
display out, and more over this support has been broken since from
releases. so bypassing these nodes can be a solutions for now.

Jagan.

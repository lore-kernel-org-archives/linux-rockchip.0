From: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
Date: Thu, 2 Apr 2020 13:39:56 +0100
Message-ID: <CALeDE9M5PfLmpuVwQnkZE82Sv6HpczyevSxMa9roBh5CkxNNNg@mail.gmail.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200402114125.2501-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 2, 2020 at 12:41 PM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>
> Due to recent Linux dts(i) sync for rk3399. the existing
> vop driver is not working with HDMI out on RK3399.
>
> This is v3 patchset, for previous version fixes[1].
>
> Changes for v3:
> - handle vopl clks in clk driver
> - drop dts changes
> - fix 4K display out for rk3399
> Changes for v2:
> - use usbkbd as stdin
> - enable USB Keyboard
>
> [1] https://patchwork.ozlabs.org/cover/1264187/
>
> Any inputs?

This series works for me for display output on the Rock960, I had
tried one of the prior versions with it (I think v1) and it had caused
issues but the display comes up and outputs on HDMI for me so:
Tested-by: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

> Jagan.
>
> Jagan Teki (5):
>   clk: rk3399: Set empty for vopl assigned-clocks
>   video: rockchip: Fix vop modes for rk3399
>   rockchip: Enable pre console for rk3399
>   rockchip: Enable HDMI output on rk3399 board w/ HDMI
>   video: rockchip: Support 4K resolution for rk3399, HDMI
>
>  arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
>  arch/arm/mach-rockchip/Kconfig                  |  1 +
>  common/Kconfig                                  |  1 +
>  configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
>  configs/roc-pc-rk3399_defconfig                 |  6 ++++++
>  configs/rock960-rk3399_defconfig                |  7 +++++++
>  drivers/clk/rockchip/clk_rk3399.c               |  7 +++++++
>  drivers/video/rockchip/Kconfig                  |  2 ++
>  drivers/video/rockchip/rk3399_vop.c             |  2 --
>  drivers/video/rockchip/rk_vop.c                 |  4 ++++
>  include/configs/evb_rk3399.h                    |  5 +++++
>  include/configs/rock960_rk3399.h                |  5 +++++
>  14 files changed, 70 insertions(+), 2 deletions(-)
>
> --
> 2.17.1
>

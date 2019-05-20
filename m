From: Doug Anderson <dianders@chromium.org>
Subject: Re: [REPOST PATCH v2 2/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Mon, 20 May 2019 10:57:37 -0700
Message-ID: <CAD=FV=VOPAufL=u5iRCpO=Rdg--goZJ3jxM1znzyEXMTVBTFJg@mail.gmail.com>
References: <20190516225941.170355-3-dianders@chromium.org> <201905201037.p3rNy0yX%lkp@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <201905201037.p3rNy0yX%lkp@intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@01.org, Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, Chris <zyw@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>, Elaine Zhang <zhangqing@rock-chips.com>, Greg
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, May 19, 2019 at 7:08 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Douglas,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on balbi-usb/next]
> [also build test ERROR on v5.2-rc1 next-20190517]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Douglas-Anderson/Documentation-dt-bindings-Add-snps-need-phy-for-wake-for-dwc2-USB/20190520-033119
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git next
> config: x86_64-randconfig-h0-05191510 (attached as .config)
> compiler: gcc-7 (Debian 7.3.0-1) 7.3.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld: drivers/usb/dwc2/platform.o: in function `dwc2_can_poweroff_phy':
> >> drivers/usb/dwc2/platform.c:545: undefined reference to `usb_wakeup_enabled_descendants'

Thank you.  Fixed in v3:

https://lkml.kernel.org/r/20190520175605.2405-1-dianders@chromium.org

-Doug

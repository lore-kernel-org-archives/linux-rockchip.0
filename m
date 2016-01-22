From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 07/21] usb: dwc2: hcd: fix split transfer schedule sequence
Date: Thu, 21 Jan 2016 16:24:10 -0800
Message-ID: <CAD=FV=W8+A0MduBs+_he5EKXsLbDxqVu419+Lco+SiUNUyw6Cw@mail.gmail.com>
References: <1453352672-27890-8-git-send-email-dianders@chromium.org>
	<201601211352.VXgeFvup%fengguang.wu@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <201601211352.VXgeFvup%fengguang.wu@intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: kbuild test robot <lkp@intel.com>
Cc: "kbuild-all@01.org" <kbuild-all@01.org>, John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Kever Yang <kever.yang@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, Yunzhi Li <lyz@rock-chips.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Jan 20, 2016 at 9:24 PM, kbuild test robot <lkp@intel.com> wrote:
> Hi Douglas,
>
> [auto build test ERROR on next-20160120]
> [cannot apply to v4.4-rc8 v4.4-rc7 v4.4-rc6 v4.4]
> [if your patch is applied to the wrong git tree, please drop us a note to help improving the system]
>
> url:    https://github.com/0day-ci/linux/commits/Douglas-Anderson/usb-dwc2-host-Fix-and-speed-up-all-the-stuff-especially-with-splits/20160121-131414
> config: x86_64-randconfig-x019-01201142 (attached as .config)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> All errors (new ones prefixed by >>):
>
>    drivers/usb/dwc2/core.c: In function 'dwc2_hc_start_transfer':
>>> drivers/usb/dwc2/core.c:1876:17: error: 'struct dwc2_hsotg' has no member named 'split_order'
>               &hsotg->split_order);
>                     ^
> --
>>> /bin/bash: line 0: [: -ge: unary operator expected
>
> vim +1876 drivers/usb/dwc2/core.c
>
>   1870                          ec_mc = 3;
>   1871                  else
>   1872                          ec_mc = 1;
>   1873
>   1874                  /* Put ourselves on the list to keep order straight */
>   1875                  list_move_tail(&chan->split_order_list_entry,
>> 1876                                 &hsotg->split_order);
>   1877          } else {
>   1878                  if (dbg_hc(chan))
>   1879                          dev_vdbg(hsotg->dev, "no split\n");
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

I've got a fix this and the other error reported by the bot.  I'll
plan to fix both tomorrow and send up a v5 unless someone gives me
some other feedback on the series that takes me longer than a day to
deal with.

-Doug

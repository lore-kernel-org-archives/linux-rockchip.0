From: Guenter Roeck <groeck@google.com>
Subject: Re: [v6 PATCH 1/6] extcon: Add Type-C and DP support
Date: Fri, 22 Jul 2016 11:21:41 -0700
Message-ID: <CABXOdTe-xtfjBKOPE_EuqBai835V6NiMzUUoJZJZUEuP415xqQ@mail.gmail.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
 <CGME20160721131520epcas1p402684ff2569a23d7e5e011da9fb07667@epcas1p4.samsung.com>
 <1469106808-28297-2-git-send-email-zyw@rock-chips.com> <5791E769.9060403@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5791E769.9060403@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Jul 22, 2016 at 2:29 AM, Chanwoo Choi <cw00.choi@samsung.com> wrote:
> Hi Chris,
>
> I'm sorry for late reply. I finished the first draft to support the extcon property.
> You can check the patches[1]. But, I need more time to test it. After tested it,
> I'll send the patches.
>
> [1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log/?h=extcon-test
>
> Chanwoo Choi (4):
>   extcon: Add the extcon_type to group each connector into five category
>   extcon: Add the support for extcon property according to type of connector
>   extcon: Rename the extcon_set/get_state() to maintain the function naming pattern
>   extcon: Add the sync APIs to support the  notification for extcon property
>
> Chris Zhong (1):
>   extcon: Add EXTCON_DISP_DP and the property for USB Type-C
>

Couple of comments:

- In extcon.c, line 560: 'state' is unused.

- extcon_set_property(edev, EXTCON_USB, EXTCON_USB_VBUS, 0);
  does not work. As written, it has to be something like:

  union extcon_property_value prop;
  ...
  prop.intval = vbus_state;
  extcon_set_property(edev, EXTCON_USB, EXTCON_USB_VBUS, prop);

- For USB, the state of EXTCON_USB, EXTCON_USB_HOST, and
EXTCON_DISP_DP tend to change at the same time, together with the
associated properties.
  It might be desirable to have an equivalent of extcon_sync_all(edev);

Thanks,
Guenter

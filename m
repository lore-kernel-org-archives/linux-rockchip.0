From: Guenter Roeck <groeck@google.com>
Subject: Re: [v3 PATCH 3/5] phy: Add USB Type-C PHY driver for rk3399
Date: Thu, 23 Jun 2016 10:23:49 -0700
Message-ID: <CABXOdTc11gjrt+_zRs6aJhbgrHXSXnBoG5ZoqwNUKirr_dpX=w@mail.gmail.com>
References: <1466686264-6744-1-git-send-email-zyw@rock-chips.com> <1466686264-6744-4-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1466686264-6744-4-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, cw00.choi@samsung.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kever Yang <kever.yang@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

[ ... ]

> +       ret = extcon_register_notifier(tcphy->pd_extcon, EXTCON_USB,
> +                                      &tcphy->event_nb);
> +       if (ret) {
> +               dev_err(dev, "regitster EXTCON_USB notifer failed\n");
> +               return ret;
> +       }
> +
> +       ret = extcon_register_notifier(tcphy->pd_extcon, EXTCON_USB_HOST,
> +                                      &tcphy->event_nb);
> +       if (ret) {
> +               dev_err(dev, "regitster EXTCON_USB_HOST notifer failed\n");
> +               return ret;
> +       }
> +
> +       ret = extcon_register_notifier(tcphy->pd_extcon, EXTCON_DISP_DP,
> +                                      &tcphy->event_nb);
> +       if (ret) {
> +               dev_err(dev, "regitster EXTCON_DISP_DP notifer failed\n");
> +               return ret;
> +       }
> +

I don't think you can register multiple notifiers with the same
notifier block. It may work by chance, but at least the 'next' object
in notifier_clock is set in notifier_chain_register(). Best case it
may work, but worst case it might cause a loop in the list of
notifiers.

Guenter

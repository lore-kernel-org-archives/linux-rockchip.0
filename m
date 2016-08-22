From: Guenter Roeck <groeck@google.com>
Subject: Re: [v13 PATCH 2/5] phy: Add USB Type-C PHY driver for rk3399
Date: Mon, 22 Aug 2016 05:07:00 -0700
Message-ID: <CABXOdTetf_rYLO0ObC=ChL7n6uJiQ43UYN3Lu_s4BX4E=kkzdg@mail.gmail.com>
References: <1471839798-14729-1-git-send-email-zyw@rock-chips.com>
 <1471839798-14729-3-git-send-email-zyw@rock-chips.com> <CABXOdTcsOQH068bGthwQMmESf0DbNDz0i3UvPfDjjuHPj8mRUQ@mail.gmail.com>
 <57BA84F4.2000506@126.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <57BA84F4.2000506@126.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris <zywang33@126.com>
Cc: Chris Zhong <zyw@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, linux-kernel <linux-kernel@vger.kernel.org>, Brian Norris <briannorris@chromium.org>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, Guenter Roeck <groeck@chromium.org>, wulf <wulf@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

On Sun, Aug 21, 2016 at 9:52 PM, Chris <zywang33@126.com> wrote:
> Hi Guenter
>
[ ... ]

>>> +static int rockchip_usb3_phy_power_on(struct phy *phy)
>>> +{
>>> +       struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);
>>> +       struct rockchip_usb3phy_port_cfg *cfg = &tcphy->port_cfgs;
>>> +       const struct usb3phy_reg *reg = &cfg->pipe_status;
>>> +       int timeout, new_mode, ret = 0;
>>> +       u32 val;
>>> +
>>> +       mutex_lock(&tcphy->lock);
>>> +
>>> +       new_mode = tcphy_get_mode(tcphy);
>>> +       if (new_mode < 0) {
>>> +               ret = new_mode;
>>> +               goto unlock_ret;
>>> +       }
>>> +
>>> +       /* DP-only mode; fall back to USB2 */
>>> +       if (!(new_mode & (MODE_DFP_USB | MODE_UFP_USB)))
>>> +               goto unlock_ret;
>>> +
>>
>> The rest of the code (calling tcphy_phy_init(), waiting for pipe
>> ready) is not needed in this case ?
>
>
> If there is only DP, the tcphy_phy_init will be called by DP controller, and
> the pipe is for USB3, so do not need do anything, just return a "fake"
> success here.
> And the usb phy power off do nothing. Just make USB  controller happier.
>

Yes, you are right. It is a bit confusing (and I had overlooked) that
MODE_DFP_USB is set for both USB2 and USB3 if DP isn't active, but if
DP is active it is only set for USB3.

Guenter

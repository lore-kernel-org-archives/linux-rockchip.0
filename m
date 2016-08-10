From: Guenter Roeck <groeck@google.com>
Subject: Re: [v10 PATCH 2/5] phy: Add USB Type-C PHY driver for rk3399
Date: Wed, 10 Aug 2016 15:19:41 -0700
Message-ID: <CABXOdTd_HVqQ2Hx5_TFpM3xhnMXz3JpaXG8QHkv6wAzUCtYp8Q@mail.gmail.com>
References: <1470785557-21974-1-git-send-email-zyw@rock-chips.com> <1470785557-21974-3-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1470785557-21974-3-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, Chanwoo Choi <cw00.choi@samsung.com>, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kever Yang <kever.yang@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Aug 9, 2016 at 4:32 PM, Chris Zhong <zyw@rock-chips.com> wrote:
> Add a PHY provider driver for the rk3399 SoC Type-c PHY. The USB
> Type-C PHY is designed to support the USB3 and DP applications. The
> PHY basically has two main components: USB3 and DisplyPort. USB3
> operates in SuperSpeed mode and the DP can operate at RBR, HBR and
> HBR2 data rates. Hence, create 2 PHY deivces, the phy[0] for DP,
> and phy[1] for USB3.
>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>

Reviewed-by: Guenter Roeck <groeck@chromium.org>
Tested-by: Guenter Roeck <groeck@chromium.org>

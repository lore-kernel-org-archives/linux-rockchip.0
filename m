From: Guenter Roeck <groeck@google.com>
Subject: Re: [v6 PATCH 6/6] drm/rockchip: cdn-dp: add cdn DP support for rk3399
Date: Thu, 21 Jul 2016 18:40:50 -0700
Message-ID: <CABXOdTcOSbu8aU67MYEKgZ25tV8MmOq1HAfZYnR+6CwT7v6S4Q@mail.gmail.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com> <1469106808-28297-7-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1469106808-28297-7-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, myungjoo.ham@samsung.com, cw00.choi@samsung.com, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 21, 2016 at 6:13 AM, Chris Zhong <zyw@rock-chips.com> wrote:
> Add support for cdn DP controller which is embedded in the rk3399
> SoCs. The DP is compliant with DisplayPort Specification,
> Version 1.3, This IP is compatible with the rockchip type-c PHY IP.
> There is a uCPU in DP controller, it need a firmware to work,
> please put the firmware file to /lib/firmware/cdn/dptx.bin. The

/lib/firmware/rockchip/dptx.bin

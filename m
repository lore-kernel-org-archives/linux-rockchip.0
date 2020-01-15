From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] pinctrl/rockchip: splite soc data to separated driver
Date: Wed, 15 Jan 2020 13:51:40 +0100
Message-ID: <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw@mail.gmail.com>
References: <20200109094001.24343-1-jay.xu@rock-chips.com> <20200113011616.19791-1-jay.xu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200113011616.19791-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jianqun Xu <jay.xu@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: David Wu <david.wu@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jan 13, 2020 at 2:16 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> * Decrease codes of pinctrl-rockchip.c from 4,000 lines to 2000 by
> separating soc data to a new file.
>
> * Move rockchip pinctrl related struct definations to a head file.
>
> * Keep legency pinctrl-rockchip.c under driver/pinctrl but not to
> compile it, conveniently for reviewers.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

This patch looks good, two things are missing:

- Review from Heiko

- A change to MAINTAINERS so that the file pattern still
  matches

Should someone from Rockchip also sign up as comaintainer
for this driver by the way? (Though the people at Rockchip
posting patches for this seem to change a bit.)

Yours,
Linus Walleij

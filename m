From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288 platforms"
Date: Wed, 25 Dec 2019 11:02:29 +0800
Message-ID: <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
References: <20191225025908.25305-1-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191225025908.25305-1-kever.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Dec 25, 2019 at 10:59 AM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
> All the U-Boot version for rk3288 including mainline, rockchip
> legacy/next-dev, have init the timer7, so no need to init it in kernel
> again.

What about the ChromeOS bootloader?

> One more reason is that if  we enable the trust for rk3288, then timer7 is
> not able to be accessed in kernel.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

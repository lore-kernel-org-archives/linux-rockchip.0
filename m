From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
Date: Mon, 5 Aug 2019 12:32:52 +0200
Message-ID: <CACRpkdaOe4FvvrVMwLk5_KiMdKVVNm5Z7fSyjPDWKcm5MzxvyQ@mail.gmail.com>
References: <20190726112812.19665-1-anders.roxell@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190726112812.19665-1-anders.roxell@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Anders Roxell <anders.roxell@linaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 26, 2019 at 1:28 PM Anders Roxell <anders.roxell@linaro.org> wr=
ote:

> When fall-through warnings was enabled by default the following warning
> was starting to show up:
>
> ../drivers/pinctrl/pinctrl-rockchip.c: In function =E2=80=98rockchip_gpio=
_set_config=E2=80=99:
> ../drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may=
 fall
>  through [-Wimplicit-fallthrough=3D]
>    rockchip_gpio_set_debounce(gc, offset, true);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/pinctrl/pinctrl-rockchip.c:2795:2: note: here
>   default:
>   ^~~~~~~
>
> Rework so that the compiler doesn't warn about fall-through. Add
> 'return -ENOTSUPP;' to match the comment.
>
> Fixes: d93512ef0f0e ("Makefile: Globally enable fall-through warning")
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Patch applied.

Yours,
Linus Walleij

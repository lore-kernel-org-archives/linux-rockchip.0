From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] pinctrl: fix incorrect inline keyword in multiple drivers
Date: Tue, 14 Jun 2016 08:55:05 +0200
Message-ID: <CACRpkdZSqFfp6v-jk1Xv3RVK4xz-Di_4rj_TmHnsmFRPswSB7A@mail.gmail.com>
References: <1465831250-2689101-1-git-send-email-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1465831250-2689101-1-git-send-email-arnd@arndb.de>
Sender: linux-gpio-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jean-Christophe Plagniol-Villard <plagnioj@jcrosoft.com>, Heiko Stuebner <heiko@sntech.de>, Srinivas Kandagatla <srinivas.kandagatla@gmail.com>, Maxime Coquelin <maxime.coquelin@st.com>, Patrice Chotard <patrice.chotard@st.com>, Shawn Guo <shawnguo@kernel.org>, Adrian Alonso <aalonso@freescale.com>, Thomas Gleixner <tglx@linutronix.de>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "open list:ARM/STI ARCHITECTURE" <kernel@stlinux.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jun 13, 2016 at 5:18 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> When building with 'make W=1', we get harmless warnings about
> five drivers in drivers/pinctrl, which all contain a copy of
> the same line:
>
> drivers/pinctrl/freescale/pinctrl-imx1-core.c:160:1: error: 'inline' is not at beginning of declaration [-Werror=old-style-declaration]
>
> This replaces the somewhat nonstandard 'static const inline'
> with 'static inline const', which has the same meaning but
> does not cause this warning.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Patch applied.

Yours,
Linus Walleij

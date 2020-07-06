From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] arm64: defconfig: Enable GPIO_SYSCON
Date: Mon, 6 Jul 2020 19:49:03 +0530
Message-ID: <CAMty3ZDBdry965H1VvC8E+cZC07qY-9ZM53BmZSstGhtpxWnEw@mail.gmail.com>
References: <20200403140616.19505-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403140616.19505-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Levin Du <djw@t-chip.com.cn>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Fri, Apr 3, 2020 at 7:36 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> roc-rk3328-cc board has vcc_sdio regulator controlled
> by a special output only gpio pin. This special pin can
> now be reference as <&grf_gpio 0> via gpio-syscon driver,
> as mentioned in below commit.
>
> commit <99165b93dafe4f2a821b5dae106f2ef6b4ceff7e> "arm64: dts: rockchip:
> add sdmmc UHS support for roc-rk3328-cc"
>
> So, enable bydefault on the defconfig.
>
> Cc: Levin Du <djw@t-chip.com.cn>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---

Any update on this?

Jagan.

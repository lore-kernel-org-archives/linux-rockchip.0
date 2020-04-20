From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 0/3] environment: distro: Add SF distro support
Date: Mon, 20 Apr 2020 19:51:08 +0530
Message-ID: <CAMty3ZDUk2+N8up3zXaaV3XGy=SmoMB35HiyCXvamf2spwVjrA@mail.gmail.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200410182631.11951-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Apr 10, 2020 at 11:57 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This patch is based on Tom comments from previous
> version[1] for adding new distro support separately
> as in include/environment/distro/sf.h
>
> This new sf distro command not touch the existing
> include/config_distro_bootcmd.h.
>
> Used this new SF distro command in rk3399 platform.
>
> [1] https://patchwork.ozlabs.org/patch/1232666/
>
> Any inputs?
> Jagan.
>
> Jagan Teki (3):
>   environment: distro: Add SF distro command
>   rk3399: Add boot flash script offset, size
>   rockchip: Enable SF distro bootcmd

Applied to u-boot-spi/master

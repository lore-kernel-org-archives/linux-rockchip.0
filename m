From: Peter Robinson <pbrobinson@gmail.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Mon, 2 Mar 2020 13:01:58 +0000
Message-ID: <CALeDE9PO3aKTZ8Z89KhedLfnRxja+mPq1ocwOOfSFm+NRJBr0A@mail.gmail.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200123162845.10651-5-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdin=serial,cros-ec-keyb\0" \

This should likely be a usb keyboard and not the CrOS EC keyboard.

> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>
>  #if defined(CONFIG_ENV_IS_IN_MMC)
> --
> 2.18.0.321.gffc6fa0e3
>

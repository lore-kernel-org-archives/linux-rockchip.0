From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 07/16] usb: dwc3: add dis_enblslpm_quirk
Date: Mon, 11 May 2020 14:19:49 +0530
Message-ID: <CAMty3ZBFykcDBWeVuA0kHvUoMYQCYLWGaTa+fmdrdKzZTtunRA@mail.gmail.com>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075520.26557-1-frank.wang@rock-chips.com>
 <20200511075520.26557-3-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200511075520.26557-3-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Klaus Goger <klaus.goger@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Belisko Marek <marek.belisko@gmail.com>, William Wu <william.wu@rock-chips.com>, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, May 11, 2020 at 1:25 PM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> Add a quirk to clear the GUSB2PHYCFG.ENBLSLPM bit, which controls
> whether the PHY receives the suspend signal from the controller.
>
> Refer to commit ec791d149bca("usb: dwc3: Add dis_enblslpm_quirk")
> in Linux Kernel.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # roc-rk3399-pc

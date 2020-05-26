From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v6 00/16] Add Rockchip RK3399 USB3.0 Host support
Date: Tue, 26 May 2020 09:46:33 +0530
Message-ID: <CAMty3ZDxiDObLM-EXBHsoWwxk5M98vx3fTM26qGZtuKxttS52Q@mail.gmail.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200526033220.20047-1-frank.wang@rock-chips.com>
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Klaus Goger <klaus.goger@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, jianing.ren@rock-chips.com, Belisko Marek <marek.belisko@gmail.com>, wmc@rock-chips.com, U-Boot-Denx <u-boot@lists.denx.de>, William Wu <william.wu@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, chenjh@rock-chips.com, Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 26, 2020 at 9:02 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> This series add quirks for DWC3 and add Rockchip RK3399 USB3.0 host support.
>
> The function has been tested pass on rk3399-evb and roc-rk3399-pc board.
>
> For V6 update:
>  - Use [PATCH v6 04/16] instead of [PATCH v5 05/16] to fix that the current
>    Generic PHY subsystem is unable to find PHY if the PHY node is not part of
>    the root structure.
>  - Add 'Reviewed-by' tag for all patches except [PATCH v6 04/16].
>
> For V5 update:
>  - Fix dwc3-generic driver followed Marek's comments for [PATCH v4 12/16].
>  - Add 'Reviewed-by' and 'Tested-by' tag for [PATCH v4 07/16] and [PATCH v4 08/16].
>
> For V4 update:
>  - Collect Jagan's all fixed patches [1].
>  - Amend specific u-boot changes from dts to dtsi for [PATCH v3 6/7].
>
> For V3 update:
>  - Fix compile error for [PATCH v2 1/9].
>  - Use Jagan's Type-C driver instead of [PATCH v2 5/9].
>  - Cleanup dts changes for [PATCH v2 7/9].
>  - Cleanup config changes for [PATCH v2 8/9] and [PATCH v2 9/9].
>
> For V2 update:
>  - Amend type-c driver followed Jagan's comments for [PATCH 5/8].
>  - Fix dts commit for [PATCH 7/8].
>  - Split RK3399 default config for [PATCH 8/8].
>  - Add 'Reviewed-by' tag for [PATCH 1/8], [PATCH 2/8] and [PATCH 3/8].
>
> [1] https://patchwork.ozlabs.org/project/uboot/cover/20200506075025.1677-1-jagan@amarulasolutions.com
>
> BR,
> Frank
>
> Frank Wang (8):
>   arm: mach-rockchip: bind sub-nodes for rk3399_syscon
>   usb: dwc3: add dis_enblslpm_quirk
>   usb: dwc3: add dis_u2_freeclk_exists_quirk
>   usb: dwc3: amend UTMI/UTMIW phy interface setup
>   usb: dwc3: add make compatible for rockchip platform
>   driver: usb: drop legacy rockchip xhci driver
>   ARM: dts: rk3399-evb: usb3.0 host support
>   configs: evb-rk3399: update support usb3.0 host

I have a new sandisk Type C and A storage disk. Here are the tests in
roc-rk3399-pc.

=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
scanning bus dwc3 for devices... cannot reset port 1!?
2 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
  |  U-Boot XHCI Host Controller
  |
  +-2  Mass Storage (5 Gb/s, 224mA)
       SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 2 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Mass Storage (480 Mb/s, 224mA)
       SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... EHCI timed out on TD - token=0x80008d80

      USB device not accepting new address (error=22)
2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
=>
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 3 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
    |   USB 2.0 Hub [MTT]
    |
    +-3  Mass Storage (480 Mb/s, 224mA)
         SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... EHCI timed out on TD - token=0x80008d80

      USB device not accepting new address (error=22)
2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 3 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
    |   USB 2.0 Hub [MTT]
    |
    +-3  Mass Storage (480 Mb/s, 224mA)
         SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

Jagan.

From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 00/12] rockchip: ROCKPi N8/N10 hardware enablement
Date: Wed, 22 Jul 2020 21:10:02 +0800
Message-ID: <2808ab37-51cc-b4d5-5fba-a01bc0dcba62@rock-chips.com>
References: <20200721152443.37602-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152443.37602-1-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/7/21 下午11:24, Jagan Teki wrote:
> Series enable hardware enablement on ROCKPi N8/N10
> boards.
>
> - USB 3.0 Host
> - USB 2.0 Host
> - USB 3.0 Gadget
> - USB 2.0 Gadget
> - HDMI Out
> - PCIe
>
> Note: dts patches are Synced from linux-next and few from mailing list.
>
> Jagan Teki (8):
>    ARM: dts: rockchip: Sync ROCKPi N8/N10 dts(i) from Linux
>    ARM: dts: rockchip: Add usb host0 ohci node for rk3288
>    ARM: dts: rockchip: Add USB for RockPI N8/N10
>    arm: dts: rockchip: Add HDMI out for RockPI N8/N10
>    arm64: dts: rockchip: Add PCIe for RockPI N10
>    rockchip: rock-pi-n10: Enable PCI/NVME
>    arm64: dts: rockchip: Add u-boot,spl-boot-order for ROCKPi N10
>    rockchip: rock-p-n8/n10: Disable RAM_ROCKCHIP_DEBUG
>
> Suniel Mahesh (4):
>    arm: dts: rockchip: Sync rk3288 dtsi from linux
>    rockchip: rock-pi-n10: Enable on board devices
>    rockchip: evb_rk3288: Add console settings
>    rockchip: rock-pi-n8: Enable on board devices
>
>   arch/arm/dts/rk3288-rock-pi-n8.dts            |   2 +-
>   arch/arm/dts/rk3288-vmarc-som.dtsi            | 132 +++++++-----
>   arch/arm/dts/rk3288.dtsi                      |  17 +-
>   .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |   6 +
>   arch/arm/dts/rk3399pro-rock-pi-n10.dts        |   6 +-
>   arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 201 ++++++++++++++----
>   .../dts/rockchip-radxa-dalang-carrier.dtsi    |  95 ++++++---
>   configs/rock-pi-n10-rk3399pro_defconfig       |  25 +++
>   configs/rock-pi-n8-rk3288_defconfig           |  17 ++
>   include/configs/evb_rk3288.h                  |   6 +-
>   10 files changed, 379 insertions(+), 128 deletions(-)
>
Applied to u-boot-rockchip master for this patch set, thanks.

From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v3 5/5] doc: boards: Add rockchip documentation
Date: Fri, 18 Oct 2019 13:20:52 +0100
Message-ID: <b1742ff2-9ea2-22cc-5315-d4c1e4933fe9@arm.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191017190710.29985-6-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, "Matwey V . Kornilov" <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 17/10/2019 20:07, Jagan Teki wrote:
> Rockchip has documentation file, doc/README.rockchip but
> which is not so readable to add or understand the existing
> contents. Even the format that support is legacy readme
> in U-Boot.
> 
> Add rockchip specific documentation file using new rst
> format, which describes the information about Rockchip
> supported boards and it's usage steps.
> 
> Added minimal information about rk3288, rk3328, rk3368
> and rk3399 boards and usage. This would indeed updated
> further based on the requirements and updates.
> 
> Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Cc: Matwey V. Kornilov <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
>   doc/board/rockchip/index.rst    |  10 +++
>   doc/board/rockchip/rockchip.rst | 125 ++++++++++++++++++++++++++++++++
>   2 files changed, 135 insertions(+)
>   create mode 100644 doc/board/rockchip/index.rst
>   create mode 100644 doc/board/rockchip/rockchip.rst
> 
> diff --git a/doc/board/rockchip/index.rst b/doc/board/rockchip/index.rst
> new file mode 100644
> index 0000000000..0c377e9bbb
> --- /dev/null
> +++ b/doc/board/rockchip/index.rst
> @@ -0,0 +1,10 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> +
> +Rockchip
> +========
> +
> +.. toctree::
> +   :maxdepth: 2
> +
> +   rockchip
> diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
> new file mode 100644
> index 0000000000..782a0f1c7a
> --- /dev/null
> +++ b/doc/board/rockchip/rockchip.rst
> @@ -0,0 +1,125 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> +
> +ROCKCHIP
> +========
> +
> +About this
> +----------
> +
> +This document describes the information about Rockchip supported boards
> +and it's usage steps.
> +
> +Rockchip boards
> +---------------
> +
> +Rockchip is SoC solutions provider for tablets & PCs, streaming media
> +TV boxes, AI audio & vision, IoT hardware.
> +
> +A wide range of Rockchip SoCs with associated boardsare supported in
> +mainline U-Boot.
> +
> +List of mainline supported rockchip boards:
> +
> +* rk3288
> +     - Evb-RK3288
> +     - Firefly-RK3288
> +     - mqmaker MiQi
> +     - Phytec RK3288 PCM-947
> +     - PopMetal-RK3288
> +     - Radxa Rock 2 Square
> +     - Tinker-RK3288
> +     - Google Jerry
> +     - Google Mickey
> +     - Google Minnie
> +     - Google Speedy
> +     - Amarula Vyasa-RK3288
> +* rk3328
> +     - Rockchip RK3328 EVB
> +     - Pine64 Rock64
> +* rk3368
> +     - GeekBox
> +     - PX5 EVB
> +     - Rockchip sheep board
> +     - Theobroma Systems RK3368-uQ7 SoM
> +* rk3399
> +     - 96boards RK3399 Ficus
> +     - 96boards Rock960
> +     - Firefly-RK3399 Board
> +     - Firefly ROC-RK3399-PC Board
> +     - FriendlyElec NanoPC-T4
> +     - FriendlyElec NanoPi M4
> +     - FriendlyARM NanoPi NEO4
> +     - Google Bob
> +     - Khadas Edge
> +     - Khadas Edge-Captain
> +     - Khadas Edge-V
> +     - Orange Pi RK3399 Board
> +     - Pine64 RockPro64
> +     - Radxa ROCK Pi 4
> +     - Rockchip RK3399 Evaluation Board
> +     - Theobroma Systems RK3399-Q7 SoM
> +
> +Building
> +--------
> +
> +TF-A
> +^^^^
> +
> +TF-A would require to build for ARM64 Rockchip SoCs platforms.
> +
> +To build TF-A::
> +
> +        git clone https://github.com/ARM-software/arm-trusted-firmware.git

Nit: it's probably worth updating that to 
https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git

Robin.

> +        cd arm-trusted-firmware
> +        make realclean
> +        make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
> +
> +Specify the PLAT= with desired rockchip platform to build TF-A for.
> +
> +U-Boot
> +^^^^^^
> +
> +To build rk3328 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-rk3328_defconfig
> +        make
> +
> +To build rk3288 boards::
> +
> +        make evb-rk3288_defconfig
> +        make
> +
> +To build rk3368 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-px5_defconfig
> +        make
> +
> +To build rk3399 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-rk3399_defconfig
> +        make
> +
> +SD Card Flashing
> +----------------
> +
> +To write an image that boots from an SD card (assumed to be /dev/sda):
> +
> +TPL + SPL::
> +
> +        sudo dd if=u-boot-rockchip-with-tpl-spl.bin of=/dev/sda seek=64
> +        sync
> +
> +TODO
> +----
> +
> +- Add SPL-alone SD Card flashing steps
> +- Add rockchip idbloader image building
> +- Describe steps for eMMC flashing
> +- Add missing SoC's with it boards list
> +
> +.. Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> +.. Thu Oct 17 22:36:14 IST 2019
> 

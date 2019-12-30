From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
Date: Mon, 30 Dec 2019 11:41:14 +0300
Message-ID: <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191230082819.30191-8-jagan@amarulasolutions.com>
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Akash Gajjar <akash@openedev.com>, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

Hello,

Thank you for the patch set.
Currently, I have the following concern about documentation and
overall proposed u-boot deploy procedure.

There is a use case, when I have to use Rockchip proprietary TPL
binary and deploy it instead of u-boot's one together with u-boot SPL
and ITB images.
It is required for debugging purposes because unfortunately u-boot TPL
is usually less stable that proprietary one. And switching the TPL
binary is basically the first step when I see random strange crashes.
It is a good way to locate an issue origin.

Could we somehow ensure that this backup deployment plan is still
possible and documented in the text here? It would be great if the
user could learn the procedure from the text, not from the source
code, recovering correct offsets.

=D0=BF=D0=BD, 30 =D0=B4=D0=B5=D0=BA. 2019 =D0=B3. =D0=B2 11:28, Jagan Teki =
<jagan@amarulasolutions.com>:
>
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
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  doc/board/rockchip/index.rst    |  10 +++
>  doc/board/rockchip/rockchip.rst | 128 ++++++++++++++++++++++++++++++++
>  2 files changed, 138 insertions(+)
>  create mode 100644 doc/board/rockchip/index.rst
>  create mode 100644 doc/board/rockchip/rockchip.rst
>
> diff --git a/doc/board/rockchip/index.rst b/doc/board/rockchip/index.rst
> new file mode 100644
> index 0000000000..0c377e9bbb
> --- /dev/null
> +++ b/doc/board/rockchip/index.rst
> @@ -0,0 +1,10 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> +
> +Rockchip
> +=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +.. toctree::
> +   :maxdepth: 2
> +
> +   rockchip
> diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchi=
p.rst
> new file mode 100644
> index 0000000000..625155e432
> --- /dev/null
> +++ b/doc/board/rockchip/rockchip.rst
> @@ -0,0 +1,128 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> +
> +ROCKCHIP
> +=3D=3D=3D=3D=3D=3D=3D=3D
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
> +        git clone https://github.com/ARM-software/arm-trusted-firmware.g=
it
> +        cd arm-trusted-firmware
> +        make realclean
> +        make CROSS_COMPILE=3Daarch64-linux-gnu- PLAT=3Drk3399
> +
> +Specify the PLAT=3D with desired rockchip platform to build TF-A for.
> +
> +U-Boot
> +^^^^^^
> +
> +To build rk3328 boards::
> +
> +        export BL31=3D/path/to/arm-trusted-firmware/to/bl31.elf
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
> +        export BL31=3D/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-px5_defconfig
> +        make
> +
> +To build rk3399 boards::
> +
> +        export BL31=3D/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-rk3399_defconfig
> +        make
> +
> +Flashing
> +--------
> +
> +SD Card
> +^^^^^^^
> +
> +All rockchip platforms, except rk3128 (which doesn't use SPL) are now
> +supporting single boot image using binman and pad_cat.
> +
> +To write an image that boots from an SD card (assumed to be /dev/sda)::
> +
> +        sudo dd if=3Du-boot-rockchip.bin of=3D/dev/sda seek=3D64
> +        sync
> +
> +TODO
> +----
> +
> +- Add rockchip idbloader image building
> +- Describe steps for eMMC flashing
> +- Add missing SoC's with it boards list
> +
> +.. Jagan Teki <jagan@amarulasolutions.com>
> +.. Thu Oct 17 22:36:14 IST 2019
> --
> 2.18.0.321.gffc6fa0e3
>


--=20
With best regards,
Matwey V. Kornilov

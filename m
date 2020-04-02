From: Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
Date: Thu, 2 Apr 2020 15:56:16 +0200
Message-ID: <20200402155616.013f6bf8@crub>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
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
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Mark Kettenis <mark.kettenis@xs4all.nl>, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Thu,  2 Apr 2020 17:11:20 +0530
Jagan Teki jagan@amarulasolutions.com wrote:
...
> Jagan Teki (5):
>   clk: rk3399: Set empty for vopl assigned-clocks
>   video: rockchip: Fix vop modes for rk3399
>   rockchip: Enable pre console for rk3399
>   rockchip: Enable HDMI output on rk3399 board w/ HDMI
>   video: rockchip: Support 4K resolution for rk3399, HDMI
> 
>  arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
>  arch/arm/mach-rockchip/Kconfig                  |  1 +
>  common/Kconfig                                  |  1 +
>  configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
>  configs/roc-pc-rk3399_defconfig                 |  6 ++++++
>  configs/rock960-rk3399_defconfig                |  7 +++++++
>  drivers/clk/rockchip/clk_rk3399.c               |  7 +++++++
>  drivers/video/rockchip/Kconfig                  |  2 ++
>  drivers/video/rockchip/rk3399_vop.c             |  2 --
>  drivers/video/rockchip/rk_vop.c                 |  4 ++++
>  include/configs/evb_rk3399.h                    |  5 +++++
>  include/configs/rock960_rk3399.h                |  5 +++++
>  14 files changed, 70 insertions(+), 2 deletions(-)

Series applied to u-boot-video/video-fixes-v2020.04, thanks!

--
Anatolij

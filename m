From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] rk3399: Add BOOTENV_SF command
Date: Sat, 27 Jun 2020 22:06:52 +0800
Message-ID: <892fe4fd-c7be-6b72-29ce-5715777b31de@rock-chips.com>
References: <20200608141708.31844-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200608141708.31844-1-jagan@amarulasolutions.com>
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


On 2020/6/8 下午10:17, Jagan Teki wrote:
> Add missing BOOTENV_SF command in rk3399 config.
>
> Fix it.
>
> Fixes: f263b860acf8 ("rk3399: Enable SF distro bootcmd")
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reported-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
Applied to u-boot-rockchip master branch.
> ---
>   include/configs/rk3399_common.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
> index f0ae6e67a7..e63ebb14f7 100644
> --- a/include/configs/rk3399_common.h
> +++ b/include/configs/rk3399_common.h
> @@ -67,6 +67,7 @@
>   	"partitions=" PARTS_DEFAULT \
>   	ROCKCHIP_DEVICE_SETTINGS \
>   	BOOTENV \
> +	BOOTENV_SF \
>   	"altbootcmd=" \
>   		"setenv boot_syslinux_conf extlinux/extlinux-rollback.conf;" \
>   		"run distro_bootcmd\0"

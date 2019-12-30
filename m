From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 04/11] rk3399: Add boot flash script offet, size
Date: Mon, 30 Dec 2019 11:06:41 +0800
Message-ID: <0e99c721-5f46-58bb-a14a-961ce6c11691@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-5-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Most of the SPI flash devices in rockchip (rk3399)
> are 16MiB size. So, let's use the script offset at
> the end of 8K.
>
> This way it cannot overlap any offsets being used
> by software components in flash layout.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   include/configs/rk3399_common.h | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
> index 127ca1f09c..92eb5cb750 100644
> --- a/include/configs/rk3399_common.h
> +++ b/include/configs/rk3399_common.h
> @@ -48,6 +48,8 @@
>   
>   #define ENV_MEM_LAYOUT_SETTINGS \
>   	"scriptaddr=0x00500000\0" \
> +	"script_offset_f=0xffe000\0" \
> +	"script_size_f=0x2000\0" \
>   	"pxefile_addr_r=0x00600000\0" \
>   	"fdt_addr_r=0x01f00000\0" \
>   	"kernel_addr_r=0x02080000\0" \

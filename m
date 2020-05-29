From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v6 04/16] arm: mach-rockchip: bind sub-nodes for
 rk3399_syscon
Date: Fri, 29 May 2020 18:12:55 +0800
Message-ID: <575e469a-9b90-6e12-f7b9-95d53aa2487d@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033220.20047-5-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200526033220.20047-5-frank.wang@rock-chips.com>
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
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/26 上午11:32, Frank Wang wrote:
> There are some sub-nodes under the grf DT, so add bind callback
> function in rk3399 syscon driver to scan them recursively.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> index 259ca44d68..f27b0ced82 100644
> --- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> +++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> @@ -20,6 +20,9 @@ static const struct udevice_id rk3399_syscon_ids[] = {
>   U_BOOT_DRIVER(syscon_rk3399) = {
>   	.name = "rk3399_syscon",
>   	.id = UCLASS_SYSCON,
> +#if !CONFIG_IS_ENABLED(OF_PLATDATA)
> +	.bind = dm_scan_fdt_dev,
> +#endif
>   	.of_match = rk3399_syscon_ids,
>   };
>   

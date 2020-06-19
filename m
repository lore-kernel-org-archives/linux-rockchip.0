From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bRESEND_PATCH=5d_Revert_=22clk=3a_rockchip=3a_fix?=
 =?UTF-8?Q?_wrong_mmc_sample_phase_shift_for_rk3328=22=e3=80=90=e8=af=b7?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5s?=
 =?UTF-8?B?aW49cm9jay1jaGlwcy5jb21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
Date: Fri, 19 Jun 2020 17:30:27 +0800
Message-ID: <0dd5e173-a656-a1be-0a44-1ea8a03ca6fd@rock-chips.com>
References: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de, mturquette@baylibre.com, sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/19 1:56, Robin Murphy wrote:
> This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.
> 
> According to a subsequent revert in the vendor kernel, the original
> change was based on unclear documentation and was in fact incorrect.
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> Emprically, my board's HS200 eMMC at 200MHZ apparently gets lucky with a
> phase where this had no impact, but limiting max-frequency to 150MHz to
> match the nominal capability of the I/O pins made it virtually unusable,
> constantly throwing errors and retuning. With this revert, it starts
> behaving perfectly at 150MHz too.
> 
> Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> Resending with the edited commit log I actually meant, rather than the
> earlier draft I managed to generate the previuous patch from, since that
> one seems to have slipped through the cracks anyway.
> 
> ybetter commit message
>   drivers/clk/rockchip/clk-rk3328.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
> index c186a1985bf4..2429b7c2a8b3 100644
> --- a/drivers/clk/rockchip/clk-rk3328.c
> +++ b/drivers/clk/rockchip/clk-rk3328.c
> @@ -808,22 +808,22 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
>   	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
>   	    RK3328_SDMMC_CON0, 1),
>   	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
> -	    RK3328_SDMMC_CON1, 0),
> +	    RK3328_SDMMC_CON1, 1),
>   
>   	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
>   	    RK3328_SDIO_CON0, 1),
>   	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
> -	    RK3328_SDIO_CON1, 0),
> +	    RK3328_SDIO_CON1, 1),
>   
>   	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
>   	    RK3328_EMMC_CON0, 1),
>   	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
> -	    RK3328_EMMC_CON1, 0),
> +	    RK3328_EMMC_CON1, 1),
>   
>   	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
>   	    RK3328_SDMMC_EXT_CON0, 1),
>   	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
> -	    RK3328_SDMMC_EXT_CON1, 0),
> +	    RK3328_SDMMC_EXT_CON1, 1),
>   };
>   
>   static const char *const rk3328_critical_clocks[] __initconst = {
> 

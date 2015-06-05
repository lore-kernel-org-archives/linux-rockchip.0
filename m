From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] ARM: rockchip: ensure CPU to enter WIF state
Date: Fri, 05 Jun 2015 14:32:27 +0800
Message-ID: <5571427B.1040406@rock-chips.com>
References: <1433479677-18086-1-git-send-email-wxt@rock-chips.com> <1433479677-18086-3-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433479677-18086-3-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@arm.linux.org.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, dianders@chromium.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Subject typo WIF/WFI.

On 06/05/2015 12:47 PM, Caesar Wang wrote:
> In idle mode, core1/2/3 of Cortex-A17 should be either power off or in
> WFI/WFE state.
> we can delay 1ms to ensure the CPU enter WFI state.
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
>   arch/arm/mach-rockchip/platsmp.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
> index 1230d3d..978c357 100644
> --- a/arch/arm/mach-rockchip/platsmp.c
> +++ b/arch/arm/mach-rockchip/platsmp.c
> @@ -316,6 +316,9 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
>   #ifdef CONFIG_HOTPLUG_CPU
>   static int rockchip_cpu_kill(unsigned int cpu)
>   {
> +	/* ensure CPU can enter the WFI/WFE state */
> +	mdelay(1);
> +
Does it matter if core is not in WFI state when we want to power down it?

Thanks,
- Kever
>   	pmu_set_power_domain(0 + cpu, false);
>   	return 1;
>   }

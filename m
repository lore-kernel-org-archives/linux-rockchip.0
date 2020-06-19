From: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] thermal/drivers/cpufreq_cooling: Fix wrong frequency
 converted from power
Date: Fri, 19 Jun 2020 11:27:17 +0530
Message-ID: <20200619055717.egfs23qywj4kmjok@vireshk-i7>
References: <20200619015126.15002-1-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200619015126.15002-1-finley.xiao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: xf@rock-chips.com, heiko@sntech.de, amit.kachhap@gmail.com, daniel.lezcano@linaro.org, javi.merino@kernel.org, rui.zhang@intel.com, amit.kucheria@verdurent.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, cl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 19-06-20, 09:51, Finley Xiao wrote:
> The function cpu_power_to_freq is used to find a frequency and set the
> cooling device to consume at most the power to be converted. For example,
> if the power to be converted is 80mW, and the em table is as follow.
> struct em_cap_state table[] = {
> 	/* KHz     mW */
> 	{ 1008000, 36, 0 },
> 	{ 1200000, 49, 0 },
> 	{ 1296000, 59, 0 },
> 	{ 1416000, 72, 0 },
> 	{ 1512000, 86, 0 },
> };
> The target frequency should be 1416000KHz, not 1512000KHz.
> 

Cc: v4.13+ <stable@vger.kernel.org> # v4.13+

> Fixes: 349d39dc5739 ("thermal: cpu_cooling: merge frequency and power tables")
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> ---
>  drivers/thermal/cpufreq_cooling.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
> index 9e124020519f..6c0e1b053126 100644
> --- a/drivers/thermal/cpufreq_cooling.c
> +++ b/drivers/thermal/cpufreq_cooling.c
> @@ -123,12 +123,12 @@ static u32 cpu_power_to_freq(struct cpufreq_cooling_device *cpufreq_cdev,
>  {
>  	int i;
>  
> -	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
> -		if (power > cpufreq_cdev->em->table[i].power)
> +	for (i = cpufreq_cdev->max_level; i >= 0; i--) {
> +		if (power >= cpufreq_cdev->em->table[i].power)
>  			break;
>  	}
>  
> -	return cpufreq_cdev->em->table[i + 1].frequency;
> +	return cpufreq_cdev->em->table[i].frequency;
>  }

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

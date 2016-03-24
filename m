From: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2] cpufreq: rockchip: add driver
Date: Thu, 24 Mar 2016 12:13:24 +0530
Message-ID: <20160324064324.GG22062@vireshk-i7>
References: <1458647848-48999-1-git-send-email-xf@rock-chips.com>
 <1458699487-58470-1-git-send-email-xf@rock-chips.com>
 <20160323044033.GQ5272@vireshk-i7>
 <56F35894.3020106@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pm-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <56F35894.3020106@rock-chips.com>
Sender: linux-pm-owner@vger.kernel.org
To: Feng Xiao <xf@rock-chips.com>
Cc: linux@arm.linux.org.uk, heiko@sntech.de, rjw@rjwysocki.net, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, wxt@rock-chips.com, zyw@rock-chips.com, jay.xu@rock-chips.com, tim.chen@rock-chips.com, xxx@rock-chips.com, huangtao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 24-03-16, 11:01, Feng Xiao wrote:
> hi all,
>      I found that it could match the cpufreq-dt driver succesfully only with
> the following changes.
> --- a/arch/arm64/boot/dts/rockchip/rk3366.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3366.dtsi
> @@ -139,6 +139,10 @@
>                 };
>         };
> 
> +       cpufreq-dt {   //the node name must be cpufreq-dt
> +               compatible = "rockchip,cpufreq";  //  the compatible name is
> insignificant
> +       };
> +

Its not allowed to create a DT node for a dummy device and so we never
followed this way.

I have just sent a patchset and cc'd you:
"[PATCH 0/3] cpufreq: dt: Create platform device from generic code"

and so this patch shall get replaced now.

-- 
viresh

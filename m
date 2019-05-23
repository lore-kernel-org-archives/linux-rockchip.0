From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
Date: Thu, 23 May 2019 15:18:56 +0200
Message-ID: <ac2f06ac-2bf5-7af6-06c3-37b865c43738@collabora.com>
References: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
 <20190523131207.GC17245@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190523131207.GC17245@sirena.org.uk>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>, Eduardo Valentin <edubezval@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com, mgalka@collabora.com, matthew.hart@linaro.org, khilman@baylibre.com, Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mark,

On 23/5/19 15:12, Mark Brown wrote:
> On Wed, May 22, 2019 at 07:23:09PM -0700, kernelci.org bot wrote:
> 
>>   Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
>>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error
> 
> It looks like this issue has persisted for a while without any kind of
> fix happening - given that the bisection has identified this commit as
> causing the regression and confirmed that reverting it fixes shouldn't
> we just revert?  My guess would be that there's some error with the
> pinctrl settings in the DT for the board.
> 

After some discussion Heiko sent a patch that reverts the offending commit one
day ago [1] and it's waiting for maintainer to pick-up the patch.

The reason why we think is best reverting that fix it is explained here [2]

[1] https://lkml.org/lkml/2019/5/22/467
[2] https://lkml.org/lkml/2019/4/30/270

Thanks,
 Enric

From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 9/9] arm64: dts: exynos: Replace deprecated property for
 Exynos bus
Date: Thu, 19 Dec 2019 21:22:20 +0100
Message-ID: <20191219202220.GC21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055107epcas1p44d46bdea7b326b86689f326742f5444a@epcas1p4.samsung.com>
 <20191217055738.28445-10-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-10-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 17, 2019 at 02:57:38PM +0900, Chanwoo Choi wrote:
> Replace the property related to devfreq and devfreq-event device
> to remove the deprecated property name.
> - Replace 'devfreq' with 'exynos,parent-bus' property
>   for getting the parent devfreq device of exynos-bus.
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
>   for getting the devfreq-event device to monitor bus utilization.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

I'll pick it up the next cycle after driver get merged.

Best regards,
Krzysztof

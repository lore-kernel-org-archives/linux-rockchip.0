From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 8/9] ARM: dts: exynos: Replace deprecated property for
 Exynos bus and DMC
Date: Thu, 19 Dec 2019 21:21:26 +0100
Message-ID: <20191219202126.GB21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6@epcas1p4.samsung.com>
 <20191217055738.28445-9-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-9-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 17, 2019 at 02:57:37PM +0900, Chanwoo Choi wrote:
> Replace the property related to devfreq and devfreq-event device
> to remove the deprecated property name.
> - Replace 'devfreq' with 'exynos,parent-bus' property
>   for getting the parent devfreq device of exynos-bus.
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
>   for getting the devfreq-event device to monitor bus utilization.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
>  arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++++-----
>  .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++++-----
>  arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++++-----
>  .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++++-----
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++++++----------
>  6 files changed, 53 insertions(+), 53 deletions(-)
> 

It will have to wait till next release, after driver changes get
accepted.

Best regards,
Krzysztof

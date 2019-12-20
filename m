From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 04/11] dt-bindings: devfreq: exynos-bus: Replace
 deprecated 'devfreq' and 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:43:50 +0100
Message-ID: <20191220084350.GA20583@pi3>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p3051f7916542b7234aac5273e0baab83b@epcas1p3.samsung.com>
 <20191220002430.11995-5-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191220002430.11995-5-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: robh+dt@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 20, 2019 at 09:24:23AM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq' and 'devfreq-events' property,
> replace with new following properties
> - Replace 'devfreq' with 'exynos,parent-bus' property
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../bindings/devfreq/exynos-bus.txt           | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add Rock Pi N10
 binding
Date: Wed, 18 Dec 2019 16:15:36 -0600
Message-ID: <20191218221536.GA20127@bogus>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
 <20191216174711.17856-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191216174711.17856-2-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 16 Dec 2019 23:17:08 +0530, Jagan Teki wrote:
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Compatible carrier board from Radxa.
> 
> VMARC RK3399Pro SOM need to mount on top of dalang carrier
> board for making Rock PI N10 SBC.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - Move som binding on board side
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

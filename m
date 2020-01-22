From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3308
Date: Wed, 22 Jan 2020 10:05:53 -0600
Message-ID: <20200122160553.GA10824@bogus>
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-3-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200116152230.29831-3-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 16 Jan 2020 16:22:30 +0100, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc"
> for mmc nodes on a rk3308 platform to rockchip-dw-mshc.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

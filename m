From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add PCIe for RockPI N10
Date: Thu, 23 Jul 2020 00:21:07 +0530
Message-ID: <CAMty3ZDkvRGn6a54ryVFNJOwm+X6YXW-TxSjO+kC9o2kshRxtg@mail.gmail.com>
References: <20200720110230.367985-1-jagan@amarulasolutions.com> <20200720110230.367985-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200720110230.367985-3-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, devicetree <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Mon, Jul 20, 2020 at 4:33 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This patch adds support to enable PCIe for RockPI N10.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 41 ++++++++++++++++++-
>  1 file changed, 39 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> index ebccc4a153a2..b415b8a16c78 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> @@ -11,6 +11,19 @@
>
>  / {
>         compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
> +
> +

Sorry for this extra space, let me know so that I can resend next version.

Jagan.

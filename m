From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v3 03/13] rockchip: dts: rk3399: Create initial
 rk3399-u-boot.dtsi
Date: Fri, 26 Apr 2019 18:51:45 +0530
Message-ID: <CAMty3ZAoTizHUXXAwKXov2SBVYFQfQj2rrSm1zK2i08O+wpdfQ@mail.gmail.com>
References: <20190425173427.13445-1-jagan@amarulasolutions.com>
 <20190425173427.13445-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190425173427.13445-4-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 25, 2019 at 11:04 PM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>
> u-boot,dm-pre-reloc is required for SDMMC booted rk3399 boards and
> which is U-Boot specific devicetrees binding.
>
> Move it on global rk3399-u-boot.dtsi file and rest of the U-Boot
> bindings will move it future based on the requirement.
>
> This would help to sync the devicetrees from Linux whenever required
> instead of adding specific nodes.
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> ---
>  arch/arm/dts/rk3399-evb.dts     | 1 -
>  arch/arm/dts/rk3399-firefly.dts | 1 -
>  arch/arm/dts/rk3399-puma.dtsi   | 1 -
>  arch/arm/dts/rk3399-u-boot.dtsi | 8 ++++++++
>  4 files changed, 8 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
> index ce004d0d18..9162f3dd50 100644
> --- a/arch/arm/dts/rk3399-evb.dts
> +++ b/arch/arm/dts/rk3399-evb.dts
> @@ -155,7 +155,6 @@
>  };
>
>  &sdmmc {
> -       u-boot,dm-pre-reloc;
>         bus-width = <4>;
>         status = "okay";
>  };
> diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
> index f90e7e88db..46f2ffaf8d 100644
> --- a/arch/arm/dts/rk3399-firefly.dts
> +++ b/arch/arm/dts/rk3399-firefly.dts
> @@ -592,7 +592,6 @@
>  };
>
>  &sdmmc {
> -       u-boot,dm-pre-reloc;
>         bus-width = <4>;
>         status = "okay";
>  };
> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
> index 8304f67192..9049694243 100644
> --- a/arch/arm/dts/rk3399-puma.dtsi
> +++ b/arch/arm/dts/rk3399-puma.dtsi
> @@ -492,7 +492,6 @@
>  };
>
>  &sdmmc {
> -       u-boot,dm-pre-reloc;

We need to explicitly include rk3399-u-boot.dtsi to these files since
the SoC name is rockchip, I'm sending other series for these changes.
and I have send v3.1 patches for only this change [1] and rest
unchanged.

Sorry for not noticing before.

[1] https://patchwork.ozlabs.org/patch/1091534/

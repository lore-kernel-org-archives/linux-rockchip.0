From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: rk3399 rockchip pcie power domain is saying unsupported
Date: Tue, 7 Jan 2020 18:30:18 +0000
Message-ID: <6b476f25-e3b9-2aaf-c46f-c28118924120@arm.com>
References: <CANAwSgRXd=w87CKO4WQz7ZRAk+un7ctTPCi5XSa7GfNDhjy0YQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CANAwSgRXd=w87CKO4WQz7ZRAk+un7ctTPCi5XSa7GfNDhjy0YQ@mail.gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Anand Moon <linux.amoon@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 07/01/2020 6:00 pm, Anand Moon wrote:
> Hi All,
> 
> On my rock960 I want to add power domain feature for pcie node using
> following patch. [0] https://patchwork.kernel.org/patch/9322549/
> I also tried to add some more cru to see below
> but the power domain summary shows unsupported

Doesn't that just mean that the EHCI and PCIe drivers haven't enabled 
RPM (or have explicitly disabled it)?

Robin.

> # cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> ...
> pd_sdioaudio                    off-0
>      /devices/platform/fe310000.dwmmc                    suspended
>      /devices/platform/ff8a0000.i2s                      suspended
> pd_perihp                       on
>      /devices/platform/fe380000.usb                      unsupported
>      /devices/platform/fe3c0000.usb                      unsupported
>      /devices/platform/fe3a0000.usb                      suspended
>      /devices/platform/fe3e0000.usb                      suspended
>      /devices/platform/f8000000.pcie                     unsupported
> pd_sd                           on
>      /devices/platform/fe320000.dwmmc                    active
> pd_gmac                         off-0
> ...
> can any one share more inputs.
> ----
> @@ -1049,6 +1056,19 @@
>                                           <&cru SCLK_SDMMC>;
>                                  pm_qos = <&qos_sd>;
>                          };
> +                       pd_perihp@RK3399_PD_PERIHP {
> +                               reg = <RK3399_PD_PERIHP>;
> +                               clocks = <&cru ACLK_PERIHP>,
> +                                        <&cru SCLK_PCIEPHY_REF>,
> +                                        <&cru ACLK_PERF_PCIE>,
> +                                        <&cru ACLK_PCIE>,
> +                                        <&cru PCLK_PCIE>,
> +                                        <&cru SCLK_PCIE_PM>;
> +                               pm_qos = <&qos_perihp>,
> +                                        <&qos_pcie>,
> +                                        <&qos_usb_host0>,
> +                                        <&qos_usb_host1>;
> +                       };
> 
> -Anand
> 

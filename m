From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] ARM: errata: add support for A12/A17 errata CR711784
Date: Tue, 23 Apr 2019 11:19:25 +0100
Message-ID: <c28d37ab-b6d1-4bd0-9e03-dcf9ce499fc8@arm.com>
References: <20190419221803.99322-1-dianders@chromium.org>
 <20190419221803.99322-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190419221803.99322-2-dianders@chromium.org>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Russell King <linux@armlinux.org.uk>
Cc: mark.rutland@arm.com, Salva.Climent@arm.com, linux-rockchip@lists.infradead.org, sonnyrao@chromium.org, will.deacon@arm.com, bbatacha@arm.com, mka@chromium.org, heiko@sntech.de, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>, Palmer Dabbelt <palmer@sifive.com>, Florian Fainelli <f.fainelli@gmail.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Marc Zyngier <marc.zyngier@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-arm-kernel@lists.infradead.org, Tony Lindgren <tony@atomide.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On 19/04/2019 23:18, Douglas Anderson wrote:
> This adds a code for turning on chicken bit 11, which appears to avoid
> a potential CPU deadlock that could occur.  The exact set of
> instruction needed to trigger this errata is not totaly known but we
> have a high level of confidence that the problem is fixed by setting
> chicken bit 11.
> 
> All details are in http://crbug.com/711784
> 
> This erratum has no known number and thus I have tagged it CR711784
> (after the Chrome OS bug number).  I have created separate A12 / A17
> configs to match how the rest of the A12 / A17 errata is handled.

The written-up workarounds for 85727[12] do actually say to set both 
bits 10 and 11 of the diagnostic register, so you could probably just 
fold this into the first patch and not have to worry about what to call it.

Robin.

> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>   arch/arm/Kconfig      | 18 ++++++++++++++++++
>   arch/arm/mm/proc-v7.S | 10 ++++++++++
>   2 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 4376fe74f95e..34ec9039206b 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1181,6 +1181,13 @@ config ARM_ERRATA_857271
>   	  hang. The workaround is expected to have a negligible performance
>   	  impact.
>   
> +config ARM_ERRATA_CR711784_A12
> +	bool "ARM errata: A12: conditional instructions can lead to a CPU hang"
> +	depends on CPU_V7
> +	help
> +	  This option enables the workaround for a Cortex-A12 erratum without a
> +	  number. The problems are best described in https://crbug.com/711784
> +
>   config ARM_ERRATA_852421
>   	bool "ARM errata: A17: DMB ST might fail to create order between stores"
>   	depends on CPU_V7
> @@ -1212,6 +1219,17 @@ config ARM_ERRATA_857272
>   	  config option from the A12 erratum due to the way errata are checked
>   	  for and handled.
>   
> +config ARM_ERRATA_CR711784_A17
> +	bool "ARM errata: A17: conditional instructions can lead to a CPU hang"
> +	depends on CPU_V7
> +	help
> +	  This option enables the workaround for a Cortex-A17 erratum without a
> +	  number. The problems are best described in https://crbug.com/711784
> +	  This erratum is not known to be fixed in any A17 revision.
> +	  This is identical to Cortex-A12 erratum CR711784.  It is a separate
> +	  config option from the A12 erratum due to the way errata are checked
> +	  for and handled.
> +
>   endmenu
>   
>   source "arch/arm/common/Kconfig"
> diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
> index cd2accbab844..a5156ea734ee 100644
> --- a/arch/arm/mm/proc-v7.S
> +++ b/arch/arm/mm/proc-v7.S
> @@ -396,6 +396,11 @@ __ca12_errata:
>   	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
>   	orr	r10, r10, #1 << 10		@ set bit #10
>   	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
> +#endif
> +#ifdef CONFIG_ARM_ERRATA_CR711784_A12
> +	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
> +	orr	r10, r10, #1 << 11		@ set bit #11
> +	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
>   #endif
>   	b	__errata_finish
>   
> @@ -416,6 +421,11 @@ __ca17_errata:
>   	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
>   	orr	r10, r10, #1 << 10		@ set bit #10
>   	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
> +#endif
> +#ifdef CONFIG_ARM_ERRATA_CR711784_A17
> +	mrc	p15, 0, r10, c15, c0, 1		@ read diagnostic register
> +	orr	r10, r10, #1 << 11		@ set bit #11
> +	mcr	p15, 0, r10, c15, c0, 1		@ write diagnostic register
>   #endif
>   	b	__errata_finish
>   
> 

From: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 1/7] firmware: rockchip: sip: Add rockchip SIP runtime
 service
Date: Tue, 26 Jul 2016 19:29:33 +0100
Message-ID: <20160726182933.GA2288@leverpostej>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
 <1469178440-4668-2-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1469178440-4668-2-git-send-email-hl@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Lin Huang <hl@rock-chips.com>
Cc: heiko@sntech.de, tixy@linaro.org, typ@rock-chips.com, linux-rockchip@lists.infradead.org, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, xsf@rock-chips.com, cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 22, 2016 at 05:07:14PM +0800, Lin Huang wrote:
> +config ROCKCHIP_SIP
> +	bool "Rockchip SIP interface"
> +	depends on ARM64 && ARM_PSCI_FW
> +	help
> +	  Say Y here if you want to enable SIP callbacks for Rockchip platforms
> +	  This option enables support for communicating with the ATF.

[...]

> +typedef unsigned long (psci_fn)(unsigned long, unsigned long,
> +				unsigned long, unsigned long);
> +asmlinkage psci_fn __invoke_psci_fn_smc;

Use the SMCCC wrappers (see include/linux/arm-smccc.h).

This is *not* PSCI, even if the same ATF FW provides both services.

NAK for using the PSCI functions.

Thanks,
Mark.

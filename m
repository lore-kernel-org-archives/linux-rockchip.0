From: Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH] PM / AVS: rockchip-io: depend on CONFIG_POWER_AVS
Date: Tue, 26 May 2015 16:21:34 -0700
Message-ID: <7ha8wrorgh.fsf@deeprootsystems.com>
References: <28649509.lINlAh7Sts@phil>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <28649509.lINlAh7Sts@phil> (Heiko Stuebner's message of "Sat, 23
	May 2015 15:41:30 +0200")
Sender: linux-pm-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Nishanth Menon <nm@ti.com>, Sebastian Reichel <sre@kernel.org>, Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>, David Woodhouse <dwmw2@infradead.org>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, amstan@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Heiko Stuebner <heiko@sntech.de> writes:

> The rockchip io-domain driver currently only depends on ARCH_ROCKCHIP
> itself. This makes it possible to select the power-domain driver, but
> not the POWER_AVS class and results in the iodomain-driver not getting
> build in this case.
>
> So add the additional dependency, which also results in the driver
> config option now being placed nicely into the AVS submenu.
>
> Fixes: 662a958638bd ("PM / AVS: rockchip-io: add driver handling Rockchip io domains")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Kevin Hilman <khilman@linaro.org>

Rafael, feel free to queue this up as a fix.  I don't have any other
drivers/power/avs stuff queued up.

Kevin

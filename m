From: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc supply on px30
Date: Wed, 11 Mar 2020 14:45:41 -0700
Message-ID: <7hwo7qr2ey.fsf@baylibre.com>
References: <20200121222859.4069263-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121222859.4069263-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: khilman@kernel.org, nm@ti.com
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Heiko Stuebner <heiko@sntech.de> writes:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>
> The supply going to the emmc/flash is named vccio6, not vccio0 and while
> the code does this correctly already, the comments and error output do not.
>
> So just change these values to the correct ones.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Raafael, feel free to apply directly.

Thanks,

Kevin

From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
Date: Tue, 19 May 2020 00:42:23 +0200
Message-ID: <158984169638.2264085.17568438379923007784.b4-ty@sntech.de>
References: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com> <20200406135006.23759-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200406135006.23759-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Justin Swartz <justin.swartz@risingedge.co.za>, Mark Rutland <mark.rutland@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 6 Apr 2020 13:50:04 +0000, Justin Swartz wrote:
> The Mecer Xtreme Mini S6 features a wireless module, based on a
> Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
> SDIO and UART interfaces respectively.
> 
> Define a simple MMC power sequence that declares the GPIO pins
> connected to the module's WLAN Disable and Bluetooth Disable pins
> as active low reset signals, because both signals must be deasserted
> for WLAN radio operation.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
      commit: 6067ec2c7ffacab4689ddfed3df74a467d112efe

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

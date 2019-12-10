From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Tue, 10 Dec 2019 23:32:38 +0100
Message-ID: <4093066.yl7jOIBBcd@phil>
References: <20191127223909.253873-1-abhishekpandit@chromium.org> <20191127223909.253873-2-abhishekpandit@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191127223909.253873-2-abhishekpandit@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc: dianders@chromium.org, linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 27. November 2019, 23:39:09 CET schrieb Abhishek Pandit-Subedi:
> This enables the Broadcom uart bluetooth driver on uart0 and gives it
> ownership of its gpios. In order to use this, you must enable the
> following kconfig options:
> - CONFIG_BT_HCIUART_BCM
> - CONFIG_SERIAL_DEV
> 
> This is applicable to rk3288-veyron series boards that use the bcm43540
> wifi+bt chips.
> 
> As part of this change, also refactor the pinctrl across the various
> boards. All the boards using broadcom bluetooth shouldn't touch the
> bt_dev_wake pin.
> 
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

applied for 5.6 with Matthias' Rb.

Thanks
Heiko

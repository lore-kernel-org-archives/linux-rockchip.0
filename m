From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Mon, 09 Dec 2019 01:03:00 +0100
Message-ID: <1788857.Va9C3Z3akr@diego>
References: <20191127223909.253873-1-abhishekpandit@chromium.org> <20191127223909.253873-2-abhishekpandit@chromium.org> <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Marcel Holtmann <marcel@holtmann.org>, Douglas Anderson <dianders@chromium.org>
Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, BlueZ <linux-bluetooth@vger.kernel.org>, linux-rockchip@lists.infradead.org, devicetree <devicetree@vger.kernel.org>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 9. Dezember 2019, 00:48:31 CET schrieb Marcel Holtmann:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> > 
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> > 
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> 
> so have these changes being merged?

not yet

Doug wanted to give a Reviewed-by, once the underlying bluetooth
changes got merged - not sure what the status is though.

Heiko

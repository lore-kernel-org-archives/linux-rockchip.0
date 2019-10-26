From: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [PATCH 0/3] ARM: dts: rockchip: Use hci_bcm driver for bcm43540
 on Veyron devices
Date: Sat, 26 Oct 2019 07:27:02 +0200
Message-ID: <4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Content-Type: text/plain;
        charset=us-ascii
Content-Transfer-Encoding: 8BIT
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20191025215428.31607-1-abhishekpandit@chromium.org>
Sender: netdev-owner@vger.kernel.org
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc: Johan Hedberg <johan.hedberg@gmail.com>, Bluez mailing list <linux-bluetooth@vger.kernel.org>, dianders@chromium.org, devicetree <devicetree@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, Heiko Stuebner <heiko@sntech.de>, netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Abhishek,

> This patch series enables using the Broadcom HCI UART driver with the
> BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
> board (Veyron) and these changes have been tested on the Minnie variant
> of the board (i.e. rk3288-veyron-minnie.dts).
> 
> 
> 
> Abhishek Pandit-Subedi (3):
>  Bluetooth: hci_bcm: Add compatible string for BCM43540
>  dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
>  ARM: dts: rockchip: Add brcm bluetooth module on uart0
> 
> .../bindings/net/broadcom-bluetooth.txt       |  1 +
> arch/arm/boot/dts/rk3288-veyron.dtsi          | 31 +++++--------------
> drivers/bluetooth/hci_bcm.c                   |  1 +
> 3 files changed, 9 insertions(+), 24 deletions(-)

patches 1 and 2 have been applied to bluetooth-next tree. I leave patch 3 to the appropriate ARM maintainer to pick up.

Regards

Marcel

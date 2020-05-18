From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: remove disable-wp from rk3229-xms6 emmc
Date: Tue, 19 May 2020 00:42:20 +0200
Message-ID: <113583326.smLjuVpvy0@diego>
References: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com> <20200406135006.23759-2-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200406135006.23759-2-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 6. April 2020, 15:50:05 CEST schrieb Justin Swartz:
> Remove the disable-wp attribute from &emmc as it is, according to
> Documentation/devicetree/bindings/mmc/mmc-controller.yaml:
> 
>     "Not used in combination with eMMC or SDIO."
> 
> Suggested-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

applied for 5.8

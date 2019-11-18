From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulators for pcie on rk3399-rock960
Date: Mon, 18 Nov 2019 01:42:50 +0100
Message-ID: <2743598.oTfX2hMREy@phil>
References: <20191117140728.917-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191117140728.917-1-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 17. November 2019, 15:07:28 CET schrieb Anand Moon:
> As per Rock960 schematics add 0V9 and 1V8 voltage supplies to the
> RK3399 PCIe block.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

applied, after fixing the property/node ordering.
I try to keep things mostly alphabetically :-)

Heiko

From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc_sys enable pin on rk3399-roc-pc
Date: Thu, 31 Oct 2019 15:23:04 +0100
Message-ID: <6903568.7J3coomyo0@phil>
References: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 31. Oktober 2019, 09:51:56 CET schrieb Markus Reichl:
> rk3399-roc-pc has vcc_sys 5V supply for USB and other peripherals.
> Add the GPIO pin to enable the regulator.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.5

From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
Date: Thu, 14 Nov 2019 10:32:48 +0100
Message-ID: <1669035.FjvuzNSCd2@phil>
References: <c2b88509-129d-46d4-9e23-15d0482951be@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c2b88509-129d-46d4-9e23-15d0482951be@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 11. November 2019, 16:38:26 CET schrieb Markus Reichl:
> rk3399-roc-pc has a Mali gpu, enable it for use with panfrost and mesa >19.2.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> Based on v5.5-armsoc/dts64/75aa5678
> If applied with other patches in between, the second hunk
> offsets and may patch vdd_cpu_b instead of vdd_gpu.

applied for 5.6 (probably) and made sure vdd_gpu got its regulator-always-on
removed, not vdd_cpu_b :-)

Thanks
Heiko

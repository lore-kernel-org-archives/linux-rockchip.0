From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix cts, rts pin assign of UART3 for rk3399
Date: Thu, 11 Apr 2019 14:42:04 +0200
Message-ID: <3217226.65qr7uJ2Ov@phil>
References: <20190406153557.25930-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190406153557.25930-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 6. April 2019, 17:35:57 CEST schrieb Katsuhiro Suzuki:
> This patch fixes pin assign of cts and rts signal of UART3.
> 
> Currently GPIO3_C2 and C3 pins are assigned but TRM says that
> GPIO3_C0 and C1 are correct.
> 
> Refer:
>   RK3399 TRM v1.4 - Table 19-1 UART Interface Description
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 5.2

Thanks
Heiko

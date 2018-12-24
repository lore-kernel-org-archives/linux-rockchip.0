From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: enable analog audio node for rock64
Date: Mon, 24 Dec 2018 08:16:08 +0100
Message-ID: <16987084.rf60fZEaYD@phil>
References: <20181223101026.12998-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181223101026.12998-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Sonntag, 23. Dezember 2018, 11:10:26 CET schrieb Katsuhiro Suzuki:
> The Rock64 boards has analog audio jack on it. RK3328 can output
> analog audio signal using I2S1 and ACODEC core.
> 
> This patch adds sound node for analog audio for Rock64.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

I've put a patch collecting the sound-dai-cells in rk3328.dtsi
before this one, dropped the sound-dai-cells from here and
applied the patch for 4.22.

Thanks
Heiko

From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
Date: Tue, 19 May 2020 00:27:58 +0200
Message-ID: <158984064169.2259329.2215953121884920884.b4-ty@sntech.de>
References: <20191219121954.2450-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191219121954.2450-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, mark.rutland@arm.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, 19 Dec 2019 13:19:54 +0100, Johan Jonker wrote:
> The mmc-controller.yaml didn't explicitly say disable-wp is
> for SD card slot only, but that is what it was designed for
> in the first place.
> Remove all disable-wp from emmc or sdio controllers.

Applied, thanks!

[1/1] arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
      commit: 1fab4cf51e48e9525cf70a9604e90dd3dd666a2f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2.dts
Date: Tue, 19 May 2020 00:27:56 +0200
Message-ID: <158984064169.2259329.13349671967447925273.b4-ty@sntech.de>
References: <20200512203524.7317-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200512203524.7317-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, linus.walleij@linaro.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 12 May 2020 22:35:22 +0200, Johan Jonker wrote:
> The defines RK_FUNC_1 and RK_FUNC_2 are deprecated,
> so replace them with the preferred form.
> Restyle properties in the same line.

Applied, thanks!

[1/2] arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2
      commit: 213f272b754f4e27aeab9d1265c775610e612bb7
[2/2] include: dt-bindings: rockchip: remove unused defines
      commit: d09855bdd8c4d4eb6e58b8546318ebb5859a513c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

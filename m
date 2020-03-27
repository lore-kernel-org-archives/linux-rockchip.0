From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: rk3328: Replace RK805 PMIC node
 name with "pmic"
Date: Fri, 27 Mar 2020 13:12:46 +0100
Message-ID: <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
References: <20200327030414.5903-3-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200327030414.5903-3-wens@kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: wens@kernel.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chen-Yu Tsai,

The Documentation/ portion of the patch should come in the series before
the code implementing the binding.

If you like, could you convert the binding as well and fix the example?

Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt

> Example:
> --------
> rk805: rk805@18 {
> 	compatible = "rockchip,rk805";

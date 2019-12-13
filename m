From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for rk3288-tinker
Date: Fri, 13 Dec 2019 11:04:27 +0100
Message-ID: <47785260.740ClddZN9@phil>
References: <20191202153540.26143-1-redchenjs@foxmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191202153540.26143-1-redchenjs@foxmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jack Chen <redchenjs@foxmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Jack Chen <redchenjs@live.com>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 2. Dezember 2019, 16:35:40 CET schrieb Jack Chen:
> From: Jack Chen <redchenjs@live.com>
> 
> The Tinker Board / S devices use a special chip variant called rk3288-c
> and use different operating points with a higher max frequency.
> 
> So add the missing operating points for Tinker Board / S devices, also
> increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
> cpu can operate at 1.8 GHz.
> 
> Signed-off-by: Jack Chen <redchenjs@live.com>

applied for 5.6

Thanks
Heiko

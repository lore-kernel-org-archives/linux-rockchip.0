From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 1/3] ARM64: dts: rockchip: make rk3399's grf a "simple-mfd"
Date: Sat, 14 May 2016 19:01:23 +0200
Message-ID: <2246118.hzaJHK3UnE@phil>
References: <1463177524-113856-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1463177524-113856-1-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Doug Anderson <dianders@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 13. Mai 2016, 15:12:02 schrieb Brian Norris:
> Per the examples in
> Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt, we need the
> grf node to be a simple-mfd in order to properly enumerate child devices
> like our eMMC PHY.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

applied all 3 for 4.8 with the received Reviews.

Please keep the arm64 lower-case and carry over already received 
Acks/Reviews (Shawn and Doug on patch2 in v2).


Thanks
Heiko

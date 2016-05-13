From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 1/3] ARM64: dts: rockchip: make rk3399's grf a "simple-mfd"
Date: Fri, 13 May 2016 15:53:14 -0700
Message-ID: <CAD=FV=UGbNsneP_Vm_YYOrjWYn=zVKB5pZYvOOJczKAuRztCkw@mail.gmail.com>
References: <1463177524-113856-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1463177524-113856-1-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, May 13, 2016 at 3:12 PM, Brian Norris <briannorris@chromium.org> wrote:
> Per the examples in
> Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt, we need the
> grf node to be a simple-mfd in order to properly enumerate child devices
> like our eMMC PHY.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> v4:
>
>  * New, split out of patch 2, per Heiko's recommendation
>
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

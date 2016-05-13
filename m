From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 3/3] ARM64: dts: rockchip: enable eMMC for rk3399 EVB
Date: Fri, 13 May 2016 15:54:35 -0700
Message-ID: <CAD=FV=VffvTEVyCpVn20rRsGRYKPVy_6qjTBoiOvMX4EjeWFrQ@mail.gmail.com>
References: <1463177524-113856-1-git-send-email-briannorris@chromium.org>
	<1463177524-113856-3-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1463177524-113856-3-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, May 13, 2016 at 3:12 PM, Brian Norris <briannorris@chromium.org> wrote:
> Rockchip's rk3399 evaluation board has eMMC. Let's enable the
> newly-added nodes.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> v4:
>
>  * alphabetize &node references
>
> v3:
>
>  * no change
>
> v2:
>
>  * better commit description
>
>  arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/4] phy: rockchip-emmc: configure frequency range and
 drive impedance
Date: Fri, 13 May 2016 15:04:53 -0700
Message-ID: <CAD=FV=VyzaPEQvY57AF65VGzv600uBZT9jQy4N=s4Z_YPzphxw@mail.gmail.com>
References: <1463092986-61777-1-git-send-email-briannorris@chromium.org>
	<1463092986-61777-2-git-send-email-briannorris@chromium.org>
	<20160513210943.GB99074@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160513210943.GB99074@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Shawn Lin <shawn.lin@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, May 13, 2016 at 2:09 PM, Brian Norris <briannorris@chromium.org> wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
>
> Signal integrity analysis has suggested we set these values. Do this in
> power_on(), so that they get reconfigured after suspend/resume.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> v2:
>  * Sent only patch 2/4 with version 2, to avoid spamming; will move on to v3
>    for all patches if I need to send another
>  * Drop 170 MHz comment; this was only applicable to a subtly different Arasan
>    PHY
>
>  drivers/phy/phy-rockchip-emmc.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)

As per my comments on v1, this is a sane starting point and seems like
a good idea to land.  Hopefully someone at Rockchip can pick things up
and continue making this more configurable.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

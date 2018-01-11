From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/2] phy: rockchip-emmc: retry calpad busy trimming
Date: Wed, 10 Jan 2018 19:22:57 -0800
Message-ID: <CAD=FV=U8VyFAWyce=Em=dR_fgkyz5QscOJC=U_6WxtUjdNbe9g@mail.gmail.com>
References: <1515638427-15117-1-git-send-email-wxt@rock-chips.com> <1515638427-15117-2-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1515638427-15117-2-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Jan 10, 2018 at 6:40 PM, Caesar Wang <wxt@rock-chips.com> wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
>
> It turns out that 5us isn't enough for all cases, so let's
> retry some more times to wait for caldone.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Tested-by: Ziyuan Xu <xzy.xu@rock-chips.com>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
> Changes in v3:
> - As Doug commented on both upstream and gerrit.
>   Change "5, 50" to "0, 50", and the message of print.
>
> Changes in v2:
> - print the return valut with regmap_read_poll_timeout failing.
>
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 27 +++++++++++++++++----------
>  1 file changed, 17 insertions(+), 10 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

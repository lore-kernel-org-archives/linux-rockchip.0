From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout
 to poll dllrdy
Date: Wed, 10 Jan 2018 19:22:50 -0800
Message-ID: <CAD=FV=UPvqDiU6jzfGy9WwbDqnOyfuPTFw9OyLSah4HdjW0zoA@mail.gmail.com>
References: <1515638427-15117-1-git-send-email-wxt@rock-chips.com> <1515638427-15117-3-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1515638427-15117-3-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Jan 10, 2018 at 6:40 PM, Caesar Wang <wxt@rock-chips.com> wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
>
> Just use the API instead of open-coding it, no functional change
> intended.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>
> ---
>
> Changes in v3:
> - As Doug commented on https://patchwork.kernel.org/patch/10154797,
>   Change "1, 50" to "0, 50".
>
> Changes in v2:
> - As Brian commented on https://patchwork.kernel.org/patch/10139891/,
>   changed the note and added to print error value with
>   regmap_read_poll_timeout API.
>
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 33 +++++++++++---------------------
>  1 file changed, 11 insertions(+), 22 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] phy: rockchip-usb: power down phy when rockchip phy probe
Date: Mon, 20 Jul 2015 11:10:50 -0700
Message-ID: <CAD=FV=XsdDSGiFqUgWNs-V80mAqBFRjB_3zyWkq9WNLJ6cnK5g@mail.gmail.com>
References: <1437118165-20713-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1437118165-20713-1-git-send-email-hl@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: huang lin <hl@rock-chips.com>
Cc: lyz <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

hl,

On Fri, Jul 17, 2015 at 12:29 AM, huang lin <hl@rock-chips.com> wrote:
> rockchip phy are enable when soc reset, to save power consumption,
> we disable it when probe, and enable each phy when it use
>
> Signed-off-by: huang lin <hl@rock-chips.com>
> ---
>  drivers/phy/phy-rockchip-usb.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Looks right to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

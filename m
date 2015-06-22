From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/2] ARM: rockchip: remove some useless macro in pm.h
Date: Mon, 22 Jun 2015 12:59:19 -0700
Message-ID: <CAD=FV=Xa_T-L+mU77gfo9Vau9Q4KcJ=RTYzHcbv05=4Xy8R-8w@mail.gmail.com>
References: <1434880847-29505-1-git-send-email-zyw@rock-chips.com>
	<1434880847-29505-3-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1434880847-29505-3-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Sonny Rao <sonnyrao@chromium.org>, Alexandru Stan <amstan@google.com>, Dmitry Torokhov <dtor@google.com>, Russell King <linux@arm.linux.org.uk>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Chris,

On Sun, Jun 21, 2015 at 3:00 AM, Chris Zhong <zyw@rock-chips.com> wrote:
> These are actually not used in the pm code, as we moved suspend handling
> to the clock driver, remove them here.
>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>
> ---
>
>  arch/arm/mach-rockchip/pm.h | 7 -------
>  1 file changed, 7 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

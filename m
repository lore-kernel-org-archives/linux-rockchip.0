From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Properly set corecfg_clockmultipler
 on rk3399
Date: Fri, 26 Aug 2016 08:46:33 -0700
Message-ID: <CAD=FV=UD-9PwQFm4x4Uqx5mQjEirD9icyYHPDaVjU4tRgk-f+g@mail.gmail.com>
References: <1472181736-17848-1-git-send-email-shawn.lin@rock-chips.com>
 <1dc7898d-ee35-4166-6313-64e9c50f8db8@rock-chips.com> <d6c3b728-af01-e724-3278-1bc0801f8fb4@rock-chips.com>
 <7490888.x1BxhdeR20@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-mmc-owner@vger.kernel.org>
In-Reply-To: <7490888.x1BxhdeR20@diego>
Sender: linux-mmc-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Ziyuan Xu <xzy.xu@rock-chips.com>, Ulf Hansson <ulf.hansson@linaro.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Aug 26, 2016 at 1:31 AM, Heiko St=C3=BCbner <heiko@sntech.de> wrote=
:
> The aclk_emmc_grf is (similar to aclk_vio_grf etc) part of the emmc block=
.

Right now aclk_emmc_grf is set as CLK_IGNORE_UNUSED, which is my least
favorite clock property.  ;)

Due to the parenting structure and the fact that we just added
"aclk_emmc_noc" as a critical clock, I believe that this means that
aclk_emmc_grf will never turn off.  It would be awfully nice if you
could send up a patch to actually turn the "grf" clock on when needed
and turn it off when not needed.  That would let us remove the
"CLK_IGNORE_UNUSED" from all of the eMMC clocks in rk3399.

I noticed you send v2 of your patch series and that looks fine to me.
The issue with not handling the "grf" clock is not a new one and
shouldn't block your patch.  ...but it would still be nice to handle
properly.

-Doug

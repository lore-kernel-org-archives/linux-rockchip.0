From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v1 0/5] Fix broken DMAFLUSHP on Rockchips platform
Date: Thu, 27 Aug 2015 08:16:19 -0700
Message-ID: <CAD=FV=XTG8RukPwDvVuEifNz9WGUUs3w1B26cpm8obSdV5bFTQ@mail.gmail.com>
References: <1440685419-22037-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1440685419-22037-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vinod.koul@intel.com>, Heiko Stuebner <heiko@sntech.de>, Boojin Kim <boojin.kim@samsung.com>, Olof Johansson <olofj@google.com>, Sonny Rao <sonnyrao@chromium.org>, Addy Ke <addy.ke@rock-chips.com>, dmaengine@vger.kernel.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Shawn,

On Thu, Aug 27, 2015 at 7:23 AM, Shawn Lin <shawn.lin@rock-chips.com> wrote:
> Changes in v1:
> - rename broken-no-flushp to "arm,pl330-broken-no-flushp" suggested
>   by Krzysztof.
> - add From original author.
> - remove Sunny's tag
>
> Shawn Lin (5):
>   DMA: pl330: support burst mode for dev-to-mem and mem-to-dev transmit
>   DMA: pl330: add quirk for broken no flushp
>   ARM: dts: Add arm,pl330-broken-no-flushp quirk for rk3288 platform
>   ARM: dts: Add arm,pl330-broken-no-flushp quirk for rk3xxx platform
>   Documentation: arm-pl330: add description of
>     arm,pl330-broken-no-flushp

Something still seems strange here.  All patches are listed in the
cover letter as "From" you.  You should make sure you change the
author in your git tree using "git commit --amend --author=<author>"
so that patman can generate the proper cover letter.

-Doug

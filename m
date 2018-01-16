From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 30/40] drm/rockchip: Flush PSR before committing modeset disables/enables
Date: Tue, 16 Jan 2018 13:02:40 +0900
Message-ID: <CAAFQd5ACj_haeXpr4vrBYimk+yiGZKYR6HTvuL1K1gDSGFBhsA@mail.gmail.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com> <20180115171614.14474-31-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-31-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>
Cc: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Haixia Shi <hshi@chromium.org>, =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Thierry,

On Tue, Jan 16, 2018 at 2:16 AM, Thierry Escande
<thierry.escande@collabora.com> wrote:
> From: Tomasz Figa <tfiga@chromium.org>
>
> Currently PSR flush is triggered from CRTC's .atomic_begin() callback,
> which is executed after modeset disables and enables and before plane
> updates are committed. Since PSR flush and re-enable can be triggered
> asynchronously by external sources (input event, delayed work), it can
> race with hardware programming done in the aforementioned stages.
>
> To avoid the race, we can trigger PSR flush before committing modeset
> disables/enables. This also has the advantage of removing some
> PSR-specific knowledge from the VOP driver.

FYI, this patch was eventually found to still leave few unsolved races
and was later replaced with a more comprehensive redesign of Rockchip
PSR code. Please refer to the following Chromium patches:

https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/430429/
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/436571/
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/438228/
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/438229/
<- This one effectively replaces all the code added in this patch.
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/438230/

Best regards,
Tomasz

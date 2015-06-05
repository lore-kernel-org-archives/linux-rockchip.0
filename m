From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 3/3] ARM: rockchip: fix the SMP code style
Date: Fri, 5 Jun 2015 13:58:14 -0700
Message-ID: <CAD=FV=Xj-j2Fnnch99rzvKpvsrpgaz6ukfM+X87O20B-nHbjkQ@mail.gmail.com>
References: <1433523923-4755-1-git-send-email-wxt@rock-chips.com>
	<1433523923-4755-4-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433523923-4755-4-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Russell King <linux@arm.linux.org.uk>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Caesar,

On Fri, Jun 5, 2015 at 10:05 AM, Caesar Wang <wxt@rock-chips.com> wrote:
> Use the below scripts to check:
> scripts/checkpatch.pl -f --subject arch/arm/mach-rockchip/platsmp.c
> Although there is a check, it's no matter.
>
> CHECK: usleep_range is preferred over udelay; see
> Documentation/timers/timers-howto.txt
> +167udelay(10);
> total: 0 errors, 0 warnings, 1 checks, 362 lines checked
>
>  Changes in v4:
>     - Add reset_control_put(rstc) for the non-error case.
>     - Fix commit information in PATCH [1/3]
>
>  Changes in v3:
>     - FIx the PATCH v2, it doesn't work on chromium 3.14.
>
>  Changes in v2:
>     - As Kever points out, Fix the subject typo WIF/WFI in PATCH [2/3].
>     - As Heiko suggestion, re-adjust the cpu on/off flow in PATCH [1/3].
>     - Use the checkpatch.pl -f --subjective to check in PATCH [3/3].

The change log should (ideally) be with each patch.  If that's too
hard and you want to put it in one place, please put it in the cover
letter (the 0/3 email).

Also: the change log should be "below the cut".  That is, it should be
below the "---" and above the diffstat.

Other than those problems:

Reviewed-by: Douglas Anderson <dianders@chromium.org>


-Doug

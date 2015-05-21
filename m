From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: rockchip: restore dapswjdp after suspend
Date: Thu, 21 May 2015 08:40:55 -0700
Message-ID: <CAD=FV=XARAYzLWy+i9f1XuTZTa4RiA5Yb9aJoAuh9uJmgs-ZOQ@mail.gmail.com>
References: <1432154048-19126-1-git-send-email-dianders@chromium.org>
	<555D3CB7.2000002@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <555D3CB7.2000002@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "Huang, Tao" <huangtao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Russell King <linux@arm.linux.org.uk>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Tony Xie <tony.xie@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Huang Tao,

On Wed, May 20, 2015 at 7:02 PM, Huang, Tao <huangtao@rock-chips.com> wrote:
>> It turns out that's not a safe assumption.  In some cases (pending
>> interrupts) it's possible that the WFI might act as a no-op and the
>> MaskROM will never run.
>
>
> I don't think this can happen. It seems we set PMU_GLOBAL_INT_DISABLE
> bit, which means in power off flow, the IRQ will not accepted until the
> ARM is power off. Do you see the SGRF_CPU_CON0[0] is 0 after resume?

From testing, it appears that it can happen that the WFI might act as a no-op.

...but you're right in pointing out that unless we can solve the
PMU_GLOBAL_INT_DISABLE() problem then this patch here to fix
DAPDEVICEEN isn't too useful.  I was hoping to fix the
PMU_GLOBAL_INT_DISABLE() in
<https://chromium-review.googlesource.com/#/c/272442/> or find a
similar solution.  ...if we can's solve that though, then I'm not sure
what to suggest.


> Anyway, restore the value is okay, which make the code more symmetrically

OK.  Heiko: applying this won't hurt, but it will only be useful if we
find a way to return from the WFI successfully...

-Doug

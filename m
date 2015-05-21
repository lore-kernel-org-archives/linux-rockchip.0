From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: rockchip: restore dapswjdp after suspend
Date: Thu, 21 May 2015 19:59:13 +0200
Message-ID: <2799695.KoAD3Q19Xm@phil>
References: <1432154048-19126-1-git-send-email-dianders@chromium.org> <555D3CB7.2000002@rock-chips.com> <CAD=FV=XARAYzLWy+i9f1XuTZTa4RiA5Yb9aJoAuh9uJmgs-ZOQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=XARAYzLWy+i9f1XuTZTa4RiA5Yb9aJoAuh9uJmgs-ZOQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: "Huang, Tao" <huangtao@rock-chips.com>, Russell King <linux@arm.linux.org.uk>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Tony Xie <tony.xie@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Donnerstag, 21. Mai 2015, 08:40:55 schrieb Doug Anderson:
> On Wed, May 20, 2015 at 7:02 PM, Huang, Tao <huangtao@rock-chips.com> wrote:
> >> It turns out that's not a safe assumption.  In some cases (pending
> >> interrupts) it's possible that the WFI might act as a no-op and the
> >> MaskROM will never run.
> > Anyway, restore the value is okay, which make the code more symmetrically
> 
> OK.  Heiko: applying this won't hurt, but it will only be useful if we
> find a way to return from the WFI successfully...

As it looks sane but doesn't fix an immediate problem I have applied this to my 
soc-branch for 4.2 .


Thanks
Heiko

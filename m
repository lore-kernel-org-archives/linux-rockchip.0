From: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [PATCH 0/6] Coordinated Clks
Date: Thu, 20 Dec 2018 15:20:13 -0800
Message-ID: <CAGAzgsq=p-2N6ybFXNTnz5SDkcdktA+Gk6e3gxrjpJB+L8389A@mail.gmail.com>
References: <20181024013132.115907-1-dbasehore@chromium.org> <154534054131.79149.12015186156265337224@swboyd.mtv.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <154534054131.79149.12015186156265337224@swboyd.mtv.corp.google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: sboyd@kernel.org
Cc: linux-kernel <linux-kernel@vger.kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, aisheng.dong@nxp.com, mchehab+samsung@kernel.org, Jonathan Corbet <corbet@lwn.net>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Dec 20, 2018 at 1:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Derek Basehore (2018-10-23 18:31:26)
> > Here's the first set of patches that I'm working on for the Common
> > Clk Framework. Part of this patch series adds a new clk op,
> > pre_rate_req. This is designed to replace the clk notifier approach
> > that many clk drivers use right now to setup alt parents or temporary
> > dividers. This should allow for the removal of the
> > CLK_RECALC_NEW_RATES flag and the implementation of a better locking
> > scheme for the prepare lock.
>
> Are you going to resend this series? I can do a review but I wonder how
> much it will change anyway.
>

I'm going to resend next year. I got distracted trying to get other
code to work. This code has bugs in it, so a new patch set is
required.

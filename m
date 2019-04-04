From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] mwifiex: Make resume actually do something useful again on SDIO cards
Date: Thu, 04 Apr 2019 08:20:08 +0300
Message-ID: <874l7egxdj.fsf@codeaurora.org>
References: <20190404040106.40519-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190404040106.40519-1-dianders@chromium.org> (Douglas
        Anderson's message of "Wed, 3 Apr 2019 21:01:06 -0700")
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: linux-rockchip@lists.infradead.org, briannorris@chromium.org, mka@chromium.org, ryandcase@chromium.org, heiko@sntech.de, "David S. Miller" <davem@davemloft.net>, Ganapathi Bhat <gbhat@marvell.com>, linux-wireless@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org, Nishant Sarmukadam <nishants@marvell.com>, netdev@vger.kernel.org, Xinming Hu <huxinming820@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Douglas Anderson <dianders@chromium.org> writes:

> The commit fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent
> adapter status variables") had a fairly straightforward bug in it.  It
> contained this bit of diff:
>
>  - if (!adapter->is_suspended) {
>  + if (test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
>
> As you can see the patch missed the "!" when converting to the atomic
> bitops.  This meant that the resume hasn't done anything at all since
> that commit landed and suspend/resume for mwifiex SDIO cards has been
> totally broken.
>
> After fixing this mwifiex suspend/resume appears to work again, at
> least with the simple testing I've done.
>
> Fixes: fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent adapter status variables")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I'm planning to queue this for 5.1.

-- 
Kalle Valo

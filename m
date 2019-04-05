From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] mwifiex: Make resume actually do something useful again on SDIO cards
Date: Fri, 05 Apr 2019 06:35:39 +0300
Message-ID: <87ef6hruno.fsf@kamboji.qca.qualcomm.com>
References: <20190404040106.40519-1-dianders@chromium.org>
        <874l7egxdj.fsf@codeaurora.org>
        <CA+ASDXNfOUmMEWYwts8PuiDaEjuoPK+tZ0BhDSSte5u5toydkA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+ASDXNfOUmMEWYwts8PuiDaEjuoPK+tZ0BhDSSte5u5toydkA@mail.gmail.com>
        (Brian Norris's message of "Thu, 4 Apr 2019 13:47:17 -0700")
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Heiko Stuebner <heiko@sntech.de>, "David S. Miller" <davem@davemloft.net>, Ganapathi Bhat <gbhat@marvell.com>, linux-wireless <linux-wireless@vger.kernel.org>, Amitkumar Karwar <amitkarwar@gmail.com>, Linux Kernel <linux-kernel@vger.kernel.org>, Nishant Sarmukadam <nishants@marvell.com>, "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>, Xinming Hu <huxinming820@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Brian Norris <briannorris@chromium.org> writes:

> On Wed, Apr 3, 2019 at 10:20 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>> Douglas Anderson <dianders@chromium.org> writes:
>> > Fixes: fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent
>> > adapter status variables")
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> I'm planning to queue this for 5.1.
>
> With an explicit
>
> Cc: <stable@vger.kernel.org>
>
> please? Somebody would likely pick it up anyway, but it's nice to be
> explicit.

Ok, I'll add that.

> Not that it really matters, but also:
>
> Reviewed-by: Brian Norris <briannorris@chromium.org>

This patchwork picks up automatically so I don't have to do anything.
But I so wish it would do the same for Cc and Fixes tags :)

-- 
Kalle Valo

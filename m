From: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Subject: Re: [PATCH] mwifiex: Make resume actually do something useful again
 on SDIO cards
Date: Fri, 19 Apr 2019 07:03:11 +0300
Message-ID: <87k1fq1w1s.fsf@kamboji.qca.qualcomm.com>
References: <20190404040106.40519-1-dianders@chromium.org>
 <874l7egxdj.fsf@codeaurora.org>
 <CA+ASDXNfOUmMEWYwts8PuiDaEjuoPK+tZ0BhDSSte5u5toydkA@mail.gmail.com>
 <87ef6hruno.fsf@kamboji.qca.qualcomm.com>
 <CAD=FV=WgTUgMg-r2ZJ6rKOiv5Lw_m-EX6c0it6znA9v8AO+z_A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=WgTUgMg-r2ZJ6rKOiv5Lw_m-EX6c0it6znA9v8AO+z_A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
 (Doug Anderson's message of "Thu, 18 Apr 2019 09:31:51 -0700")
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Ganapathi Bhat <gbhat-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Xinming Hu <huxinming820-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "<netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>" <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Amitkumar Karwar <amitkarwar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Nishant Sarmukadam <nishants-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Ryan Case <ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:

> On Thu, Apr 4, 2019 at 8:35 PM Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org> wrote:
>>
>> Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>>
>> > On Wed, Apr 3, 2019 at 10:20 PM Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org> wrote:
>> >> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>> >> > Fixes: fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent
>> >> > adapter status variables")
>> >> > Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> >>
>> >> I'm planning to queue this for 5.1.
>
> Do you know when you plan to queue this?  I don't see the patch in
> Linus's tree nor in linux-next.  Just want to make sure it didn't get
> forgotten...

It's on my queue and not forgotten:

https://patchwork.kernel.org/patch/10884883/

Due to various reasons I'm really struggling with patches right now,
sorry about that, but I'm slowly catching up. I should be able to apply
this within a week.

-- 
Kalle Valo

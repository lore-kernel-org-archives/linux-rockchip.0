From: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Subject: Re: [PATCH] mwifiex: Make resume actually do something useful again
 on SDIO cards
Date: Thu, 25 Apr 2019 11:05:51 +0000 (UTC)
Message-ID: <20190425110551.6B4006074F@smtp.codeaurora.org>
References: <20190404040106.40519-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190404040106.40519-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Ganapathi Bhat <gbhat-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Xinming Hu <huxinming820-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Amitkumar Karwar <amitkarwar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Nishant Sarmukadam <nishants-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:

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
> Cc: <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Patch applied to wireless-drivers.git, thanks.

b82d6c1f8f82 mwifiex: Make resume actually do something useful again on SDIO cards

-- 
https://patchwork.kernel.org/patch/10884883/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

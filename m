From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: rk3288 Firefly Reload: 'reboot' doesn't work
Date: Tue, 31 Oct 2017 17:31:18 +0100
Message-ID: <1729506.TeohltKTGL@diego>
References: <b88abf6d-d95f-3eca-91d1-65fcb749cb22@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b88abf6d-d95f-3eca-91d1-65fcb749cb22-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Hans,

sorry this took a bit longer,

Am Freitag, 20. Oktober 2017, 11:06:21 CET schrieb Hans Verkuil:
> If I run 'reboot' to reboot my Firefly Reload board the last thing I see
> on the serial port is "reboot: Restarting system", but it never actually
> restarts.
> 
> This is really annoying, but I have no idea where to look. Any suggestions?

I just ran reboot on my original rk3288-firefly with 4.14-rc6 and reboot worked 
just fine. So it looks like at least on the kernel side it seems to check out.
Especially, as we do use the cold-reset mode on Rockchip socs so everything
should get set to its correct reset-state.

-- What bootloader do you use on the board?

I'm using mainline uboot from somewhere last year right now
[ U-Boot 2016.11-01442-g5699f71-dirty (Nov 29 2016 - 23:23:39 +0100) ]


-- What happens when you turn off cpufreq in your kernel?

I.e. one possible thing I could think of would be your cpu frequency
being low and the regulator not having the right voltage for the 600MHz
boot frequency. 

But that would make me wonder, why it would work at all. I.e. while
the default for vdd_cpu is 1.0V, the lowest in the opp-table is 0.9V
which _is_ the correct voltage even for the 600MHz reset frequency.


Heiko

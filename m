From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: host: Fix ahbcfg for rk3066
Date: Sat, 24 Oct 2015 15:08:05 +0200
Message-ID: <1788167.5hyLBzbcrl@diego>
References: <1445384033-17050-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1445384033-17050-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, balbi-l0cyMroinI0@public.gmane.org, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Wu Liang Feng <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 20. Oktober 2015, 16:33:53 schrieb Douglas Anderson:
> The comment for ahbcfg for rk3066 parameters (also used for rk3288)
> claimed that ahbcfg was INCR16, but it wasn't.  Since the bits weren't
> shifted properly, the 0x7 ended up being masked and we ended up
> programming 0x3 for the HBstLen.  Let's set it to INCR16 properly.
> 
> As per Wu Liang Feng at Rockchip this may increase transmission
> efficiency.  I did blackbox tests with writing 0s to a USB-based SD
> reader (forcefully capping CPU Freq to try to measure efficiency):
>   cd /sys/devices/system/cpu/cpu0/cpufreq
>   echo userspace > scaling_governor
>   echo 126000 > scaling_setspeed
>   for i in $(seq 10); do
>     dd if=/dev/zero of=/dev/sdb bs=1M count=750
>   done
> 
> With the above tests I found that speeds went from ~15MB/s to ~18MB/s.
> Note that most other tests I did (including reading from the same USB
> reader) didn't show any difference in performance.
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

I gave this a spin on a rk3288-firefly, runs fine and doesn't have any 
negative effects, so

Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

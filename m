From: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: on-board LED's on rk3399-roc-pc
Date: Thu, 2 Apr 2020 10:30:28 +0530
Message-ID: <CAM+7aWt+xY6xJ9sHUk_AwAX1hzTpcgAH1EhofRgO2b+d+YuWQg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org
Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Markus, Levin and all,

rk3399-roc-pc board has three on-board LED's:

1. work-led(green) assigned as  linux,default-trigger = "heartbeat"
2. diy-led(red) assigned as  linux,default-trigger = "mmc1" ---- which is emmc
3. yellow-led(yellow) assigned as  linux,default-trigger = "mmc0" ----
which is SD

I have a  requirement where diy-led(red) should be on while linux
boots and until poweroff, indicating
full power mode.

here are my questions:
1. Since diy-led(red) is already assigned to mmc1, how could I achieve
the above requirement.
    In the diy-led node I changed default-state to "on", but it didn't work.

2. Is there any specific reason why diy-led(red) is assigned to mmc1 ?

3. Is it possible to swap work-led with diy-led, meaning work-led
assigned to "mmc1" and diy-led
   assigned as "heartbeat" or "default-on" ?

Please suggest/comment on my requirement.

Thanks and regards
Suniel

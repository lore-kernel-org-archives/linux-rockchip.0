From: Tomohiro Mayama <parly-gh-HEvi76orzLt5vQOrPBq+1Q@public.gmane.org>
Subject: rk3328-rock64: USB ports are broken since commit ef05bcb6
Date: Thu, 7 Mar 2019 22:52:15 +0900
Message-ID: <f1894045-573b-dd6e-4453-fbec702aa9ad@iris.mystia.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-US-large
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello,

I'm experiencing a problem that Rock64 USB ports (both 2.0 and 3.0) are
not working.

After some investigation, I found that reverting a pin assignment change
by the commit ef05bcb6[1] seems to make functioning them again.
But according to the schematic[2], the pin assignment seems to be
correct. I suspect that the schematic might be incorrect.

There are some people experiencing the same problem in Arch Linux ARM
forum[3].

Is this a known issue?


[1] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/diff/?id=ef05bcb60c1a8841e38c91923ba998181117a87c
[2] http://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf, page 8
[3] https://archlinuxarm.org/forum/viewtopic.php?f=23&t=13321


Regards,
Tomohiro Mayama

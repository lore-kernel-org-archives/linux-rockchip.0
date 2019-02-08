From: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Subject: Special opp table values for different RK3288 leakage values
Date: Fri, 8 Feb 2019 10:07:04 +0100
Message-ID: <a57bc0f5-d86f-5f49-af8e-c8aae56f4d8f@phytec.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-US
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

Hi,

recently we received new RK3288 SOCs (Date code is: year 17/18XX) with a
different leakage value, 0xe1 and 0xe2 (our older RK3288 SOCs had 0xe0).

We have stability issues with newer SOCs and don't really understand the
cause. If I run simple memtests, the RK3288 hangs after a few minutes
without showing any kernel messages.

We also noticed quite a lot of changes for the rk3288.dtsi (opp tables)
in rockchips github repository. It seems rockchip is using different
values for different SOC versions and leakage values. Can someone please
confirm if the upstream opp table is still valid for all RK3288 SOCs out
there?

Maybe someone of you have a newer tinker/firefly board that shows the
same issue. Mine are to old :(. So I can only confirm this for the
phyCORE-RK3288 SOM.

Regards,
Wadim

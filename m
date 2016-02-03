From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug] usb: dwc2: Add functions to set and clear force mode
Date: Wed, 3 Feb 2016 00:03:40 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC431FDB@US01WEMBX2.internal.synopsys.com>
References: <56A7603C.1000409@rock-chips.com>
 <CAD=FV=Xk4v=1QMYG9XmXh6hJLKU6i_wVakOArF1du-Z_4_+Neg@mail.gmail.com>
 <56A8277F.9@gmail.com>
 <CAD=FV=Uab6H6sFVj_bPRs7H4HcBi2pqZK3HDCHQxC+EDk=inDA@mail.gmail.com>
 <56AF3D80.90807@gmail.com> <56AF3DCB.20808@gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC42FD26@US01WEMBX2.internal.synopsys.com>
 <56B01785.3030803@163.com> <56B01A0C.3070801@gmail.com>
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
To: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: "Huang, Tao" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?gb2312?B?zuLBvLfl?= <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, CaesarWang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/1/2016 6:53 PM, Caesar Wang wrote:
> John,
> 
> I will suggest the msleep(25) delay should  put in 
> 'dwc2_force_dr_mode()' instead of the 'dwc2_clear_force_mode()'
> 

Hi Caesar,

Are you saying that just msleep(25) in that function like this solves
your issue?

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 39a0fa8..e8a9688 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -625,6 +625,8 @@ void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
                         __func__, hsotg->dr_mode);
                break;
        }
+
+       msleep(25);
 }
 


Although that is still not ideal, it's better than the alternative.

Regards,
John

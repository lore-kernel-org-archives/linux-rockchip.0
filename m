From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RESEND PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Sun, 05 Feb 2017 10:41:23 +0100
Message-ID: <3508420.z4eX5F6ytJ@phil>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1486263061-10681-1-git-send-email-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Sonntag, 5. Februar 2017, 10:51:00 CET schrieb Frank Wang:
> The original posting on Jan 19th have not received any responses, so I
> resend them.
> 
> The Current default dwc2 just handle one clock named otg, however, it may
> have two or more clock need to manage for some new SoCs(such as RK3328), so
> this adds change clk to clk's array of dwc2_hsotg to handle more clocks
> operation.

can you please give a bit more detail on the specific layout.

I guess you're talking about hclk_otg_pmu, right? What component does it 
supply, because I didn't find anything in the partial TRM in the PMU section 
relating to the "otg".

This meant to make sure, you're actually controlling some part of the dwc2 
with that second/third/... clock and not some separate component.


Heiko

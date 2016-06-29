From: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings
 documentation
Date: Wed, 29 Jun 2016 09:56:37 +0800
Message-ID: <57732AD5.7010708@rock-chips.com>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com>
 <1518073.zeMq7N85Id@phil> <5771EC6C.3070707@rock-chips.com>
 <1652918.4YDfA4VDoG@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1652918.4YDfA4VDoG@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, sergei.shtylyov-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Dear Heiko,

On 06/29/2016 12:41 AM, Heiko Stuebner wrote:
> Hi William,
>
> Am Dienstag, 28. Juni 2016, 11:18:04 schrieb William Wu:
>>>> So about the usb3 controller clk management, I think it should contain
>>>> the following clk:
>>>> 1.  aclk_usb3otg1
>>>> 2.  aclk_usb3otg0
>>>> 3.  aclk_usb3_grf
>>> correct, aclk_usb3otgX would then be the busclk for each controller if
>>> I'm not mistaken and the grf clock should also get enabled, like we
>>> also plan on doing for the vio_grf clock in the display area.
>> OK, so  aclk_usb3_grf should be marked as critical, right?
> nope ... the consensus for the vio_grf clock was that the driver accessing
> it should control it. So for the usb3_grf clock this would be your dwc3-
> based driver being responsible for the grf-clock.
Ah, I misunderstand before. I'll control usb3_grf in dwc3 driver.
>
>
>> I found that most of the grf clocks haven't been marked as critical,
>> apart from vio_grf. So may I keep the aclk_usb3_grf in usb3 dts, and
>> remove it after clock manager adds it to critical clocks?
> you should keep the usb3-grf clock in the dts all the time.
OK, I'll keep it in the dts.
>
>
>>>> 4.  aclk_usb3_noc
>>>> For "aclk_usb3_noc", I discuss with our clk manager, the clk is always
>>>> on before,
>>>> but according to upstream maintainer's suggestion, we need to manage
>>>> the
>>>> noc clk by each module.
>>> can you point me to this discussion? The bus-interconnect is a very
>>> separate component, which we don't model so far and thus we have all
>>> the noc clocks simply marked as critical.
>>>
>>> As this clock doesn't belong to the actual usb controller block, but
>>> said
>>> separate component, handling it in the controller seems somehow wrong to
>>> me.
>>>
>>> So my (current) opinion would again be to mark the noc clock as critical
>>> for the time being.
>> Sorry, it seems that I get the new information about clk management too
>> late.:-)
>>
>> There's no dedicated discussion about noc clk, but similar to grf clock,
>> please refer to "https://patchwork.kernel.org/patch/9171467/" for add
>> pclk_vio_grf to critical clock on the RK3399, and you have agreed on
>> that mark vio grf clk as critical. So I agree with your opinion, thanks~
> The difference as I see it is, that the GRF parts are _part_ of the usb3
> controller, while the interconnect really is a separate component,
> connecting the controller to the rest of the system.
>
> ----------	
> |  USB3  |----[Interconnect]----[rest of the system]
> | [+GRF] |	
> ----------	
>
> So the controller binding + driver should handle all clocks it needs to
> operate. We currently don't model and handle the separate interconnect
> though, so that noc clock should be critical for the time being.
Thanks for your professional explanation. Now I think I have
more clearly understood the clocks. And I'll upload a new
patch later.
>
> Heiko
>
>
>
>

From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before
 handling them
Date: Thu, 19 Nov 2015 01:43:35 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3D696B@US01WEMBX2.internal.synopsys.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <1446582629-30091-2-git-send-email-dianders@chromium.org>
 <87wpthnc2e.fsf@saruman.tx.rr.com>
 <CAD=FV=W-UWJnHZioChnVmPmJQXxMGGOUQiF81h0ZTA4invivVA@mail.gmail.com>
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
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/16/2015 9:22 AM, Doug Anderson wrote:
> Felipe,
> 
> On Mon, Nov 16, 2015 at 8:28 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
>>
>> Hi,
>>
>> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>>> In general it is wise to clear interrupts before processing them.  If
>>> you don't do that, you can get:
>>>  1. Interrupt happens
>>>  2. You look at system state and process interrupt
>>>  3. A new interrupt happens
>>>  4. You clear interrupt without processing it.
>>>
>>> This patch was actually a first attempt to fix missing device insertions
>>> as described in (usb: dwc2: host: Fix missing device insertions) and it
>>> did solve some of the signal bouncing problems but not all of
>>> them (which is why I submitted the other patch).  Specifically, this
>>> patch itself would sometimes change:
>>>  1. hardware sees connect
>>>  2. hardware sees disconnect
>>>  3. hardware sees connect
>>>  4. dwc2_port_intr() - clears connect interrupt
>>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>>
>>> ...to:
>>>  1. hardware sees connect
>>>  2. hardware sees disconnect
>>>  3. dwc2_port_intr() - clears connect interrupt
>>>  4. hardware sees connect
>>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>>
>>> ...but with different timing then sometimes we'd still miss cable
>>> insertions.
>>>
>>> In any case, though this patch doesn't fix any (known) problems, it
>>> still seems wise as a general policy to clear interrupt before handling
>>> them.
>>>
>>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>> ---
>>> Changes in v2: None
>>>
>>>  drivers/usb/dwc2/core_intr.c | 55 ++++++++++++++++++++++----------------------
>>>  drivers/usb/dwc2/hcd_intr.c  | 16 ++++++-------
>>>  2 files changed, 35 insertions(+), 36 deletions(-)
>>>
>>> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
>>> index 61601d16e233..2a166b7eec41 100644
>>> --- a/drivers/usb/dwc2/core_intr.c
>>> +++ b/drivers/usb/dwc2/core_intr.c
>>> @@ -80,15 +80,16 @@ static const char *dwc2_op_state_str(struct dwc2_hsotg *hsotg)
>>>   */
>>>  static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
>>>  {
>>> -     u32 hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>>> +     u32 hprt0;
>>>
>>> +     /* Clear interrupt */
>>> +     dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
>>> +
>>> +     hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>>>       if (hprt0 & HPRT0_ENACHG) {
>>>               hprt0 &= ~HPRT0_ENA;
>>>               dwc2_writel(hprt0, hsotg->regs + HPRT0);
>>>       }
>>> -
>>> -     /* Clear interrupt */
>>> -     dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
>>
>> isn't this a regression ? You're first clearing the interrupts and only
>> then reading to check what's pending, however, what's pending has just
>> been cleared. Seems like this should be:
>>
>> hprt0 = dwc2_readl(HPRT0);
>> dwc2_writeal(PRTINT, GINTSTS);
> 
> Actually, we could probably remove the setting of GINTSTS_PRTINT
> completely.  The docs I have say that the GINTSTS_PRTINT is read only
> and that:
> 
>> The core sets this bit to indicate a change in port status of one of the
>> DWC_otg core ports in Host mode. The application must read the
>> Host Port Control and Status (HPRT) register to determine the exact
>> event that caused this interrupt. The application must clear the
>> appropriate status bit in the Host Port Control and Status register to
>> clear this bit.
> 
> ...so writing PRTINT is probably useless, but John can confirm.
> 

Yup, it seems it can be removed.

John

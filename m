From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 10:13:36 -0800
Message-ID: <CAD=FV=U7L-=C5rv+YTQV91kXpieRGA8MpAU+qaXzw_0xYUOXJw@mail.gmail.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
	<87y4dxltzi.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <87y4dxltzi.fsf@saruman.tx.rr.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@ti.com>
Cc: John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Felipe,

On Mon, Nov 16, 2015 at 9:44 AM, Felipe Balbi <balbi@ti.com> wrote:
>>  extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
>>  #else
>>  static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
>>  { return 0; }
>> -static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg) {}
>> +static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
>> +static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force) {}
>>  static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
>>  static inline void dwc2_hcd_remove(struct dwc2_hsotg *hsotg) {}
>>  static inline int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
>> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
>> index 27daa42788b1..61601d16e233 100644
>> --- a/drivers/usb/dwc2/core_intr.c
>> +++ b/drivers/usb/dwc2/core_intr.c
>> @@ -239,7 +239,7 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg *hsotg)
>>                       dev_dbg(hsotg->dev, "a_suspend->a_peripheral (%d)\n",
>>                               hsotg->op_state);
>>                       spin_unlock(&hsotg->lock);
>> -                     dwc2_hcd_disconnect(hsotg);
>> +                     dwc2_hcd_disconnect(hsotg, false);
>
> because force is unnecessary (it seems to be just an optimization to
> me), this change is unnecessary.

I added "force" in v2 of the patch in response to John's feedback to
v1.  He pointed out that when you unload the module when you have a
device connected that my v1 patch would not properly disconnect the
device (or, rather, it would disconnect it and then reconnect it).

That's why _dwc2_hcd_stop() calls dwc2_hcd_disconnect() with a force of "true".


>>  /**
>> + * dwc2_hcd_connect() - Handles connect of the HCD
>> + *
>> + * @hsotg: Pointer to struct dwc2_hsotg
>> + *
>> + * Must be called with interrupt disabled and spinlock held
>> + */
>> +void dwc2_hcd_connect(struct dwc2_hsotg *hsotg)
>> +{
>> +     if (hsotg->lx_state != DWC2_L0)
>> +             usb_hcd_resume_root_hub(hsotg->priv);
>> +
>> +     hsotg->flags.b.port_connect_status_change = 1;
>> +     hsotg->flags.b.port_connect_status = 1;
>> +}
>
> you make no mention of why this is needed. This is basically a refactor,
> not a fix.

This new function is called from two places now, isn't it?

Basically this is a little bit of code that used to be directly in
dwc2_port_intr().  I still want it there, but I also want to call the
same bit of code after a disconnect if I detect that the device has
been inserted again.


>> @@ -315,6 +333,24 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>>               dwc2_hcd_cleanup_channels(hsotg);
>>
>>       dwc2_host_disconnect(hsotg);
>> +
>> +     /*
>> +      * Add an extra check here to see if we're actually connected but
>> +      * we don't have a detection interrupt pending.  This can happen if:
>> +      *   1. hardware sees connect
>> +      *   2. hardware sees disconnect
>> +      *   3. hardware sees connect
>> +      *   4. dwc2_port_intr() - clears connect interrupt
>> +      *   5. dwc2_handle_common_intr() - calls here
>> +      *
>> +      * Without the extra check here we will end calling disconnect
>> +      * and won't get any future interrupts to handle the connect.
>> +      */
>> +     if (!force) {
>> +             hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>> +             if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
>> +                     dwc2_hcd_connect(hsotg);
>
> what's inside this 'force' branch is what you really need to fix the
> problem, right ? It seems like for the -rc cycle, all you need is:
>
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index 571c21727ff9..967d1e686efe 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -276,6 +276,7 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hsotg *hsotg)
>   */
>  void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>  {
> +       u32 hprt0;
>         u32 intr;
>
>         /* Set status flags for the hub driver */
> @@ -315,6 +316,15 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>                 dwc2_hcd_cleanup_channels(hsotg);
>
>         dwc2_host_disconnect(hsotg);
> +
> +       hprt0 = dwc2_readl(hsotg->regs + HPRT0);
> +       if (!(hprt0 & (HPRT0_CONNDET | HPRT0_CONNSTS))) {
> +               if (hsotg->lx_state != DWC2_L0)
> +                       usb_hcd_resume_roothub(hsotg->priv);
> +
> +               hsotg->flags.b.port_connect_status_change = 1;
> +               hsotg->flags.b.port_connect_status = 1;
> +       }

I'd really rather not add the duplication unless you insist.  To me it
makes it clearer to include the (small) refactor in the same patch.

If the refactor makes this change too big for an RC, then it's OK with
me to just skip this for the RC.  It's not fixing a regression or
anything.  I have no requirements to have this land in 4.4.  It fixes
a bug and I thought that the fix was pretty small and safe (despite
having a diffstat that's bigger than the bare minimum).  I will leave
it to your judgement.


>> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
>> index bda0b21b850f..03504ac2fecc 100644
>> --- a/drivers/usb/dwc2/hcd_intr.c
>> +++ b/drivers/usb/dwc2/hcd_intr.c
>> @@ -350,11 +350,7 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
>>               dev_vdbg(hsotg->dev,
>>                        "--Port Interrupt HPRT0=0x%08x Port Connect Detected--\n",
>>                        hprt0);
>> -             if (hsotg->lx_state != DWC2_L0)
>> -                     usb_hcd_resume_root_hub(hsotg->priv);
>> -
>> -             hsotg->flags.b.port_connect_status_change = 1;
>> -             hsotg->flags.b.port_connect_status = 1;
>> +             dwc2_hcd_connect(hsotg);
>
> unnecessary change.
>
> Do you agree  or do you think 'force' is really necessary for this fix ?

As per above, John thought it was a good idea to really make the
disconnect happen upon module unload.  If you disagree then we could
probably just totally remove the "dwc2_hcd_disconnect(hsotg);" from
the _dwc2_hcd_stop() function.


-Doug

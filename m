From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 12:22:14 -0600
Message-ID: <87vb91ls89.fsf@saruman.tx.rr.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <87y4dxltzi.fsf@saruman.tx.rr.com>
 <CAD=FV=U7L-=C5rv+YTQV91kXpieRGA8MpAU+qaXzw_0xYUOXJw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8017255178376609604=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=U7L-=C5rv+YTQV91kXpieRGA8MpAU+qaXzw_0xYUOXJw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============8017255178376609604==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
> Felipe,
>
> On Mon, Nov 16, 2015 at 9:44 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
>>>  extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
>>>  #else
>>>  static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
>>>  { return 0; }
>>> -static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg) {}
>>> +static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
>>> +static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool =
force) {}
>>>  static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
>>>  static inline void dwc2_hcd_remove(struct dwc2_hsotg *hsotg) {}
>>>  static inline int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
>>> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
>>> index 27daa42788b1..61601d16e233 100644
>>> --- a/drivers/usb/dwc2/core_intr.c
>>> +++ b/drivers/usb/dwc2/core_intr.c
>>> @@ -239,7 +239,7 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg =
*hsotg)
>>>                       dev_dbg(hsotg->dev, "a_suspend->a_peripheral (%d)=
\n",
>>>                               hsotg->op_state);
>>>                       spin_unlock(&hsotg->lock);
>>> -                     dwc2_hcd_disconnect(hsotg);
>>> +                     dwc2_hcd_disconnect(hsotg, false);
>>
>> because force is unnecessary (it seems to be just an optimization to
>> me), this change is unnecessary.
>
> I added "force" in v2 of the patch in response to John's feedback to
> v1.  He pointed out that when you unload the module when you have a
> device connected that my v1 patch would not properly disconnect the
> device (or, rather, it would disconnect it and then reconnect it).
>
> That's why _dwc2_hcd_stop() calls dwc2_hcd_disconnect() with a force
> of "true".

There's no mention of this in commit log. It would be great to add a:

"while at that, also make sure that we don't try to detect a device on
module unload because of foo bar baz as pointed out by John Youn".

Or something along these lines.

>>>  /**
>>> + * dwc2_hcd_connect() - Handles connect of the HCD
>>> + *
>>> + * @hsotg: Pointer to struct dwc2_hsotg
>>> + *
>>> + * Must be called with interrupt disabled and spinlock held
>>> + */
>>> +void dwc2_hcd_connect(struct dwc2_hsotg *hsotg)
>>> +{
>>> +     if (hsotg->lx_state !=3D DWC2_L0)
>>> +             usb_hcd_resume_root_hub(hsotg->priv);
>>> +
>>> +     hsotg->flags.b.port_connect_status_change =3D 1;
>>> +     hsotg->flags.b.port_connect_status =3D 1;
>>> +}
>>
>> you make no mention of why this is needed. This is basically a refactor,
>> not a fix.
>
> This new function is called from two places now, isn't it?
>
> Basically this is a little bit of code that used to be directly in
> dwc2_port_intr().  I still want it there, but I also want to call the
> same bit of code after a disconnect if I detect that the device has
> been inserted again.

I got that :-) But it's not mentioned in commit and it's apparently
unnecessary for fixing the bug :-) Another "we're also adding a new
hsotg_disconnect() function by means of refactoring to avoid code
duplication" would've been enough.

>>> @@ -315,6 +333,24 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>>>               dwc2_hcd_cleanup_channels(hsotg);
>>>
>>>       dwc2_host_disconnect(hsotg);
>>> +
>>> +     /*
>>> +      * Add an extra check here to see if we're actually connected but
>>> +      * we don't have a detection interrupt pending.  This can happen =
if:
>>> +      *   1. hardware sees connect
>>> +      *   2. hardware sees disconnect
>>> +      *   3. hardware sees connect
>>> +      *   4. dwc2_port_intr() - clears connect interrupt
>>> +      *   5. dwc2_handle_common_intr() - calls here
>>> +      *
>>> +      * Without the extra check here we will end calling disconnect
>>> +      * and won't get any future interrupts to handle the connect.
>>> +      */
>>> +     if (!force) {
>>> +             hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
>>> +             if (!(hprt0 & HPRT0_CONNDET) && (hprt0 & HPRT0_CONNSTS))
>>> +                     dwc2_hcd_connect(hsotg);
>>
>> what's inside this 'force' branch is what you really need to fix the
>> problem, right ? It seems like for the -rc cycle, all you need is:
>>
>> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
>> index 571c21727ff9..967d1e686efe 100644
>> --- a/drivers/usb/dwc2/hcd.c
>> +++ b/drivers/usb/dwc2/hcd.c
>> @@ -276,6 +276,7 @@ static void dwc2_hcd_cleanup_channels(struct dwc2_hs=
otg *hsotg)
>>   */
>>  void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>>  {
>> +       u32 hprt0;
>>         u32 intr;
>>
>>         /* Set status flags for the hub driver */
>> @@ -315,6 +316,15 @@ void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg)
>>                 dwc2_hcd_cleanup_channels(hsotg);
>>
>>         dwc2_host_disconnect(hsotg);
>> +
>> +       hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
>> +       if (!(hprt0 & (HPRT0_CONNDET | HPRT0_CONNSTS))) {
>> +               if (hsotg->lx_state !=3D DWC2_L0)
>> +                       usb_hcd_resume_roothub(hsotg->priv);
>> +
>> +               hsotg->flags.b.port_connect_status_change =3D 1;
>> +               hsotg->flags.b.port_connect_status =3D 1;
>> +       }
>
> I'd really rather not add the duplication unless you insist.  To me it
> makes it clearer to include the (small) refactor in the same patch.
>
> If the refactor makes this change too big for an RC, then it's OK with
> me to just skip this for the RC.  It's not fixing a regression or
> anything.  I have no requirements to have this land in 4.4.  It fixes
> a bug and I thought that the fix was pretty small and safe (despite
> having a diffstat that's bigger than the bare minimum).  I will leave
> it to your judgement.

let's at least modify commit log to make all these extra changes clear
that they are needed because of reason (a) or (b) or whatever. If you
just send a patch doing much more than it apparently should without no
mention as to why it was done this way, I can't know for sure those
changes are needed; next thing you know, Greg refuses to apply my pull
request because the change is too large :-)

We don't want that to happen :-)

>>> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
>>> index bda0b21b850f..03504ac2fecc 100644
>>> --- a/drivers/usb/dwc2/hcd_intr.c
>>> +++ b/drivers/usb/dwc2/hcd_intr.c
>>> @@ -350,11 +350,7 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsot=
g)
>>>               dev_vdbg(hsotg->dev,
>>>                        "--Port Interrupt HPRT0=3D0x%08x Port Connect De=
tected--\n",
>>>                        hprt0);
>>> -             if (hsotg->lx_state !=3D DWC2_L0)
>>> -                     usb_hcd_resume_root_hub(hsotg->priv);
>>> -
>>> -             hsotg->flags.b.port_connect_status_change =3D 1;
>>> -             hsotg->flags.b.port_connect_status =3D 1;
>>> +             dwc2_hcd_connect(hsotg);
>>
>> unnecessary change.
>>
>> Do you agree  or do you think 'force' is really necessary for this fix ?
>
> As per above, John thought it was a good idea to really make the
> disconnect happen upon module unload.  If you disagree then we could
> probably just totally remove the "dwc2_hcd_disconnect(hsotg);" from
> the _dwc2_hcd_stop() function.

see above.

thanks

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWSh7WAAoJEIaOsuA1yqREsbQP/R8jcZyKgAJlfibTWiY3MHGV
+ORnFIS9vqtuYDvmVn0cwzc9XbHtGNIy9U17Sixfey2zW63F0mP/BDzD4f+VWh7W
ee8NRfgKuUOTXHRKGaC23h+GLFYHE5KRq3yxbni/uzobjsHlmwDZ081FRSzCboe0
8ONcXfLtQaCoZ5Q3kcRhZ0sP9lETw3QYJWBmphVkfX8ug9oYpEbQaV4a4zcWcclP
+mV8OSAlZ75vcU+xOt4z28O7m1YLl2+ihOUqcWt5Vfb1h2GcIHwpcdgau9Mxu2t6
Lj/urk+yvTBeUycJclGXeceXkmKWOX3SOG9KiEl9+ukPyT2nkRBXdHF47DuuEV/p
eVGmIHpCL6gQt/OwXbpyJw1pZfqxTZ+fR5W7nwEov9LVDZJxmsQKwLVSTkXWwYOf
l1UyCvtYHzmwXU3H/7J59RKldm2tIHI8Be+yuQyWLDNmcxLZ/PQaFV8Xif8P1GO2
ergXYB8+W1euNh0MN5VIDsLhNhAPuy4hLhs0GMtQc+K0yXIgLJnF9sTtJ7EltAYZ
aTAJ4zn4+wayNZYwDvX+uNYVwQZ25Xi6vo9D3JknlvvbFg5U1tsFQ09QPsqsy/f7
3ao9luxqq70IF9pCBsHb2Dmx76FeM7P4x65P2nRKuQ1G1gaeFf3nczlISWHM0Kj/
Ei3OrxlJsN/kytwbti/5
=FrRt
-----END PGP SIGNATURE-----
--=-=-=--


--===============8017255178376609604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8017255178376609604==--

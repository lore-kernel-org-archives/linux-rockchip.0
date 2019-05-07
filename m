From: Artur Petrosyan <Arthur.Petrosyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Date: Tue, 7 May 2019 07:26:59 +0000
Message-ID: <SN1PR12MB2431A37C761DA0BAAEF45F30A7310@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
 <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
 <SN1PR12MB243156982D5BD74F11680597A7350@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=XzsKe5n_ThcrByW79UznpkmHf0YNRNKH8G3eFtUSsYZQ@mail.gmail.com>
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
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, Amelie Delaunay <amelie.delaunay-qxv4g6HH51o@public.gmane.org>, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, "amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org" <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, heiko@sntec
List-Id: linux-rockchip.vger.kernel.org

On 5/3/2019 19:04, Doug Anderson wrote:
> Hi,
> 
> On Fri, May 3, 2019 at 1:20 AM Artur Petrosyan
> <Arthur.Petrosyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>
>> On 5/1/2019 05:57, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, Apr 29, 2019 at 11:06 PM Artur Petrosyan
>>> <Arthur.Petrosyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 4/29/2019 21:34, Doug Anderson wrote:
>>>>> Hi,
>>>>>
>>>>> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
>>>>> <Arthur.Petrosyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 4/18/2019 04:15, Douglas Anderson wrote:
>>>>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>>>>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>>>>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>>>>>>> because apparently it broke the Altera SOCFPGA.
>>>>>>>
>>>>>>> With all the changes that have happened to dwc2 in the meantime, it's
>>>>>>> possible that the Altera SOCFPGA will just magically work with this
>>>>>>> change now.  ...and it would be good to get bus suspend/resume
>>>>>>> implemented.
>>>>>>>
>>>>>>> This change is a forward port of one that's been living in the Chrome
>>>>>>> OS 3.14 kernel tree.
>>>>>>>
>>>>>>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>>>>>> ---
>>>>>>> This patch was last posted at:
>>>>>>>
>>>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
>>>>>>>
>>>>>>> ...and appears to have died the death of silence.  Maybe it could get
>>>>>>> some bake time in linuxnext if we can't find any proactive testing?
>>>>>>>
>>>>>>> I will also freely admit that I don't know tons about the theory
>>>>>>> behind this patch.  I'm mostly just re-hashing the original commit
>>>>>>> from Kever that was reverted since:
>>>>>>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>>>>>>       don't get hotplug events.  This is despite dwc2 auto-detecting that
>>>>>>>       we are power optimized.
>>>>>> What do you mean by doesn't "just work" ? It seem to me that even after
>>>>>> adding this patch you don't get issues fixed.
>>>>>> You mention that you don't get the hotplug events. Please provide dwc2
>>>>>> debug logs and register dumps on this issue.
>>>>>
>>>>> I mean that partial power down in the currently upstream driver
>>>>> doesn't work.  AKA: if I turn on partial power down in the upstream
>>>>> driver then hotplug events break.  I can try to provide some logs.  On
>>>>> what exact version of the code do you want logs?  Just your series?
>>>>> Just my series?  Mainline?  Some attempt at combining both series?  As
>>>>> I said things seem to sorta work with the combined series.  I can try
>>>>> to clarify if that's the series you want me to test with.  ...or I can
>>>>> wait for your next version?
>>>> As I said this patch doesn't fix the issue with hotplug. With this patch
>>>> or without the hotplug behaves as it was. I have tested it on our setup.
>>>>
>>>> Have you debugged your patch? Does it make any difference on your setup
>>>> ? Does it fix the issue with hotplug?
>>>
>>> I think we're still not taking on the same page.
>>>
>>> My patch makes no attempt to make partial power down mode work.  My
>>> patch attempts to make things work a little better when using
>>> DWC2_POWER_DOWN_PARAM_NONE.  There is no use testing my patch with
>>> partial power down as it shouldn't have any impact there.
>>>
>>>
>>>>> I am by no means an expert on dwc2, but an assumption made in my patch
>>>>> is that even cores that can't support partial power down can still
>>>>> save some amount of power when hcd_suspend is called.
>>>> Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
>>>>>
>>>>> Some evidence that this should be possible: looking at mainline Linux
>>>>> and at dwc2_port_suspend(), I see:
>>>>>
>>>>> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
>>>> Currently (without your and my patches) (looking at mainline Linux) the
>>>> function dwc2_port_suspend() is called anyway because its call is issued
>>>> by the system. But it performs entering to suspend only in case of
>>>> DWC2_POWER_DOWN_PARAM_PARTIAL.
>>>>
>>>> This is not an assumption. What I am pointing out is based on debugging
>>>> and before making assumptions without debugging for me seems not ok.
>>>>
>>>> Currently without your patch and without my patches. In the
>>>> dwc2_port_suspend() it will enter to suspend only in case that
>>>> power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the
>>>> code more carefully you will see
>>>>
>>>>           if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
>>>>                   goto skip_power_saving;
>>>>
>>>> This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip
>>>> power saving.
>>>>
>>>> So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it
>>>> tries to suspend.
>>>
>>> We must be looking at different code.  I'm looking at Linux's tree, AKA:
>>>
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n3488&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=IWkDOOGTr0q-H1piDv2KOZe_Hnrz18g6rXFx-DsTuv4&s=AHu2iOKkybliRGtIfN7cF5p070UdvUKTYJsyAKYojis&e=
>> Here you are looking at the old code. After that there are several of
>> changes related to suspend/resume functions.
> 
> In my email, see that I said I actually checked out mainline kernel
> (and I gave you the exact version: "v5.1-rc7-5-g83a50840e72a") and
> added printouts in dwc2_port_suspend() next to where it set HPRT0_SUSP
> and PCGCTL_STOPPCLK in dwc2_port_suspend().
I was talking about your patch which edits _dwc2_hcd_suspend() function.
What dwc2_port_suspend() implements for the hibernation or partial power 
down I have not tested. It is a different implementation.
> 
> [  454.906364] dwc2 ff540000.usb: I'm setting HPRT0_SUSP
> [  454.906367] dwc2 ff540000.usb: I'm setting PCGCTL_STOPPCLK
> 
> The version "v5.1-rc7-5-g83a50840e72a" is not old code.
> 
> 
>> This is the link to the code with changes. Latest version of those
>> functions.
>>
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n4489&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=4lskGlSdN5lp0MXVy1SP0zxzFtbPMSUoQKQzLLmfoOg&s=A-ikUNQklzouItTOQB078WrOiMcfCqgw8sBgLFwtyTU&e=
>>
>> Your changes are sitting on that latest version of code. Not the old
>> version of it.
> 
> You are pointing me at _dwc2_hcd_suspend() whereas I pointed at
> dwc2_port_suspend().  Why?
Because your patch is editing _dwc2_hcd_suspend().
> 
> I am saying that dwc2_port_suspend() _does_ set "HPRT0_SUSP" and
> "PCGCTL_STOPPCLK" even with DWC2_POWER_DOWN_PARAM_NONE.  Do you
> disagree?
Yes dwc2_port_suspend() does but that is a different implementation
> 
> I completely agree that on mainline _dwc2_hcd_suspend() _does not_ set
> these bits with DWC2_POWER_DOWN_PARAM_NONE.  That is what my patch
> fixes.
Yes so I was pointing to that.
> 
> 
> -Doug
> 

I have performed testes and made sure that the patch is ok. It is just 
that I am not sure if it does really save power. I have not been able to 
see if any power is saved.

So I am ok with this patch.

-- 
Regards,
Artur

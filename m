From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before
 handling them
Date: Thu, 19 Nov 2015 19:09:51 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3D79C8@US01WEMBX2.internal.synopsys.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <1446582629-30091-2-git-send-email-dianders@chromium.org>
 <87wpthnc2e.fsf@saruman.tx.rr.com>
 <CAD=FV=W-UWJnHZioChnVmPmJQXxMGGOUQiF81h0ZTA4invivVA@mail.gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC3D696B@US01WEMBX2.internal.synopsys.com>
 <CAD=FV=WSypaenJcRjhneAkcW=K5J-q-+c7L2=vJj5YAoGaFncw@mail.gmail.com>
 <877fldg8d9.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@ti.com>, Doug Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/19/2015 10:19 AM, Felipe Balbi wrote:
> 
> Hi,
> 
> Doug Anderson <dianders@chromium.org> writes:
>>>>> isn't this a regression ? You're first clearing the interrupts and only
>>>>> then reading to check what's pending, however, what's pending has just
>>>>> been cleared. Seems like this should be:
>>>>>
>>>>> hprt0 = dwc2_readl(HPRT0);
>>>>> dwc2_writeal(PRTINT, GINTSTS);
>>>>
>>>> Actually, we could probably remove the setting of GINTSTS_PRTINT
>>>> completely.  The docs I have say that the GINTSTS_PRTINT is read only
>>>> and that:
>>>>
>>>>> The core sets this bit to indicate a change in port status of one of the
>>>>> DWC_otg core ports in Host mode. The application must read the
>>>>> Host Port Control and Status (HPRT) register to determine the exact
>>>>> event that caused this interrupt. The application must clear the
>>>>> appropriate status bit in the Host Port Control and Status register to
>>>>> clear this bit.
>>>>
>>>> ...so writing PRTINT is probably useless, but John can confirm.
>>>>
>>>
>>> Yup, it seems it can be removed.
>>
>> How do you guys want this handled?  Should I send up a new version of
>> this patch?  ...or should I send a followon patch that does this
>> removal?
> 
> I'll leave the final decision to John, but my opinion is that a new
> version of the patch would be preferrable.
> 

Hi Doug,

Could you resend with the change?

Regards,
John

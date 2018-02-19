From: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Mon, 19 Feb 2018 18:02:48 +0100
Message-ID: <56a951cc-dfdc-46c8-18e5-b8b8a2a5a0d0@gmail.com>
References: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A67F86@am04wembxa.internal.synopsys.com>
 <CALw8SCVALfRZiF5sZKn0AcXaF6m6GSXXxKAGj2O+ndbgpeCiqw@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A68287@am04wembxa.internal.synopsys.com>
 <CALw8SCX2SrR=ukfz1vn_wiTbyTv7_6xyLSPRQhkTdSQ=Y8MA3g@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A6B365@am04wembxa.internal.synopsys.com>
 <CALw8SCVzqAPx56hEDWWtvijeXz9g3roWDyithKYZENnfNDcRvQ@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A6C4CA@am04wembxa.internal.synopsys.com>
 <ec690b89-2c90-7f1d-86cd-582cef96baf3@gmail.com>
 <410670D7E743164D87FA6160E7907A560113A6E9E6@am04wembxa.internal.synopsys.com>
 <be95c74c-5706-df34-b83a-45c9df149f5e@gmail.com>
 <410670D7E743164D87FA6160E7907A560113A6EB2B@am04wembxa.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <410670D7E743164D87FA6160E7907A560113A6EB2B-ouFQeoKRuQ8bQ7k9MBbv4fufCSb+aD3WLzEdoUbNIic@public.gmane.org>
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
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 02/19/2018 11:11 AM, Minas Harutyunyan wrote:
> On 2/19/2018 12:51 PM, Marek Vasut wrote:
>> On 02/19/2018 09:19 AM, Minas Harutyunyan wrote:
>>> On 2/17/2018 12:07 AM, Marek Vasut wrote:
>>>> On 02/16/2018 06:59 AM, Minas Harutyunyan wrote:
>>>>> On 2/15/2018 5:20 PM, Mirza Krak wrote:
>>>>>> On 14 February 2018 at 13:07, Minas Harutyunyan
>>>>>> <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>>>>>> On 2/14/2018 12:57 PM, Mirza Krak wrote:
>>>>>>>> On 8 February 2018 at 14:53, Minas Harutyunyan
>>>>>>>> <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>>>>>
>>>>>> < snip >
>>>>>>
>>>>>>>
>>>>>>> I reviewed your interrupt count log again. About 140,000 interrupts in 2
>>>>>>> seconds, obviously it's not SOF only interrupts. More probably, its NAK
>>>>>>> respond interrupts to SSPLIT/CSPLIT transactions. For this case I can
>>>>>>> recommend you to apply patch from Douglas Anderson: "[PATCH v2] usb:
>>>>>>> dwc2: host: Don't retry NAKed transactions right away" which already
>>>>>>> merged to 4.16-rc1.
>>>>>>>
>>>>>>> In your setups you see different behavior on different HUBs. Your HUBs
>>>>>>> have different "TT think time": 8 and 32. In USB2.0 spec "TT think time"
>>>>>>> described as follow "TT requires at most 8/32 FS bit times of inter
>>>>>>> transaction gap on a full-/low-speed downstream bus". So, your "worst"
>>>>>>> HUB with "TT think time"=8 sending more frequently SSPLIT/CSPLIT
>>>>>>> transactions which replied by NAK. As result you see about 4 time more
>>>>>>> interrupts comparing to "good" HUB. Could you please check interrupts
>>>>>>> count for "good" HUB and check "4 time" hypothesis.
>>>>>>
>>>>>> Did some further testing. The "good" HUB is actually as bad as the
>>>>>> "bad" HUB, and it was my setup that caused the different behavior. Did
>>>>>> not use the same devices etc.
>>>>>>
>>>>>> Once I made sure that the configuration and setup was the same on both
>>>>>> board I could see that the behaved similarly. And that is the
>>>>>> following interrupt load:
>>>>>>
>>>>>> - BT USB (FS) = ~80k interrupts / second
>>>>>> - Keyboard (FS) = ~80k interrupts / second
>>>>>> - WiFI USB (HS) = ~8k interrupts / second
>>>>>>
>>>>>> After applying the suggested patch [1], it is steady around 8k
>>>>>> interrupts / second no matter what device I connect (HS/FS,
>>>>>> HUB/NO-HUB). Which is acceptable and usable.
>>>>>
>>>>> Great!
>>>>
>>>> So 8k IRQs per second is what I should expect from this HW with HS
>>>> device attached, that's normal and cannot be reduced ?
>>>>
>>> If core acting as Host in Buffer DMA mode then 8k IRQs per second (SOF
>>> interrupts) is expected if connected device(s) has periodic endpoint.
>>
>> Is there a way to reduce that or is that the absolute minimum in HS mode?
>>
> We already discussed, in this email thread earlier, why SOF interrupts 
> required and unmasked.
> Only in case when connected device with CTRL+BLK EP's only (like flash 
> drive) and directly connected to cores root HUB, SOF's will be masked.

That's the setup I have on Altera SoCFPGA, yet the SOFs are still present.

-- 
Best regards,
Marek Vasut

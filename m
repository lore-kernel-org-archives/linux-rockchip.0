From: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Tue, 6 Mar 2018 06:45:45 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113AB3E5E@am04wembxa.internal.synopsys.com>
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
 <56a951cc-dfdc-46c8-18e5-b8b8a2a5a0d0@gmail.com>
 <410670D7E743164D87FA6160E7907A560113A6F1B4@am04wembxa.internal.synopsys.com>
 <9dd57175-eb50-41df-b780-ccc3c82fabe3@gmail.com>
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
To: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 3/5/2018 11:14 PM, Marek Vasut wrote:
> On 02/20/2018 06:51 AM, Minas Harutyunyan wrote:
> [...]
>>>>> Is there a way to reduce that or is that the absolute minimum in HS mode?
>>>>>
>>>> We already discussed, in this email thread earlier, why SOF interrupts
>>>> required and unmasked.
>>>> Only in case when connected device with CTRL+BLK EP's only (like flash
>>>> drive) and directly connected to cores root HUB, SOF's will be masked.
>>>
>>> That's the setup I have on Altera SoCFPGA, yet the SOFs are still present.
>>>
>> Could you please send verbose lsusb on connected to dwc2 device
> 
> See attached
> 
>> and driver debug log.
> 
> What exactly do you mean by this one ?
Enable debugging messages and verbose debugging messages for dwc2 from 
make menuconfig. Provide dmesg starting from dwc2 load till HS device 
connected to dwc2 port and enumerated.

Thanks,
Minas

> 

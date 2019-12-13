From: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: RK3288 dwc2 USB OTG + macOS
Date: Fri, 13 Dec 2019 11:55:38 +0000
Message-ID: <9ba410fb-80c7-8500-f1b3-f4f777868644@synopsys.com>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
 <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
 <3e45e70d-1e59-373d-76b7-b6a8a6320514@synopsys.com>
 <8a2341be-7b34-54d1-83aa-d8961d2c1618@embed.me.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <8a2341be-7b34-54d1-83aa-d8961d2c1618-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Content-Language: en-US
Content-ID: <ED71CF75D27B3B41AE792B3FDCC17308-asWib9pRmPqcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>, Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Cc: Phillip Karls <prkarls-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jack,

On 12/13/2019 3:24 PM, Jack Mitchell wrote:
> Hi Minas,
> 
> On 28/11/2019 11:29, Minas Harutyunyan wrote:
>> Hi Jack,
>>
>>
>> On 8/30/2019 2:49 PM, Jack Mitchell wrote:
>>> On 22/08/2019 17:06, Jack Mitchell wrote:
>>>> I'm having issues on a Firefly rk3288 board when trying to use USB
>>>> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
>>>> with my Linux desktop.
>>>>
>>>> If I set the dr_mode to "peripheral" macOS will work, but still takes
>>>> around 10 seconds to enumerate the device which makes me think it's only
>>>> just working. However, I need the port to be in "otg" mode as it will
>>>> switch between peripheral/host use cases.
>>>>
>>>> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
>>>> being plugged into the macOS device for 30 seconds, then removed. The
>>>> mac in this case is a 2013 macbook pro. Any pointers in the right
>>>> direction would be greatly appreciated.
>>>>
>>>> Regards,
>>>> Jack.
>>>>
>> Sorry, for late response.
>>
>> Could you please apply recently submitted patch "[PATCH] usb: dwc2: Fix
>> SET/CLEAR_FEATURE and GET_STATUS flows" and test again.
>>
> 
> Tested and confirmed working, many thanks.
> 
> Tested-By: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>
> 

Thanks for testing.

Thanks,
Minas


>>>
>>> I've been poking about with this some more and I've managed to bisect
>>> the issue down to the following commit
>>>
>>> 729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow
>>>
>>> If I build before this commit everything works fine with a g_ether
>>> gadget device on mac. Unfortunately it's a rather large change which I
>>> can't just revert in master as it's got multiple dependant commits
>>> later. So, any advice on what could be causing this or how to help debug
>>> it would be much appreciated, as at the moment I've just forward ported
>>> the working 4.16 version of the driver over the 5.3-rc6 broken driver
>>> which isn't very sustainable in the long run.
>>
>> I don't think that issue root cause coming from mentioned by you above
>> patch. Based on log you provided, SET_FEATURE control transfer not
>> completed by gadget - ZLP on status stage not sent to host.
>>
>>>
>>> Regards,
>>> Jack.
>>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Drockchip&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=Xlr_-nLN_p1MN4FzrE0tJo1DDBm8TYUsN3fQQLnAL7c&s=TgaRUGhlRfNs9MjE3VRHE343W4Eb8cTYCWVXR3KSvhQ&e=
>>

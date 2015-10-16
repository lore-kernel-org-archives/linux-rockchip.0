From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v2] usb: dwc2: host: Fix use after free w/ simultaneous
 irqs
Date: Fri, 16 Oct 2015 07:57:36 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC39A5FE@US01WEMBX2.internal.synopsys.com>
References: <1444863089-24636-1-git-send-email-dianders@chromium.org>
 <2B3535C5ECE8B5419E3ECBE30077290901DC399145@US01WEMBX2.internal.synopsys.com>
 <CAD=FV=UExajBowJ9CRJEiutzSL5TaKdDFeuZJGcOrQsj6PAx8A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>
Cc: "balbi@ti.com" <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 10/15/2015 4:38 PM, Doug Anderson wrote:
> John,
> 
> On Thu, Oct 15, 2015 at 4:21 PM, John Youn <John.Youn@synopsys.com> wrote:
>> Passing a NULL qtd to some of the subcases will lead to a NULL
>> pointer dereference in that function or some function that it
>> calls.
>>
>> I think you could just check the qtd after each call and bail if
>> it's not ok.
> 
> I worry a little bit about ignoring an interrupt that we've already
> acknowledged, but if you think that's safer I can certainly change the
> patch.
> 

In terms of avoiding crashes it's probably safer.

Whether it is correct or not, I'm not sure. I need to review the
code more.

The question is: after the qtd has been freed, is anything the
other handlers do necessary? Might have to look at each case
separately.

John

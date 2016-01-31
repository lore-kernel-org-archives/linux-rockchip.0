From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 10/22] usb: dwc2: host: Properly set the HFIR
Date: Sun, 31 Jan 2016 14:19:37 -0800
Message-ID: <CAD=FV=UNi4xu0=tt0cwAFaCHiwyPm_UoGrckvzMG196Q9Egg7g@mail.gmail.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
	<1454034013-24657-11-git-send-email-dianders@chromium.org>
	<56ADD2AF.3040901@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56ADD2AF.3040901@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Stefan Wahren <stefan.wahren@i2se.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Sun, Jan 31, 2016 at 1:23 AM, Kever Yang <kever.yang@rock-chips.com> wrote:
> Doug,
>
> On 01/29/2016 10:20 AM, Douglas Anderson wrote:
>>
>> According to the most up to date version of the dwc2 databook, the FRINT
>> field of the HFIR register should be programmed to:
>> * 125 us * (PHY clock freq for HS) - 1
>> * 1000 us * (PHY clock freq for FS/LS) - 1
>
> I got 3 version of dwc_otg databook, 2.74a, 2.94a and 3.10a,
> all the doc describe the FrInt as:

Can you check to see if you can get 3.30a (October 2015)?


> * 125 us * (PHY clock freq for HS)
> * 1000 us * (PHY clock freq for FS/LS)
>
> Maybe John can help to check the design.

Yes, this really needs John or someone at Synopsys.


> There are some feature different in new and old version, but not sure
> if this is one of then.
>
> The doc says If no value is programmed, the corecalculates the value
> based on the PHY clock specified in the FS/LS PHY Clock select field of
> Host configuration register(HCFG.FLSLPclkSel), does this work?

It seems to.  It looks like that's what makes our firmware work.  I'm
not 100% sure if there are any downsides to that approach...

-Doug

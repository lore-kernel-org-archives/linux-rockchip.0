From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 04/21] usb: dwc2: host: Set host_perio_tx_fifo_size to
 304 for rk3066
Date: Thu, 28 Jan 2016 15:25:35 -0800
Message-ID: <CAD=FV=UQF7u1t79Aac0Y70eYERuhg4dS-ciof9KpqFTL+EYujQ@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
	<1453486736-15358-5-git-send-email-dianders@chromium.org>
	<56A986B4.2050002@rock-chips.com>
	<CAD=FV=VAkY0ijkUBrgjY04+OfYq35u=MbqbbomeQxp_J179iHw@mail.gmail.com>
	<56A9B80A.2020506@rock-chips.com>
	<CAD=FV=Xtbmf2yOQx=cNTnrsV_35jTUhJCKbBNuHCRpr-qXrW0A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Xtbmf2yOQx=cNTnrsV_35jTUhJCKbBNuHCRpr-qXrW0A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Tao Huang <huangtao@rock-chips.com>, "Herrero, Gregory" <gregory.herrero@intel.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Alan Stern <stern@rowland.harvard.edu>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Jan 28, 2016 at 10:16 AM, Doug Anderson <dianders@chromium.org> wrote:
> Kever,
>
>
> On Wed, Jan 27, 2016 at 10:41 PM, Kever Yang <kever.yang@rock-chips.com> wrote:
>> Hi Doug,
>>
>> We are in HOST mode, we only need to receive data from USB camera
>> with RX FIFO, and no need to use TX FIFO for USB webcam, right? :)
>>
>> Any way, I think we need to NAK this patch after look into the design
>> of dwc2 controller. Because all the dwc2 controller inside the Rockchip
>> chips don't support the thresholding FIFO mode, in this case, there is
>> no more transaction before a whole packet is send out and the dwc2 only
>> care if the available FIFO is enough for next packet or not.
>>
>> So, the addition 48 words won't help to shorten the latency for data prepare
>> in this case.
>
> Ah ha!  I see where I messed up.  It wasn't lack of FIFO space that I
> was running into, it was lack of queue space.  :-P  I had conflated
> the two of them in my mind.  We still use the TX queue to transmit
> small packets so that we can receive our data...
>
> OK, so it's pretty sane to assume that exhausting the periodic TX FIFO
> isn't terribly common, I think.  Audio won't do it by itself and you
> probably won't have more than one audio device.  I guess if you had a
> video _output_ device hooked over USB then it could possible exhaust
> things.  ...but I think dwc2 still has a ways to do before I'd suggest
> anyone hooking that up.  :-P  At some point in time you could imagine
> the driver being more dynamic.
>
> OK, so the non periodic FIFO it is, then.

Actually, in my simple tests adding it to the non periodic FIFO didn't
help at all.  I'll just drop this patch.

-Doug

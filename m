From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 04/21] usb: dwc2: host: Set host_perio_tx_fifo_size to
 304 for rk3066
Date: Wed, 27 Jan 2016 19:28:58 -0800
Message-ID: <CAD=FV=VAkY0ijkUBrgjY04+OfYq35u=MbqbbomeQxp_J179iHw@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
	<1453486736-15358-5-git-send-email-dianders@chromium.org>
	<56A986B4.2050002@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56A986B4.2050002@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Tao Huang <huangtao@rock-chips.com>, "Herrero, Gregory" <gregory.herrero@intel.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Alan Stern <stern@rowland.harvard.edu>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Wed, Jan 27, 2016 at 7:10 PM, Kever Yang <kever.yang@rock-chips.com> wrote:
> Hi Doug,
>
> We are using the minimum FIFO size mode for TX now, which only
> equal to one max packet size.
>
> The addition FIFO size may help shorten the inter-packet data
> prepare latency when the bus/DRAM is busy.
>
> For the actual usage in TX, we have very little change to use the
> period TX FIFO with more than one max packet size in host mode.
> So far as I know, usb audio use the isochronous tx FIFO, but this
> king of device won't have much data payload and won't, I haven't
> see a usb audio have more data than 1024byte/ms.
>
> So I suggest we assign this 48 words to host_nperio_tx_fifi_size instead
> if we have to do this. Because we are using device base on bulk transaction
> like U-disk very frequently.

Try using a USB webcam.  With that plus a USB audio device it's easy
to overwhelm the periodic TX FIFO.

If we overwhelm the periodic TX FIFO we might actually fail to
transmit ISO or INT packets at the scheduled time.  That seems more
serious of a problem to try to fix than eeking out a tiny bit
performance on a USB disk.  ...but of course, it all depends on what
you consider important.  ;)

We could split the difference, I suppose and put half on each?

-Doug

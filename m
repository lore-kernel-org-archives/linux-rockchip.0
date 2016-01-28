From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 03/21] usb: dwc2: host: Set host_rx_fifo_size to 528
 for rk3066
Date: Thu, 28 Jan 2016 16:28:19 +0800
Message-ID: <56A9D123.7030601@rock-chips.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>	<1453486736-15358-4-git-send-email-dianders@chromium.org>	<56A89838.3040202@rock-chips.com> <CAD=FV=XKAzVOLCkFBH1nXeiaKeU4FoFN2CuRNMankA4xsgPsuw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=XKAzVOLCkFBH1nXeiaKeU4FoFN2CuRNMankA4xsgPsuw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On 01/28/2016 03:44 AM, Doug Anderson wrote:
> If it's all the same to you, I'll probably change it back to 525 and
> then increase the periodic FIFO size by 3 DWORDS in the next patch.
> 12 bytes may not be much, but might as well make use of them to
> improve performance / compatibility?
>
> Presumably you're also OK with the next patch in the series: ("usb:
> dwc2: host: Set host_perio_tx_fifo_size to 304 for rk3066")?
I'm OK for change in this patch, but I think we don't need next patch,
pls see the reply in another mail.

Thank,
- Kever

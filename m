From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH 2/2] usb: dwc2: fix isoc split in transfer with no data
Date: Tue, 24 Apr 2018 11:27:04 +0300
Message-ID: <799e2eea-be83-b3c1-3ee7-7a66b1759379@cogentembedded.com>
References: <1524537824-22010-1-git-send-email-william.wu@rock-chips.com>
 <1524537824-22010-3-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1524537824-22010-3-git-send-email-william.wu@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>, hminas@synopsys.com, felipe.balbi@linux.intel.com, gregkh@linuxfoundation.org
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, wzz@rock-chips.com, zsq@rock-chips.com, Allen.Hsu@quantatw.com, StanTsui@AOPEN.com
List-Id: linux-rockchip.vger.kernel.org

Hello!

On 4/24/2018 5:43 AM, William Wu wrote:

> If isoc split in transfer with no data (the length of DATA0
> packet is 0), we can't simply return immediately. Because the
> DATA0 can be the first transaction or the second transaction for
> the isoc split in transaction. If the DATA0 packet with on data
                                                           ^^ no?

> is in the first transaction, we can return immediately. But if
> the the DATA0 packet with on data is in the second transaction

   One "the" too many. And that "on data" again... :-)

> of isoc split in transaction sequence, we need to increase the
> qtd->isoc_frame_index and giveback urb to device driver if needed,
> otherwise, the MDATA packet will be lost.
> 
> A typical test case is that connect the dwc2 controller with an
> usb hs Hub (GL852G-12), and plug an usb fs audio device (Plantronics
> headset) into the downstream port of Hub. Then use the usb mic
> to record, we can find noise when playback.
> 
> In the case, the isoc split in transaction sequence like this:
> 
> - SSPLIT IN transaction
> - CSPLIT IN transaction
>    - MDATA packet (176 bytes)
> - CSPLIT IN transaction
>    - DATA0 packet (0 byte)
> 
> This patch use both the length of DATA0 and qtd->isoc_split_offset
> to check if the DATA0 is in the second transaction.
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>
[...]

MBR, Sergei

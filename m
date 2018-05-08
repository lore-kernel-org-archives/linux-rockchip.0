From: wlf <wulf@rock-chips.com>
Subject: Re: [PATCH v3 2/2] usb: dwc2: fix isoc split in transfer with no data
Date: Tue, 8 May 2018 15:01:32 +0800
Message-ID: <feaaa29d-8dfa-4233-2cd9-b89a191e5a57@rock-chips.com>
References: <1525748846-7767-1-git-send-email-william.wu@rock-chips.com>
 <1525748846-7767-3-git-send-email-william.wu@rock-chips.com>
 <CAD=FV=X3f9tHLY+5NJTBxegsc1PYz5MhomC7MNNSjL-vA8DCWg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=X3f9tHLY+5NJTBxegsc1PYz5MhomC7MNNSjL-vA8DCWg@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@google.com>, William Wu <william.wu@rock-chips.com>
Cc: hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, zsq@rock-chips.com, =?UTF-8?B?6Kix5ZiJ6YqY?= <Allen.Hsu@quantatw.com>, Stan Tsui <StanTsui@aopen.com>, =?UTF-8?B?U3BydWNlIFd1ICjlkLPlu7rli7Mp?= <Spruce.Wu@quantatw.com>, Martin.Tsai@quantatw.com, Kevin.Shai@quantatw.com
List-Id: linux-rockchip.vger.kernel.org

Dear Doug,

在 2018年05月08日 13:13, Doug Anderson 写道:
> Hi,
>
> On Mon, May 7, 2018 at 8:07 PM, William Wu <william.wu@rock-chips.com> wrote:
>> If isoc split in transfer with no data (the length of DATA0
>> packet is zero), we can't simply return immediately. Because
>> the DATA0 can be the first transaction or the second transaction
>> for the isoc split in transaction. If the DATA0 packet with no
>> data is in the first transaction, we can return immediately.
>> But if the DATA0 packet with no data is in the second transaction
>> of isoc split in transaction sequence, we need to increase the
>> qtd->isoc_frame_index and giveback urb to device driver if needed,
>> otherwise, the MDATA packet will be lost.
>>
>> A typical test case is that connect the dwc2 controller with an
>> usb hs Hub (GL852G-12), and plug an usb fs audio device (Plantronics
>> headset) into the downstream port of Hub. Then use the usb mic
>> to record, we can find noise when playback.
>>
>> In the case, the isoc split in transaction sequence like this:
>>
>> - SSPLIT IN transaction
>> - CSPLIT IN transaction
>>    - MDATA packet (176 bytes)
>> - CSPLIT IN transaction
>>    - DATA0 packet (0 byte)
>>
>> This patch use both the length of DATA0 and qtd->isoc_split_offset
>> to check if the DATA0 is in the second transaction.
>>
>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>> ---
>> Changes in v3:
>> - Remove "qtd->isoc_split_offset = 0" in the if test
>>
>> Changes in v2:
>> - Modify the commit message
>>
>>   drivers/usb/dwc2/hcd_intr.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
>> index ba6fd852..3003594 100644
>> --- a/drivers/usb/dwc2/hcd_intr.c
>> +++ b/drivers/usb/dwc2/hcd_intr.c
>> @@ -930,9 +930,8 @@ static int dwc2_xfercomp_isoc_split_in(struct dwc2_hsotg *hsotg,
>>          frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index];
>>          len = dwc2_get_actual_xfer_length(hsotg, chan, chnum, qtd,
>>                                            DWC2_HC_XFER_COMPLETE, NULL);
>> -       if (!len) {
>> +       if (!len && !qtd->isoc_split_offset) {
>>                  qtd->complete_split = 0;
>> -               qtd->isoc_split_offset = 0;
>>                  return 0;
>>          }
> This looks fine to me now, but as per my comments on the previous
> version I don't think I've dug through this problem enough to add my
> Reviewed-by tag.  I'll assume that John or someone with more knowledge
> of the USB protocol than I have will Review / Ack.
Thanks very much for your review. Let's wait for other experts' suggestion.
>
> -Doug
>
>
>

From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH v3 1/2] usb: dwc2: alloc dma aligned buffer for isoc split in
Date: Thu, 10 May 2018 13:59:13 -0700
Message-ID: <CAD=FV=Xsa9MAw==_Oi28B69oqZehwL2JTwEzjKAnH5PS5wKC_A@mail.gmail.com>
References: <1525748846-7767-1-git-send-email-william.wu@rock-chips.com>
 <1525748846-7767-2-git-send-email-william.wu@rock-chips.com>
 <CAD=FV=VKBVp++gPXzYN0N46NVarPNWqs1YZjfcd7twkU25WNyQ@mail.gmail.com>
 <f2e0fba2-da0b-38ba-6e25-3da9ccf1e4ee@rock-chips.com> <CAD=FV=W0Aufw1=UH2eZjb4cpiLjt9ty49CrUOdM5B2wF+WoY-A@mail.gmail.com>
 <196bd304-3c6b-91b6-1743-50d6d13fc5a5@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <196bd304-3c6b-91b6-1743-50d6d13fc5a5@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: wlf <wulf@rock-chips.com>
Cc: William Wu <william.wu@rock-chips.com>, hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, zsq@rock-chips.com, =?UTF-8?B?6Kix5ZiJ6YqY?= <Allen.Hsu@quantatw.com>, Stan Tsui <StanTsui@aopen.com>, =?UTF-8?B?U3BydWNlIFd1ICjlkLPlu7rli7Mp?= <Spruce.Wu@quantatw.com>, Marti
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, May 9, 2018 at 1:55 AM, wlf <wulf@rock-chips.com> wrote:
>>>>> +       } else if (hsotg->params.host_dma) {
>>>>
>>>> Are you sure this is "else if"?  Can't you have descriptor DMA enabled
>>>> in the controller and still need to do a normal DMA transfer if you
>>>> plug in a hub?  Seems like this should be just "if".
>>>
>>> Sorry, I don't understand the case "have descriptor DMA enabled in the
>>> controller and still need to do a normal DMA transfer". But maybe it
>>> still
>>> has another problem if just use "if" here, because it will create kmem
>>> caches for Slave mode which actually doesn't need aligned DMA buf.
>>
>> So right now your code looks like:
>>
>> if (hsotg->params.dma_desc_enable ||
>>      hsotg->params.dma_desc_fs_enable) {
>>      ...
>>      ...
>> } else if (hsotg->params.host_dma) {
>>     ...
>> }
>>
>>
>> I've never played much with "descriptor DMA" on dwc2 because every
>> time I enabled it (last I tried was years ago) a whole bunch of
>> peripherals stopped working and I didn't dig (I just left it off).
>> Thus, I'm no expert on descriptor DMA.  ...that being said, my
>> understanding is that if you enable descriptor DMA in the controller
>> then it will enable a smarter DMA mode for some of the transfers.
>> IIRC Descriptor DMA mode specifically can't handle splits.  Is my
>> memory correct there?  Presumably that means that when you enable
>> descriptor DMA in the controller the driver will automatically fall
>> back to normal Address DMA mode if things get too complicated.  When
>> it falls back to Address DMA mode, presumably dwc2_hcd_init() won't
>> get called again.  That means that any data structures that are needed
>> for Address DMA need to be allocated in dwc2_hcd_init() even if
>> descriptor DMA is enabled because we might need to fall back to
>> Address DMA.
>>
>> Thus, I'm suggesting changing the code to:
>>
>> if (hsotg->params.dma_desc_enable ||
>>      hsotg->params.dma_desc_fs_enable) {
>>      ...
>>      ...
>> }
>>
>> if (hsotg->params.host_dma) {
>>     ...
>> }
>>
>>
>> ...as I said, I'm no expert and I could just be confused.  If
>> something I say seems wrong please correct me.
>
> Ah, I got it. Thanks for your detailed explanation. Although I don't know if
> it's possible that dwc2 driver automatically fall back to normal Address DMA
> mode when desc DMA work abnormally with split, I agree with your suggestion.
> I'll fix it in V4 patch.

Hmm, I guess you're right.  I did a quick search and I can't find any
evidence of a fallback like this.  Maybe I dreamed that.  I found some
old comment in the commit history that said:

/*
 * Disable descriptor dma mode by default as the HW can support
 * it, but does not support it for SPLIT transactions.
 * Disable it for FS devices as well.
 */

...and it looks there's currently nobody using descriptor DMA anyway
(assuming I read the code correctly).  It does seem like people were
ever going to turn it on then it would have to be dynamic as I was
dreaming it was...

-Doug

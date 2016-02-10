From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v6 0/22] usb: dwc2: host: Fix and speed up all the
 stuff, especially with splits
Date: Wed, 10 Feb 2016 02:25:54 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC43EF42@US01WEMBX2.internal.synopsys.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
 <2B3535C5ECE8B5419E3ECBE30077290901DC431F63@US01WEMBX2.internal.synopsys.com>
 <CAD=FV=UwGBT6aEO4KnzHSBwJ239jDqqHUgfWEVdM+_dNJ9gApw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>
Cc: "balbi@ti.com" <balbi@ti.com>, "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>, "william.wu@rock-chips.com" <william.wu@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, "ming.lei@canonical.com" <ming.lei@canonical.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/3/2016 10:24 AM, Doug Anderson wrote:
> John,
> 
> On Tue, Feb 2, 2016 at 3:57 PM, John Youn <John.Youn@synopsys.com> wrote:
>> On 1/28/2016 6:20 PM, Douglas Anderson wrote:
>>> This is a bit of catchall series for all the bug fix and performance
>>> patches I've been working on over the last few months.  Note that for
>>> dwc2 we need to do LOTS in software and need super low interrupt
>>> latency, so most performance improvements actually fix real bugs.
>>>
>>> Patches are structured to start with no-brainer stuff that could be
>>> applied ASAP, especially things I've already gotten Acks for.  Things
>>> get slightly more RFC / RFT like as we get farther down the series.
>>> Anything that can be landed sooner rather than later (especially those
>>> Acked long ago) would help in re-posts (I'm not biased, of course).
>>>
>>
>> Hi Doug,
>>
>> I've yet to review this, but just wanted to let you know that we've
>> started on it and also testing. We'll get back to you with some
>> feedback and results soon.
>>
>> We had also been looking at some of these same and related issues so
>> we want to make sure everything we've done is compatible with your
>> changes and is still working ok too.
> 
> Great, thanks for the reply.  It's very helpful to know that you're
> looking at it even if you haven't had time to do a full review yet.
> 
> Note: if any of my patches are wrong or redundant to patches that
> you've developed and tested, I'm happy to take your patches instead.
> ;)
> 
> Note that patches 1 - 11 have already landed in our tree and thus are
> getting additional exposure and testing.  IMHO those are all ready for
> prime time.  Assuming there are no huge issues, it would be handy if
> those 11 patches landed as-is (or almost as-is), but that's just me
> being selfish so I don't need to revert / reland new versions.  :-P
> 

Ok those seem good to me.

Patches 1-11:

Acked-by: John Youn <johnyoun@synopsys.com>


For the remaining patches in the series, we have some engineers still
working on validating it but so far it looks good. They have not
uncovered any new issues.

Regards,
John

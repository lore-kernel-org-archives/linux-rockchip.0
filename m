From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI: rockchip: remove the pointer to L1 substate cap
Date: Thu, 20 Oct 2016 09:07:14 +0800
Message-ID: <22d32ccb-9c3c-4a8b-f2e2-2de471f8dac5@rock-chips.com>
References: <1476868234-15135-1-git-send-email-shawn.lin@rock-chips.com>
 <20161019174205.GA78840@google.com> <20161019174357.GB78840@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20161019174357.GB78840@google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Rajat Jain <rajatja@google.com>, Wenrui Li <wenrui.li@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

在 2016/10/20 1:43, Brian Norris 写道:
> On Wed, Oct 19, 2016 at 10:42:05AM -0700, Brian Norris wrote:
>> Hi,
>>
>> On Wed, Oct 19, 2016 at 05:10:34PM +0800, Shawn Lin wrote:
>>> Per the errata of TRM, the RC can't support L1 substate, so we
>>> need to remove the L1 substate cap.
>>>
>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> [snip]
>
> BTW, I couldn't actually find the original patch email in any mailing
> list archive, nor in patchwork. Did the email get held up by the mailing
> list or something?

I don't know if this patch was held by linux-pci, but I could find it
here:

https://patchwork.kernel.org/patch/9383721/



>
> Brian
> --
> To unsubscribe from this list: send the line "unsubscribe linux-pci" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>


-- 
Best Regards
Shawn Lin

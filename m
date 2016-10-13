From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 0/2] PCI: rockchip: Cleanup
Date: Thu, 13 Oct 2016 09:32:10 +0800
Message-ID: <8b4f18cd-bced-6779-7988-574b14a42dce@rock-chips.com>
References: <20161012130256.25212.33689.stgit@bhelgaas-glaptop2.roam.corp.google.com>
 <20161012160240.GG4308@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20161012160240.GG4308@localhost>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: shawn.lin@rock-chips.com, Wenrui Li <wenrui.li@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

On 2016/10/13 0:02, Bjorn Helgaas wrote:
> On Wed, Oct 12, 2016 at 08:04:16AM -0500, Bjorn Helgaas wrote:
>>   - Remove platform drvdata because it appears unused (we called
>>     platform_set_drvdata() but not platform_get_drvdata()).
>>
>> Nothing here should change the behavior of the driver.
>>
>> Changes from v1:
>>   Added Dan's indentation fix.
>>   I dropped the following patches because they were a lot of churn for
>>   questionable benefit:
>>     PCI: rockchip: Rename accessors
>>     PCI: rockchip: Swap order of rockchip_writel() reg/val arguments
>>
>> ---
>>
>> Bjorn Helgaas (1):
>>       PCI: rockchip: Remove unused platform data
>>
>> Dan Carpenter (1):
>>       PCI: rockchip: Indent "if" statement body
>
> I applied these to pci/host-rockchip for v4.9.  I hope to ask Linus to
> pull them tomorrow, so if you see any issues, let me know soon.

Seems the first round of cleanup for host-rockchip again v10 when this
driver got merged was incorrectly changed. The issue wasn't exposed as
it's just a debug log which was easily overlooked.

So could you pick the  patch[0] to fix this problem ? :)

[0]: https://patchwork.kernel.org/patch/9374129/

> --
> To unsubscribe from this list: send the line "unsubscribe linux-pci" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>


-- 
Best Regards
Shawn Lin

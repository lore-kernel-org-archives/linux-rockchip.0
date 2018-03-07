From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v7 13/14] iommu/rockchip: Add runtime PM support
Date: Wed, 7 Mar 2018 12:26:57 +0900
Message-ID: <CAAFQd5CM+7=RrJ_3OBmpHWAOA4VnxL24j=w-wMobjm_cVd5K3Q@mail.gmail.com>
References: <20180306030252.3197-1-jeffy.chen@rock-chips.com>
 <20180306032759.29069-1-jeffy.chen@rock-chips.com> <20180306032759.29069-4-jeffy.chen@rock-chips.com>
 <CAAFQd5DPewKda7ThqMGKRvnArZ0X8ChD10E06nLZaNa-SBNdwA@mail.gmail.com> <5A9F598E.4020704@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5A9F598E.4020704@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: JeffyChen <jeffy.chen@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Ricky Liang <jcliang@chromium.org>, Robin Murphy <robin.murphy@arm.com>, simon xue <xxm@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, open@263.net, "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>, list@263.net:IOMMU DRIVERS
        <iommu@lists.linux-foundation.org>, Joerg Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 7, 2018 at 12:16 PM, JeffyChen <jeffy.chen@rock-chips.com> wrote:
> Hi Tomasz,
>
> Thanks for your reply.
>
> On 03/06/2018 06:07 PM, Tomasz Figa wrote:
>>
>> Hi Jeffy,
>>
>> It looks like I missed some details of how runtime PM enable works
>> before, so we might be able to simplify things. Sorry for not getting
>> things right earlier
>
>
> hmm, right, the enable state should be the same during those functions. will
> do it in the next version.

Thanks. I actually realized that we don't even need the
pm_runtime_enabled() checks either.

Actually, we can clean this up in an incremental patch, so no need to
resend if no other changes needed, since current code is still
technically correct.

Best regards,
Tomasz

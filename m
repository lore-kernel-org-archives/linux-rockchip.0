From: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Sun, 15 Mar 2020 15:01:54 +0800
Message-ID: <e3431452-7cfc-7e2c-c93f-977cfd21b46b@cypress.com>
References: <20191211235253.2539-1-smoch@web.de>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
 <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de> <2685733.IzV8dBlDb2@diego>
 <d7b05a6c-dfba-c8e0-b5fb-f6f7f5a6c1b7@cypress.com>
 <09d6c2d7-b632-3dd1-2c9d-736ccc18d4a9@web.de>
Reply-To: chi-hsien.lin@cypress.com
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <09d6c2d7-b632-3dd1-2c9d-736ccc18d4a9@web.de>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, brcm80211-dev-list <brcm80211-dev-list@cypress.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org



On 03/13/2020 9:17, Soeren Moch wrote:
> 
> On 13.03.20 12:03, Chi-Hsien Lin wrote:
>> On 12/16/2019 7:43, Heiko Stübner wrote:
>>> Hi Soeren,
>>>
>>> Am Sonntag, 15. Dezember 2019, 22:24:10 CET schrieb Soeren Moch:
>>>> On 12.12.19 11:59, Soeren Moch wrote:
>>>>> On 12.12.19 10:42, Kalle Valo wrote:
>>>>>> Soeren Moch <smoch@web.de> writes:
>>>>>>
>>>>>>> Add support for the BCM4359 chipset with SDIO interface and RSDB
>>>>>>> support
>>>>>>> to the brcmfmac wireless network driver in patches 1-7.
>>>>>>>
>>>>>>> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
>>>>>>> AP6359SA based wifi/bt combo module with this chipset in patches
>>>>>>> 8-9.
>>>>>>>
>>>>>>>
>>>>>>> Chung-Hsien Hsu (1):
>>>>>>>     brcmfmac: set F2 blocksize and watermark for 4359
>>>>>>>
>>>>>>> Soeren Moch (5):
>>>>>>>     brcmfmac: fix rambase for 4359/9
>>>>>>>     brcmfmac: make errors when setting roaming parameters non-fatal
>>>>>>>     brcmfmac: add support for BCM4359 SDIO chipset
>>>>>>>     arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>>>>>>>     arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>>>>>>>
>>>>>>> Wright Feng (3):
>>>>>>>     brcmfmac: reset two D11 cores if chip has two D11 cores
>>>>>>>     brcmfmac: add RSDB condition when setting interface combinations
>>>>>>>     brcmfmac: not set mbss in vif if firmware does not support MBSS
>>>>>>>
>>>>>>>    .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>>>>>>>    .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>>>>>>>    .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68
>>>>>>> +++++++++++++++----
>>>>>>>    .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>>>>>>>    .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>>>>>>>    .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>>>>>>>    .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>>>>>>>    include/linux/mmc/sdio_ids.h                  |  2 +
>>>>>>>    8 files changed, 176 insertions(+), 26 deletions(-)
>>>>>> Just to make sure we are on the same page, I will apply patches
>>>>>> 1-7 to
>>>>>> wireless-drivers-next and patches 8-9 go to some other tree? And
>>>>>> there
>>>>>> are no dependencies between the brcmfmac patches and dts patches?
>>>>>>
>>>>> Yes, this also is my understanding. I'm glad if you are fine with
>>>>> patches 1-7.
>>>>> Heiko will pick up patches 8-9 later for linux-rockchip independently.
>>>>> And if we need another round of review for patches 8-9, I think we
>>>>> don't
>>>>> need to bother linux-wireless with this.
>>>>
>>>> Heiko,
>>>>
>>>> is this OK for you when patches 1-7 are merged now in wireless-drivers,
>>>> and then I send a v3 for patches 8-9 only for you to merge in
>>>> linux-rockchip later? Or do you prefer a full v3 for the whole series
>>>> with only this pending clock name update in patch 9?
>>>
>>> Nope, merging 1-7 from this v2 and then getting a v3 with only the dts
>>> stuff is perfectly fine :-)
>>
>> Soeren,
>>
>> I suppose patch 1-7 from this serious are all good for merging. Is
>> that right? If so, could you please create a rebased V3?
> Chi-hsien,
> 
> Thanks for asking, but these patches are already merged in
> torvalds/v5.6-rc1 as commits
> 1b8d2e0a9e42..2635853ce4ab
> 
> So everything already fine with this.

Ahh... You're right. They're all good. Thanks a lot!!

> 
> Thanks,
> Soeren
> 
>>
>>
>> Regards,
>> Chi-hsien Lin
>>
>>>
>>> Heiko
>>>
>>>
>>> .
>>>
> 

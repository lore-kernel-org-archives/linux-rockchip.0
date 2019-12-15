From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Sun, 15 Dec 2019 22:24:10 +0100
Message-ID: <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 12.12.19 11:59, Soeren Moch wrote:
> On 12.12.19 10:42, Kalle Valo wrote:
>> Soeren Moch <smoch@web.de> writes:
>>
>>> Add support for the BCM4359 chipset with SDIO interface and RSDB support
>>> to the brcmfmac wireless network driver in patches 1-7.
>>>
>>> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
>>> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
>>>
>>>
>>> Chung-Hsien Hsu (1):
>>>   brcmfmac: set F2 blocksize and watermark for 4359
>>>
>>> Soeren Moch (5):
>>>   brcmfmac: fix rambase for 4359/9
>>>   brcmfmac: make errors when setting roaming parameters non-fatal
>>>   brcmfmac: add support for BCM4359 SDIO chipset
>>>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>>>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>>>
>>> Wright Feng (3):
>>>   brcmfmac: reset two D11 cores if chip has two D11 cores
>>>   brcmfmac: add RSDB condition when setting interface combinations
>>>   brcmfmac: not set mbss in vif if firmware does not support MBSS
>>>
>>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>>>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>>>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
>>>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>>>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>>>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>>>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>>>  include/linux/mmc/sdio_ids.h                  |  2 +
>>>  8 files changed, 176 insertions(+), 26 deletions(-)
>> Just to make sure we are on the same page, I will apply patches 1-7 to
>> wireless-drivers-next and patches 8-9 go to some other tree? And there
>> are no dependencies between the brcmfmac patches and dts patches?
>>
> Yes, this also is my understanding. I'm glad if you are fine with
> patches 1-7.
> Heiko will pick up patches 8-9 later for linux-rockchip independently.
> And if we need another round of review for patches 8-9, I think we don't
> need to bother linux-wireless with this.

Heiko,

is this OK for you when patches 1-7 are merged now in wireless-drivers,
and then I send a v3 for patches 8-9 only for you to merge in
linux-rockchip later? Or do you prefer a full v3 for the whole series
with only this pending clock name update in patch 9?

Thanks,
Soeren

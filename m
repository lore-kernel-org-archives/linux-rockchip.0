From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 09:42:26 +0000
Message-ID: <0101016ef97cf78e-0df078ae-914e-42f3-9657-3fa4845357bc-000000@us-west-2.amazonses.com>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de> (Soeren Moch's message of
        "Thu, 12 Dec 2019 00:52:44 +0100")
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Soeren Moch <smoch@web.de> writes:

> Add support for the BCM4359 chipset with SDIO interface and RSDB support
> to the brcmfmac wireless network driver in patches 1-7.
>
> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
>
>
> Chung-Hsien Hsu (1):
>   brcmfmac: set F2 blocksize and watermark for 4359
>
> Soeren Moch (5):
>   brcmfmac: fix rambase for 4359/9
>   brcmfmac: make errors when setting roaming parameters non-fatal
>   brcmfmac: add support for BCM4359 SDIO chipset
>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>
> Wright Feng (3):
>   brcmfmac: reset two D11 cores if chip has two D11 cores
>   brcmfmac: add RSDB condition when setting interface combinations
>   brcmfmac: not set mbss in vif if firmware does not support MBSS
>
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>  include/linux/mmc/sdio_ids.h                  |  2 +
>  8 files changed, 176 insertions(+), 26 deletions(-)

Just to make sure we are on the same page, I will apply patches 1-7 to
wireless-drivers-next and patches 8-9 go to some other tree? And there
are no dependencies between the brcmfmac patches and dts patches?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

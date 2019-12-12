From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 09:42:26 +0000
Message-ID: <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de> (Soeren Moch's message of
 "Thu, 12 Dec 2019 00:52:44 +0100")
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Soeren Moch <smoch@web.de>
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
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

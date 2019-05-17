From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
Date: Fri, 17 May 2019 15:54:18 -0700
Message-ID: <20190517225420.176893-2-dianders@chromium.org>
References: <20190517225420.176893-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190517225420.176893-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Adrian Hunter <adrian.hunter@intel.com>, Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: linux-rockchip@lists.infradead.org, Double Lo <double.lo@cypress.com>, briannorris@chromium.org, Madhan Mohan R <madhanmohan.r@cypress.com>, mka@chromium.org, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Douglas Anderson <dianders@chromium.org>, brcm80211-dev-list.pdl@broadcom.com, Franky Lin <franky.lin@broadcom.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Madhan Mohan R <MadhanMohan.R@cypress.com>, Hante Meuleman <hante.meuleman@broadcom.com>, Naveen Gupta <naveen.gupta@cypress.com>, brcm80211-dev-list@cypress.com, YueHaibing <yuehaibing@huawei.com>, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org

In commit 29f6589140a1 ("brcmfmac: disable command decode in
sdio_aos") we disabled something called "command decode in sdio_aos"
for a whole bunch of Broadcom SDIO WiFi parts.

After that patch landed I find that my kernel log on
rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
  brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110

This seems to happen every time the Broadcom WiFi transitions out of
sleep mode.  Reverting the part of the commit that affects the WiFi on
my boards fixes the problem for me, so that's what this patch does.

Note that, in general, the justification in the original commit seemed
a little weak.  It looked like someone was testing on a SD card
controller that would sometimes die if there were CRC errors on the
bus.  This used to happen back in early days of dw_mmc (the controller
on my boards), but we fixed it.  Disabling a feature on all boards
just because one SD card controller is broken seems bad.  ...so
instead of just this patch possibly the right thing to do is to fully
revert the original commit.

Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 22b73da42822..3fd2d58a3c88 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -3378,8 +3378,7 @@ static bool brcmf_sdio_aos_no_decode(struct brcmf_sdio *bus)
 	if (bus->ci->chip == CY_CC_43012_CHIP_ID ||
 	    bus->ci->chip == CY_CC_4373_CHIP_ID ||
 	    bus->ci->chip == BRCM_CC_4339_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4345_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4354_CHIP_ID)
+	    bus->ci->chip == BRCM_CC_4345_CHIP_ID)
 		return true;
 	else
 		return false;
-- 
2.21.0.1020.gf2820cf01a-goog

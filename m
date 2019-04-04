From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] mwifiex: Make resume actually do something useful again on SDIO cards
Date: Wed,  3 Apr 2019 21:01:06 -0700
Message-ID: <20190404040106.40519-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-rockchip@lists.infradead.org, briannorris@chromium.org, mka@chromium.org, ryandcase@chromium.org, heiko@sntech.de, Douglas Anderson <dianders@chromium.org>, "David S. Miller" <davem@davemloft.net>, Ganapathi Bhat <gbhat@marvell.com>, linux-wireless@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org, Nishant Sarmukadam <nishants@marvell.com>, netdev@vger.kernel.org, Xinming Hu <huxinming820@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

The commit fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent
adapter status variables") had a fairly straightforward bug in it.  It
contained this bit of diff:

 - if (!adapter->is_suspended) {
 + if (test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {

As you can see the patch missed the "!" when converting to the atomic
bitops.  This meant that the resume hasn't done anything at all since
that commit landed and suspend/resume for mwifiex SDIO cards has been
totally broken.

After fixing this mwifiex suspend/resume appears to work again, at
least with the simple testing I've done.

Fixes: fc3a2fcaa1ba ("mwifiex: use atomic bitops to represent adapter status variables")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/marvell/mwifiex/sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/sdio.c b/drivers/net/wireless/marvell/mwifiex/sdio.c
index a85648342d15..d5a70340a945 100644
--- a/drivers/net/wireless/marvell/mwifiex/sdio.c
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
@@ -181,7 +181,7 @@ static int mwifiex_sdio_resume(struct device *dev)
 
 	adapter = card->adapter;
 
-	if (test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
+	if (!test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
 		mwifiex_dbg(adapter, WARN,
 			    "device already resumed\n");
 		return 0;
-- 
2.21.0.392.gf8f6787159e-goog

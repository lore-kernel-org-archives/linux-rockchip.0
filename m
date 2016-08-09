From: Amitkumar Karwar <akarwar-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH v12 2/3] Bluetooth: hci_uart: check if hdev is present before
 using it
Date: Tue, 9 Aug 2016 22:02:32 +0530
Message-ID: <1470760353-2394-2-git-send-email-akarwar@marvell.com>
References: <1470760353-2394-1-git-send-email-akarwar@marvell.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470760353-2394-1-git-send-email-akarwar-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-bluetooth-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org, Amitkumar Karwar <akarwar-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ganapathi Bhat <gbhat-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Ganapathi Bhat <gbhat-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>

The hdev struct might not have initialized in protocol receive handler.
This patch adds necessary checks.

Signed-off-by: Ganapathi Bhat <gbhat-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>
Signed-off-by: Amitkumar Karwar <akarwar-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>
---
 drivers/bluetooth/hci_ldisc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/bluetooth/hci_ldisc.c b/drivers/bluetooth/hci_ldisc.c
index d7184dc..2c88586 100644
--- a/drivers/bluetooth/hci_ldisc.c
+++ b/drivers/bluetooth/hci_ldisc.c
@@ -154,7 +154,9 @@ restart:
 
 		set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 		len = tty->ops->write(tty, skb->data, skb->len);
-		hdev->stat.byte_tx += len;
+
+		if (hdev)
+			hdev->stat.byte_tx += len;
 
 		skb_pull(skb, len);
 		if (skb->len) {
@@ -349,7 +351,7 @@ void hci_uart_set_baudrate(struct hci_uart *hu, unsigned int speed)
 	/* tty_set_termios() return not checked as it is always 0 */
 	tty_set_termios(tty, &ktermios);
 
-	BT_DBG("%s: New tty speeds: %d/%d", hu->hdev->name,
+	BT_DBG("%s: New tty speeds: %d/%d", hu->hdev ? hu->hdev->name : "",
 	       tty->termios.c_ispeed, tty->termios.c_ospeed);
 }
 
-- 
1.8.1.4

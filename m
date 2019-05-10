From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer messages
 at high priority"
Date: Fri, 10 May 2019 15:34:37 -0700
Message-ID: <20190510223437.84368-5-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190510223437.84368-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Benson Leung <bleung-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: drinkcat-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.

We have a better solution in the patch ("platform/chrome: cros_ec_spi:
Set ourselves as timing sensitive").  Let's revert the uglier and less
reliable solution.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

 drivers/platform/chrome/cros_ec_spi.c | 80 ++-------------------------
 1 file changed, 6 insertions(+), 74 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 757a115502ec..70ff1ad09012 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -75,27 +75,6 @@ struct cros_ec_spi {
 	unsigned int end_of_msg_delay;
 };
 
-typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
-				  struct cros_ec_command *ec_msg);
-
-/**
- * struct cros_ec_xfer_work_params - params for our high priority workers
- *
- * @work: The work_struct needed to queue work
- * @fn: The function to use to transfer
- * @ec_dev: ChromeOS EC device
- * @ec_msg: Message to transfer
- * @ret: The return value of the function
- */
-
-struct cros_ec_xfer_work_params {
-	struct work_struct work;
-	cros_ec_xfer_fn_t fn;
-	struct cros_ec_device *ec_dev;
-	struct cros_ec_command *ec_msg;
-	int ret;
-};
-
 static void debug_packet(struct device *dev, const char *name, u8 *ptr,
 			 int len)
 {
@@ -371,13 +350,13 @@ static int cros_ec_spi_receive_response(struct cros_ec_device *ec_dev,
 }
 
 /**
- * do_cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
+ * cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
  *
  * @ec_dev: ChromeOS EC device
  * @ec_msg: Message to transfer
  */
-static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
-				   struct cros_ec_command *ec_msg)
+static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
+				struct cros_ec_command *ec_msg)
 {
 	struct ec_host_response *response;
 	struct cros_ec_spi *ec_spi = ec_dev->priv;
@@ -514,13 +493,13 @@ static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
 }
 
 /**
- * do_cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
+ * cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
  *
  * @ec_dev: ChromeOS EC device
  * @ec_msg: Message to transfer
  */
-static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
-				   struct cros_ec_command *ec_msg)
+static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
+				struct cros_ec_command *ec_msg)
 {
 	struct cros_ec_spi *ec_spi = ec_dev->priv;
 	struct spi_transfer trans;
@@ -632,53 +611,6 @@ static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
 	return ret;
 }
 
-static void cros_ec_xfer_high_pri_work(struct work_struct *work)
-{
-	struct cros_ec_xfer_work_params *params;
-
-	params = container_of(work, struct cros_ec_xfer_work_params, work);
-	params->ret = params->fn(params->ec_dev, params->ec_msg);
-}
-
-static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
-				 struct cros_ec_command *ec_msg,
-				 cros_ec_xfer_fn_t fn)
-{
-	struct cros_ec_xfer_work_params params;
-
-	INIT_WORK_ONSTACK(&params.work, cros_ec_xfer_high_pri_work);
-	params.ec_dev = ec_dev;
-	params.ec_msg = ec_msg;
-	params.fn = fn;
-
-	/*
-	 * This looks a bit ridiculous.  Why do the work on a
-	 * different thread if we're just going to block waiting for
-	 * the thread to finish?  The key here is that the thread is
-	 * running at high priority but the calling context might not
-	 * be.  We need to be at high priority to avoid getting
-	 * context switched out for too long and the EC giving up on
-	 * the transfer.
-	 */
-	queue_work(system_highpri_wq, &params.work);
-	flush_work(&params.work);
-	destroy_work_on_stack(&params.work);
-
-	return params.ret;
-}
-
-static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
-				struct cros_ec_command *ec_msg)
-{
-	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_pkt_xfer_spi);
-}
-
-static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
-				struct cros_ec_command *ec_msg)
-{
-	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_cmd_xfer_spi);
-}
-
 static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
 {
 	struct device_node *np = dev->of_node;
-- 
2.21.0.1020.gf2820cf01a-goog

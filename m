From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 37/43] drm/rockchip: Disable PSR on input events
Date: Tue, 30 Jan 2018 21:29:07 +0100
Message-ID: <20180130202913.28724-38-thierry.escande@collabora.com>
References: <20180130202913.28724-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180130202913.28724-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Transfert-Encoding: 8bit
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: "Kristian H. Kristensen" <hoegsberg-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>

To improve PSR exit latency, we speculatively start exiting when we
receive input events. Occasionally, this may lead to false positives,
but most of the time we get a head start on coming out of PSR. Depending
on how userspace takes to produce a new frame in response to the event,
this can completely hide the exit latency. In case of Chrome OS, we
typically get the input notifier 50ms or more before the dirty_fb
triggered exit.

Signed-off-by: Kristian H. Kristensen <hoegsberg-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_psr.c | 134 ++++++++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
index 9376f4396b6b..a107845ba97c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
@@ -12,6 +12,8 @@
  * GNU General Public License for more details.
  */
 
+#include <linux/input.h>
+
 #include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
 
@@ -35,6 +37,9 @@ struct psr_drv {
 	enum psr_state		state;
 
 	struct delayed_work	flush_work;
+	struct work_struct	disable_work;
+
+	struct input_handler    input_handler;
 
 	int (*set)(struct drm_encoder *encoder, bool enable);
 };
@@ -133,6 +138,18 @@ static void psr_flush_handler(struct work_struct *work)
 	mutex_unlock(&psr->lock);
 }
 
+static void psr_disable_handler(struct work_struct *work)
+{
+	struct psr_drv *psr = container_of(work, struct psr_drv, disable_work);
+
+	/* If the state has changed since we initiated the flush, do nothing */
+	mutex_lock(&psr->lock);
+	if (psr->state == PSR_ENABLE)
+		psr_set_state_locked(psr, PSR_FLUSH);
+	mutex_unlock(&psr->lock);
+	mod_delayed_work(system_wq, &psr->flush_work, PSR_FLUSH_TIMEOUT_MS);
+}
+
 /**
  * rockchip_drm_psr_activate - activate PSR on the given pipe
  * @encoder: encoder to obtain the PSR encoder
@@ -173,6 +190,7 @@ int rockchip_drm_psr_deactivate(struct drm_encoder *encoder)
 	psr->active = false;
 	mutex_unlock(&psr->lock);
 	cancel_delayed_work_sync(&psr->flush_work);
+	cancel_work_sync(&psr->disable_work);
 
 	return 0;
 }
@@ -226,6 +244,95 @@ void rockchip_drm_psr_flush_all(struct drm_device *dev)
 }
 EXPORT_SYMBOL(rockchip_drm_psr_flush_all);
 
+static void psr_input_event(struct input_handle *handle,
+			    unsigned int type, unsigned int code,
+			    int value)
+{
+	struct psr_drv *psr = handle->handler->private;
+
+	schedule_work(&psr->disable_work);
+}
+
+static int psr_input_connect(struct input_handler *handler,
+			     struct input_dev *dev,
+			     const struct input_device_id *id)
+{
+	struct input_handle *handle;
+	int error;
+
+	handle = kzalloc(sizeof(struct input_handle), GFP_KERNEL);
+	if (!handle)
+		return -ENOMEM;
+
+	handle->dev = dev;
+	handle->handler = handler;
+	handle->name = "rockchip-psr";
+
+	error = input_register_handle(handle);
+	if (error)
+		goto err2;
+
+	error = input_open_device(handle);
+	if (error)
+		goto err1;
+
+	return 0;
+
+err1:
+	input_unregister_handle(handle);
+err2:
+	kfree(handle);
+	return error;
+}
+
+static void psr_input_disconnect(struct input_handle *handle)
+{
+	input_close_device(handle);
+	input_unregister_handle(handle);
+	kfree(handle);
+}
+
+/* Same device ids as cpu-boost */
+static const struct input_device_id psr_ids[] = {
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
+			 INPUT_DEVICE_ID_MATCH_ABSBIT,
+		.evbit = { BIT_MASK(EV_ABS) },
+		.absbit = { [BIT_WORD(ABS_MT_POSITION_X)] =
+			    BIT_MASK(ABS_MT_POSITION_X) |
+			    BIT_MASK(ABS_MT_POSITION_Y) },
+	}, /* multi-touch touchscreen */
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
+		.evbit = { BIT_MASK(EV_ABS) },
+		.absbit = { [BIT_WORD(ABS_X)] = BIT_MASK(ABS_X) }
+
+	}, /* stylus or joystick device */
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
+		.evbit = { BIT_MASK(EV_KEY) },
+		.keybit = { [BIT_WORD(BTN_LEFT)] = BIT_MASK(BTN_LEFT) },
+	}, /* pointer (e.g. trackpad, mouse) */
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
+		.evbit = { BIT_MASK(EV_KEY) },
+		.keybit = { [BIT_WORD(KEY_ESC)] = BIT_MASK(KEY_ESC) },
+	}, /* keyboard */
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
+				INPUT_DEVICE_ID_MATCH_KEYBIT,
+		.evbit = { BIT_MASK(EV_KEY) },
+		.keybit = {[BIT_WORD(BTN_JOYSTICK)] = BIT_MASK(BTN_JOYSTICK) },
+	}, /* joysticks not caught by ABS_X above */
+	{
+		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
+				INPUT_DEVICE_ID_MATCH_KEYBIT,
+		.evbit = { BIT_MASK(EV_KEY) },
+		.keybit = { [BIT_WORD(BTN_GAMEPAD)] = BIT_MASK(BTN_GAMEPAD) },
+	}, /* gamepad */
+	{ },
+};
+
 /**
  * rockchip_drm_psr_register - register encoder to psr driver
  * @encoder: encoder that obtain the PSR function
@@ -239,6 +346,7 @@ int rockchip_drm_psr_register(struct drm_encoder *encoder,
 {
 	struct rockchip_drm_private *drm_drv = encoder->dev->dev_private;
 	struct psr_drv *psr;
+	int error;
 
 	if (!encoder || !psr_set)
 		return -EINVAL;
@@ -248,6 +356,7 @@ int rockchip_drm_psr_register(struct drm_encoder *encoder,
 		return -ENOMEM;
 
 	INIT_DELAYED_WORK(&psr->flush_work, psr_flush_handler);
+	INIT_WORK(&psr->disable_work, psr_disable_handler);
 	mutex_init(&psr->lock);
 
 	psr->active = true;
@@ -255,11 +364,33 @@ int rockchip_drm_psr_register(struct drm_encoder *encoder,
 	psr->encoder = encoder;
 	psr->set = psr_set;
 
+	psr->input_handler.event = psr_input_event;
+	psr->input_handler.connect = psr_input_connect;
+	psr->input_handler.disconnect = psr_input_disconnect;
+	psr->input_handler.name =
+		kasprintf(GFP_KERNEL, "rockchip-psr-%s", encoder->name);
+	if (!psr->input_handler.name) {
+		error = -ENOMEM;
+		goto err2;
+	}
+	psr->input_handler.id_table = psr_ids;
+	psr->input_handler.private = psr;
+
+	error = input_register_handler(&psr->input_handler);
+	if (error)
+		goto err1;
+
 	mutex_lock(&drm_drv->psr_list_lock);
 	list_add_tail(&psr->list, &drm_drv->psr_list);
 	mutex_unlock(&drm_drv->psr_list_lock);
 
 	return 0;
+
+ err1:
+	kfree(psr->input_handler.name);
+ err2:
+	kfree(psr);
+	return error;
 }
 EXPORT_SYMBOL(rockchip_drm_psr_register);
 
@@ -279,8 +410,11 @@ void rockchip_drm_psr_unregister(struct drm_encoder *encoder)
 	mutex_lock(&drm_drv->psr_list_lock);
 	list_for_each_entry_safe(psr, n, &drm_drv->psr_list, list) {
 		if (psr->encoder == encoder) {
+			input_unregister_handler(&psr->input_handler);
 			cancel_delayed_work_sync(&psr->flush_work);
+			cancel_work_sync(&psr->disable_work);
 			list_del(&psr->list);
+			kfree(psr->input_handler.name);
 			kfree(psr);
 		}
 	}
-- 
2.14.1

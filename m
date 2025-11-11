Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC9DCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 10:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JliKRcoKblJOVs2iChmss+94F6L6hI21n2olwCXuBgQ=; b=S6b1iwwzlX2yif
	W+SgjrOdfkdp5haCHZNUxPVg89wm6eKZGdknVi6NLsEEQDj9985osyO5dooQEMwj+XfhfirICSBRZ
	2hSJmVYXHN2y54zLY+pmDAK3SSUScE+NLvvH0s1Vm5U+9eLZHYMqy7F2jEMiLjhhYZ7OvxZwfMjET
	3R/PE7hRQtXDiKXr24P9kY+eV5Dvj9sxUh31RTiV8KcH2AoGNu6Ddr1dvVKnH0nNercrrGm/3A5B1
	Tm4onuXS4JdRkZ3KuF4QhvaiCaVTN80GjhZHHikIPHBNPMq5cA7+XP7PvMKC9pJIe5ImY83kWUQQN
	imxfsK2BmCm2wuELGFxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlyZ-0000000707p-3Wjz;
	Tue, 11 Nov 2025 10:51:51 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlyX-00000006zvY-0k22;
	Tue, 11 Nov 2025 10:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1762858268;
	bh=iH4TyyzlCs63+PYsRRwCgixuDYK1uZRjwAYMJ2JsaAI=;
	h=From:To:Subject:Date:Message-Id;
	b=ASZ4TVFgFYhUgifkSgajyi99ZZcOwMW1pSqGDSbBrBhjateBFeDh9BnRl8dTC8EoC
	 bymsWVmgW3Db+3Rrfew+sN4kmd5yt+evY94zbyVrYVJ4ehWzWe6OXNBwSUpC9omiu/
	 3svFWgdcFuOm40qMTsJEqoRC0lP7azKS26+D2+qg=
X-QQ-mid: zesmtpsz9t1762858256t97625740
X-QQ-Originating-IP: uB8mCGoHOoLZ1YWe3fAK9YaOMzLs1IbVHP3rribHjTI=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 18:50:53 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18215502699769285738
From: Chaoyi Chen <kernel@airkyi.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Chen <hzpeterchen@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v9 02/10] usb: typec: Export all typec device types
Date: Tue, 11 Nov 2025 18:50:32 +0800
Message-Id: <20251111105040.94-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251111105040.94-1-kernel@airkyi.com>
References: <20251111105040.94-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NfykWmRlrd2oJyFO4fwe5TS0axn6/Kttof4anGjVHoKeDx4fvOeEtf6n
	LS07Smxr230qlEtzDYbRHXQyTwPOVx92I3h3WBr0YkBJsRmNtPudQ8eodfa7WLyWVdSyxqy
	AT/DE5V1JWEdO8lFbyXS8yBnGhgVVvuTbPHZXaV8VR2YJykMKg8hbDRgeNvHqLpoFWEt0zz
	3v117iCy2nsGP3R7pmvkDyZZWrHVoPgAICYnzYlYT8gh6pFEe1dgmWkeztQ3g5V0+HD9ctS
	xzH6XIEPXTBXR+AzxcGzr6ObVatwDHOzAul9c30hpe4GhKxeapa0kjphinoI0JWCEpsqoPy
	SOTz8wZ7o0jHjMm9BDZzVxuFdrKxl+At+mdcVxfyMxUESc8ZdVMq1dTay/zuMfIyxV1Bfpm
	S4mG7x9Cn6IUObgCwJw7sYrhzT66MZS/EymVeTrEVJJcQNghtJRt6VhklKWwYr0WX02VI4A
	OLzyb+VhpWnZxQXMxF6gin8AfiHcMuY022GpHjvC+3S17Y3+uxB/kCDiOWl7fq3MpPUTb2W
	Wv7sZ9Y6mdFGFK7EVreRIXvb+fnHUFdrl2RoH+u8Qd/6JmmAwZDhzVmnRZpD4B3NM5afaQB
	XBnJEl1HE530rlnIMLuWQfN0mcmge0f9V0Nx2dvvXbB2zG1xRR446O6ZlIZuhibbbynKvuJ
	0mN5ik2kfvjT1ykOIm6MhqBX03z0l4knZI+9ncb2jJeji7XESgb0iiS8uhDKu/VLsZ19KIF
	7gfWJCYV+7/WIhAQ9fm4XflCimEq0DLIv2DsH3vQ+nyfY0UU8KRJQn+8t0j6cuv3WWLH491
	JRYXMwfJjjjk+8waoMP99YliDxO8Wf8bLAm+usa8SlYOOhD5apDnLEIcQjA943dZEHY2bVv
	DMpkUVgLCoBZVU3/zr1aJovIXVb19rMYRG6EVy4mk6XAsz/341MBCDL3WTbk7xy6S6S3y0N
	S/Hyq2S5MkW3OXna1J98NaJqMrlG9/TMd2z7jasgN5CFoGYAXlLZICyRDeid7FDnVcGQ=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_025149_571856_193070AD 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Export all typec device types for identification.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---

(no changes since v9)

 drivers/usb/typec/class.c |  4 ++++
 drivers/usb/typec/class.h | 10 ----------
 include/linux/usb/typec.h | 10 ++++++++++
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index 9d2aa3dd3f56..449f921acd9c 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -792,6 +792,7 @@ const struct device_type typec_partner_dev_type = {
 	.groups = typec_partner_groups,
 	.release = typec_partner_release,
 };
+EXPORT_SYMBOL_GPL(typec_partner_dev_type);
 
 static void typec_partner_link_device(struct typec_partner *partner, struct device *dev)
 {
@@ -1146,6 +1147,7 @@ const struct device_type typec_plug_dev_type = {
 	.groups = typec_plug_groups,
 	.release = typec_plug_release,
 };
+EXPORT_SYMBOL_GPL(typec_plug_dev_type);
 
 /**
  * typec_plug_set_num_altmodes - Set the number of available plug altmodes
@@ -1294,6 +1296,7 @@ const struct device_type typec_cable_dev_type = {
 	.groups = typec_cable_groups,
 	.release = typec_cable_release,
 };
+EXPORT_SYMBOL_GPL(typec_cable_dev_type);
 
 /**
  * typec_cable_get - Get a reference to the USB Type-C cable
@@ -2033,6 +2036,7 @@ const struct device_type typec_port_dev_type = {
 	.uevent = typec_uevent,
 	.release = typec_release,
 };
+EXPORT_SYMBOL_GPL(typec_port_dev_type);
 
 /* --------------------------------------- */
 /* Driver callbacks to report role updates */
diff --git a/drivers/usb/typec/class.h b/drivers/usb/typec/class.h
index db2fe96c48ff..f04f6987bed8 100644
--- a/drivers/usb/typec/class.h
+++ b/drivers/usb/typec/class.h
@@ -87,16 +87,6 @@ struct typec_port {
 #define to_typec_cable(_dev_) container_of(_dev_, struct typec_cable, dev)
 #define to_typec_partner(_dev_) container_of(_dev_, struct typec_partner, dev)
 
-extern const struct device_type typec_partner_dev_type;
-extern const struct device_type typec_cable_dev_type;
-extern const struct device_type typec_plug_dev_type;
-extern const struct device_type typec_port_dev_type;
-
-#define is_typec_partner(dev) ((dev)->type == &typec_partner_dev_type)
-#define is_typec_cable(dev) ((dev)->type == &typec_cable_dev_type)
-#define is_typec_plug(dev) ((dev)->type == &typec_plug_dev_type)
-#define is_typec_port(dev) ((dev)->type == &typec_port_dev_type)
-
 extern const struct class typec_mux_class;
 extern const struct class retimer_class;
 extern const struct class typec_class;
diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
index 309251572e2e..02fed8293415 100644
--- a/include/linux/usb/typec.h
+++ b/include/linux/usb/typec.h
@@ -56,6 +56,16 @@ enum typec_role {
 	TYPEC_SOURCE,
 };
 
+extern const struct device_type typec_partner_dev_type;
+extern const struct device_type typec_cable_dev_type;
+extern const struct device_type typec_plug_dev_type;
+extern const struct device_type typec_port_dev_type;
+
+#define is_typec_partner(dev) ((dev)->type == &typec_partner_dev_type)
+#define is_typec_cable(dev) ((dev)->type == &typec_cable_dev_type)
+#define is_typec_plug(dev) ((dev)->type == &typec_plug_dev_type)
+#define is_typec_port(dev) ((dev)->type == &typec_port_dev_type)
+
 static inline int is_sink(enum typec_role role)
 {
 	return role == TYPEC_SINK;
-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

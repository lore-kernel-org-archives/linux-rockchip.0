Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BDAECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AUodBem7SCWqW+iHfrvq2Kv/Ki0E7PDuD0CNf29/ts=; b=H/zSouTR6PTrGm
	qbzp51h8g2sdeFS4lPR6iJ/tRJujntu8mNqdBeBULX4ZVam59SgTl/J0JefW7NV4k6TwSq7h5Tl6c
	qoABXNTkKER2C2oherYnSKEGBVBGVJQTZIgfBaDDThrTisKq4mWAW5mOrI4Mb5PPDiNy+qwC3lXjv
	Zqe+3ByHqs+fLb3pjX66tkUJ1kC7o19HmkRoP47yEh8pGt34Qo88UBrfMqMl8kufwrQFDijHT+9VE
	BwrPtMGcIiCXwvEK5PekmtBhImu0nNQJ8dwB04m3IakiQGI+zpzFsfxyDodLTD7m83goslGUzdtxF
	l4JJ8qZo65LToix4N8hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNm-00F8NQ-AW; Thu, 15 Sep 2022 02:13:38 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNf-00F7sD-28
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 02:13:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 96D5B900448;
	Thu, 15 Sep 2022 10:13:22 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Hans de Goede <hdegoede@redhat.com>
Subject: [PATCH 1/3] ACPI: utils: Add acpi_dev_uid_to_integer() helper to get _UID as integer
Date: Thu, 15 Sep 2022 10:13:18 +0800
Message-Id: <20220915021320.80364-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915021320.80364-1-jay.xu@rock-chips.com>
References: <20220915021320.80364-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaHx1CVktCS0kfQ0tNH00aSFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBQ6CQw4KD0oDC1WFQsNMxIa
	ATQwCQJVSlVKTU1ISUtDS0tISUlMVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhMTE83Bg++
X-HM-Tid: 0a833eec14eb2eafkusn96d5b900448
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_191331_273527_1BBD4503 
X-CRM114-Status: UNSURE (   8.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Some users interpret _UID only as integer and for them it's easier to
have an integer representation of _UID. Add respective helper for that.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/utils.c    | 24 ++++++++++++++++++++++++
 include/acpi/acpi_bus.h |  1 +
 include/linux/acpi.h    |  5 +++++
 3 files changed, 30 insertions(+)

diff --git a/drivers/acpi/utils.c b/drivers/acpi/utils.c
index 5a7b8065e77f..febf9b8da3a0 100644
--- a/drivers/acpi/utils.c
+++ b/drivers/acpi/utils.c
@@ -793,6 +793,30 @@ bool acpi_dev_hid_uid_match(struct acpi_device *adev,
 }
 EXPORT_SYMBOL(acpi_dev_hid_uid_match);
 
+/**
+ * acpi_dev_uid_to_integer - treat ACPI device _UID as integer
+ * @adev: ACPI device to get _UID from
+ * @integer: output buffer for integer
+ *
+ * Considers _UID as integer and converts it to @integer.
+ *
+ * Returns 0 on success, or negative error code otherwise.
+ */
+int acpi_dev_uid_to_integer(struct acpi_device *adev, u64 *integer)
+{
+	const char *uid;
+
+	if (!adev)
+		return -ENODEV;
+
+	uid = acpi_device_uid(adev);
+	if (!uid)
+		return -ENODATA;
+
+	return kstrtou64(uid, 0, integer);
+}
+EXPORT_SYMBOL(acpi_dev_uid_to_integer);
+
 /**
  * acpi_dev_found - Detect presence of a given ACPI device in the namespace.
  * @hid: Hardware ID of the device.
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index e7d27373ff71..bd0db916f330 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -733,6 +733,7 @@ static inline bool acpi_device_can_poweroff(struct acpi_device *adev)
 }
 
 bool acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *uid2);
+int acpi_dev_uid_to_integer(struct acpi_device *adev, u64 *integer);
 
 void acpi_dev_clear_dependencies(struct acpi_device *supplier);
 bool acpi_dev_ready_for_enumeration(const struct acpi_device *device);
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 6f64b2f3dc54..9434db02cb60 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -798,6 +798,11 @@ acpi_dev_hid_uid_match(struct acpi_device *adev, const char *hid2, const char *u
 	return false;
 }
 
+static inline int acpi_dev_uid_to_integer(struct acpi_device *adev, u64 *integer)
+{
+	return -ENODEV;
+}
+
 static inline struct acpi_device *
 acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

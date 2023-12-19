Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2077C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 15:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bbOrdAOUquw0mHNf3ss14q/2OvOKadXACn6R4XY6mnk=; b=GC0RAlQ8/a5ciW
	YrWmtcGLDAQm14uhRY3/1OeFsR5O7CaHxhVzxwacC8fP7f28Ad2z0Z93Oo3FXrIA50ZzQ4B2sz22U
	fboG5clygLPU+QF+siDuktf3aQ4eIJBWqYsnmw0w0BzEQS39SWja2tPLEiZ9F/wXIIZFjDxlXtfR6
	Pkmg8Ymhn9jWNxZWu1OCDAIRWGZITlNF/8YvDiUzdStNmRo3DT0uY25ZokN6kwIESZ4sKVXj+oC4n
	uQTanGDIOYL1tK+eQh7R+Ikrn15KjAs6/0p9eJXjKSldxGGD8069jHkfUfJiYRGGNhUg5eR+r8duW
	hcxS2OEcm0Zq+7hkZKUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbvs-00EXLJ-0G;
	Tue, 19 Dec 2023 15:22:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbvn-00EXJo-2B;
	Tue, 19 Dec 2023 15:22:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id A426AB81856;
	Tue, 19 Dec 2023 15:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D439FC433C8;
	Tue, 19 Dec 2023 15:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1702999369;
	bh=vOJ9fKH6Xqs5UvwP9s7vsM9ZkdDZzxdG2BYm96rLvAY=;
	h=From:To:Cc:Subject:Date:From;
	b=WsR5eIqpOuTF0cIbg+QKbJk945zH4aWyXTOIY1x3RQA0jbBvivNWsuj7e6Upmrryd
	 RyL951N7XwvzbPbR4ViNCIRb5JLQqt7ZEr7thVILxZfFjWkwanT8MVZ+xBn2ZcerUg
	 bXjNwD7NXCrngu8Maaslp8kRTGGO1BmBMQOT/Ooc=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: wsa@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-i2c@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] i2c: make i2c_bus_type const
Date: Tue, 19 Dec 2023 16:22:43 +0100
Message-ID: <2023121942-jumble-unethical-3163@gregkh>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2417; i=gregkh@linuxfoundation.org; h=from:subject:message-id; bh=vOJ9fKH6Xqs5UvwP9s7vsM9ZkdDZzxdG2BYm96rLvAY=; b=owGbwMvMwCRo6H6F97bub03G02pJDKmNW51Sba1dDtXZnllysInD6hGjp6HmpIbM+iDrWF39f x6PXrh0xLIwCDIxyIopsnzZxnN0f8UhRS9D29Mwc1iZQIYwcHEKwEQKIhjm2U4SyLvO9cnsvoJq 3W9WhQ+C58WMGObp7bSdUBOyNC9E6FVt/PQlO9Sz518HAA==
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp; fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_072251_998141_0FA44776 
X-CRM114-Status: GOOD (  16.13  )
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

Now that the driver core can properly handle constant struct bus_type,
move the i2c_bus_type variable to be a constant structure as well, placing
it into read-only memory which can not be modified at runtime.

Note, the sound/soc/rockchip/rk3399_gru_sound.c also needed tweaking as
it decided to save off a pointer to a bus type for internal stuff, and
it was using the i2c_bus_type as well.

Cc: Wolfram Sang <wsa@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org
Cc: linux-sound@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/i2c/i2c-core-base.c           | 2 +-
 include/linux/i2c.h                   | 2 +-
 sound/soc/rockchip/rk3399_gru_sound.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index eac90a3cf61a..24c6e1b52668 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -689,7 +689,7 @@ static struct attribute *i2c_dev_attrs[] = {
 };
 ATTRIBUTE_GROUPS(i2c_dev);
 
-struct bus_type i2c_bus_type = {
+const struct bus_type i2c_bus_type = {
 	.name		= "i2c",
 	.match		= i2c_device_match,
 	.probe		= i2c_device_probe,
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index 0dae9db27538..180462d1a373 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -23,7 +23,7 @@
 #include <linux/swab.h>		/* for swab16 */
 #include <uapi/linux/i2c.h>
 
-extern struct bus_type i2c_bus_type;
+extern const struct bus_type i2c_bus_type;
 extern struct device_type i2c_adapter_type;
 extern struct device_type i2c_client_type;
 
diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 1a504ebd3a0e..6c89c7331229 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -446,7 +446,7 @@ static const struct rockchip_sound_route rockchip_routes[] = {
 
 struct dailink_match_data {
 	const char *compatible;
-	struct bus_type *bus_type;
+	const struct bus_type *bus_type;
 };
 
 static const struct dailink_match_data dailink_match[] = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

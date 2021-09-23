Return-Path: <SRS0=OM03=ON=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23C5C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 10:51:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32C3960F21
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 10:51:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 32C3960F21
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QXWn5FFEphNnIg1SNT332kUoGcY4NcgR6cdyo+WWDPA=; b=oAI7aOIzhwc1j5
	T1JfWLUorVnX9Nct4TtOW9TOMJgLrxx/umXvbTF1lbfX4lmVbeBkQICKxocNHn5O0+/TM8pEMY3iO
	iwzYuhHXcyWbYrLM9LctqmY9VHqmTux8MJ7t3REI5tZQAIYDpnvxU5hF4HH4M0n9fvegjJHfl1/7I
	AINU1e1ALrFcOnHSfW3MsrxvoTCHjm4DVV50I5tKKQ5benzbNKKP+670LqlVEa6sPMnv5nGTEeGMW
	UU2EOl8JQPZw5hYjF29JgMv8PfvuJ3nA/u0XXf55jSNr1Bui6IyIhKssrVl/aFMnOqiTH2ir6exrj
	pVEtbmJa25MDKj2BYDoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTMJm-00B1CK-Rd; Thu, 23 Sep 2021 10:51:06 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTMJi-00B18Z-E0
 for linux-rockchip@lists.infradead.org; Thu, 23 Sep 2021 10:51:05 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id D2885D8002;
 Thu, 23 Sep 2021 18:50:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30982T140487228909312S1632394252895090_; 
 Thu, 23 Sep 2021 18:50:54 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 12
X-LOCAL-RCPT-COUNT: 1
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <0073ee5634e02cce322910e426978038>
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Jonathan Corbet <corbet@lwn.net>,
 Lars-Peter Clausen <lars@metafoo.de>, Liam Girdwood <lgirdwood@gmail.com>,
 alsa-devel@alsa-project.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dmaengine: Introduce module option
 prealloc_buffer_size_kbytes
Date: Thu, 23 Sep 2021 18:50:46 +0800
Message-Id: <1632394246-59341-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_035102_751973_25345BFC 
X-CRM114-Status: GOOD (  13.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Currently, The fixed 512KB prealloc buffer size is too larger for
tiny memory kernel (such as 16MB memory). This patch adds the module
option "prealloc_buffer_size_kbytes" to specify prealloc buffer size.

It's suitable for cards which use the generic dmaengine pcm driver
with no config.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 Documentation/sound/alsa-configuration.rst | 9 +++++++++
 sound/soc/soc-generic-dmaengine-pcm.c      | 6 +++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/sound/alsa-configuration.rst b/Documentation/sound/alsa-configuration.rst
index 65f6169..34888d4 100644
--- a/Documentation/sound/alsa-configuration.rst
+++ b/Documentation/sound/alsa-configuration.rst
@@ -100,6 +100,15 @@ amidi_map
     MIDI device number maps assigned to the 2st OSS device;
     Default: 1
 
+Module snd-soc-core
+-------------------
+
+The soc core module. It is used by all ALSA card drivers.
+It takes the following options which have global effects.
+
+prealloc_buffer_size_kbytes
+    Specify prealloc buffer size in kbytes (default: 512).
+
 Common parameters for top sound card modules
 --------------------------------------------
 
diff --git a/sound/soc/soc-generic-dmaengine-pcm.c b/sound/soc/soc-generic-dmaengine-pcm.c
index 4aa48c7..c54c8ca 100644
--- a/sound/soc/soc-generic-dmaengine-pcm.c
+++ b/sound/soc/soc-generic-dmaengine-pcm.c
@@ -15,6 +15,10 @@
 
 #include <sound/dmaengine_pcm.h>
 
+static unsigned int prealloc_buffer_size_kbytes = 512;
+module_param(prealloc_buffer_size_kbytes, uint, 0444);
+MODULE_PARM_DESC(prealloc_buffer_size_kbytes, "Preallocate DMA buffer size (KB).");
+
 /*
  * The platforms dmaengine driver does not support reporting the amount of
  * bytes that are still left to transfer.
@@ -237,7 +241,7 @@ static int dmaengine_pcm_new(struct snd_soc_component *component,
 		prealloc_buffer_size = config->prealloc_buffer_size;
 		max_buffer_size = config->pcm_hardware->buffer_bytes_max;
 	} else {
-		prealloc_buffer_size = 512 * 1024;
+		prealloc_buffer_size = prealloc_buffer_size_kbytes * 1024;
 		max_buffer_size = SIZE_MAX;
 	}
 
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C65C3ABCD
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 13:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vCXN5rXL6QAIOCibZkhZUweDef9KuxKFQohIiyboPI=; b=Mi9LfUfXkNf+Pb
	bv4eLONsO+W7FgHvYRz1glCcDvmKZVTH4rva2qGOyZPn6JZofr4koCUUclHQadifq2+1dvmzwaouF
	fZcgw1bJ/l5jaW5rFlUn+jpbQu3hXj6pvtgyY5fOvdoYh1cRGvtOq0aaS4G+TjRmuW9udOuxuXw0O
	x0ozdq1+BR7Ox3Nb8bzxPI0xOeRCUbKIbK7CfT7paPqIovjTZTJ8MAevwaGJar3jsSqsW0csndDzs
	G9NVvwGDKQ0mFguHI5XfQsQxUePMStfDie7Y5UCLcyNE7h+xz2XfZ2591vqZa5lQBJMuxdes3VAF5
	9vmR/Nm1A4AEyfAMy+Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESym-00000009V1i-12Sa;
	Mon, 12 May 2025 13:14:00 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESZ1-00000009QZP-3dcT;
	Mon, 12 May 2025 12:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=4a
	n3GeKBTudslqJaw/NeBqgOS4NHJwbOQHtDOLQOmp4=; b=cGbEwpQ3urxmguwLZG
	6WqUJ55fUpI4A8g3EOK5ethJ0EKKEzDGOTCHu2yfhS7oAsGJNG+M0k8Klurf5KMs
	ySImhowU+BYn9uCUl7DmhM9dPPTYjJSL/Mq4RGk/kky3d+U+a167QtLHeHeZYMav
	GcZ4J1CR9/DON/oUFHBGpwpj0=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgC3chWY7SFoQ+_OAQ--.62400S5;
	Mon, 12 May 2025 20:46:25 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 03/10] drm/rockchip: inno_hdmi: Remove unnecessary parentheses to make checkpatch happy
Date: Mon, 12 May 2025 20:46:04 +0800
Message-ID: <20250512124615.2848731-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250512124615.2848731-1-andyshrk@163.com>
References: <20250512124615.2848731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgC3chWY7SFoQ+_OAQ--.62400S5
X-Coremail-Antispam: 1Uf129KBjvdXoWruw4UZF45Jry3ZFWkury3Jwb_yoWDXFX_KF
	18Wr1rCF48Zrn8A3ZIk3y5ZF9FvayI9F4fuFs5t393JFn7JryxJ3sxCrW3AF9xWF1YyFn5
	Ca1qvr1UAFnIkjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUeb4S7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gNLXmgh5MDGsgAAsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_054724_275662_26D9A2A3 
X-CRM114-Status: UNSURE (   9.04  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Remove unnecessary parentheses to make checkpatch happy.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v5:
- Split from PATCH 9/10

 drivers/gpu/drm/rockchip/inno_hdmi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 82c62400b2e1e..7b4c952f26922 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -1124,8 +1124,7 @@ static int inno_hdmi_i2c_write(struct inno_hdmi *hdmi, struct i2c_msg *msgs)
 	 * we assume that each word write to this i2c adapter
 	 * should be the offset of EDID word address.
 	 */
-	if ((msgs->len != 1) ||
-	    ((msgs->addr != DDC_ADDR) && (msgs->addr != DDC_SEGMENT_ADDR)))
+	if (msgs->len != 1 || (msgs->addr != DDC_ADDR && msgs->addr != DDC_SEGMENT_ADDR))
 		return -EINVAL;
 
 	reinit_completion(&hdmi->i2c->cmp);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

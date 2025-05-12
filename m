Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7EB1C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 13:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1IDseAhyqwl/3pGUrL+gpENcJ9utq11AfqRQlJmbXw=; b=ajxJ4VSg3EdiDi
	pIVOkv64etgGeDq/jg65h3kbAI8grv+0kQDgw7S8GPBkaClIR2hKE5hWBySwVkZ1L38QLLjjnMw3b
	w6y3nm0BFSKm2YcqIsj8/kRw/9lk7Rl2QNqV/sXL44f3lFTSI8mv8qbGg098Qs9AYZzfYeAW9efFI
	tojFGpd6xzFB9IfhGALnq0TCCl1/LIGmNi24dQyEXTJK2/+uk8PJ+6HJ5AkxMqul+s9OQr1fHh/wD
	R0wi2Y1zBIuWHA2EI/pUVPxW9HJwgUyWBu0l5o2cWjQq24NfXJQ3zxYjq14eCBrFpkMVAbyeKk8a4
	Z+ZkzEQpv47JzjSL7Trw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uET3I-00000009VvZ-2xJz;
	Mon, 12 May 2025 13:18:40 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESZA-00000009QiL-0Tvy;
	Mon, 12 May 2025 12:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=jv
	nMc/BqFyXtWd3kydBRw6WznkhMsheiUWEV9yI10UU=; b=S9h0zUC7pYvZzdrV/b
	ZLDqwd7iXMmoe+IioQ+LrDFvB6q1Ez42dFbON5cLhQYqMfQsxlyS++Q6h3uXAVOx
	cWeJwLXQHCSaSVY+9tmPRCu2/Ek6lzzCCTVc0sEKpdzCgEOat5//GPEIvQzrjJGk
	BF9AmsrNAZv5T6OG7wjbKnd6A=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgC3chWY7SFoQ+_OAQ--.62400S6;
	Mon, 12 May 2025 20:46:26 +0800 (CST)
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
Subject: [PATCH v5 04/10] drm/rockchip: inno_hdmi: Rename function inno_hdmi_reset to inno_hdmi_init_hw
Date: Mon, 12 May 2025 20:46:05 +0800
Message-ID: <20250512124615.2848731-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250512124615.2848731-1-andyshrk@163.com>
References: <20250512124615.2848731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgC3chWY7SFoQ+_OAQ--.62400S6
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cw1xGF17Ww1fAry7CF45KFg_yoW8JF43pa
	yUCryUCF4fGa1jqF1UAF4kCr4ayas7KayxurWxWw1Skwn09r9YyFnYyw4Sva43AryxZ3Z2
	yFs7Ga45ZFy2yw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j8zV8UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAFLXmgh6hVMrAAAsq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_054732_484856_7195FBA5 
X-CRM114-Status: GOOD (  10.46  )
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

This function not only configure hardware reset register, but also
do some other configurations. Therefore, it is more appropriate to
name it inno_hdmi_init_hw, which will also facilitate the addition
of other functions to this function in the following patch.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v5:
- Split from PATCH 9/10

 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 7b4c952f26922..2d41cf59752f2 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -604,7 +604,7 @@ static void inno_hdmi_power_up(struct inno_hdmi *hdmi,
 	inno_hdmi_sys_power(hdmi, true);
 };
 
-static void inno_hdmi_reset(struct inno_hdmi *hdmi)
+static void inno_hdmi_init_hw(struct inno_hdmi *hdmi)
 {
 	u32 val;
 	u32 msk;
@@ -1290,7 +1290,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		goto err_disable_clk;
 	}
 
-	inno_hdmi_reset(hdmi);
+	inno_hdmi_init_hw(hdmi);
 
 	hdmi->ddc = inno_hdmi_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->ddc)) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

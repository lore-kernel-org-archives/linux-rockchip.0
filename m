Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6B4FD88D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 00:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+UvSHvm+BzcbO/73h5IeP1j3zfWFmapmNirwmEosOhw=; b=jIUs9GUqybTYK+
	vFn0he9fzXWlrKhxZGD82LlEUK9GSWViXpgblEAsKrjbE1BPSfi2XiOSW1kRtcDd2ZBkpHDukVJlj
	SZpVsJGnBlZoDcrf0QqUwgSU24UR/d/bk0x34ZcTW877xxFvbvPJtuS68lHkvbKH07xlibOI1r/zm
	2lstNZr9tBs1Z1dNTevShocbd5PytLBICDg3sdDyIGAMt5OpRg7x9uMVznZ71hTZQ+yNeeHsf7dVL
	y58SdCHYVV5THpGSr6tfH4y/RcZRsHEP2HynLfJBCSfCSsfcP/F8hNZzA0UQOUT+kE9zZbdtoaNhP
	Lb55L0WkljH/n8JBXJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07aP-0000000ARnK-1nt8;
	Wed, 11 Mar 2026 00:38:05 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07aN-0000000ARmZ-1ApG
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 00:38:04 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2ae5636ab04so101710335ad.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 17:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773189482; x=1773794282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0SXdT3BjTlKyDM8fxn2LNFhC+a57+NVKQ8ywyuz3hiY=;
        b=CB6Q+uogM+0e7IxG8F4d5rl/aMreR0pG7eAQ7uJIhE3wznNtlRCRAWJnp9ShwtB7PM
         RuntysVPEezG/YzgLaLnBq0GfiYsUQ4K/0Scm9wbPLBna2Qj9GHeAB/e1I0cidpVzElL
         1Al5FLH3dWTV//MJ+xRzT/WgoI4No87/02m0XdDzAXUi4PaN2Mj8cNy0wNxUXL5qYbyD
         JjnMp91Famg79C1spEy7Da9dLjT7aETOLCECcE45ZKjosIDELLQmJI6o02tx3wytOQVP
         Ym4M8gB21+3viiNh92km6CEYqiqsWgcD2kYPAISmgeCDz+EbIsPvlgpo7sfLiBo6eOVt
         BHmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773189482; x=1773794282;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0SXdT3BjTlKyDM8fxn2LNFhC+a57+NVKQ8ywyuz3hiY=;
        b=tZgNaxFso9bNVy2n1T6SXjRu+EifG6oegZbV6HIuDIgISELTY7hIT/U9+vCpxeyk4F
         409al9AltpK92XjAhkjuUync5SywyCvXOzVk4pnsm9cHkf1Is7cVMAOWsZ2n0ivQz1Nx
         LcQztnk7qC/cJl/hXZtZRYWw61uATk6hHAx0SLbOWjNN0OlnL0O6dI5qKLdXYuaoV+UX
         B1HasJ6EhK6L5JTgFO7QuOKMunFYwBCzPge1UGu57HoMHThsm3BjXmInHzSfqaQOXRQX
         OgtA3bfTqgt2B92wjQP+3ckD4skmF7AMTNVVqHoSwMXgr6wRGHtC1n6M+kMabOmzKM2N
         KEXg==
X-Forwarded-Encrypted: i=1; AJvYcCW5DaorYQTraO6j7nlBT7BXAnu9r96RvP/9a5ZcBM2ev1YcJdmS30GrxJC1jwr7UDKT4ADOmp8zgTovhZJEkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YykSbKGum5DN3e5F1LkpwxnpIgUyKWTtBEqeqfLHGRkd6yTfVE6
	uoAYLh2yTQzWSpq2QwgCyx1n4+u+y8ZQZalk+2hnTwbVnNK/pOqKe0gr
X-Gm-Gg: ATEYQzznjJlWBVlH/WEes2LRbq5q05YkG7P7CLl2iOBmhd1ijpPjuNLqd6kDc5Jk2gy
	Kj1YQhDsIlfLaIsdmgUEuKn6xLeywUXa2YVsob3L0JxsKfwPswU9ZLY/E4HSbgNmqzuulJF/Fji
	RpVXLEUWzBs8dsgwbBeo23HxyT1kr0m9d5V1mtNN8HjV5btDj4vbf3AS9zm4fY2IDoJ8CZQWDjs
	Z2+Epj2cj8OV1kfhf0dwuLlT+EK7ZcUeZ++I3S0XwGZ7jhZgERIRNnjg6+0K4nVrdEjFJH0vgYM
	r6oryh+tLf+tQQsxZat5K25VJsnCmOCps6g4/gwXLcTGg5Nx8qAV0UmFZoGAveZNAHulwNvrk3q
	xHE/u8CVqDUBLJgBlHcE3RzYQtQSl4PiVeJC17Bjo1Sy0crCU5pKFlwibRw5KWf6Kd1EINzWZOL
	7LTI57wxPWU+SSBg1eUA54VeVdmdy0F/VcHq3RbBMWjk7E+lCULUJQfw==
X-Received: by 2002:a17:903:3504:b0:2ae:4029:2196 with SMTP id d9443c01a7336-2aeae8bbedcmr6943885ad.47.1773189481981;
        Tue, 10 Mar 2026 17:38:01 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae222e2fsm5118555ad.2.2026.03.10.17.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:38:01 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Jassi Brar <jassisinghbrar@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] mailbox: rockchip: kzalloc + kcalloc to kzalloc
Date: Tue, 10 Mar 2026 17:37:44 -0700
Message-ID: <20260311003744.32099-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_173803_317547_9AFA6AE1 
X-CRM114-Status: GOOD (  10.66  )
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

Use a flexible array member to reduce allocations.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/mailbox/rockchip-mailbox.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/mailbox/rockchip-mailbox.c b/drivers/mailbox/rockchip-mailbox.c
index 4d966cb2ed03..a1a7dee64356 100644
--- a/drivers/mailbox/rockchip-mailbox.c
+++ b/drivers/mailbox/rockchip-mailbox.c
@@ -46,7 +46,7 @@ struct rockchip_mbox {
 	/* The maximum size of buf for each channel */
 	u32 buf_size;
 
-	struct rockchip_mbox_chan *chans;
+	struct rockchip_mbox_chan chans[];
 };
 
 static int rockchip_mbox_send_data(struct mbox_chan *chan, void *data)
@@ -173,15 +173,10 @@ static int rockchip_mbox_probe(struct platform_device *pdev)
 
 	drv_data = (const struct rockchip_mbox_data *) device_get_match_data(&pdev->dev);
 
-	mb = devm_kzalloc(&pdev->dev, sizeof(*mb), GFP_KERNEL);
+	mb = devm_kzalloc(&pdev->dev, struct_size(mb, chans, drv_data->num_chans), GFP_KERNEL);
 	if (!mb)
 		return -ENOMEM;
 
-	mb->chans = devm_kcalloc(&pdev->dev, drv_data->num_chans,
-				 sizeof(*mb->chans), GFP_KERNEL);
-	if (!mb->chans)
-		return -ENOMEM;
-
 	mb->mbox.chans = devm_kcalloc(&pdev->dev, drv_data->num_chans,
 				      sizeof(*mb->mbox.chans), GFP_KERNEL);
 	if (!mb->mbox.chans)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

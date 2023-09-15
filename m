Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14CD3EE6422
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 06:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fQ7FY24S9Z7AQzDP9qQHtMp9am0bTwEL/WGAjKNybMg=; b=UWeTl48U1pPsfO
	Ps1nLZ3yJwvSURdvZpn+6i1MnlRcU9DD2xCS9lJdxLF+3Mj0ZCcBqVLQJb42n9rz7m71I6FpaECAq
	B1VoOC8lG3V5O+WqzomMCC3XurEG4TTQIm0y/8/xmuJugZRIaOnCpM/KzWLwqzQDiNrgwq//fzZJj
	9XcOPMtA9g6eUrD2q0TdbyEOsMoquGGpQmNGEsoi0XZaJ0PI3QOthlisJcO1MUWEfOuUaNXHmhCAt
	BWxQO3TeY69OUqlO7iXfKKpjN4mUGl8EkwekrGz0sP+2kenJmV0lg5S5Q8V/H1DvYF70KqeIsDjCn
	45+1tZqs6Ijna+O2RZiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh2fg-009wbH-0K;
	Fri, 15 Sep 2023 06:51:20 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh2fd-009waG-2C
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Sep 2023 06:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=REgnb
	YsNP87q+IDgfamZH5y9dcDqs2/HXwkY1MoJems=; b=c2/w8N/2crOMnfY8K9kei
	Ie3VTwaALPEQtdPmiQWNI12Zs358PaAcD9/Gpe7wrWtkKxxFil8G2k5E6NMDZDZ+
	EfDNpASERckjbsALx2FHo4v+YT2CWzfwnPC+sdLXaI2EyqTZImhCgyoFtW1jZ9E4
	zTy8UWDK2/DXFcdIPfOeLM=
Received: from icess-ProLiant-DL380-Gen10.. (unknown [183.174.60.14])
	by zwqz-smtp-mta-g0-1 (Coremail) with SMTP id _____wCHjlLF_gNlQF1GAQ--.58113S4;
	Fri, 15 Sep 2023 14:50:56 +0800 (CST)
From: Ma Ke <make_ruc2021@163.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ma Ke <make_ruc2021@163.com>
Subject: [PATCH] media: verisilicon: fix use after free bug in hantro_remove due to race condition
Date: Fri, 15 Sep 2023 14:50:43 +0800
Message-Id: <20230915065043.3401840-1-make_ruc2021@163.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CM-TRANSID: _____wCHjlLF_gNlQF1GAQ--.58113S4
X-Coremail-Antispam: 1Uf129KBjvdXoWruF17Zr48Kr48GFWkCF1DGFg_yoWDAFX_ur
	97WF1xWryqkFn5t3Z8trsa9ryIvFs0kFs5WF1ftr1UZa4DX3WrXFsFvrZFv34UWay7uF9x
	Cr45GFWakFnxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRMo7KDUUUUU==
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: 5pdnvshuxfjiisr6il2tof0z/1tbiyBHrC1p7Lwsm3gAAsE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_235118_179432_30E10A1D 
X-CRM114-Status: UNSURE (   7.91  )
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

In hantro_probe, vpu->watchdog_work is bound with hantro_watchdog function. In
hantro_end_prepare_run, it will started by schedule_delayed_work. If there is an
unfinished work in hantro_remove, there may be a race condition and trigger UAF
bug.

Signed-off-by: Ma Ke <make_ruc2021@163.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 423fc85d79ee..1a5b3a85c520 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1187,6 +1187,7 @@ static void hantro_remove(struct platform_device *pdev)
 
 	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
 
+	cancel_delayed_work_sync(&vpu->watchdog_work);
 	media_device_unregister(&vpu->mdev);
 	hantro_remove_dec_func(vpu);
 	hantro_remove_enc_func(vpu);
-- 
2.37.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

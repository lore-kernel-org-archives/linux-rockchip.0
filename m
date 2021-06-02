Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AD1BC4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 09:14:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD648613AA
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 09:14:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD648613AA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPGW4mvXRtD+vROA6tit9BppOojnxEpkQo9KAeafPkc=; b=vTwcw7Bzcy+ln9
	Ti+NZr6xBDLFIgPRebbht37KGlV9yjyvv3t/YFseGk0KaFuW9jgd2a8maHE4Fae114yc2F6r9kv4R
	ddmqosw7JjxFUStSxOEstFmEDNj+yu45P4Th29GgXBn7kfJm6wgdgdQkX1xYAzrqacHeEIRf/xhOm
	I58Zq3IplKud0Eq9EqxiPdNnCWL3HCknkCIZT/xHphGFOybKOcP6PeijwsPHPz0iHiqaWZIEDb5qN
	dnSfLtYJFDiYuxZ1VNlSLaZcsnkaD41Bt+7FOZuYOszNm6hssugEC25MneQ3YMYxARrsF/rz3N8aV
	dlacQpFUc7uEEcFiaL8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loMxR-002uS7-4Q; Wed, 02 Jun 2021 09:14:37 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loMwb-002uBC-4N; Wed, 02 Jun 2021 09:13:46 +0000
Received: by mail-pf1-x434.google.com with SMTP id g18so1704415pfr.2;
 Wed, 02 Jun 2021 02:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sRa/SCLvjxclceznxdFj3+fej72AkhZROM61oD4qmtY=;
 b=PadHvrgXfsF8NWcRseL9ndsK0SRDFHvq0J/1AMXGNoo+jdHj8ecNl05GYTtB9gcCsf
 iNzuowUlrzCHtWiOLSoDBfqYgiVe4uU0h5IDeB5+B0WMSCrVMie24Z9Izk7qe1T1f2th
 DRRlzyJyZziM9RYXYOLSeGitJSIcP0r/5Mgz3htnRHKalG5Q1wR0Vl43G2N1pEK+sJRy
 Kr37L33/rdJyF2nJ6xGS7rngukMiR+ozULYXoxFewWgVUgwqkV2uYDHv5uyrHyuMwxzw
 yFw3vYnJLzO1hq1yeLXmdUhbYW6m63O5HUVUQzUOsKZ10LwMPgLpCtixZyUDLq6fQOYz
 oV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sRa/SCLvjxclceznxdFj3+fej72AkhZROM61oD4qmtY=;
 b=D6JOnQp5lIqX8Uogt1aSHkTax2euu0INvQ92WesO08dpM9PB7naaEU9F9QQV5ScJxt
 Xz5nVnDka6885PsOQzul4uVVYohG4GDTGfiFt0426JRaqGmlW7La23u7l7KmlZLb/TY1
 8LaH6vQLRfH8GusOAp2bsty4Q6dsHAmg42n0V/095fqaOUca96p2PYRKhr5VvKNPWwSM
 TALNxwHioDRu48Y4p6DxCoqqNSeE9U/16AaRdRdk1Cl5anSpyPKFWGdCrMkc0liiAGwz
 Yk3lIDLDSeOdey+lVd2S9Q3M/ZmiNKh5O4Kpo1D0GsTIDrzUIebIAX/eboMnlg2eni44
 Az7Q==
X-Gm-Message-State: AOAM531ooa3TjjJyJHcLuTNd+0OTLSlVv0IeyDUYcZ3CVSYEyCVqn6lI
 4QGXxRMSPimYWSppyF5SMIE=
X-Google-Smtp-Source: ABdhPJwTV3FKHHyx7tOoeqkV1rWY56OKsASLEP4SLRoWUowqvbbpSHctG+YB0L+ldtG6q+z9mDmYrg==
X-Received: by 2002:aa7:9581:0:b029:2ea:39e:2224 with SMTP id
 z1-20020aa795810000b02902ea039e2224mr6870691pfj.32.1622625223899; 
 Wed, 02 Jun 2021 02:13:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:9005:8001:1fcc:40d0:d6f2:3e07])
 by smtp.gmail.com with ESMTPSA id o20sm2433387pjq.4.2021.06.02.02.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 02:13:43 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>
Subject: [PATCH] drm/rockchip: defined struct vop_driver_dt_match[] under
 CONFIG_OF
Date: Wed,  2 Jun 2021 14:43:24 +0530
Message-Id: <20210602091324.9440-1-jrdr.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_021345_216015_051ADAED 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

kernel test robot throws warning when CONFIG_OF not set.

>> drivers/gpu/drm/rockchip/rockchip_vop_reg.c:1038:34:
warning: unused variable 'vop_driver_dt_match' [-Wunused-const-variable]
   static const struct of_device_id vop_driver_dt_match[] = {

Fixed it by defining vop_driver_dt_match[] under CONFIG_OF.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index ca7cc82125cb..2cdf889ca361 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -1069,6 +1069,7 @@ static const struct vop_data rk3328_vop = {
 	.win_size = ARRAY_SIZE(rk3328_vop_win_data),
 };
 
+#ifdef CONFIG_OF
 static const struct of_device_id vop_driver_dt_match[] = {
 	{ .compatible = "rockchip,rk3036-vop",
 	  .data = &rk3036_vop },
@@ -1099,6 +1100,7 @@ static const struct of_device_id vop_driver_dt_match[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, vop_driver_dt_match);
+#endif
 
 static int vop_probe(struct platform_device *pdev)
 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

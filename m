Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAF8C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DACA60234
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DACA60234
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qKFwTFwz9rTw8DERjLqmTAwhDnb6IBeDKZUtVxkw+7U=; b=omMfXXoaywEm9x0ieaTfAh/r6O
	5FxvvQEO6BuO/iaDSgmia1qexslOTYs94qCaa2ESJ6UsHxrS/4pP9JiveuF5NVOtKh0kiZIBHqtHa
	NCeGxhEG2bFyAkqdVDkfgRSnfKbPycCgmEnLsl2eEgBSknWr7d54pFgRPx9xFVFoSnXWudnbcnG3P
	SPhSRr2iyigBM8Bh/s2pjVUdDC7w+bZnAc8hx4TZBIluz9fOzgVocXS52kP6e5lAlSUKN+DNMiC/0
	yrWTXH4GdeEwDFcVAgU026CodT2yxsMDd3u8Sb404rptHev+xDYisc8NToiPNdIaXgAnArSzlBz2d
	Bg5Jd6uw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6egg-0006n8-Ex; Mon, 01 Feb 2021 19:16:38 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6egZ-0006k3-9d; Mon, 01 Feb 2021 19:16:32 +0000
Received: by mail-ej1-x62a.google.com with SMTP id l9so26168252ejx.3;
 Mon, 01 Feb 2021 11:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=RtXwwowHX3yfKgD+ZnKVEKPYu6VxOSHT2i06dKyO5Qe/QPuh82VhWaZuFzbG65NGxV
 Fj9khMkJ7JpVdW02Zhr+a7tTxDgoWgCeW4cSzU8FxwE4eO5tQdou6Osn0pMgLBmu57Vo
 dST/W9TzxJEpZ/ugfTAx9S6Z80iutmAEHSDiMDLK5YtozOYCTnPdsesNEA35uY+Nqh6Y
 HObgLwk3lsXHqc8f2zVMtknj9OJT6ubtfLRdC6LnG9IGrupkWRMlH2UGAjFG2cVLngsD
 0mARA+eNCct1De7Jn3PGnbQVOr0cqRnbelKY9zgn8JukDLlKc1FWhe5RwQWzBmXw+VLg
 q2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=pHWhEEkZ+bRFYB4SbFlccRMKX44YixT0D9rGRmeUgL5/BS7TVLFJrlBdl3xw5V0tWl
 o9uRnne+JhJUtRmapGsSvXOqvHAAJzWKPq7yqKo6AlGYxDnDFhRQTG458AbLBs8jLKa/
 1ojbTRpWxaGFMsjCCNGJZgks03UllO0ksKNLw7N0UNbnGUxbT+YBx0Oi7YllqWZ6QY+B
 2i4U3eCroNsUcnUXEsZO2B8foWoewBg3XjzbRHMQHm7nllKA+VkHDmO825cGiThuGWvh
 TA21NrWV0E9Osba/qrKANTCb7ewvIdyn5N6ss21FP4nJA4rKAkSubOuE0tFMYxm+r14l
 r4AQ==
X-Gm-Message-State: AOAM53325m2NkYKBecHxeJjgULc+JoiE+w739A1snw5DNy3pepKJtKR3
 L08NzRFEIjWHkCd9M51EBt8=
X-Google-Smtp-Source: ABdhPJyhN8CrusHD92pZSzVbBjMiSaukdEjDjPVVJCL0Yfd0yknHk18anfLy69xGsyIR8F82Rx28Pg==
X-Received: by 2002:a17:906:7687:: with SMTP id
 o7mr19434775ejm.209.1612206988433; 
 Mon, 01 Feb 2021 11:16:28 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a11sm8243630ejc.64.2021.02.01.11.16.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:16:28 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 3/5] usb: dwc3: of-simple: add compatible for rk3328
Date: Mon,  1 Feb 2021 20:16:17 +0100
Message-Id: <20210201191619.32353-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201191619.32353-1-jbx6244@gmail.com>
References: <20210201191619.32353-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_141631_350444_16156AD9 
X-CRM114-Status: GOOD (  15.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e62ecd22b..93bc34328 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -171,6 +171,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

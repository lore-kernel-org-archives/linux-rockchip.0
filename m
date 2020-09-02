Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E138C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:13:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FFBE206EB
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:13:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ds+jM2bg";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLZeJhgv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0FFBE206EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SdNKWxeSR8eHpyUcX/OLgcMi0a2o1f3Tr85l0rVBK8A=; b=Ds+jM2bgnQeZDsx0aTGAZlrSI
	INtSCgea9ubWbzHQfIkMp8mqzfAJtZ4Q4YFhM12JIEHpyuBv31jjdMREmnF9z8o8nNI9rCE9qmJCB
	HthxhD7V8h9Ubxf72qJNiRCRTDWp3aQgwhjNDqC46UdpvnMaVZPVz0os2MmLk+40XAtNvcWUlnFLo
	p/Zuvq2nLYqYoBU7/8DhK+2xmpI6NLcy7oaR0ruLCX+htufMTa/jCQvSGVeDP45pLhiLxpUQnbQz6
	uynRxah6A4BTURQj2ag+VUrojYPtVBvrMUph84gr0IWNF9ixntK0udiF3BiouOd1vooFU237FZZpq
	eTirfGrpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDXFj-0006qL-M0; Wed, 02 Sep 2020 18:12:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDXFX-0006lI-M2; Wed, 02 Sep 2020 18:12:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ls14so186323pjb.3;
 Wed, 02 Sep 2020 11:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YlP++aNo5WyMtGJ0CAnpVmn1PYqVs1MEomEwiDLDlvE=;
 b=SLZeJhgvzy1SwbnBEyEm39X14VGdB+s6VaQ/yLOmSqZ40TLeICXfNEyos2uBSsp415
 ef7Qi8KYVMZY/7DYizQBs+BrO6KJVwM3a8pOF+26udAKw8VaUT91w5sJiIq79+2LP1x7
 wE1onhmhnhYrsJFRGGXFHOG77WhzSopANFDW8QeKk1S30fE2iCLJ5hwvi9tI+iuKR9Hv
 DQkWZOcYDhW5izPLwcyqFth7mIWLdTpwBXKtOZzrh9U6VoKY7FS8KvTfH0lGIL9bsmR3
 9tsS0SC+hZ/xCGlGTzqnOjHPHYg/D01LWoZFWcRvv4vrgO1IzTR9DK0QtDLv04/rUcx7
 v4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YlP++aNo5WyMtGJ0CAnpVmn1PYqVs1MEomEwiDLDlvE=;
 b=OyfDxbSj2vQEq2wRkakD/O09W2vDfLjtlDlrmETGsUdCoPnt47cmqsABlk5r0NiuGo
 wiYzS2T3DBGOEUEnPJQ0De0bNU09zavQ0nV+DsH+5iIp+2VvObb0B45MEnN7NiVjvA5O
 UoZ0FFAioqnBocOfFBVWzfX5EBndjQI2RvLEkzEQjmBDu6HScGrCXpOx9+4AdFXFNzB2
 RlXNvII73KVghcFdoWWTGp7BNxwTibEge2TQv3yzNzuTM4YQtlc9ZK8fGps5/Yihwb6D
 Va9aPxTuP7D33VcyOtcoGRg+wYX5C6NyJcJsr+dhZzu2yo2+oVwjzrO0l4986ZZd7TGH
 oBvA==
X-Gm-Message-State: AOAM533acw9h4i0qoq3x9k+D0PMACzIbq9if+zrT6yDC45FC00qDotTg
 ekwswJOAWB+5VnPUG04x8aA=
X-Google-Smtp-Source: ABdhPJxyAoeqcuz+tnhtvw279R9EQntj/xjvELk+nr6rkRC6rcP4eI7+rxiJxihTY3+IvWDlXHTkiA==
X-Received: by 2002:a17:90a:a005:: with SMTP id
 q5mr3026666pjp.152.1599070364055; 
 Wed, 02 Sep 2020 11:12:44 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id u123sm148993pfb.209.2020.09.02.11.12.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Sep 2020 11:12:43 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 2/4] usb: dwc3: of-simple: Add compatible for rk3328
Date: Wed,  2 Sep 2020 11:12:32 -0700
Message-Id: <20200902181234.13955-2-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_141247_733748_CC831D17 
X-CRM114-Status: GOOD (  16.07  )
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
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future, and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 7df115012935..0727bf2304b1 100644
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
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A4ECC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:38:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FA41610F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:38:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3FA41610F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9gPvChzeCYwvoct2U30EyS/eeTmKmoHb9ZSo+0dlfX0=; b=m5bJzJ7kg1DE700u463rqShWQl
	PwEP+vStLMpFNv3BbcAbHazc1RHN5tdz1DTqh3mQgjE+nj+C3c6H1T9NfWNXxKhbKbLWpmWQ8+RLk
	ksIjHaRS70EQ5+MKcxihg/ftTuJ5UZzQxTSReIi6EwJFTCHE2lsfq3MZCbfrG64xiAoKWmKSlHv7b
	0PUQUCi6hB4ag0zJLs1bJhK3TZxdD3vYSaMbxp3/2kAr4hFxDgW69kRQr/MelyIDXDuiAPM1+OYd/
	to95KoY1P5QzC7eWAx0/eSkrFbCltdwDi+vFtRnsgTe6uiI8wihjzGKjUXeRHVfuIK+33yWflTP+5
	YN3XwA3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS518-00B5qY-OK; Thu, 01 Apr 2021 21:38:18 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lS4zt-00B5b1-Da; Thu, 01 Apr 2021 21:37:10 +0000
Received: by mail-ed1-x52a.google.com with SMTP id dm8so3550614edb.2;
 Thu, 01 Apr 2021 14:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e74JBjvASSCexB4+iSEuob3u0eDtHVLnT5ys0O6XPH8=;
 b=mpX/u4NEa6VMl+4sxiJrjdQPOoVilbJvMl23ZXbkewEFQ8lfgtH50OETUYW47QOLtg
 locw/fZ6o0orfi0exx+yUZtZB7Jq2QOcNsEg5QBwxkFTKqwWuVJ5mJUDpwJGHAAvg8le
 5tgcYyAf2k3b2j9WFNMi6h1EE0b/kMySmTSOlYuJjX6nq3HrdmbAI5r+XdfFjSnf8WFy
 mgzz+8mxrwB34r0U3o5LQ7lWjE+9vLF1E9e+w9yVnjLTfWPt5aqpw9Lj6jg2P/17j1v2
 MIqEphx3ik+ITXhIJi6r5Mtl2tpQO4ObRkAB6JjH3MnWjriMHIaA/GuSf/QcG48oIerU
 JHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e74JBjvASSCexB4+iSEuob3u0eDtHVLnT5ys0O6XPH8=;
 b=KWi5A2DeuEDC16PZN+PzBfjGmdTuZgvg4XyzfCc06GYI3tPkwPBMOmLRdszuZXiFkc
 VPxdnUVLehmUdgQGqam0AAw3PvKZFKRCkO9xlvLkIhTkAHY3QulAUnF16UXMyiUPV0W1
 9xlZVlFB25tWEdsq9H+V+C2ZoISpeZCFSFHDTUnyLjiJimjC48GoZuUdZo4l4fDSFzvs
 FXvS0r6vic5pjvLinGDtZOHStwSCww6d2j23ixmgHy9KwTuPIt7mISFNn1XJ5AnZiwqU
 G+MiK50J71Xm3JbHbX11tbpL3SjJdigcOrKK4RgLOmwd2MxVowpGTcyXVL1WVBvEv8Rf
 lDsg==
X-Gm-Message-State: AOAM532+6rlAdU+t6R91E5yzPOJBgQKBWzeg85KUPPB5spqDB1YNsVZC
 yEpcfb/Fa0CTiOaH2P3M4hQ=
X-Google-Smtp-Source: ABdhPJwsCEvVUp7ijj2SJndO5yoENJgYJgXc63ygfjWn90TVlEa7ceZNB8VVE398SrF0IfD6AkIKqA==
X-Received: by 2002:a05:6402:19a:: with SMTP id
 r26mr11991074edv.44.1617313020404; 
 Thu, 01 Apr 2021 14:37:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f9sm4237006edq.43.2021.04.01.14.36.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Apr 2021 14:37:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, gregkh@linuxfoundation.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v6 1/4] usb: dwc3: of-simple: bail probe if no dwc3 child node
Date: Thu,  1 Apr 2021 23:36:49 +0200
Message-Id: <20210401213652.14676-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210401213652.14676-1-jbx6244@gmail.com>
References: <20210401213652.14676-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_223701_860518_C944DFB2 
X-CRM114-Status: GOOD (  14.75  )
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

For some of the dwc3-of-simple compatible SoCs we
don't want to bind this driver to a dwc3 node,
but bind that node to the 'snps,dwc3' driver instead.
The kernel has no logic to decide which driver to bind
to if there are 2 matching drivers, so bail probe if no
dwc3 child node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 71fd620c5..8d3baa5df 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 
 	int			ret;
 
+	/* Bail probe if no dwc3 child node. */
+	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
+		return -ENODEV;
+
 	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
 	if (!simple)
 		return -ENOMEM;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6063CC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DDL3RSm0+vTPnpKgqfp3YouRrRyk1Xb3SU4w3k6v3c=; b=A7YcHuYNDDMKOU
	l877WvirMMJpnuyBytOwwghUm+ALko5uJmYDYt+R2IXIScIzzPKIf/2iUchT/t66CCVUczbZJOnHR
	P2hIFxOIWYErUBsO6I790TSUB8kwR11E22WoiR+Mc4EIDRZHwez0ZAYhdjJzhZBKpbd5eYB+lDjcf
	YIvHGujkXIXBT7igvZRJCSNp9VT7oq1HvgJhBcXr+vtL1Uosd8EkjemkmQgCwrPHm1eKNBp2d4OzF
	gkI/06bVMFtVCtz/KJu812nEEpoFcMm/UeMlQJqz0Y/2wR6yQafJUPBHui31ofXtjdXXQs1RT33nu
	1bq77n1m+CpER5TFfalg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG1E-002aiC-Aw; Tue, 08 Nov 2022 04:15:24 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0l-002aPN-6W
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:14:56 +0000
Received: by mail-pg1-x536.google.com with SMTP id 6so4219721pgm.6
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TB99EEY0Y3TeXE5S6hRL8Vsg8GtXXnj74TlFbr4XijM=;
        b=elfRSxTLKt6m0KjUPlq9hs9+Xj8mzgCWzAj/vP5boe3WhM0SayXAjYKMEYigPjG/0N
         jL0JyOmaQnchYpVAJMQZe99YJBVJgq4pEcvVQjY3QfGUBvcHwymlTuO+vH+2CnxgtJMG
         dvVSBCTanAnORR5uPC1nTOQHVzrJkSCg5Q62SnNiVO7WfHVkxQq/GIABZ2nnhmCv5x96
         dV+c4WVeU4SpN8AR+UCGqPsR2FaX8SgnEevAhRzGt47yASFR3BZmWiljBhfzzCKjG6PW
         cjAe+Aqug1YxK6FvK83J05G95jtlEW38ZEavQh/3e/Omap5PGd0sUN4aGyW5XKBs3lUB
         YlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TB99EEY0Y3TeXE5S6hRL8Vsg8GtXXnj74TlFbr4XijM=;
        b=eGQIcNW9idNuPU8NZS0lyRspPdJLnNkjm+93MoF0QcBrRJEmzBYgWfJC/JBu91vtgB
         7svThfrNUrWXtmIbm7+hLB8/rVASre6eZJC4Cx1w7/H1urW8pQu/CDjHpoHZDejbKqgi
         3t1p3kI/rsKpQUo/kItM4h8DZqVtmX/HDlZNkbyc3GpuYImI0YoocCKNA2pGuBewEWG1
         hp8g3BYrKV5vz1XtjIxbc8QetBt5sep5+m473ziwLXu4c9/zjXm7/M+iTcGTZ9CqeqSq
         oaQIq+RAWP8D7U7eXoktco7nx1ZqmnCDxLSfbgseqCh/S7TA51Crxb2CiibCB9mu52e+
         X21A==
X-Gm-Message-State: ACrzQf0O0Ha18rdfVWw54+P34tvsufE7hWp6aT6GmUqQ+iu0400GGXak
	iN8DkygB2hUWktX79YCtye2LBg==
X-Google-Smtp-Source: AMsMyM4w1pzoUs1BAG02rCILKSDqI53ov/i7CowJDD4s3mYmdk8h21rz2OXmiLccWOZ7dtlk8z3VfA==
X-Received: by 2002:a63:4753:0:b0:462:b3f0:a984 with SMTP id w19-20020a634753000000b00462b3f0a984mr45108940pgk.501.1667880894536;
        Mon, 07 Nov 2022 20:14:54 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:54 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-kernel@vger.kernel.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v7 04/10] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date: Tue,  8 Nov 2022 09:43:54 +0530
Message-Id: <20221108041400.157052-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201455_263594_5E4481B2 
X-CRM114-Status: UNSURE (   9.13  )
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

Add rockchip timer compatible string for rockchip rv1126.

Cc: linux-kernel@vger.kernel.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62fe9..a6221222e948 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -17,6 +17,7 @@ properties:
       - items:
           - enum:
               - rockchip,rv1108-timer
+              - rockchip,rv1126-timer
               - rockchip,rk3036-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

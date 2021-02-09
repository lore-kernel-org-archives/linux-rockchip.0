Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2169CC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1DD864ED5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1DD864ED5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tzOcevjknt7pZYTvi9mEWby3GCW6MvYPvRSJMyb5Q/g=; b=BVlwyAwo5qf5u7F+XZwNqhluoN
	mEjvVtehEMk+SG9x/m/aVKLr6HQU1xZucqhIyh/Y/cpQuR4XoOfgWi7fKxzlY7WMju2bIgE27Qp4R
	F0PTto6/wlh24mzbV/0A3wJplOo3sUUeLqrChpQai2+q4mL1SC44I9Qd9UWf+9P9zPRF+Ya5EwsVF
	SLnkJxQFo169afLljAjUxcbCbTtogCxid/rdNXcyZlt8UoesC05YrckgXHUpDOYixTozMZgHwN1gG
	XK2kT6FTKB9jeqfBKFRdX1wiFU+R/63AsUg79tq/kETnXLOSjN74ve4FqJ9m+jrvlSJF4zCPMFvWc
	RFph1aeQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Ycp-00056S-Ve; Tue, 09 Feb 2021 19:24:40 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcJ-0004sj-5x; Tue, 09 Feb 2021 19:24:09 +0000
Received: by mail-ej1-x62e.google.com with SMTP id y9so33605980ejp.10;
 Tue, 09 Feb 2021 11:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=14H0f5aEEI+2zFgxOySJ5VK8BkDHBP5qJGIxOOYhz58=;
 b=gMAIk/S9I3iFVCWESma9i7AuSTvZUJpJ5rqGwM8rphZJSjmYSw5wDTa40bpLw7B7Vz
 ZAydfmL8j7caXzB+o3mgGViApPbVoDbzcrw+wF0Hxzao9IrV+Fg3DjBO8I1X1aeAjegb
 /kYh2JBnjBpV/7Cj1idcONsm95EX9bbQmltv8johxwzcI+PLzSMPQiG0i7NSWYbVReP9
 xgUZxPgwZEigzqT5kFKMx61X2h3LXiyat0XAezx3zx4sdKcuAJUi/VcQjgjdJ3sbJgIE
 MQrAdtkVGTL+IeOpuylHqMZPZRncZw/HCsUZn5AZ8OHrwPu0j735rZkYRBQlzGRCh7Es
 AjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=14H0f5aEEI+2zFgxOySJ5VK8BkDHBP5qJGIxOOYhz58=;
 b=rPMyCPV+rG6lJV0X6h7L0LQVYQlaOn253PBMOF85fPCsC8bSM/L3GXtUTK/Vgm01wY
 JcJ7P7eYZvYM4D7SednIbYhRsJUc8bnjq6dDlrIKzeLqhwXvKO+1rrGH4NYmMkVEGv6I
 pJKDvNJufHoEZZMxN1m3PNIh06kDXd787AZ0n/0E8eJu8RZw4VixuE9q8x6VSKsvdbnG
 YDvvwQmxRGRevCaDVbwWL2tU9vxkVt35xGKnk8cM47bQpxf21ZweIhaO/t9uxT4qGlxu
 mC2rqelMyKLQkHtVRgqGzEbraTlbdVfGYKsxGIIKt0XBQlMUDc1ebIU40yH5nc4R4vqO
 lHqw==
X-Gm-Message-State: AOAM532Lr73Vjrar5b5NRFlXXxYJfnGw0oJ/jw7HtgRt0JJbSRIKjBEW
 wO3Oypcrflf3N0epCj+xIY+I/JVtcmo=
X-Google-Smtp-Source: ABdhPJx8ip8GJWyWEYn2wFpemRPOtuTEtwjD2rTTvXHwWcTT8F0MeWmHOPwUVBGO9at+rVhb13/wug==
X-Received: by 2002:a17:907:1181:: with SMTP id
 uz1mr24534030ejb.60.1612898643445; 
 Tue, 09 Feb 2021 11:24:03 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.24.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:24:03 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 6/8] dt-bindings: usb: dwc3: add description for rk3328
Date: Tue,  9 Feb 2021 20:23:48 +0100
Message-Id: <20210209192350.7130-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142407_418485_F47C7959 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add description for "rockchip,rk3328-dwc3".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V5:
  add select
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index 9908270a9..04077f2d7 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -28,6 +28,7 @@ select:
     compatible:
       contains:
         enum:
+          - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
   required:
     - compatible
@@ -36,6 +37,7 @@ properties:
   compatible:
     items:
       - enum:
+          - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
       - const: snps,dwc3
 
@@ -46,6 +48,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description:
           Controller reference clock, must to be 24 MHz
@@ -58,6 +61,7 @@ properties:
           Controller grf clock
 
   clock-names:
+    minItems: 3
     items:
       - const: ref_clk
       - const: suspend_clk
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

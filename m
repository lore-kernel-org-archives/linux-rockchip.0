Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B667FC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5786464E50
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5786464E50
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=045+AA8JKXAlQ1hhI/+uako/bPSwthj6K7XyFoH3BHs=; b=yVhoyLoyAuv7d5NOOyXwlnu5x6
	PuxNpDPp5mc1AybQi8S+s7Xi/soBE6Y7Jo+QQG+TyNkI+/4gZXSu5Fd5A+BkJQEQd/60Y15ssblpq
	mvTbltm4Kk3lFsfs5fn33u6a2vJaqBgXWh30q+V/5gKEgYm7IKxhKavxDfdOd/CZa5iZM/ASwfixF
	Nvbe5B0KI1G6jTBZA08lEAYydAAD19RrPYg/4RqqwHkNKq8pwwp8sEt/BlW+p/kP84cJh7qpfpMf6
	Xnp2VKjAS44f9vrP/zsTpNj7Vo5oADyPkVnz7a69gMo7/PUOiI2igVIyXApqJ6BIHGdck6iOJVyxb
	6fVEg7vw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTj-0007cB-IH; Fri, 05 Feb 2021 11:40:47 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTX-0007Xj-EK; Fri, 05 Feb 2021 11:40:37 +0000
Received: by mail-ed1-x52f.google.com with SMTP id q2so8492240edi.4;
 Fri, 05 Feb 2021 03:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cNFFFBXY6L5UHLHUyj3rIyUKC+rbFyqqqVFEOT4uqFw=;
 b=ahB32WzDsm/wCAllVe7CyZf0Rf7AO9VVUmt/hYIo2g+23U1fXa4dfkq9r2mMrvq9UE
 D28HY3O2tdoVBYU3FhxzltQZ2CxjV7CQix0uN2m8BvrUEhabYvBEbTXRpZbv1qSpYt7o
 I++opCff3wF+yu5JZGMW7gCWwPp09tjUN1EYjMHHUjuZJlSteyU8H8BLwnw9Bhx+2CdJ
 8sy7PD9a9BNWgAD/BJzYdHNaIpHXI29T11FWcT009Y03sswsw/fg06Lj37a/FrqUdwoa
 8MiYr0oxqZyNfsg2MG2EcbdOOgvIpo50BD5t5NV+eKW4ekUTTy99aOgMCDMmENdcbOZY
 qSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cNFFFBXY6L5UHLHUyj3rIyUKC+rbFyqqqVFEOT4uqFw=;
 b=LpAF245iEj1SwZ+lmwAJ7d6s84TAgnncSHQbxlG1u6xFX3a12Q8Phd9OFdvkRjxOA0
 72P/2tjq3U/dmbf4XmQcPWMplTjwJgITbYX+mJTtOQuzo6yEEvtMWDaONtEwpGwiwRhH
 C7l17aanq0vLa8Q/MQdpU21asnc5vTz5OAQis3cN/aFni9dKpNx8av0fqR6Fw6dPBEUh
 EH7ow4XleQmTUgCiURxb613WOoWAEeO5Z5r+x47mLehGpVCaiF84fGXoE9fV/5YgUgYv
 k6PwHkHjzVfCHh15Gps+f+5sQH7YH3Qok5zkBKR8yNY/m/DGb9LH+DjZdJiZzcMNSuUS
 ahRQ==
X-Gm-Message-State: AOAM5331IeP1HPv4aw9NytmeOketLhhlJQi+AdMTqNhZgpWf5/86jAsU
 yaZU4EJ1Iehjy1YmVKKNsAw=
X-Google-Smtp-Source: ABdhPJzV30e9Zsy9VnCpm0mQ5RKvCPwM/JwHEW6pk4wgqKQLWPOZYzu9IQTafZp5nbtHqjCTAImsyA==
X-Received: by 2002:a05:6402:270d:: with SMTP id
 y13mr3109884edd.149.1612525234585; 
 Fri, 05 Feb 2021 03:40:34 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:34 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 5/8] dt-bindings: usb: dwc3: add description for rk3328
Date: Fri,  5 Feb 2021 12:40:08 +0100
Message-Id: <20210205114011.10381-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064035_558388_245E027C 
X-CRM114-Status: GOOD (  12.21  )
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
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index d815aacfc..08a08ffce 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -27,6 +27,7 @@ properties:
   compatible:
     items:
       - enum:
+          - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
       - const: snps,dwc3
 
@@ -37,6 +38,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description:
           Controller reference clock, must to be 24 MHz
@@ -49,6 +51,7 @@ properties:
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

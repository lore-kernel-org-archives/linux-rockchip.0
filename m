Return-Path: <SRS0=55oq=KD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6902EC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBEF46112F
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DBEF46112F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O8OoWDcq2yn3QXsx4kXuNNO1AxmOLGLZpU8ZcFXM8lo=; b=ibolj4z/DSOdZDTqWzulMLhY2f
	+0f3Jsyu55s0tLBmQQDiCe4ja1qr1Pk42Wsmrzfx5/66sswRHKFQlzKuDrpYwcEIdTLjaOySvoCTE
	4UwMpHY4dqXNqmkQrZ+LaiEd8soUiOdCT2IaBOtvYkn54W1CK1qyPxen3idhvRmwSNoKPeJtaINA1
	hjlwmanVnl5WBhcVDNqKsKZgensbpLtZXKxw3DfSkCksO5TQxdJ62R5PrFlqtzDQE9LS9UwYwSrP6
	H/1VoW0bmaCoyPxF7/wOmgHI93iOefJ8UkPa+wsCo2zAdxslPMvBYZxbuol5f6YRUr14eNo7RGs/p
	LQ9de+XA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfMEE-009YOj-9N; Sat, 08 May 2021 12:38:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDa-009YHn-Lh; Sat, 08 May 2021 12:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=; b=JfDCcgWiRaF2xZLT3EyVRuV2ON
 mV73AJdKawMPtQAuCGnUfkOWxtdwFWqjb8GU5X+GEQhTVEVUtaYTnYVqeIVlqunBzV15Nf2H4WEPM
 5jarTtvzwQtzUgCjooznnMAF9CvZ39SEGzo0FvoA7SbhdWnTl2ZuHaNj1I1ExUgUxGzR9aGX39DKf
 mDL+qJfRfjb6S2fiMyE3HGWcw1gyh8Okel05urbBiLX0cxv/Y6aba4F002pTPmsM6+9KNUUzDsS16
 Dk2KVFRuPQSx406wWZw3qurRZqMzTYPt9M7SVWOugkACS63UW7l1FdUvrli+JgOyC3jkQ5EQ4Dmov
 hjy0XibQ==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDY-007XpL-8V; Sat, 08 May 2021 12:38:01 +0000
Received: by mail-ej1-x635.google.com with SMTP id gx5so17638074ejb.11;
 Sat, 08 May 2021 05:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=XVc75WjvW/jXr7GuRFMgl/B3ocJjMgjsDoJZ5q+7GftnPXK3j78llifPHua6QuRpZe
 S2JRRUpTf7UQhm+iD/XerHK074jsk29Ml37iabWv3AY3UWKX0LNaidX3uX+9R4vSU0YF
 7lGmHzKVjbcR5N0ohi3qDlGqiKNEEoLzD+pGRxpcQQyOroR7QwF3eEunhT+xThnvwTuW
 wYYCpNxNdQEoY1m26l9R/UEH7qGV3hafQRUe++DY/bowSr6b5m07Xxtk8UjDDqqfO7iv
 Sm5O6DWFcDX66kJZfwqZSNmorCRwvG0CSpXD01STw6PhBVRVY66XWVH2/KsP4jblCE/6
 wbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=IDBwnt4xWhIiwKJbvpQVpyoJhy/yJJbVbouZOzOQTS+dRyJv72ncj19rNI0p20mwoJ
 DjT/0E+4i2hoqSGN27i1ATQieoMbzTQgkC3s9E76OCQA3qKDwZYU1lIEYSD1tCv2jaJJ
 jevUlQEbOC8jYWgoCJ4KvsSJHQ6O9KUEvDlncWa6asNgR8KPUCMscnLyDAaWYL4a5/Ao
 SpDQyOwX9sMMSmbPSxgE+KYh0XvHxKJ+S9Hs8KcUv0ifFDVfCogx0dAdei610T/3GgBg
 4NL5BMN1tpoiOkf60F6qoaoSN9YSh0NLiTDdCOmhXut6RkWuPBflpH8Z7pWg+8pOex87
 lcbA==
X-Gm-Message-State: AOAM532LWGtu+lj/QucDETSSfHAkfyT7hTeB3GOxgF2/vYuW3br1hZYy
 8URgoAlRQpz5/KKBRC4iBR4=
X-Google-Smtp-Source: ABdhPJw+I2BXdRO/wZHRFmSoPEASrhK4I2mvvljtsAA/6vDmqlY2s/nB2ChHFF/orhy2YWYGsKCo0w==
X-Received: by 2002:a17:906:cc5d:: with SMTP id
 mm29mr15327654ejb.362.1620477478844; 
 Sat, 08 May 2021 05:37:58 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q25sm6262618edt.51.2021.05.08.05.37.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 05:37:58 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] ARM: dts: rockchip: add grf register compatible for
 rk3066/rk3188
Date: Sat,  8 May 2021 14:37:42 +0200
Message-Id: <20210508123743.18128-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210508123743.18128-1-jbx6244@gmail.com>
References: <20210508123743.18128-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_053800_319036_26DAC800 
X-CRM114-Status: GOOD (  13.82  )
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

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip rk3xxx.dtsi file only uses "syscon"
for the grf registers. Add "rockchip,rk3066-grf", "syscon"
compatible for rk3066/rk3188 to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 755c946f1..c34bc59c9 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -256,7 +256,7 @@
 	};
 
 	grf: grf@20008000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-grf", "syscon";
 		reg = <0x20008000 0x200>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

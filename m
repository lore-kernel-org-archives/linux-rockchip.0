Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB03CC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5791661152
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5791661152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XssjL3+5yp8G6vE2xM/xOg+yu5/6wd7E/f1m94ZjSJw=; b=exVvlOr2VGDSz+/G7nT06ZowFY
	YdykxA4OXA2zCl2fvmNs+uTk15uj9pBxn1//WmVCyWHai6irEcZJrtGG9pJWxkr3F4aB3TZcjxDP+
	A+oy0B0eIilvzNm2eWSb8uuKqriCSflmp2C5IdPHe7xj+bSZRArRgnGlfETOPoXlXxN6VI5OWwOwz
	DPKMiIkdWIOwVFyExyPLan+xnkrbswa1RuZ45ZQJ+4Ji1mQ/mZVnP5diETvOGv0qEhvsf365L5WlV
	+fJn7c3NJz+VbMtt1Se+15hjaKqkqpMnuDTE9dCN9tUdR6WJrvmNvO3iULb05lQ+OzDNz144fOiSF
	0YzinpBg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK5S-001Ptm-E3; Fri, 16 Apr 2021 08:44:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWz-001His-8R; Fri, 16 Apr 2021 08:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zVybsMqluNO9BMi2O3k2e3fLGvOiZiUgtpoVSgohbLY=; b=lJN52vXiBpulfaYNBvVZppO701
 2yB4RfwO11pI/LOHIgjZ5E5Tsp78jHLQrp+WKaSWqVw9W1sSAarIKhY9eHRqR+RPrnZuS0+toiJHi
 XeZetnFVvotUU9203aH7g+93JaGfguQ7vZ6ajfk7j42kHZesDzNl4JseSjzhihcUasSTX6wl20J+V
 5XmxwW8q+MxgBifVB7FZtqbqv7wi6Kj7ZUmZBAL+TCSG7RJVcPesNz8mukxpI/hcxyGyQMPqqogEU
 8mP6i62zYWENRruGsxgtAB/w7fhD4KEjLTuNaKNg5m3f4qrqu3U+APmDx1bFPJ2iqtwbLFJtpALmx
 4Z88CbkQ==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWw-009B4K-T4; Fri, 16 Apr 2021 08:08:48 +0000
Received: by mail-ej1-x62b.google.com with SMTP id g5so34139708ejx.0;
 Fri, 16 Apr 2021 01:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zVybsMqluNO9BMi2O3k2e3fLGvOiZiUgtpoVSgohbLY=;
 b=NruGJMfRRR9+uo24Pjx457WHq7jjzMasM0MlC8BdZFCl0ra06oMFTnbdl2+2I4xZng
 /o0Grrc1ZHWjK7QqQuYSuUY+OOCVSdjcGJWwc2zmXv6iQwuCJeToE3CJRsSEyd/+K59d
 NvOzzfwMnmNcddkshVNV25XIYSLbVnIdNuCHhzRLSX9cQEe++xTMRy5GeWr7ym0fzhi1
 TEhvHMo/eCPOObUsm44741zt39/NizORnrBCnM1EvbeTuCWgkja0KmcJPWhyrCvMOKIU
 5FNptgfEySKeIDeSjW132ULiSZ+Df03jzPZAD66a5NSsKedDFnmbcIv5wqh0B+d4P5nj
 3ntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zVybsMqluNO9BMi2O3k2e3fLGvOiZiUgtpoVSgohbLY=;
 b=jgegD2zZaswe68aCpFeBaAtoF66ozRLRgPR80GugojnQodXUMvH6U4O3rEWgMT5hD2
 ydI6R5k/dz/KO6HKsDbBuFR2qEj6zjj7D6cxpqB6ttgrmyXldcsHtjP7IJkINJ+W74+o
 klcceoYBc03gbmRY3p+87UHNOU7QnIKegs1FmpXErQ852/dNfGKdTTDqt1N6Os5Y8urm
 VIrWCefNC1nYM2tVYy8jha0cfKG6shrdooBL/7L4YuZhMsW05ctfYc0nc87kekSFd7LX
 v/wXd5AJQ8ULg6oKONTHAJPzqgqWcTjtjAMrSOM2+Zh+ALiJPiZRMH6vdH/Dsi7n7zjS
 CgRg==
X-Gm-Message-State: AOAM533h/5ZcLW7I6IHrsFg0cFAiqwPGIL9wkqIRSp4eb3CY+48ycueL
 d4UqWhU1aFii1hZf705ikec=
X-Google-Smtp-Source: ABdhPJz0D6IJN+Gy5h6PgPncZDg3EDz4COvNCL/A0zcsQgOCE5Gvcm7J4cnWzpuBFZMcRkmpj9e01g==
X-Received: by 2002:a17:906:95cb:: with SMTP id
 n11mr7413708ejy.251.1618560525791; 
 Fri, 16 Apr 2021 01:08:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.08.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:08:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 14/15] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Date: Fri, 16 Apr 2021 10:03:41 +0200
Message-Id: <20210416080342.18614-15-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010846_960495_DECA1C8E 
X-CRM114-Status: GOOD (  12.01  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

Add the compatible string for RK3568 SoC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
A note for rob+dt and others:
  A review and ack tag was not added, because in this version
  the schema layout changed a bit
Please have a look at it again

Changed V8:
  Add pd-node ref schema
---
 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 2b9950fd6..24eb00834 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -40,6 +40,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3568-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -135,6 +136,7 @@ definitions:
           "include/dt-bindings/power/rk3366-power.h"
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
+          "include/dt-bindings/power/rk3568-power.h"
 
       clocks:
         minItems: 1
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 762F0C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:57:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 356216125F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:57:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 356216125F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6FJ2bBuQlUKIKw6EJy++25PqLNdUolXhvHDsbxXriyM=; b=e178ch3ypllKn3
	fmNJT6c93VzOOKJyBYkfjNp17DqpQHjTQVWNb/iggAxeKZiuUHu4Jn+SG1KwV0+CzhEv5HrzWnHGo
	gbxYnB+2up/3nacMA+qJ75suSccC4k8nAYjooHRIdbJdtn2laUo0Cmt4Sd1L2UmkOImkTbP7lUFIu
	VCB9B4vPhCdmG2Ov0UCHXvWtNBgxPY7XGy7xmSa69IICbHARM0it0SZOz7zFtutDiM1NySqgxWEw1
	MGzoiqnJb4N6pMIaSpov/TpVvYfwVvhF6vhr4Odm7kdf1dF/BPFATL4V16NaM89uEg94gEwOzKDIo
	KisVEhOneYXOFwXaq5pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mITAx-002O1C-9w; Tue, 24 Aug 2021 09:56:59 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mITAk-002Nym-21; Tue, 24 Aug 2021 09:56:47 +0000
Received: by mail-ed1-x52f.google.com with SMTP id q3so30768519edt.5;
 Tue, 24 Aug 2021 02:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZHjIuwbjXpPZGfV2+SVrqgdjS+2JAKYK34q2xPh0xA=;
 b=OCSo8cTz5kPszOIvYXG7Mtg2XJ1KtNM7nfb3KCxWGsEm11UxovUvk4/f4Qhu7Vtuuw
 5rhr/nk9+6OrhTFyAQOnJLXk0oqP9Nkl5a1Erv26U6vYAuZY+uN0yMD+B6IwTgdAMb6y
 tQJN1ScA69w3BgwBzlBW9T0/7GiALm2yzYbgqzIf/zNRbxWpOBVTmwr6pL+vi12Lz4lV
 G8JfGzY+28fz4UzNzoqeUeqXeiRjVj/OLU3W3vS1KoPGZ7xCqFC3EBnzK7d5tHVdq2jK
 zMAvtP7LTqgMD0RzJ0r0f13w5sT3EzzaAljvK6MMLfYrslzitT4B8ZGNSYeEoC/Te9kw
 K1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZHjIuwbjXpPZGfV2+SVrqgdjS+2JAKYK34q2xPh0xA=;
 b=K9qGZQtiiZJXX+4PXHjjiJsu+9vjzmn9E+HFEOwFMPKPG4jrP2sEekxaZoKpWgrNti
 ia7uIZ/FF8vuCs+J7Li4f8klWAp0Xk/k/QSZow/qRCPd48mCI9I/z6ydj1LNxPF7GyJN
 Ynffp7QkTXI6hAKmkUVtQwNhPE8vwEzasFDccpLzHKpbdjJLykwIF06ewloN87VY/uKo
 yVJxL3zoQhz+SfP8bFvHoCKo9wVIstAEXIUNeJQU+3pnp1j6F8jLwrU9OIiHL5vkg5h5
 dA9KtcNfgge2iZPV3DxitCLxsLymovVI/wTqldh4gUN1Mjrq9V3eF10oHCUfpOcWZsJh
 7uIg==
X-Gm-Message-State: AOAM533TG/Tk5cHm4fEaAw4ztpZlePI5p2MoAjP2KwpO0Ur0zQ0riwKg
 /2XKal7ho8Yd74+wzX1zJl8=
X-Google-Smtp-Source: ABdhPJyRfq9VETKCteTsYN0ZD/x7BGT+N4SffLf3FhsdSt/ExfCu5fEo/8NZupdgJ7twVTTfLy27+Q==
X-Received: by 2002:a05:6402:3589:: with SMTP id
 y9mr42483656edc.247.1629799003531; 
 Tue, 24 Aug 2021 02:56:43 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ne22sm7832761ejc.113.2021.08.24.02.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 02:56:42 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, daniel.lezcano@linaro.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: timer: remove rockchip,
 rk3066-timer compatible string from rockchip, rk-timer.yaml
Date: Tue, 24 Aug 2021 11:56:37 +0200
Message-Id: <20210824095637.2547-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_025646_156776_8DF43394 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
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

The Rockchip rk3066 timers have a different register layout then rk3288
with only a 32 vs 64 bits timer channel. The timers in rk3066a.dtsi have
"snps,dw-apb-timer" as compatible string, so remove the
"rockchip,rk3066-timer" from rockchip,rk-timer.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index e26ecb589..5d157d87d 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -18,7 +18,6 @@ properties:
           - enum:
               - rockchip,rv1108-timer
               - rockchip,rk3036-timer
-              - rockchip,rk3066-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

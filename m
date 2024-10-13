Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB14CF258E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 20:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeF/or8+x0ZMiGRTG/cEMDbMvhknluskfbEYHeCnMbE=; b=ZgROW2mbzCLI6V
	i8d+zR/J4k77Tv5JAegVfhvO0Z0kFAsxBKl9S/6clCdxYlGS0rkfTpeNRK22nSbs7xIRjWZegy367
	OiCG1aedfebUrsoQzdzsS4ko9gz1dZ8gUTRtyFVIJ66h/8PhVSZrEDSGvDY4Mf+NEdJDvo998LE0O
	JYRnWuQt3gsqFYICPhRHkVP2ROJxDxAQ69yBku72Umz735aqIkjJ0IeelfXFiTvgrgiYtSduwKNeZ
	XemE8a/ismxhzNy3KNpvcM6VhaZvgOvPRxAn4krsKUWLquFcKM8MBorUsLI9VCllGgTuKIPZ+FWzy
	ohi4cpB4mePSc1QRwTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t05VK-00000003DSn-2a9C;
	Sun, 13 Oct 2024 20:47:54 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t05Sh-00000003D8X-2lNF;
	Sun, 13 Oct 2024 20:45:13 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5c94a7239cfso1447400a12.3;
        Sun, 13 Oct 2024 13:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728852309; x=1729457109; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sytY2FNkkLBnOCAcfUv9hkr9CctUcl1zNo07NA/NCoo=;
        b=QfIW/YtUTg6n2lTE0pukS40t9ro0bWxZU+aqsc8OHzOxnu1AWZL8krPYUdR96+teKL
         Ke1BTtb1pFzw0QWlD5yLt2f6FtFvyHZIZ1vztqw+m6vTycOX4tlGY0qCtbEzjrSYMajJ
         ThGXG/MH0szrTr4fK0TnzjMf3I+7Ta8pF2/W7W9RlBjQL+HjFsfytrGJeyXt1QDFr2ds
         pVbi46SyDXlVYlvo9KNBjC9I9STA4VSFaCxBD5grvagNXnHujPmigzlpw0i1T9gnDQWs
         Vo+7WX68LLKMHrmeQQNaAC03B8sRicXL1zbfSqvZhF9uVxdYq1r7z4uhhEbSqFN+jw1d
         uLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728852309; x=1729457109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sytY2FNkkLBnOCAcfUv9hkr9CctUcl1zNo07NA/NCoo=;
        b=PDtJ7UudlCx1VCIlPrwsK/DJsXH95/x6NX0SDOhtq4Hef69cyGeIKYGYvQVg9VaZxO
         NqlQi5XZhrDE3dqzRmuMchIPJeexLLRjZXyuC72pwtT7Gsze+uxlg+tfqH2AJNJNCt9Q
         SGQZEHXM/zfg3dDnn+dJRFFLEQIt4/euphhhOBVVzRkoBZeVJMP5HWpI8qOjCSzrU7kg
         2BSev4SONh6AAq8tBugaf+b5XQNxWhvGIZPT2kO/onduGjOwE6o3lRpPziWmoSE4tGvm
         o4P2xGI0/9ysr8U1KhTqDYdF2AyCeUiQKeKIK48hfutfsGsXOuiyn2tYTVfDk04f21mb
         UuqQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4qAjfVSZjFa7zMzNDTTnNe4TIX8RNGCkZ68gssNZYIerY5LZFSFl+9OUs/RdsGm01hHCNVRndBgKEqf2x0YRM@lists.infradead.org, AJvYcCVHeNGg5gnjyHu9CpfxKC+J+KJR7OMrg3bzYjJgTunKKUV/5dAn1GPJ61fH8ykRFgBDpBbcTolGpqfvYhvlNiw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrC1o4oAUZw7E0sFIoGTg68Q0DA60tqaAdtJGa3YmSwdhaTbrw
	zGipcwdV7AZxH/sTRDQku/CWQ2hYK7+zvtP/3i6WXIdA+BoZGd/L
X-Google-Smtp-Source: AGHT+IG6hjVN41eeX/ukLBNVoBT3VqnYSYGyiAQdyRNtjxLf1w1mNS+qSGuF+dQPFS2mvhgSf0IuqA==
X-Received: by 2002:a05:6402:8c3:b0:5c9:55aa:4285 with SMTP id 4fb4d7f45d1cf-5c95ac63c95mr10120852a12.34.1728852309459;
        Sun, 13 Oct 2024 13:45:09 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:ba33:7ef4:2f9b:8303])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c93729adcdsm4132770a12.89.2024.10.13.13.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 13:45:09 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b
Date: Sun, 13 Oct 2024 22:44:24 +0200
Message-ID: <20241013204446.303727-2-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241013204446.303727-1-cenk.uluisik@googlemail.com>
References: <20241013204446.303727-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_134511_775641_17A8DF96 
X-CRM114-Status: GOOD (  12.46  )
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

This commit adds the Xunlong Orange Pi 5b entry to the device tree
bindings inside the Documentation folder. I know you said I
should extend the Orange Pi 5 one with an enum, but I made a whole new
entry, because looking at all the other entries, they also create new
entries in a case "like this". I hope this is okay, or maybe I misunderstand something.
Thank you in advance.

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..130f6ccc1658 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1053,6 +1053,11 @@ properties:
         items:
           - const: xunlong,orangepi-5
           - const: rockchip,rk3588s
+      
+      - description: Xunlong Orange Pi 5B
+        items:
+          - const: xunlong,orangepi-5b
+          - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
         items:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

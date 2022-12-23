Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D70AC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 02:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mC/kkCYMeReL2nQkyLUtbaw2SbuOLnjZPrtP/YwiHhI=; b=MJ/5mVTcUoYdEN
	hrn8N0VDzdjHgUX5mlZRMH5DFum/WkXQZe6qYabwY1Zbb8xHD5mtwpdKzCtrp8K//BGqx8DYlVRjT
	A84Fse6EzAcr9TjCM3v8ZlFhayFkBaBJdnFu/4SnJwLPi8IKyjffqL2laMj8kdt+kALM79rAzjZXg
	7JK5XoKAj/1enMPwQVfHQtrBQpxN5e3L9YaL8OvhM/LOPZ6FtgnuqwA2yL6CImHR1QUgIBXmErCYY
	0GzX1QHuE4Z/lphHxSO+vV/Oz8nJbhbNJXRtYaqa7aG5gnQAJu3YMyN8Rp0g2WPOdLT8IZ9gU8Tjg
	jhN6I6Fe9RJdpavsl37w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YDx-002Mlr-1W; Fri, 23 Dec 2022 02:55:53 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YAD-002JYO-8x; Fri, 23 Dec 2022 02:52:02 +0000
Received: by mail-pl1-x630.google.com with SMTP id d15so3755982pls.6;
        Thu, 22 Dec 2022 18:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JvI3blinvaCjUYpwPXTVf3onR897jbDV84x4cQn3O60=;
        b=Do1QvfnwIcT8hHAyZETGPNy9FuDlbFdcTAZrC5hnphKnWybtcsnnTSg9KL52GnF0nN
         pIXVLqYAmL6y560Nb8s5A4ClCjuI0B7p+vJTTP6jF673ssztlyBxbS/AoM9oOKeyhOrg
         j8lOaqGTOArRAogD7mYzZhWx9QONVpTWTDiGb7GFltRLrbKGzNSO5RiBie+FYMJn51bY
         OJvxmxUpdhENfLnDIsIZoguRKdW7OijxsEFXfCHDfpP+0dzJRJccIY49tudP9WRDQWKk
         NOHptOrSkjtybQjBPrOfEQv6iX9QfejdpFjhwweCVorHp45kQQcV0qqklF+XqB5QrHyZ
         4Gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JvI3blinvaCjUYpwPXTVf3onR897jbDV84x4cQn3O60=;
        b=e7UQo27krjP6IRzjATR2TAGZIVlZwV/grc9TSdWVsPS4w8DzrySNsiL09f1xJTqXzf
         o0fUcH2HX/vUlh5osSqjDez4S+zaecpNGibznx6WupR5zeMsu1CmHhNlSKTcv1a2rele
         6MLv+CzJmTtCK42yvJCDUe4h2SodqaytXknKXuzcFgYgUDt0EP4u2nRmpevkXvhgSMWr
         sRT766CzDaOcc+ODGNBxTmZuPok1JfoG7QeUHAqYpvSzR9MkrbPuNXPdWIaR63O7C0/y
         UYKiRICCQhQiYiPU2HP+C21d9w/tqUzsttojQS464KwVwNkXA604vel9EA9r5SaDvdCK
         xHqw==
X-Gm-Message-State: AFqh2kqei0/NjRmp7l24ztX6M2+qHN+m6nxq3jhohHhhXpDptTfunkJ8
	gGK16NTp8JJ168NqnuNzwqk=
X-Google-Smtp-Source: AMrXdXsQiEhl7zXPKFqOSu8j3jDMEEBsHFkfMleAHZnaxS6CJp7sq4hIxuDG8v+6wqeNjfNCfcoexg==
X-Received: by 2002:a17:902:7e01:b0:192:569c:e557 with SMTP id b1-20020a1709027e0100b00192569ce557mr3295133plm.61.1671763916833;
        Thu, 22 Dec 2022 18:51:56 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.9])
        by smtp.gmail.com with ESMTPSA id u6-20020a170902e5c600b00172fad607b3sm1170243plf.207.2022.12.22.18.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:51:56 -0800 (PST)
Date: Fri, 23 Dec 2022 10:51:52 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v8 3/3] dt-bindings: vendor-prefixes: Document EmbedFire
Message-ID: <Y6UXyMVDu8ZRFvJ5@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6UXjiQpMFHQkXJ1@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_185201_368980_684925B6 
X-CRM114-Status: UNSURE (   9.27  )
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

From: Wenhao Cui <lasstp5011@gmail.com>

EmbedFire is a manufacturer of embed computers and education platform for
embed devices from Dongguan.

Add vendor prefix for it.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 00493b962bd7..0f04ee30bdc2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -396,6 +396,8 @@ patternProperties:
     description: Elimo Engineering Ltd.
   "^elpida,.*":
     description: Elpida Memory, Inc.
+  "^embedfire,.*":
+    description: Dongguan EmbedFire Electronic Technology Co., Ltd.
   "^embest,.*":
     description: Shenzhen Embest Technology Co., Ltd.
   "^emlid,.*":
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

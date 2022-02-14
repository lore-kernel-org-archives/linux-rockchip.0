Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954C3C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pALp0QUbd5RIw9+JHr7S8IBmXe49IuzcmrDdBwHp7io=; b=KHECTOJ+mWf935
	r6/25PY06tEQDs/dpLgX7opIRYunpLOG3yC9h0190B3IKjBCJZZLDxEc3HgDkM6P7m2jwnsQEoVkt
	50ECV1P20M/fx6uKO47YCVGLlZFtyidcixQ2it50EvCppq17HqZoRVaasCSt5OP12KEgq/MNn3B01
	a1rP0s9uTif0CR7M7ZVj8oh3U6AqY4vxsmkDKcZvDh9p2y5giqsC4q+EQAAmAJ8VNvHUkScubtrBK
	/VF0Dqm2kf+CiHz0Rtf1tjnHclw/msO26TNE7tEutg5Q5JVbM0Q/71gefn7QYZFm+FBU4Bbc4bkUQ
	1hTEgG8R2KxH5scuG8pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWjC-00DuuS-9X; Mon, 14 Feb 2022 08:28:58 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXs-00DpeD-CL
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:18 +0000
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 23D1D4033A
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826635;
 bh=YIMchXgxrGO/KxGG+/UkFx+hf7tS1WrOyOXtJpDqg8o=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=q68KrJxtY3MZ2TuRbvwonTQSbc5/iN1y/yB/stVqB/pcjhL8ltiUQL9h/SlplY83L
 iUyiFIf/zxxAxSluntXt9uNsCnKbJJ8Zmy3aLmH5jyT7dfp650MirNAkdYEpltiG6g
 e149qRZQOZuGfq/mVE3ZySLhMy5AeyCkVU+0YSKhPhHO0gxLDGRIoz1xkBMaYactzy
 LJNvrmcHH+l0rbcolEWEusGGLV5gC+pfzYbZAOf17MokdHXa+WZgCExSDMmbuCU6f/
 6Bix23H4YHrKaTg/OGVaG8fPkXIAr03v5U247yJmq1BHo4qmY2RS9+g3OYmYqelDx8
 V3l6i9qUX+HbQ==
Received: by mail-lj1-f200.google.com with SMTP id
 z13-20020a2e884d000000b00244c087df65so754542ljj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:17:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YIMchXgxrGO/KxGG+/UkFx+hf7tS1WrOyOXtJpDqg8o=;
 b=53opvwY1n35O/S8KFrFSfBzhxS/K9MXOCI723TDlXEZbJ7yK3xaLS8ha42ybk6v44k
 VOnqMAOK0mEmynDpJQkHyrhYH2LNMYORrtmnvoCWfMIY78iQrXVn15zlNQwf0z+4D5BQ
 FFgPl+aDGJE/3mBDqcI2OM0ixsWV1Picd3I5a9Fo+gFeyXNJxzg1IMHczBqgTg0wmSNs
 fgndaLtJfKRC0/xk/8dVXE5I1esZbrGdGO35vCApZn98osF+haMNKQkeq6PHf+IQYQPX
 2443ABYlVzvpaYRPKehBSxbc4N2ZIHT/Z1tbWTPtQO1uLKGiRce+GByPjVeDuknIEi36
 CSgQ==
X-Gm-Message-State: AOAM531ENMYIe7VmuPzaO4ZS8+ajlJWkScXiLt/0+7sGgDdQA2uTkGHc
 KGrJMUe5qo55zOzqt08rkjIZwjhITkc6mnzjPOleN7a2d12hIAyGl8DE+VI2Hgp6HCPWG5v4vIy
 nWJt1tsunZq31oUA9uygl+pnC++Be9ooVJyNRJLvM41uNs24p8g==
X-Received: by 2002:a17:907:3342:: with SMTP id
 yr2mr5958117ejb.146.1644826624453; 
 Mon, 14 Feb 2022 00:17:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzfK0aywy5WjW2583ifLTvYYWtVDcJ7Gtmfi5jkghjnk2WcWRlDFdui/O6H62E9nB+KLqqdpw==
X-Received: by 2002:a17:907:3342:: with SMTP id
 yr2mr5958081ejb.146.1644826624297; 
 Mon, 14 Feb 2022 00:17:04 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:17:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 14/15] dt-bindings: pwm: tiehrpwm: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:04 +0100
Message-Id: <20220214081605.161394-14-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001716_570899_0460F37D 
X-CRM114-Status: GOOD (  11.48  )
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

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml b/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
index ee312cb210e6..70a8f766212e 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
@@ -48,7 +48,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
   - clock-names
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

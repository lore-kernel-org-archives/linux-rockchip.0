Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133A4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLL/9BOAQa9P2oVUwqvLpfSgsodORxOhQQwkttulzao=; b=nmbOV3ENlK6VXR
	SlpYykjDOG//G1zMs0S3RQghrU5rcU5WUCRm/aciuLjbkcKM7Us7fovZ2TrZoDpoeEkYPpaeqSmD0
	ziPhriaUdLSS5DUG7e9AJIBlOpydot1hrKxwAlci4C7P/XlfI6c7g6l5a4abdfi0XKDiW2M9CqwRH
	NFljHJOb4d+yc/IFJpdXxiOnfGKjtPZTmgpKYbMEvRNjiG0fX8NCkAkY5H97MbPUGbbomdtejC2iS
	RMKvKFyT1/aTHFmYTIGl0zfniXuW9ISlan2rz2TNnQsj8HCKy30RC4X2Oc3ovRq2z6VPF2BADWw/o
	VT38CDq3+DV5Na+/6KEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWjG-00Dux3-SW; Mon, 14 Feb 2022 08:29:03 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXu-00Dpfs-DY
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:21 +0000
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 32D5E40518
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826637;
 bh=iIyJdPXcEBkqUXDuGqxhbnQvntH0bGkCRSvxS5pcFZw=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=FRUc3V7BrDCcxJIIS7RIQJo3Uosu935EkpHjSS0nh3eX4TcTyDlJjG2R5DMxahFcN
 jv9Gszb55UxtwN6l33zqhJwMFIPFkk52YQmHJHnz0d8sJ0QBisv1sA198UZtc9QvZo
 GDR93CaC/NpcwX8P+pJojneltPx/c45DIZX3UQGeALdujWBAowmW35DUMub2HBaxwI
 IXJEhK9Yh5YNlpy0o+LIEYl/gCsKPtn7DL6Uww7neWQjqqdXk3wK0AUWKxGfBaeu6H
 6bcuiAX9ueZuBg+25kvNHeb/CUduKjYZVApxww4z9goqCRsML62YVO/eRmA0UxW3HL
 fh3p7kyXDYA7Q==
Received: by mail-lj1-f198.google.com with SMTP id
 by12-20020a05651c1a0c00b00244bf726482so769657ljb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iIyJdPXcEBkqUXDuGqxhbnQvntH0bGkCRSvxS5pcFZw=;
 b=KZ3GA3ci4ZMGwpb4W53ggTCdFRu0Z2wPuYpfSMtzUqte5pgRcg73Gf78/QhN1YcKik
 wAzdEHV0d8zhIm2jkb581I5dboHJBBA8rxgFZocWrbHmHCIhG4RXO+fS/TgmhkJIQ9ut
 aCnom6LHkhx9ADnREz6ImwT3Dx+HZeY+NP5dWsx3ydoMSJ1TaMM+87F6i9I1O1gQrbXR
 Db19mUhOOf9cbXsAjCFe8zlZAiELfe5vpc75BoZrqFSJvheOpBGxfh2mVPHPUqOapnpO
 9led2O+rqyU7NKKEVgTnTyvR637BEu796zXY91KGDs9aybZo5ydRSt/TZFQMhdFOiJSE
 HAEQ==
X-Gm-Message-State: AOAM530eGHcQC61jSuE3kqHIL2F19eyibSYMZCG51HLHjc7taGrp/Kyh
 3CvLM0IzXm4KENZQqp9jrtqkLab7Kd6n634jNsg3UvHksgtEiLpRLz+X3F3LFjs4ESAYaPUOnMQ
 KWknIwgOy2chcwOQqqAxiZrlVlExvXnfRJD+YxhghICDKVVDOCg==
X-Received: by 2002:a17:906:7482:: with SMTP id
 e2mr10548243ejl.84.1644826626207; 
 Mon, 14 Feb 2022 00:17:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxq33v0frVviF6aoq/yzn0yigEhIAPUAXD+ZluCWsCIVgJnTB15DwsxtEtp09CYMHvANYnT6g==
X-Received: by 2002:a17:906:7482:: with SMTP id
 e2mr10548195ejl.84.1644826625992; 
 Mon, 14 Feb 2022 00:17:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:17:05 -0800 (PST)
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
Subject: [PATCH 15/15] dt-bindings: pwm: renesas, tpu: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:05 +0100
Message-Id: <20220214081605.161394-15-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001718_620808_3D89FA4A 
X-CRM114-Status: GOOD (  11.37  )
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
 Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
index 1f5c6384182e..c6b2ab56b7fe 100644
--- a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
@@ -68,7 +68,6 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
   - clocks
   - power-domains
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

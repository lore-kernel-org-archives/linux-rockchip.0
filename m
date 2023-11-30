Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E75C07CA9
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI9x/7DjhQphyI9ME59osB9EyxDy9WFkzF2t5cUFck8=; b=w/lG2RIHulWXTT
	0/AuKwtYi3SRD3Y/ZSCa/GiVmCzvCn4O+kXpgikZ4m56yXY1wvHaj9sSlyj/f3PRRhmD+2pVFzjej
	v+6SmxueavZ4Ix2gqTUpE7Fr6Id9Rdt4xLUuwtKfoRWuogPJYc/pIQsxcN9fJNM6tmNX9VDX/Pfr9
	JrPRkdRBPDYgRaUqcZJ/HP3QQVf7rbzvLaswlGb1QQhIbDareuoti6ZkO4DLANy+3Ql+HMi7yy31X
	HFHhGQA+M6hRk8jzRLKs028/LGC1OT+6CgrjZgWUWEfyQ4r1nTYoZ3Au1Zv18e5J0Aaxy+PPxgJ4T
	V4DsegJ6Qwi2sCfx10EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPF-00BGql-08;
	Thu, 30 Nov 2023 15:56:49 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP9-00BGjy-1x
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:45 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6d84ec109fbso684310a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359798; x=1701964598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YkS0F614/zYSCaqFBeaQwkOCeCxZ+aA+0mnevTE93Gw=;
        b=OznWK244jape46SFt3K1BDctYs2Q3lctS9lTBr1+Nis/RNfLk05VjnkXn4f03ns7eU
         2bb++lLW5oKR0RsE8gei8+f4QdR3AiFS1IWwukLIP8O0Cra9TTyueHD4VtpFflVOt6E6
         0Sw5TX0kgUTIRrRAdfQutK+pa7MtLEbSaHVE2oOA68vfxx+Y5BRO8BbvbBFb+B2Q6XuZ
         uOdO6RwXabgI53RqmVGgtVFxfpRdw9DlCb6OizzJZLbTSIOTkKtUaVa6unJ5kJUpBEDz
         NhgqnMoHWLRTmOz4d8rXiXyds0YC+jyC9HL/IWIxai3pBAwad/+lphWJqUixurmwtp7o
         2zTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359798; x=1701964598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YkS0F614/zYSCaqFBeaQwkOCeCxZ+aA+0mnevTE93Gw=;
        b=c7yXlZ+RwCESFpch4ITcWXNzWJUM74OiR+ZMl2fFmjuX8fIyW4XjUyuZq4EXictdY3
         eYxs0rekqMlVy3iFyu9QubLMfjadhYKQoIqqTkIUbG9JGsE/PuxHYK1lXVatYtjmZ7iA
         bEaLfMsA/CqxnJfJoYEQwFs3RsLw7J/6e642+/Shby3OCLFMWKbIzVWvd30OV6tP9l5u
         CfE/ZasOptmoFb84TyzWSN20Qyt0JGMl1WralndpKM1YjygVlLlLPIhBxG99vCZuuZl6
         zq8+OAX7uzy3p4dTd7wacbknyUj4WaHgzcQRu3A8L+Pwlli53M1XEmlPSTF2VUQtIerx
         H3bQ==
X-Gm-Message-State: AOJu0Yz4+x8Et4DugXX5+4GZdfoRhWvAchD6invLpHkYXoZTxJt+wpjq
	5vRhqvTpIHIf5R02YJ9EoyJ1pg4QtZs=
X-Google-Smtp-Source: AGHT+IGYwEDgb2oRRJdUhgFlR+f+8NClC5+pTm0V8TeeHR8MPP8qJH+kd/qwXxUEZ1fod/sk372crg==
X-Received: by 2002:a05:6830:4783:b0:6d4:726f:6899 with SMTP id df3-20020a056830478300b006d4726f6899mr21447899otb.1.1701359798063;
        Thu, 30 Nov 2023 07:56:38 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/9] dt-bindings: display: Document Himax HX8394 panel rotation
Date: Thu, 30 Nov 2023 09:56:18 -0600
Message-Id: <20231130155624.405575-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075643_640842_2A7254A4 
X-CRM114-Status: UNSURE (   8.31  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Document panel rotation for Himax HX8394 display panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/himax,hx8394.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index ffb35288ffbb..3096debca55c 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -31,6 +31,8 @@ properties:
 
   backlight: true
 
+  rotation: true
+
   port: true
 
   vcc-supply:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

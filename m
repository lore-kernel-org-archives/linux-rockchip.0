Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79842C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8PumvldBkwDqduoYFiQjvVA2cKxwIPIusWeC809yUY=; b=O+cDPxkF3G6zFc
	3o4lVK934Emg46/kJiwkbrTFL+57epMuLkZBVKlzSUdTWmrJcBwQEQrVm1nQaRbtjpvqspkGReQMF
	LZ0/oQ9lGp6ku7XUdDuL9NF4vZWjbx9ljMTCpptvNUzbEX/7onnPHKhPnzA+NawEp9RPDzsi+JtSS
	S+hKlvS4Xj2XTgRFcyvCbIsGMYjRrt4McdNvPCplqZOCEtKq0EN+lFHqXgVTBQobLfbssDFptz8iG
	QjUn5PA/eG1BealWfxrXs2SNx5JQUl0yIY8BX3+anZAwbxR/WZyR4WlCn79wdo97Ct5hJyKHQ4RwR
	vFBj39ixsVILZrAYKS9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8Q-005NuF-36;
	Mon, 04 Dec 2023 18:57:39 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8J-005NnM-1W
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:33 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-58e31b5b0d0so1187642eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716250; x=1702321050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tt7p+s16vSie2KNcwqFmTas/nYdcYXt7AtlDl/GxmQU=;
        b=A+G2zi0S5HSUGDOVaqPxj+6YhtKPoMiV9vA7gBbGlgfZuor2qOgglqO5jjHynpmCT/
         9Bq88F6RwPM4eL6AxMyuLKt0XeX37G5DGWKFSgNkowmK7PM4BPRL3yEl+HthE61uuBuN
         3jYEslU+XwpgFQ8lon7hQ23aGoHzG3mkQoUhYLlBYSLYcc/aoTPMm89Cr37hyMxQ6qf/
         KKOw4YlGeLppEHOKuGhlOju47IYi/4qZeUtuyPd/korz0H0CUQp4xo5C1N/NsgBwnMAM
         TWsIiZ4XN5ghuaOiBUyTarFzpENCd8OY1GXkoPixnAE1VuKwv1/xptFvPeGq5aYjZWw5
         4B3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716250; x=1702321050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tt7p+s16vSie2KNcwqFmTas/nYdcYXt7AtlDl/GxmQU=;
        b=UxPY5I1fNBdR4ZaFUx0ZUXkRYAWxZghbFASLvQrXnDw8fyzhCEE2V6s8V1Bhzjzlsq
         IOBvElboqii7BxAKKkNwAhXGG1cH9LLDR020sNaJtmGt3JzLp/67O0oboQVhqBQolnuj
         Jd7o6WM7Y5K19M3sYZL+toZZLVDNKTn7KsLC/d93C3UGjxPXKnTITG+LPL2lxbGJqLes
         68ZNnMdYMg7786OFea4pc6REtMD/JFc+HeU11Ldb/M+Cv4ucCOrviCS8ylcVgYZEiuy+
         XFo/caTNyVbRI7gRO05L8Ye8yFI8pY+UcZgR32Vq7xKmpPe9ugTMC7m7+ILiZ1DTpC0C
         5+DQ==
X-Gm-Message-State: AOJu0YzBbOagnQ4AyRyeFspXN2GHArOukqX/iG1ITtCuXW7vGixhOt39
	YSWlbXKFEIDxbHD+x5NIBx6fW2KZpxY=
X-Google-Smtp-Source: AGHT+IEg3mnRFteODCShcmaGK0xSbPP4p55IbSbjlLspWPM6wpaoisrb+f0sfc/+J6PPBDDH5g12Sg==
X-Received: by 2002:a4a:a308:0:b0:58e:1c47:8db2 with SMTP id q8-20020a4aa308000000b0058e1c478db2mr3008122ool.12.1701716250102;
        Mon, 04 Dec 2023 10:57:30 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:29 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 05/10] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
Date: Mon,  4 Dec 2023 12:57:14 -0600
Message-Id: <20231204185719.569021-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105731_558233_FBDB4615 
X-CRM114-Status: UNSURE (   8.03  )
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

Add compatible string for the Powkiddy X55 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/himax,hx8394.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index 3096debca55c..916bb7f94206 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -23,6 +23,7 @@ properties:
     items:
       - enum:
           - hannstar,hsd060bhw4
+          - powkiddy,x55-panel
       - const: himax,hx8394
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

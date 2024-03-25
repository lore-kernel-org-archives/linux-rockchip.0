Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB09ACD11BF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzPUGtLc77zm0kvtJPVl25jNKV029swSpK1YmyoD1q8=; b=2fFkEr6sta9253
	i2gARLkbLw2fa7/Mmc+nOQLIQnpoLKnTnIDwcst7CzI9SOfkRYSUkeUtUESf3qp114ccKn5tH4i6f
	0VKEup4If0g1tRvIHf7/XfbCFl/GO62GfMHLpZpu9ZEg1kc/gI+71YnQuyFaKx68XodF5AjSy37Ij
	I+7plUv4eLb0L4kZdSLUiI5e5rEYwteyn82he73uMksKsejg1WadzifTAyZZcfwuGDbsy0n8O6fbh
	SUYCR1vc7bqzoZx+TKpA1zntbCsgqo+4r/2Td2G+TmU/f5//15ysbF5IpkNufOmMKUV7A2nInWgnC
	q018OkyBbcX17ygdJ4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiQ-000000003kb-3X6D;
	Mon, 25 Mar 2024 13:50:18 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiJ-000000003ff-0kep
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 13:50:12 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6e6e37d33c5so31293a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374608; x=1711979408; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTa5nbcCR6s5PUGPSt2FliWbNyzghkPZuzdDT4iQreY=;
        b=B9ILdkVDhP0IZX5Altaef56lAkLE24lGwrY1ECPzCfgVKLfObP8A7FkOTmp6EK1BWl
         FDWC/RYHWhmAzihTWgGFAAzVSL+Fsww4w6guO1bAajQPQTYjM0120L+42qj+x6S8aOfs
         /A48MQCB7QblO3NBywbrE4JHLC6yv9VQc8NJHx8IVArrWocjUKHCWA1M4Qc4arKmI0Rm
         RLk2JPsOx46IA7YW6RG0Epyx0g1M/aUT8bPBOH5fIIug+BYY/h6uHhpd8rQf/HPJKswe
         Vqc3OmnksFqpg68yTD3MQmI3LG+Seo7vJUciSNV4P82EsLHxXZ+Oht/0TVYmXzSwKFgE
         UnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374608; x=1711979408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTa5nbcCR6s5PUGPSt2FliWbNyzghkPZuzdDT4iQreY=;
        b=sb5lxVr8BCrhe7B/OtVgjpf6Yu+FNhHIbOW4eStU5QFKUXvaZfE+Yj5n58RK+S0JTd
         Yb3bDTghunS/VDCbN7a0OMfwkB7Q/MXtAt3QHO7nHnQy1WGlk8jzHLHL6nlBvO0HMrqt
         JPRyPYQOZrEQ0qRYc1z49H096SsNwUbvS/NUjCcA+aL3rqi63cHzk6je6vSTYwSNUBiF
         30vmZG08Gqc+yNm4F6baI+tbBvjtczGSgcI/0I+ACthlKR5/2Jsrlt++0pUh+jeYzanN
         XH05AEh+zu34tLu8oeP30yNVZ0sLqWlFJFAgFXj+8lY2spON7Jg/Bw2seCkobDTjsEfA
         6Guw==
X-Gm-Message-State: AOJu0YwvzKTaqf8RRwtETOjziiaJFF4f3oyiB40ScCMVNMB57ZICPHkY
	ZZuj6/YqxPFBOMk1KHmdrWW85gRHdqY2hJWQlmyIKOMPQ0dQV8zv5hFMP7Tv
X-Google-Smtp-Source: AGHT+IF7XHsaP6m6/3Dc/nu1JlamhXyyy25YMxWiLxoadqRdsCgcTmEF1RLsTJdNBcfYMZK0qlHYJA==
X-Received: by 2002:a05:6830:117:b0:6e6:6ea1:9820 with SMTP id i23-20020a056830011700b006e66ea19820mr8618855otp.14.1711374608661;
        Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] dt-bindings: display: Add GameForce Chi Panel
Date: Mon, 25 Mar 2024 08:49:56 -0500
Message-Id: <20240325134959.11807-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065011_245008_09F178FB 
X-CRM114-Status: UNSURE (   9.42  )
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

The GameForce Chi panel is a panel specific to the GameForce Chi
handheld device that measures 3.5" diagonally with a resolution of
640x480.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 6ec471284f97..4ae152cc55e0 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # GameForce Chi 3.5" 640x480 TFT LCD panel
+      - gameforce,chi-panel
       # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
       - powkiddy,rgb10max3-panel
       # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8C7C4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 20:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WV51Z7udAfVGau0xoX5M3JxtzSmmPU6c59Q/TrgR51w=; b=Qd5/byjcgXf9wg
	NBPi104qEmBJQShwLOguYYy8jfHfyeh1k+3J9WsElEPb8hf0SlWBgQ81YTLlEnrt+E8RnbN5NvjD2
	GVNFXTyNOo8KAZ7BRDvoO20gCX9WsJZfJYslEqbiDPeVXcdvWP9u/+y2EKehMRALkvXmuS9ZGhBot
	o6frocZZADmbLOfYw/vpwmPOAu69xClLmeFv/Wb1Qrh/839aSjnup5dCFUv0KJ9yY2GcgaYMQbWvT
	IHSZMOlAJ4R406Ot9dsmow6nH4DEXcZMDsTKEC7k52j02AR3f2Wwc2CwraXS3DgpH7RispInn19Jh
	mnm5fziC5dZzoZiGBEYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZcTZ-00000006oIe-3jMI;
	Mon, 12 Feb 2024 20:00:25 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNT-00000006g4X-3JfW
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:05 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-59883168a83so1191879eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763802; x=1708368602; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GAxk6zsY006+CdXJFHNEbBOsPg1Aj77aFmaDPPFfc8o=;
        b=d0L0+wtvNfuIAndeiZixyHn11rHrbFEkGM41N+zkaq+qmsKz+D25syt3if8BkN+Cnv
         fOXdwlS6nDegpZuwVW3q2tH05V34RjjDUu1/B3KQrnR0v5s/WlWysw2ixMDm/QfAPdu8
         llPLLv63N5pKrN+PbT+zmvo/V0gPX7wR5LNxnPkPxQJwpBXbqHDcD39zm07VDT4h3Tks
         gIslbSVdqgXdut+LJkeRh39hoE8r1635S9CPVscxMj9ubhuKA3pKrM+usI7khKu49kZ0
         S0XcNJJORPr7BGmUxYioQfVXQpp38lGhu8mOpwMQrPDcBDxebUR0VHKe6H9Fo9SroUvR
         cVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763802; x=1708368602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GAxk6zsY006+CdXJFHNEbBOsPg1Aj77aFmaDPPFfc8o=;
        b=side8KOU5fqgOlp8k3KYI7ya5/pvHMGNAZ3sgXr2TKUg+7ttkJGH36eunYe8VBKrJA
         LuxlzrghrBNT7V7/Zx6yNGIHXW3FW8P9o11ieYMVcO/B/eAcKuEd/qMg5TkNPoQwEL54
         RwrPapggqD6gMM04UvMQPRxSBbCWZrm9BS+xDw05srYqiWEOvA+yVsu+GwrzizZGQGmx
         HIzTblTPkXw9RASCaWJTjFHskkmV/0XIP1W4G1sgWhe7fTmZ2Qq50jzj//g92ctu+lMM
         VV7FkVhxJJ/PEsvBc9bGZS6Llc4VWXNfv3gozNSBTkCqQFfDbjfr35NbS9RoTIW2D+v4
         QkFQ==
X-Gm-Message-State: AOJu0YwdIVNDGiHoJsmKc53Ng1Jrx+MoTFJCHuqTiYXXTCCnulbDcZYD
	USi9Aj8Op019iEFd2tq4UvOjN4BnyC6tbYtxpvV+8ssRExxJLzG3nTiekH+r
X-Google-Smtp-Source: AGHT+IG4JPNFvgManuBh98r3P3BSUJPLxom8f7QyRDcXHUAlIIydohC2YLLtPabAms2kr1vtYZp36Q==
X-Received: by 2002:a05:6820:c0f:b0:59d:4a67:cebc with SMTP id eh15-20020a0568200c0f00b0059d4a67cebcmr4021084oob.8.1707763802286;
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXMe37f4x8CkBxc259TgyyFevQ4PbfKk2cgrpJtoMQJprs4FHbRuHdqk6qGveNFCAO7mz0AUXnTqouRTOea3ifPqPOxxpUmzXeaPH3jiPiyNJz1Mx8lH3KjypKRbfSPqGXLxVrp88B2i8rqXcuV8B1aMScc/mynw4vtGfEQHGom3QBgVcTOAgv8MOZkRwHJqrq+LrSdwgnwQOS6+NjK4Q9CF7JQRBoyH1uIADgcuDKqOFQbBgt2AFBCQtYxrlP2qdiUNQhmvtVmM8Ls9sNqplA+VFY2/Jr7lPDLRg0/j+yRbxIiQhrKlVqICWjYZtFch4oAzixg+8yDgSjJ0kxxqAZIsCCAXtcPUokAbrAiDLr88KJ5ezBmVCilzL/lvSeac36P39iKP1IPyKA2QPGxBn4bJEHZV/62IswtO6LBNTD1piuZKoc5WeIL0Vk/GR614iuwOAnvl5ctMVY21O0upAUut/kN/LGzLNlspsRGZIHTdc84elIkBZbrT9XRrxVqKHDgPVl/YGjeqeB2YzU+PQq9VjZf8jMal/HH52dngMfkUugHFBhCJdNTkGTu
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
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
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:49 -0600
Message-Id: <20240212184950.52210-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105003_885476_7873A97F 
X-CRM114-Status: UNSURE (   8.68  )
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

The Powkiddy RGB10MAX3 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..4ab0b92cf241 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -692,6 +692,7 @@ properties:
       - description: Powkiddy RK3566 Handheld Gaming Console
         items:
           - enum:
+              - powkiddy,rgb10max3
               - powkiddy,rgb30
               - powkiddy,rk2023
               - powkiddy,x55
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

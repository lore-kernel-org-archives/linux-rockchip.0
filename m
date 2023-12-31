Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BB8C47077
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Dec 2023 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlIvA3COPzJpLUEPqxoxqEwIXMVPkuUjM7RumfuGXxc=; b=m4VvB6l3knDIx9
	m1luJ+oOOh1QRxHjcXqk99El4EekxcLeowobLNx1rfUZaLSBK0xgULxhm7QwruWc+bgmhIoeHD15t
	vdoHAk30B+wgxDg5PFV/yMaOVDzCCC1mS7sBFAV2Ti/uF8bBZMH62cVxRP8rN1w8mGYv8hAhz/8Ks
	21cLRfPsXfcrA9XucbAnMf/Nb9+pdJNntfad/mBur2aDOiz2w+/TKk1DzUVbJ7uiaMo8f2y0X9grQ
	spwWZl83+IQV4oML0Du7SxGirh90+c5MYAYUSmSz170E1URKeP8Mu3BhQGNCVaiatummVZC2lScY3
	MJZJKSuLFB5Fx8L0GHCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUc-004l6b-2U;
	Sun, 31 Dec 2023 15:12:46 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUU-004l1z-0v;
	Sun, 31 Dec 2023 15:12:39 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d420aaa2abso27326385ad.3;
        Sun, 31 Dec 2023 07:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704035556; x=1704640356; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1LxeA0IIZhqjEAhSl3nYPkL3LXbf+ObZ5X4oac0U0NA=;
        b=WkaPX4eqN2bbysHkqyw31lVEagEZmWBeeZWlx5n9x3lJMXYdq/G3xRenaaV7m66YId
         tWO93lC1etjrgxeMJE1lwVfcLfQYI4KPcg6HsQOus0GblmM93qJ9HOkH0tQ3/WUn5IqN
         3A9X8E6AEzT7Kk1FVa+30QtA29/hAvyltYEw7L12YjxgGb7OMLvX+kCzrU7SDBVXISYx
         pHlRPXN1Rix9X6BpmvX9sontDoVpq/x7O+5d740VlTbdq4QbklPgWwfsgnwL6QK9jOUY
         zXGcWCSyCu2nMB8KBb06FidZoNwLfvFo9+FLaAph839hH2mYs7ijpMatUnGbrL+uUn87
         MSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704035556; x=1704640356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1LxeA0IIZhqjEAhSl3nYPkL3LXbf+ObZ5X4oac0U0NA=;
        b=Ut2IAIkpAzqOUigAJATv/r6XrOXlojTcimuJbtKgkTzZBJb/uMdNfpooCenD31GLwX
         +CnSIUqWb6051jcKhk2kd3m/LwN+ZY9+vn2MUZokvlqgMlkK1Xecidqf21bSLsm6qKO3
         DkqxQddm7ioKaK4LeOSrvAIj/i/Xu/FbWFS5OZRgIkad/+knN/8gudepVDrEMfTiwpyh
         5MzFwAOCb4ToKgq4TyF7e57cgc1Or/q9W4/a74QiOortIXI5I2/sMy1I1R5CBPyssBvc
         98cUT9KZ+mAEswd8rw+nvC2aPYGc6V/kAXAxiRf690waAkzAx4LMthkE7qaF+O8WftA9
         Evlw==
X-Gm-Message-State: AOJu0YxOrbsg4fuOE2qerbyIazb2bPp1/zxqZ/xHYt0E0y0m7iEP4yu6
	x37KwKuAZtCt6lO94/UkWhg=
X-Google-Smtp-Source: AGHT+IEeC/oNDmebvGAlCDPpcUUA71dA7m7XJNDO6ov3pNSjePgSV63EBlmsTgDSigIUfGJ9GW9DjQ==
X-Received: by 2002:a17:902:c601:b0:1d0:c888:d129 with SMTP id r1-20020a170902c60100b001d0c888d129mr5937727plr.103.1704035556512;
        Sun, 31 Dec 2023 07:12:36 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:2643:6273:f90:f77e])
        by smtp.gmail.com with ESMTPSA id a4-20020a170902ecc400b001d058ad8770sm18775011plh.306.2023.12.31.07.12.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Dec 2023 07:12:36 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Subject: [PATCH v3 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible string
Date: Sun, 31 Dec 2023 23:11:12 +0800
Message-Id: <20231231151112.3994194-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_071238_321576_7101887D 
X-CRM114-Status: UNSURE (   7.87  )
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
Cc: sfr@canb.auug.org.au, liujianfeng1994@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add Hantro G1 VPU compatible string for RK3588.
RK3588 has the same Hantro G1 ip as RK3568, which are both
known as VDPU121 in TRM of RK3568 and RK3588.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..16886bccf 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -31,6 +31,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3588-vpu
+          - const: rockchip,rk3568-vpu
 
   reg:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

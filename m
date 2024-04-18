Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 573CBC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 11:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQQAIrbn5QaMvxT9F/ItwXiaQawjWDqfSMYwiloCwVU=; b=DF7qJK96drjwJ2
	qXMWrBoZN6M0Id+gn+oTLQeEnzpJHoYNR/Z8iFkot/mBjRZ0BWulSff5o+D1uTG8pHzIYCniBaA0r
	onpe47NqGDEqmL0r0IF1l3n4X3zlS+C4SBIZyf9Wz3BLGVpDUq4h8SVat8KPCE3lDH7/Ihe2Vykvg
	nHV1EotxHUC4ERve4Lvf3OMZifU02ZXNXSLpRFbJzjuluvUmXWBnuVZB5lXHyeSexsn6x6NjKCN3F
	fj2x4tpHdhkoDO6Za08qrvp8ioDBpgWKO7n1OqAdRoJ5fg+N1wN9lsdy9B3nkOnYh1krQXBV8FOZ4
	hpI0G8aJfKFVh6F8TQZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPfS-00000001wub-1ioj;
	Thu, 18 Apr 2024 11:11:02 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPfO-00000001wrM-3JZZ;
	Thu, 18 Apr 2024 11:11:00 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1e5b6e8f662so6421445ad.0;
        Thu, 18 Apr 2024 04:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713438657; x=1714043457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJC1T3mQkrgyBVmgG4Hu8QZ7tiEZ+HFBgioNIYsukyY=;
        b=k8jwmMEPbEdw6jBkplVb1e+llB0peo3Y6NuNyGTxrKeOLY8yKIQpbwxEjlqRXVKSSl
         Q1AbPECVi/qIB6R+UxcvJDW05EtHYx5vYpFV29ntHSV8wmh6JSVj8/zD5D446xyet+ul
         rx+ab2JzphQgeONXNVhXMoiWMCJStT+c1zPzB0iAGWcseQcUjKWicS+3OPyU5iEy5Cxd
         DdGa1CFzFPDgrWNvK46gC6Ezezhs8KSdbBPMuoRA9nflcsNJzb9aNzVx2DVNtmT5ZAXf
         Z6Koj40s1wfJhlsZp4IhtXlaP8C2hjuqnxa00P8egaXYdyw/M0RujCkb6SZJYOh6XGx8
         54Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713438657; x=1714043457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eJC1T3mQkrgyBVmgG4Hu8QZ7tiEZ+HFBgioNIYsukyY=;
        b=vm/L4K71+EasESfXtYDTrOomME7DJUyJI9/orqRQole4VKRAFKWsAuykD3HJa1G51N
         0mkCObEY7Lx0PUNLLK2ci8La0Llt92isVqHCdK54EUXQk9cWbs7MR2uFSId/x0snAEbB
         d4JRWW8a8CwE2GK66o/gaKX8ntyXaMHpNew8UaVUn+dmCAOujWEXFU3SbvpWoP9Ops11
         klCP0VU0pZeL0UBJUwLTPPd8Yzgf8GHqoIq5g6Zxi4OQ4eVhtK46VYbWnJGiIACqlDnh
         cksJ55BV7xzzUuOGFKAj/MZ9+jZf4XPmBH3e9r95MFwjqmB6cmThrVqVvMsbj2mSLU0E
         OWaw==
X-Forwarded-Encrypted: i=1; AJvYcCU0YvYm9kPtFc+k8ttppA0bKG/lYQ/283Hfltn9gZnwA+K6pHJhG+DM8tfm1F+DXBdSE3zpjiO5ifhM9pgcRVN2hP7rBZ+nbNU/WDbgcDuJnZ8V8+tK8ZYGhslEPxyLnPaFbG3+gcYr9szHtvkBupSBXlWvfADE9QE=
X-Gm-Message-State: AOJu0Yy76co9jxBDs61DM0FMEGTke6m/LoIpz5PJEpp7rr8ney+djBaI
	8bojzFu/S3OG1QRLL2VHMPKt5Cr3qyYffFsB5R7FWAi4Tl54EcWz
X-Google-Smtp-Source: AGHT+IGc+icXUbFSmOlUkEUSR9oX6zwW9ZpI7DD8PLSjyTb8Y03/SUSR0so++BJZpsPUlfe1xNmGOw==
X-Received: by 2002:a17:902:bd85:b0:1e2:7fb2:b08 with SMTP id q5-20020a170902bd8500b001e27fb20b08mr2211620pls.43.1713438656875;
        Thu, 18 Apr 2024 04:10:56 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id kh5-20020a170903064500b001e4d22f828fsm1051159plb.33.2024.04.18.04.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 04:10:36 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sebastian.reichel@collabora.com,
	sigmaris@gmail.com,
	didi.debian@cknow.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/2] dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string
Date: Thu, 18 Apr 2024 19:10:01 +0800
Message-Id: <20240418111002.83015-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418111002.83015-1-liujianfeng1994@gmail.com>
References: <20240418111002.83015-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_041058_852311_6CD8560A 
X-CRM114-Status: UNSURE (   8.24  )
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

Add Hantro G1 VPU compatible string for RK3588.
RK3588 has the same Hantro G1 ip as RK3568, which are both
known as VDPU121 in TRM of RK3568 and RK3588.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..4f667db91 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -31,6 +31,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3588-vdpu121
+          - const: rockchip,rk3568-vpu

   reg:
     maxItems: 1
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

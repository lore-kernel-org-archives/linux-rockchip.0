Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 992B6C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 02:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpGtfwYbADtii7AaU+5Ee9Cvt5qSguw5L4Q/9GHpz0k=; b=tHSvLib5tGujzv
	2Z17qPB0N90flqw3ddkBXoBhQoSFPO4p0WKB9ZPIH5ly4myoyaQEYAuAfVQJ7bC4d37KXrL6Q26IM
	uJwYERsn/VNuJ/ak6k9JtvemlAsWIvLC8HnGDKCG/bxkmfYD1YolDG1YvKAORSEaKPXpwzOaot3fK
	DbveHHQ6s5xzrTq5GKALPdRSjRF6cojA2bkQ3BNkU6N9/4pvXZn1Bz1N9YZMzBnConZDIW2f6YjO+
	10TZ1xEDLHV7BiKnMeM5wTbYc7mDyGxWqrtdtKQi/MI7NfZhZmx7ssGHF89b5ZlOGjbiZiJwE1OJf
	cLpXBX2FK7Wl/gz3ubpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQO-00000004ooX-031n;
	Tue, 30 Apr 2024 02:40:56 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQL-00000004omh-0y07;
	Tue, 30 Apr 2024 02:40:54 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1ec486198b6so365455ad.1;
        Mon, 29 Apr 2024 19:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714444852; x=1715049652; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nmwy26EmAitH/BFdPVZTkin3CZniJ1hlTGeJE7IE+E=;
        b=UxoEOqZmgpvsTe4V9Zupa0BNWJYTAvkpQ2HM4crDj9RxGiDY40FrlahhrhIffeITU/
         QC05jmeQtq3/LhoYsRzYkXX/QypkJMpm89zCivUMDmOJr4Ez7joHODnNoj899zAG0HQ5
         hEEaT4NnpKMVPx+m8laoC+134tqgZMq6wA4OHnyQKO4K0HWXv9I1oEt2vRtSg3HEKsRM
         8ACaxq5JEgU8+ZeLWyt3T71eHl8TMN9LNnj1WWDlzCXgSuHoPEL5Ujuee+3bcjll6oZm
         aQnD8B5fSqCbHE3x8RHN8w9+Bnc1aN2AgLdmMUKDdPZTJBYB0PKcEkkfUdrlYHl4fYDj
         6Zsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714444852; x=1715049652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8nmwy26EmAitH/BFdPVZTkin3CZniJ1hlTGeJE7IE+E=;
        b=A1ERF/m3IaA02KVgFgv2cnLIHAqduu4yRrVN2hZ4LLsNPACYksMo71VW+Mp1db4U40
         VSHT72zkkGmjyPOCUOOFKmwXwsXSL8eMnR6Z82NZ95dGw6X5k8AOE9mpFSyUa78/OxIj
         VG5j97VojtqWNx3RwCkl01TdRRaAPMuOy7un7Ffxxp8VeAHZHqp7yw+4pRUTJ3/7cRFl
         B5PS6zhYKhTD2PIlPZ3TW6W2SdMgewe8DOsyWJp3iILW02AccJ5IC6KnoVrjrubu6mie
         Sh23Zb1OBEZt3AxCOIDtjqvk70DhHlhDHxaxHmE0I/FPJuF5NkssQXmEpH4pfSptd5pX
         04zA==
X-Forwarded-Encrypted: i=1; AJvYcCUgjJFIgbFYPw/2OYfwUgdEHkjwhZiV1LDiRj22q2XDC2dydhJ+Ki7ZJkvZgJG28nIPM5crq5pFvCSRlu3L19sJ0lx6LewvaM1pKu1TC5hSuFA3F6UtCaBohP4MtH3Od71GgX7KUn9e/uSi3piFMTR4tbk6nIHKNPY=
X-Gm-Message-State: AOJu0YzyFiBdKEZoAAYxHbcfe2N8NBRgi4/jFqgBpECu6K7MUc13ele/
	dqD8G12Hyz18MfVav/YSETm/hO1DE6jB17UL8rVjwwuFqARIkm6E
X-Google-Smtp-Source: AGHT+IEsmmNWKwQpbrpKs2CI4HNEKEDXMhVL2Qq1ROslbOo8hS7d1ywEZ35rRyYM/8dSQq44wEa60Q==
X-Received: by 2002:a17:902:c412:b0:1e0:b62a:c0a2 with SMTP id k18-20020a170902c41200b001e0b62ac0a2mr10977884plk.51.1714444852140;
        Mon, 29 Apr 2024 19:40:52 -0700 (PDT)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id x12-20020a170902ec8c00b001eac94472f6sm8400379plg.93.2024.04.29.19.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 19:40:51 -0700 (PDT)
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
	sebastian.reichel@collabora.com,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sigmaris@gmail.com,
	nicolas@ndufresne.ca,
	linkmauve@linkmauve.fr,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 1/2] dt-bindings: media: rockchip-vpu: Add rk3588 vpu121 compatible string
Date: Tue, 30 Apr 2024 10:40:01 +0800
Message-Id: <20240430024002.708227-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430024002.708227-1-liujianfeng1994@gmail.com>
References: <20240430024002.708227-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_194053_300116_18D04156 
X-CRM114-Status: GOOD (  11.13  )
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

Note that this VPU also has a jpeg encoder, which is one part of
the five VEPU121 jpeg encoders on RK3588. So this VPU121 shoud be
the same as vpu@ff650000 on RK3399. But we don't use the compatible
string rk3399-vpu because of two reasons:
1, rk3399-vpu has disabled H264 decoding because RK3399 also has
rkvdec to support 4K H264 decoding. And we need H264 decoding because
rkvdec2 on rk3588 for H264 decoding is not supported now.
2, There are five VEPU121 jpeg encoders, but the kernel driver can't
do scheduling. So it's better to disable the VEPU121 jpeg encoder
at the moment.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..2710bb2fb 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -31,6 +31,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3588-vpu121
+          - const: rockchip,rk3568-vpu

   reg:
     maxItems: 1
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

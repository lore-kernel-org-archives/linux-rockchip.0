Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB19BCDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 18:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=1k+jGxPBwp9gAY
	W14n4D/liPfF2KkdCUpW3ZuyVR4u8uhsXRgdgUB+jFjTc6BgiHPsdSfu5PBigJ3ot1qDUNoSTSbvW
	FhWsN2J1uuXrFlr7IV8CwmOjgkUGGMSHyKVxpJ6ljGVxMtyKrDtYecsOe+9Pq/AjssgGLHcNSferZ
	DfF7ey4biErpwRfAiw2nFOdkH9nRm2vIfUv1ak8QRmuBIDRexTkeWZCSKpLX99wz5Mezl8MvlPf8A
	7QxXk5ys2pd835m7+qk6M2J0/7EEbENAvnSfZbl58J6R7qHsNEGbFOHfFXe7tAdC1l5qz0iG8pdGU
	CMOFvUQgCiulASvBIbbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSP6-00000008DUw-3Iyu;
	Wed, 24 Jun 2026 18:32:52 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSP3-00000008DTK-2hLI
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 18:32:51 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-69ed219d3ecso1173532eaf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782325968; x=1782930768; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=qfUDbaXJdGmGt7yHE5tB7VfvVsHQbq95tUUpE5cDJ9rC/Hss8z4O0xsT1ZRavGgNQ6
         hInzT2PvsoUCmRG8zKQESYMxWFO8mnt/TOmCFWIQ27mq/kvE0IcmjlVrfhXkijpgMBdN
         aNi8maJXh0nxTHsNJ8Pdn85J+nGLgdZ3gNb36Cy2q2ZFelgG5Gcz5ON6raOWfm+uPk//
         0qfXEM/qxKKdf6l7RFytL8SrZd8JXk4M4triquxqp46/bgAnXT7vzMxxiOUqHR+g9GQZ
         0kV7jpeVE9ZMUJ4/qCFchdfgBAPduxxeMN0TesfqDF54tVPuKWtDUqUSq3hgfSMwlzjf
         h8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782325968; x=1782930768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=JDhhWZIqsugHH77CGjMrpUYe4+NiU3unOPvwHGnb/3DzZ4v6ECMcQxzpS4TkyBbt4H
         BlUa8JExCEVM9qffk/wpgtfn9IsBD0c5LWNN0ccfT9Ccg8UwXl4r8fD9U2AWfV6sjmqz
         Bz+5LV3Tc5ShW4R+W/w8mvKwpXdhIFtPgNwi3+DLE4YzQQwdLDzpxZZIzmuJL7g8VTFc
         ce1U3D1ilpfNrkXcUCsqSHJ8bP+SPZW/5lKMhrUJvaiycfoDiAya1jgYNbFtZE5QpyRC
         E99rCrLF+Z3c/cm6+0BW4OyJ+CZi7U5wWsMcKW82MzFQx8dhL9FsFuPBSwysKgloIMub
         uKlA==
X-Forwarded-Encrypted: i=1; AFNElJ9r5ICezdfjDsmfh/y/QVew9JdBJRhM6BMuX3CfsQJeTsD7yblxfpYkcqwD2Mki322EFdlRA6V2Gsrd0u68rg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4OTaK+tM8BUZB5Kl+HgPnD1f7u/b448NRoCodykIxbOQEeDqn
	UbhIncLHOdFekgSVLdYE7y0fLZx+VaVZrZp0pfV0UKgslTka57iLwFwj
X-Gm-Gg: AfdE7ckixYYuv+yFPdPnEHrWg3s4EhdT1LloQd+1Ea+Yl5piCXF0x37PwZX9003mdz1
	Iu8SNmPHwPkCpLi/DWn61pq1LfiJ3/lu6WA/Z+K5JnMp4SxAw9/dj0URZVfRBU79DlN6KxZqu4h
	S5ibita1nXLx0/Bizo1GEdgM17+RTUA7rxpfagxzNO6wiaLeNuh4bCtUbBpekBDqOayNgATA5b8
	59ig4aFF+B9MBWg7qbAQBUPJsmh8eiFYX95AearG1/sNaD7seXJV85KmmLpDOcHa+xPHAgMjTI1
	12emb3ww4i/P+cNabu7J1rtedBReyfCKmle4/uCUZ+yD9Fbf8DNiNvyTbFNPKLb6csRL4jI9ciD
	pt4x08JgjnnyVYlM9YKIa/pVdlG3aEzFhG8aXT7bddrZ94cgqKcsx24+YbpDX0rYgrlzxKEBTSy
	qbPL0FnA/s1E0=
X-Received: by 2002:a05:6820:98e:b0:69e:35a5:1358 with SMTP id 006d021491bc7-6a122f85448mr3073013eaf.27.1782325968322;
        Wed, 24 Jun 2026 11:32:48 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f042517sm9968060fac.13.2026.06.24.11.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 11:32:48 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V14 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Wed, 24 Jun 2026 13:23:40 -0500
Message-ID: <20260624182350.50467-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624182350.50467-1-macroalpha82@gmail.com>
References: <20260624182350.50467-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_113249_689043_7DB238F4 
X-CRM114-Status: UNSURE (   8.15  )
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

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

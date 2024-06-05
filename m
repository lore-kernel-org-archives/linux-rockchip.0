Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A17C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjD/ggrDL2xGggYOm/fIpkWGgh2F6jnb4vaP2iJOkFA=; b=ZitHceaddXHtmB
	IitCgqElwP6UUcJm8oqLnXl6JIjWXsu3dE+QKVdeVer1rhtx9shRaIedEZH/1Fh4/u3zc3wvpqMSq
	cR7epz9S4vO2EElwZSdOPdYnMV7HCHXJ54cbP7XfqHdeEydmfe0354n7IGc5MPx/h0xFhGaO7UUPE
	lM6sQmJvK1X/VXPRgrE/m44YI+QPpTElSFyNVnJU1vAONjZHnP5AkVe52o+PWddLmR8xGsr4CnyTg
	8icvfAPW8IVVbbsujXra7Qk6xOyufprwp+YFr+Aap3lpLXQNc32+P/IxAD1xvXSn/XaWH0W70jCA4
	at4vRAxSOveh18q8pGMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcO-00000007V83-3WFW;
	Wed, 05 Jun 2024 20:52:24 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcJ-00000007V2u-36dV;
	Wed, 05 Jun 2024 20:52:21 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52b98fb5c32so408531e87.1;
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620733; x=1718225533; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntabvct72qGvPmbO5oeReuAlzSAK04HTOHOuuEcj1Pc=;
        b=CiJbaV7t+NZ2m8vGH0WqslebqfqwV2q/DixOJH2N4l2iArdJLL51RTEJ7vaBQZptRA
         z0Q60XFt346UZ6pcgGCyWT7fPmSK5yQfKAf9m6MA+BfToH5vQzcOWFKlTbiIBceFRqmx
         9BkCDA/Gy7Cm5m3uLk1YrMaXVg8DMo0wzQEEaSwyOguvxLNiVNuydXYbAf42l0HWUXtj
         a0rRwKlhgxHvtbMSvcQYZnVJwt08ftWK29o0K1LWlLiVpvpvGuDRPJhc8TpoAVM2t3kZ
         MZWFpubCT4VBi+Jp/kyYazwhVVw3Mtt3rp6jvjm4SZ/WT3svaplQH2FJ1BRiYm0jL1yv
         WdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620733; x=1718225533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ntabvct72qGvPmbO5oeReuAlzSAK04HTOHOuuEcj1Pc=;
        b=DVOFyKPE9N61gxfRgP2E9i0lm2xk2zbbVXTFjrDhpTUYaN4FCqT/TxP8cl2EPl5wLW
         NcbEiFr2h4NEJBSpjmR3jv9fkthMaPeFAEKQIYu+3E+9TdfgLW0VG0fVXCH8az7pgFY2
         gMFu6SpE5iTwGBi2l2IKh3At6GUN97XEFeBaJz3gQO6Lkeq3QW+5qJnsXBCGOZC8XgNe
         0BVIVhPhPJmwCJmFy8ZmlYtKwRP06vTksJSTIvlnrp3dNnTZSMc0Ao5iw0S1hsPRWStf
         KHdj9YusD4aXL7y+PgyVFeaOVAW0zXchC3pa2+kb1LOAMNHNIfVV95LTgfD/yj46/H3L
         VVEw==
X-Forwarded-Encrypted: i=1; AJvYcCUH0cy1r9nNkX4SZSpX9VgD+XHZuTDqcZ4aJ27Em5SyHGXWQbncU42mOCZbeqE3jMysVY58STlgL0AQpV4abgdgAYGfKYVoJ9XmybWYM+X/2xLNaYCcPdxpTpCaoCtVieB5eXb3sxb/5jFv4piU4bGKWBpDgBc1Bks=
X-Gm-Message-State: AOJu0Yw7ippiZBU0wnSD1+LVR7B1+4Nu3ZDfSR77hjsMHoSIBe1e9dxo
	WKFqgvIYmbtobdyKjQ6RkIxe62PXquVP8lCv1wmJUfkRgPs6Ccc=
X-Google-Smtp-Source: AGHT+IFLsFZKV2UCEFoLeUQP6sDHDvqEj6Gdi7GN5knUg+e3+onFNbKTpZbrCaUvyEmzLhZLX0d6oQ==
X-Received: by 2002:ac2:5592:0:b0:52b:fb4:1283 with SMTP id 2adb3069b0e04-52bab4d8022mr2642243e87.15.1717620732936;
        Wed, 05 Jun 2024 13:52:12 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:12 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/5] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
Date: Wed,  5 Jun 2024 22:52:00 +0200
Message-ID: <20240605205209.232005-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135219_857632_8B087DBB 
X-CRM114-Status: GOOD (  11.08  )
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

CLK_NR_CLKS should not be part of the binding. Let's drop it, since
the kernel code no longer uses it either.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 include/dt-bindings/clock/rk3128-cru.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 1be455ba4985..420984fc2285 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -145,7 +145,6 @@
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
 
-#define CLK_NR_CLKS		(HCLK_PERI + 1)
 
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

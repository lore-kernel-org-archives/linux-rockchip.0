Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AE16C4451C
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 08:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AzNT+fKdkMqOI7ZxhD542JIslHAMEvbAz+o/pSR1WU=; b=OkSXMykHheG/Cm
	VSp/KXRvJd+awrIki3W+RyPUXC2N1olR9t+PaZMo2c4eQWwqWx16zThJsX3WxXXMH6qRlmhbtMwIr
	P8wXQrDuIA9IXuQgE5fjhXE/Xk81VL2FNZhykeFEBGpZX7JHiW5xYXmdQlL1zIBN9pfErGttM2b2b
	GoFnIplroIdleydl4bFaFUS9nAYPpwSk2ngF8pWt/8iklWstaoq4zJDNcwUPjYSXXBI+QvsxQkxdE
	cpLmXd4sOYpDDZdqXpv5EqgNN4ceG3pCZ6EKyAw69ybbOVWnTORGjCLunfVPXBUSQ6l/zeV7xuXRR
	6GXQK5WGB5Wd2Y755uMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0s1-00000003v4n-3NLk;
	Sat, 18 Jul 2026 08:58:05 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0rl-00000003uwE-0pTa
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 08:57:54 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4925a778491so3498575e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 01:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784365067; x=1784969867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IVdUc4K/IhqrOMLTX+JPmZv/Y1bCw+s3TFSm96hNeQA=;
        b=BNr4O+5HkS9A+rofhlMlsb9eJheLzZHA/BPqWuJ8gg27nqjczyCqX7nokouQjACM1z
         7QO9cjK8TtamOzYkp0CFrzgG874GK4ZzhoyNWYeyrl6eAyQByQMsLU9YR50oFu9GYOSd
         QsHDLAC2Oxm1U8GOas7gN+N4/eEsNAOygda90eEb7vkzpJMc4AJqprh90ohSNBBu3Qgi
         8ie6h0l3XN/B0Kgou39gyaqFoQ1ZsngNSWhb3THxYa0bCFEOjGFLbNt8imG1XwqNqGhC
         mJA5KV7Q71UHqg5BdIYVmO1n5ojhvPprq04y8SIuFJDrfYUyGwcu6epbvdGdbA91kLus
         N1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784365068; x=1784969868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IVdUc4K/IhqrOMLTX+JPmZv/Y1bCw+s3TFSm96hNeQA=;
        b=RgAylUaCuiwHEY49pfOy2AAESdIFGbcAknQYb4ak7wKZNZA14jru6VM6EBOEjJP0KH
         otKJ52Q1BDn4y24rJQXWFFbTS4dxev4nx2J8Bakz9P/AVsNGv3WrwybTq/rmULqeS1a2
         MYVYXZl7oc5OkDVw2LqyouJAstW6Q48VGW6XTKHkMT9lPPq5yyxRk+vQfdFarAZVrXmU
         UYFIGtKN3aTRCnU7g2ocOf+bx3L+XhRkqMNY8EJdYZc9g7SkMdIr9aVNkZZoNmbHcyqO
         p1mBgMChsdsVVC01gp6bG9pzMjlan7y4XnfaUra6X/gbFb3hVYbj6JAbUUZXRakTxm3s
         QTyw==
X-Forwarded-Encrypted: i=1; AHgh+RrlmVsMxsEwctSPxwZy2lNWLx4NzCmwePBE5/LUYITtOBO6PHAZEbGPELoADlqVsqu/AJT4b2hFmFNOojHExg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtJ1/PF3tkPvnXuRmNAMgp9SiZQ1GJsycgTq6zbUyNkj/epvXu
	JedVihTSEDdJTYmoWab8+A0rBM6+P0//kQEkEUOh5QI/Igd+BAxmMmMM0nISLL/I
X-Gm-Gg: AfdE7cmSyU3Y8T43Vq9gxMX9us+dlRD27KdYRST4iYLOOOhKY9m/b61EeAwze6LHf3w
	dXY2tM/jrO3h0qHLaNVcHbZGZJInVbjlUEAJwLfN+sseXUKI6lAC2tn+asFpd+t5mVNkdnEo7be
	oEcmZTqHux2yKKg8vj6XEtN6WA2xvnjWntM20szL1+JzTwPD5sYdDSZGeK7hW/9Ryh6Q7+3vAbw
	FfzY1ezBV/OoPLdF89s0q+yGdfHZyY1jgjz3DjmT3dONEkzf7PvsXZcF/uiKdqCsbJ+ofvDIwDh
	3yXP/vzRSiKfQMBICS/mZlUFcXN1w2zCMimbupVYBAmhBYz8EeJjMKLt1usByGfbv3HgzEqPWjs
	MlA7YzGGXz/rPZ0t2h/LK4PnTbt990YgKGCZKGhzwdwxLvlcp/jtpdUkywThDxZkLziBRtQQMto
	KH96/aSOIebo0cVeytzcjmxFlZ7qp/+/JT3ekqa7pl0obWynlUk20ujzqCA3eS/O8hV/DVeRIYe
	r/vCK8I78FPkWDhR8q8
X-Received: by 2002:a05:600c:350a:b0:493:f13a:3f74 with SMTP id 5b1f17b1804b1-4954a51df12mr39497985e9.5.1784365067516;
        Sat, 18 Jul 2026 01:57:47 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8D1600206D23E70680CBAA.dsl.pool.telekom.hu. [2001:4c4e:1b8d:1600:206d:23e7:680:cbaa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954834edc3sm91477455e9.0.2026.07.18.01.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 01:57:47 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v3 3/4] arm64: dts: rockchip: add #sound-dai-cells to the RK3588 HDMI receiver
Date: Sat, 18 Jul 2026 10:57:27 +0200
Message-ID: <20260718085728.6797-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260718085728.6797-1-royalnet026@gmail.com>
References: <20260718085728.6797-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_015751_318828_1ECA65D2 
X-CRM114-Status: UNSURE (   9.05  )
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

The Synopsys HDMI RX controller exposes two digital audio interfaces,
one for I2S (0) and one for S/PDIF (1). Add the #sound-dai-cells
property so audio cards can reference them as a codec, as documented
by the snps,dw-hdmi-rx binding.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
New in v3.

 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index a264001..fa100e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -338,6 +338,7 @@
 		reset-names = "axi", "apb", "ref", "biu";
 		rockchip,grf = <&sys_grf>;
 		rockchip,vo1-grf = <&vo1_grf>;
+		#sound-dai-cells = <1>;
 		status = "disabled";
 	};
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3995FC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 10:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8GI7p4lfC8RivDKnmTunIxY6zmhyhgo+Vwo0gCWpYE=; b=OxKBSroqvLiGQo
	0eZRGATHeY4I3onX1R3JsKbNSc6IAd0IbcJDSaV+2zSIDE9pwZqUX+RVz8GdOJjj3TPptrfTUwcnD
	252Gv4TA8WO7klor0asIaSzBKNlOSLXGdxgoNVkobeSR1HYAxxB7n8BEuB6w4NXxDXF3/JVQZZZ/0
	oxhjFj/31pL0jWAKQ8amiyk/DIe8/VeEhinly61TXCXP2eqzaokN9NZFgF0kDjzvnpjvRD8/6yG4t
	D9kEDPYc3F0ilI4PHBwScm6Xdi/5+yqBQzzpfHbCyMR7IEeLM2Uh2Ix7eupBW/QgFhRgnBMcfQSlq
	SQsl7E0ERc/GtDOcUsoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiBO-00AXUf-1o;
	Mon, 25 Dec 2023 10:27:38 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiBL-00AXUH-3A
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 10:27:37 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-67f645f2e3fso33477496d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 02:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703500054; x=1704104854; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=INsLlCXDAFhi/k/htjDzEI1XrXcvcX0/UnPfEA8NX58=;
        b=ZRu7NJnx7Vnzz8XdNbVdQheMytBNKGGsSIQl42vrA0+jE7hJn9vnn2T4KLTRz8hd9c
         GgZmnkl2OvggS3viFczEZ4mP0zEtrrwPMe2hRFQ1y82J2SyYYkigGuA9MJ+uP75xI6Fb
         h+U1GIz5mK3qq+j6oSYhaxrQDY7kLQiey/fGDkdTaibwGsji4q1zA2x1jWVF8PdEdWCq
         FLVgGAQkaV9ysCvs7xyRF59SuprsdQ/TXXmEDn0HuinqmbzR3RSw5wd9Sqi0X60xmkTe
         gsYijLD4NaEuC7Tqjfq9KXLTp7cHXDQdUDYhwVQmHMFPDrDEcgm9xmDL3p8sgh/lbVGr
         AhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703500054; x=1704104854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=INsLlCXDAFhi/k/htjDzEI1XrXcvcX0/UnPfEA8NX58=;
        b=g+mXBRQ8DzopBrTYInyqjjYLTg1Jbm+ywpVPuHTfyggCzQvtwCZ3K2pcDn5BUY5UwU
         qDon8QHiQFaegCWaS4uWcqurnHHojQ7WMSRYn6LQ8i4iMJZDlUuK1phBmkXdgsqADFWV
         nzASmGodHZnJe8wVSOdzZH51HieDe8QI0tT/ysWQcR5Bu22nf7wvMqflR90nvjuYuVZ0
         P+q/wKyet0y4YuaiZmYgUsahH2lR4ga0egGsl+IurVvkQohC6h6/YZlPJiCnwn0QQx52
         XGH/19uQSrKrKWXmtJVmNArRBUQwdoYjT2pGM+h62Mut+Y12izG6MvINHsEiQMP3RaTI
         8GUw==
X-Gm-Message-State: AOJu0YzABzmRX+KfYPAImOGwFXAuo6KUF5PqLOnPIa1KkvjwdgxOq2E+
	XCDotJDr7QAEcnURTpeJSOo=
X-Google-Smtp-Source: AGHT+IEbfTl1mZXit7lekMTGeVw9EHS4aYGU2ngW5oZ94EJjPZe/86DdfKgCMOvF2TIl7w7lNN9w+A==
X-Received: by 2002:a05:622a:407:b0:427:867b:85b6 with SMTP id n7-20020a05622a040700b00427867b85b6mr7166548qtx.4.1703500053896;
        Mon, 25 Dec 2023 02:27:33 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id fd14-20020a05622a4d0e00b00427d6285b42sm973464qtb.19.2023.12.25.02.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 02:27:33 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 10:27:22 +0000
Message-ID: <20231225102723.11055-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225091148.4396-1-inindev@gmail.com>
References: <20231225091148.4396-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_022736_044217_9D659B5A 
X-CRM114-Status: UNSURE (   9.90  )
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

gpio_pwrctrl2 is duplicated twice and gpio_pwrctrl1 is not set.
Set gpio_pwrctrl1.

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0fc48fb0d34d..e83b71510a47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -591,7 +591,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

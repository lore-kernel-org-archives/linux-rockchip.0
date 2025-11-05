Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE9CCCCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBlnIWbVPrQhmac6b+/oaQ0mHteMB4WVJ0zCEZvMzqk=; b=b4eWzNMNmfX9x9
	VP9ulfxYpywy8Y6+GaIinOZyV8gOPj1imea/ErLlswPAO5H2bNFkr6kGhcJzyjjI6towRhHPZI4y2
	BaUWUAnq7Wvuc/j/LPSPrsgT4Eds77+4kMbuTFZs6SH+3PO2Nf6XwcyF3yf2itZc1FrzJmIx5By6s
	wkYIZpkt5IUYqo1KcZWEke+TFX7UH+yomo0rPMelhEDMd4VSUiADNpi3X0M7mXVC4JXteZX+RQj8V
	WyS/d1kONThr+6Ci0ChHEtIg3D1ExTy0EA2G5sNnkHTeD8cRWaktlSIcD+Qluw/EcGMzukbiMD3yN
	zNts9VZ5sWsGoU/c/WDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbb-0000000EPLE-0Tvz;
	Wed, 05 Nov 2025 20:59:47 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbZ-0000000EPKB-1GqW
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:46 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-656b7a2e7dcso187597eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376384; x=1762981184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVxvV5hWkhj68kgQG7ZPJflpPtnl/c5RQH5cjc4RrCE=;
        b=cvE71vjK7fCX0T7c6qvep98u5TjHSc+bBD8eNjNC+ZMnwcPPRK0mHbsxndzSqPFgsR
         vMrTf3E60yiCjORi3fIpYSLR8h2A/N2sX9lK5eeBhdzjdpyG2wQapOKMorM5OvRXcWDS
         Xhj330rCfix7roD04RmEP65jPHM6vgdC5CF9ql8mpwfsJuJ8WEyAvctLGmUcO24Kok3y
         V+POOveFLjK8JshibKSMB5itb9meyb+O1aztnxueeXY9TTJgi/9tDrO3dbmvX8z+vkJa
         MD+5RlI7ewCFgsiqKUYxEgBKK8tDTdj5hD35hBkCjlXAvSAZoqWwqFro1ynlENPq1fM9
         ClFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376384; x=1762981184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVxvV5hWkhj68kgQG7ZPJflpPtnl/c5RQH5cjc4RrCE=;
        b=p+PlnnOcylITfJxoe9pusdOQIxkp3VKoEZ9M5aMB/IEOovTiFq5v++y/szGPkmy5fS
         C7ow8/4sk6GubTzDnkpyQPmmNGwYvnh3c4eS3IRUx0itBQEP91tUaimhXQqIXLaahjNl
         M0ZA8cIJAlHGnR3UvW+Ymt28u7B2DLdO5WN6sSo1Qs77+kjvDn91zUQ5bugz4RLoMQ0v
         GGwii4F4Pp7u9yLKvff2pErn3yaCgfg0AIlVkup/n+auoTZoBxKHUSVtQ7Ws6tI/zCBY
         SzOWYJ21BvAt8bxqNFmMFNDQ7UgAd9fulcKE99XAK6s3tkPrX0pBUtr8K5/JSClkzGha
         NBLg==
X-Gm-Message-State: AOJu0YwXn+qOJQdlLtyEZOFxL+KHF0Zhxq7H/SCGcfyLBhNVQl7aePPi
	euHdAZG5Xz1IaJRZvVFqm+MR+wV+l5qlXqRIyVjmTrNpfLRl+pBMURs8fdGQeA==
X-Gm-Gg: ASbGnctvr0cTsaNHPY0PjasSM7s6WP+R5jPlGbxVOPchZ288UyZYKZZ8cBmdPFWwSKd
	KwsPoGt2dmIXtbetvM9oraHjrrM4ZEJVT9RobTNDLqnB7mv0vYAE+Np5dEHamXT8M5H+uzeySBD
	RQx1p8R08PrIWJfa4W1N6fdSZX3BOYd85NL1QcuQecn3NN0cGRnv4UkXPyIi4yotjy3ij9+yH4X
	+eG6YfXF5miwCLi0RKK+lhjShwhaVvXATyHLiRNG37MKi+xeyhfWSzXrj4NJcwLDTgYsGKFxBq4
	sc6MDixCEI7PR06RQvSVaRfqY/zL2d5TmNvtQA/lRsAsB7jwI/ISbTtjnQVdYyhTGKSqmli4Qev
	SG+TzE07mHFx/xzwBLtKkXwlmqo+U/SRX6WO/uIuUW3aRIwcjahE/acVypqAifX+wKpOCAOblWg
	==
X-Google-Smtp-Source: AGHT+IHXQdQqkMQesb26gvhJrfJv3jtXCe5WKeDVBtA8DcOueo7PW1Kh518WjikU8LcGvByTZU6nCw==
X-Received: by 2002:a05:6820:222a:b0:654:fa8e:b740 with SMTP id 006d021491bc7-656bb4e57c0mr1922880eaf.0.1762376384134;
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:43 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] arm64: dts: rockchip: Add device type for Indiedroid Nova.
Date: Wed,  5 Nov 2025 14:57:04 -0600
Message-ID: <20251105205708.732125-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125945_343628_047E55E4 
X-CRM114-Status: GOOD (  10.27  )
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

Update the devicetree node to note the device category of the
Indiedroid Nova as an embedded device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4ec7bc4a9e96..debab7732b71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -11,6 +11,7 @@
 
 / {
 	model = "Indiedroid Nova";
+	chassis-type = "embedded";
 	compatible = "indiedroid,nova", "rockchip,rk3588s";
 
 	adc-keys-0 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

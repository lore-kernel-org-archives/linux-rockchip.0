Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F62DCD1297
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 18:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqXY3NipK2sRf7BvdcFyQbs5ZjmlNn9pSiCy2MHpNhs=; b=l6+R+v561Avfbq
	bP5lR8jREyUZSy3Lk9Yse0Y7TmTFSKGdaT8eYiOC1jcsWrnhlfpG5pZ3xEus5Ri7oOCrSjCa0Sg2r
	uqPPkOxncIXjgAx1p8+K3ZS3KVigqrX/AP/3lki/NfN3UKenlzUyza6Rw2pTqdNeqeRzpNZPLLfiW
	ZFgDTEzYBdhWHmsH6X+qKaUfPUKdjAwF1x7PX/iXnwikGB9QYAIqOIIlm1v99kLa6jGzRR1otK73D
	3wejkvAD7+QYK/IIFkT17C8V2+HXzQrGp+vWzph2BQGPvhZc8aZ6LGZzhYoy/jBUHQwiVMJ3u2L7W
	4GgUouvnj3RFVYRzjJ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skSnN-00000009pAe-2NQA;
	Sat, 31 Aug 2024 18:25:57 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skSmV-00000009p0i-0dFz;
	Sat, 31 Aug 2024 18:25:04 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2d4750be8c6so448538a91.0;
        Sat, 31 Aug 2024 11:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128702; x=1725733502; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/PZpfVojtroG7VabE6LFfz6wJPwzCtMCKr2Q6D6vNs=;
        b=dtWpaqBcwbpchzdP4S/xMFxZj51gWf+0dxaCfCf173fsxnkZY9fU5pWW1e7tsSX2IF
         mKIU8x7EGnc92bkNSHZ5aDNcttEnW9pomP9BgvcG6aKATAMZLqRl1pFKpCm8ZT9OE3hs
         C//RCEKCJpKWr9WfVC0BmI/OTV5kO0kYzJTzvKetT2dHmAO8QbnwKZ9SXuNIe9WkWNaE
         RPJ3bY9H10H72Hc00cfeV5zQBOw+bwGTav4RTdUmFwpmZUd6+HT0j/BOLNhD/Aqh8CX4
         cs/b3cKpScFMEA/7CtBJWh+WBKP78rKPA+wPIW3KC3fmyWOr0q3zlfgrFwMIsU0qDhg/
         67Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128702; x=1725733502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/PZpfVojtroG7VabE6LFfz6wJPwzCtMCKr2Q6D6vNs=;
        b=bZkwjrwwZRaoffKMrsVAVkakxJbMJyNJbYjjEWTMtOr+IbTyqaCl3L/kRkgdgU/3t4
         c6K0h1IR74+pAbc+oOz4eDJi7xZxSBdz/wIpCcqx9pRJFilgSkYrD48vD/trE6ZAf8OP
         naqAoelUq/5KsRceQmtttB8auKHokB8UzGTD3pT4l33DAOFzpvfAVILYX2kcuzpUAiP3
         6BQkgvojLMg3dJxNI7PSsoWGA86i5ljOgc4V7vpIUXrnpB1rOu0ZReOqgtatO6DeDX08
         pJeUGoHGQ+HyFKX9RBL4qtqw6ziygqZtj1PeFasHxSZFlG3keYuhB0JKZ9DShzDNi6a0
         x99Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZ5pPXnqwXczgZd+OR0hVGeO1tFLmBPLI/7r89SraJsScahnQUIHcRESe5x4FOQiK/82zYv7gbEtCVMdEOz4V1@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0PH7WGFVYhQ4NYyD+arZVsPtQ9uzM5mFDbaiTRgLU1UcFBS28
	aQEOITwMJO9uK3jq3yYJmoaEw4l6/bOTCwbCmLfYMRD0Tw1KTjuCHjQ3ey9J
X-Google-Smtp-Source: AGHT+IHShkB09E72giDT7wzh9N3BM9UmeN3Y3RgGpXHPBtad5tpbFtPO9ARbXYO2pYEQgnrbdlFunA==
X-Received: by 2002:a17:90b:11d1:b0:2d8:8254:b913 with SMTP id 98e67ed59e1d1-2d88254b9e0mr2679779a91.4.1725128702127;
        Sat, 31 Aug 2024 11:25:02 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8b2725332sm553855a91.34.2024.08.31.11.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:25:01 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <didi.debian@cknow.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Tim Surber <me@timsurber.de>
Subject: [PATCH v3 1/1] arm64: dts: rockchip: Add RGA2 support to rk3588
Date: Sun,  1 Sep 2024 02:24:24 +0800
Message-Id: <20240831182424.758816-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240831182424.758816-1-liujianfeng1994@gmail.com>
References: <20240831182424.758816-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_112503_268658_F3B9C5BD 
X-CRM114-Status: GOOD (  10.75  )
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

RK3588 also features a RGA2 block. Add the necessary device tree
node.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Tested-by: Tim Surber <me@timsurber.de>
---

Changes in v3:
- Rebase commit to next-20240830

Changes in v2:
- Sort node by bus-address based on next-20240604

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 97a1a68e94e..d97d84b8883 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1143,6 +1143,17 @@ vpu121_mmu: iommu@fdb50800 {
 		#iommu-cells = <0>;
 	};
 
+	rga: rga@fdb80000 {
+		compatible = "rockchip,rk3588-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xfdb80000 0x0 0x180>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA2>, <&cru HCLK_RGA2>, <&cru CLK_RGA2_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA2_CORE>, <&cru SRST_A_RGA2>, <&cru SRST_H_RGA2>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
 	vepu121_0: video-codec@fdba0000 {
 		compatible = "rockchip,rk3588-vepu121";
 		reg = <0x0 0xfdba0000 0x0 0x800>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

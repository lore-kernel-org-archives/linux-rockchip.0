Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 676AFC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76zPVMNorcxe74vQfEXxSC69tTHD7ASeEYVeUu2TJ7s=; b=cRN33Nunszs33x
	y1us4LJrPeeiZTF6sPKCOXMpBU4lZLJKGz7pBVVnH4DOZbXOvEr+uWrrJVWeSByXmJC2b+keYTVVH
	jwsumpHV/GwDyjaiQ/lHSGH01NEOj0fgUgkdydfNrvMuTojJ453AoWwGLK+KQnnDpnp8bV8ohHpsI
	Z3wu0zxhwRy8SwluMTLGn/TMcPklKPJxTKyawr82kwGs63DUysySRetUQ/QAy5DDxFIIvEdF8gIWn
	kBNaQ0Y2qHxOEcrHHq0d3930DREPN20fZbiyVWWdvt5MEZkPmUb/IOdHGoq0XvwHXw7FEt6Iyjw0a
	z/c8+9c7EHQY0z9J0hAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpn-009MUI-2B;
	Sat, 25 Nov 2023 14:40:39 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpi-009MPq-0v
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:36 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-28594582e44so892737a91.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923227; x=1701528027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Juvqd6ZcRYFg/BlkA1E3mVJgKUv6X4BvFTJ0d6+v0s=;
        b=u3Hmr9snyd7lm2iUOJzRgVESYEjVGdHd3Bbn0Esk0MCed3/cz7qV5kJ407kh+LPJv/
         EeAFKtbic88zIdJqPehOvBDuYpGIfGqN06fkzoXYC5tBeOVYdvuQlGa6PujobgaMMrxS
         1WjmIwAVz34uVyU4s2bNMTm+cdkrYJZMdR+4AgjMuw7NVwhuAF1BqM/k5EB9tgnZYzM9
         Cteid8OjpDqqM6GaqJ3uLF0QWpgUIlb2DhcwmcpyShqEhBJxPMAP4CEqjIyWYbenJa/U
         UO+LfZ5u15kTY0xkbykwXMCFmzSf3C9rGoxQ8rgHrkNgmHJy1Nbc7bgT7CjlPB9IHTPk
         b+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923227; x=1701528027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Juvqd6ZcRYFg/BlkA1E3mVJgKUv6X4BvFTJ0d6+v0s=;
        b=jizteuQOxvRgXloUwavoQs07rXWklD9NQsVsnTEAhgf8yxYZT0lIKbeKYu+9E3v9Dc
         1Fqm14/qFa0DEK3EaR2yz2xPC5vKiTQf6GDSH1sHHZkmxuG2q/9jrylnyV6rl0yCwjWC
         UPwsT4kXpnMsVsmP2YZNfNyN5zv5dGROIo00IpvzD2+18ypcsaz9I1WP/k0R012aigTA
         nmLCGPnLCHAUiXc36y1fslxuwzmNK0bwKvqO2zwz2BVpeZEkpzmM6ChAch8EG08+tZJL
         Vr5jfFatWuzH9+N42ZBcNBxuCGZzmBi2+XHzxHpdSWreP/bdL9ck4QJkKdmF1CPrAiwS
         /Tow==
X-Gm-Message-State: AOJu0YwcWQH2EWzXQ5Sjmb9F1gcuQmdGcn8DLq+MdQYhZQxpppTQZnh2
	+BWbuc2qCKjReEVpHH08G+EeZQ==
X-Google-Smtp-Source: AGHT+IGAqnkYBlSwc4PsYmoJPEG6SAYCAY5X+lOhLWcNl/kLojOfYL4epoaH5icpHzHKfAu6fXmPww==
X-Received: by 2002:a17:90a:de8e:b0:27d:dc9:c67d with SMTP id n14-20020a17090ade8e00b0027d0dc9c67dmr5672421pjv.36.1700923227396;
        Sat, 25 Nov 2023 06:40:27 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:27 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
Date: Sat, 25 Nov 2023 20:10:03 +0530
Message-Id: <20231125144012.58668-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064034_326036_A1447840 
X-CRM114-Status: GOOD (  10.78  )
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

The 'regulator-init-microvolt' property is not currently supported by
any driver, it was simply carried on from downstream kernels.

rk3588-edgeble-neu6b-io.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)

Remove the invalid property.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
index 017559bba37f..4797260a8a78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -165,7 +165,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

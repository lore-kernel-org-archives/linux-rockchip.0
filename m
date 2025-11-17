Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02216CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOi2GWSCXZeTcs/LB5L86usUBlCGjcPo98s2DfroidE=; b=uvC2njzzRscAfY
	JHl7r1YuZwuTUKRP6OqkQ7bi4XHO3EU0EFF7oki09GxPhy7tLY1lA7qI2ZNRrqVgwnvyFhBXWKkKv
	DuM636RS5Lqfej1tJhLuv97VF4NoPc6a84IAl26EFS2G2L5oVM0aoImul13VyNZ9hGLo6Kwe7vjG6
	9Tp9BF/d574Uv7U4aqnV8t9LJmuvOqNq6qpwTTDcbTcImcIpFB9sY8hqHirrMgnl5odxwsTD9vG/B
	7NmCO5/WA/m9VIRnjAyk1/pRIAOfundkYSTkBjk/f1KNYK4yjIkFshGmgCzgeTYYUxuO6ZTGt6n3k
	mp28TZlG57t/PGiGofug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL750-0000000Gu0X-2r1x;
	Mon, 17 Nov 2025 21:48:10 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL74x-0000000Gtxq-2Kkq
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 21:48:09 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-656de56ce7aso993531eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 13:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416086; x=1764020886; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x6y/eRSxQiwoKH2ttdAfQIDdA/0Ls/cq+YnfjCvj2Xo=;
        b=M4zjAoLInC7lmE9605TAxZQaJnOphuIqq+3AWHv7w9DJ9EQ1mDt6c4nC31JeHi9MBL
         viqTIJSUeyFU3ukVumgSJtW6G+JvDhpbIBw2qrTp90GUpHXGDqBGUP8b/3xZ2P0L22gE
         vdUlr0r6GpDLu73DEtpnRwp+HZbQ6caXRssTzSmNPwsRpSIMTC9mA7m/PKNFccaZjwix
         mg54CqblruDXKqdpTlkt1P7E3F3yf0H5U+jqWrE1LdZu4GQhHGjGEM61DwV5pG2TTZ4U
         QVEdPfpVEHuxyxxMI2nnZrA6umJ5My91j5q9zm1lsAB7lyV7WKViuqI32iuqsxWcye6A
         AU+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416086; x=1764020886;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6y/eRSxQiwoKH2ttdAfQIDdA/0Ls/cq+YnfjCvj2Xo=;
        b=LzrL8s2dKei5yTvh575sTETsvyDSRsD0VDbrMR0oMlFMr0gSKvo1jS1qHcoM1TDATE
         f1z4Qg0BuKbBFuH88mW56veovkbWV4UY09BtzlLsxem29d+2iQTuBM0ULahB1vB7ZDCX
         Ych1Xq4U1+rUUB3AhRWD6q25thB07KQ4OjOh6Kd5sGhnwyBOom+xbBe2TGJOnlhVJRKP
         PyB2rrqC/3WBUUPRZCjZp2mUOLNZT4ROy4RoIHtDw5MvmUdSU3sfxhRvS7PaObEuOSNB
         d3pF/FmQicMjQik8Az1xfriW7Iuv/0WRDRdgG5V+IYhPvj6W5cH2dZ3rOcqnV7nyQeHq
         Rswg==
X-Gm-Message-State: AOJu0YzMlYSFrX+1iaunwHIky57HrP+2Lom8mhLq2+svMlxRqbgiKDMe
	rDA2lWwPXEO2rk4YnV0FY1OTaWw3w1uOKHKmYvg17Orqd117s3ou9R4d
X-Gm-Gg: ASbGnct5Mz8QuhSbKsS7Fwv6XeD0SiN47gBEVFLSDJuthna6PsuS4Ncp2QzG4AFETGj
	3e8Xo2bct19/kDqASXeZswBsIbcCyn+k86PrZosANUqqMjy5yqvTWz93ay25Eue6jDSQ9T0unY3
	n73xLxYgYMwsmrKZzDee7l7KEj3fjtqsyiNpGEl6v3h/UrVBf4atZj0FP4jcH69KbfBSDIB+pqg
	jSM5ZVIkASNuC1upKqszX0kQXEFVfgkLFsRl13CgKJy6Q2Xe18lC8w1XuCZqt5nZHuZCffIBgex
	hEy3ncq5duTywCHr5YAR9Hyh10n1lxy655Xsva1izJYUkAXn7jO8ZzNTh2LwFMVmb231X8mTQqj
	JgC+JW0GYmw6YMQklEvMJh38Nteug0RppNGcMk6aa4jfVtNn99Vfz0/M0emgj/aP9/vxyflPtjA
	==
X-Google-Smtp-Source: AGHT+IHrk3F7EjTrY16q42KIOsJoZ7DxS7LCW9UgjNx+oGF51fraAPigETXdAfIQtidOQRWCmx4LQA==
X-Received: by 2002:a05:6808:80ac:b0:450:d1e8:6f5d with SMTP id 5614622812f47-450d1e881a4mr2055837b6e.5.1763416086240;
        Mon, 17 Nov 2025 13:48:06 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm5938805a34.4.2025.11.17.13.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:48:05 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:59 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: remove redundant max-link-speed
 from nanopi-r4s
Message-ID: <6694456a735844177c897581f785cc00c064c7d1.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134807_593379_731CCE56 
X-CRM114-Status: GOOD (  11.24  )
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

This is already the default in rk3399-base.dtsi, remove redundant
declaration from rk3399-nanopi-r4s.dtsi.

Fixes: db792e9adbf8 ("rockchip: rk3399: Add support for FriendlyARM NanoPi R4S")
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 8d94d9f91a5c..3a9a10f531bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -71,7 +71,6 @@ &i2c4 {
 };
 
 &pcie0 {
-	max-link-speed = <1>;
 	num-lanes = <1>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 };
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55673CD1297
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 18:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AAbtMv0+NiRdlDro1XlvRKr1ARbQfxqjGxA0m48Vcj0=; b=fIzFagoClKIhLw
	hTzUT5WPkk/q8eydDoYqpKdwjxuYtTaNwiFRN4U54XyZ2MJalTya8EWZo5uOlqK6+e7ivyJ4OIBuq
	DOmL1+Hk4GQcq7AHBN0bM6AxlwHeq+aGetQXd+ZDKss6QcgKWTidmrI2/CKhtsiVJGsyzQ08KiBRc
	W9j1gVZNW7zUp+tei0NHjB93Z5P7auTUNHrHQ4Ma7+gkIqD9FpJgbLY1wM+LxM4fGs+CfEXAPySVJ
	h3uYHiK+cSqR9D4YZuZr5mHUE/s/5jPX7yOlKHV1D2AIngWI3zG3NcNjc6UfmvWfUSt13uX7JPmlT
	W9an2qTThztGNa3Tk30w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skSmU-00000009p0X-3FQs;
	Sat, 31 Aug 2024 18:25:02 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skSmS-00000009ozp-1vOy;
	Sat, 31 Aug 2024 18:25:01 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2d88a8c66b7so35045a91.1;
        Sat, 31 Aug 2024 11:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128699; x=1725733499; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8DhX/kaFZeCTg+YwZd6U7tYPU4NZdXw1PzKarghSqxA=;
        b=PbBwTwJqJZCzED77FIy5pBL91qkHafA78BiBn06xDmD2rkv6fOgiUxXy1Oslfblgvy
         1UNeWpgb2tbi+NZxZEmBPbbgo31Med7D+E4P2W0Cea5S/30DG+u+7o+HUgwHBGwh6i8s
         WchSyZXECZVzBP4k8OSjTC4NKE4a1feXb+0OFSGXX8jdw6fshNLnLfyr0KyrgABxm0nb
         SjDtJAlbRvwxb661PtMH+rEfMgypN/XcdVvVp3AAxzog90XxSSXgz4AuRb3vCqwA+kAs
         LHeHXl8PouRWeaXiOoovEaU0R0ORVmFA1mc4hqYT3ItrrDmmZI23rKija3TnRz3swM0y
         0HLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128699; x=1725733499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8DhX/kaFZeCTg+YwZd6U7tYPU4NZdXw1PzKarghSqxA=;
        b=pUABuUzKfWUKLA8CycWzOrRcOoWcOEVKIZ9Hv0Gta8p5gcXfL8j55F0/R+aX4FXzhk
         JoBSyfiAKRbgBTeohUN1Gkfra6fQ615PK5WX0AEx50zTL6ESAIHBVtKec1CgWvEkvEOg
         EdZ6Cf4zdef679Tsof2fUh/t37wDb3Uyt3m85WFcmp4BpmecMddPPhAV6FFddfam2czA
         CcbSz9Pg6w37Ua/zgHglSe4WqxUhGzVGpbdZi6ORuB+IetqxdMvQTBw14q9VZSgA9z6s
         r3De466Lrq+oubIhB5+RxBE2tAnrg9l5Txs8qvEYl+NYkh/+XOHVvbuw7h8LGVHtqLT7
         l4+w==
X-Forwarded-Encrypted: i=1; AJvYcCVAyzCBytTyNcMvP5beA6x94tyZwMTK5gpTiQLMq5H3fUVgqOrrOVZL61b+n5Kq1hJ0kZTHI9HH6S2yzeX2orzF@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/IldGjS/IV0oWWyZYIW15lVQaSSFaFs1g0IS+t7D6DZ06PcFM
	DtDKlSNMHV3MqJ/lnyF8tDQTuuHExL7VXO3rgLkKVnxvPty11FcpgS0KYw==
X-Google-Smtp-Source: AGHT+IG5caGJp3kbJu0q1H7IeKVEyQQ0/VkfM/U6HyNtpT+EQPNfyxzSIWN5x86SGzgyTJfYp1ncfA==
X-Received: by 2002:a17:90b:3a50:b0:2c8:e8ed:8a33 with SMTP id 98e67ed59e1d1-2d86b8819demr3430149a91.4.1725128698323;
        Sat, 31 Aug 2024 11:24:58 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8b2725332sm553855a91.34.2024.08.31.11.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:24:57 -0700 (PDT)
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
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/1] media: rockchip: rga: Add rk3588 support
Date: Sun,  1 Sep 2024 02:24:23 +0800
Message-Id: <20240831182424.758816-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_112500_517881_A620D6DC 
X-CRM114-Status: UNSURE (   8.28  )
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

This enables support for rga2 in the RK3588 base devicetree.
Dt-binding of rockchip,rk3588-rga is already merged to v6.11.

Changes in v3:
- Rebase commit to next-20240830

Changes in v2:
- Sort node by bus-address based on next-20240604

Jianfeng Liu (1):
  arm64: dts: rockchip: Add RGA2 support to rk3588

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

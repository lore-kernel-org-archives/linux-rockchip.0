Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A66DC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 11:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x77w0h/Bg/ZloFuXjhtKadSrzcASwElTPdgQPvXrVlo=; b=rReO4UoSj34EG8
	VgvdYx1fK669FZvlSl97ayjnA8TOB39IsCcr7L8GMwaqCoP4pcdZjZMyyv01pa6agOW4aIteiQm28
	uZjfUnCJ1wAtjVaDpEcrnZYgeWUsa1p2BSx8ko+fLJ3yCH8SxdMqlwTqOiR4OZpwetqeVTkC1cfNM
	le+5hosM7e3hcB+xcjgOtEI4G9Whn3t4+RwJ+RbClEEUeBthVrM5qosGdmvWaXCbNEhMd5w13bkcM
	cNlSpv8Ve32uq5oBneTtxqT2ud6ZllIxw2pr00fI6WStpWYZxU0KGn7N7vVRf2MHbBG1GSyRLRXlp
	WOqQQI1rpH8Dl13bCObw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMg-0000000EWKz-44Aw;
	Wed, 15 Jul 2026 11:01:22 +0000
Received: from mail-yx1-xb133.google.com ([2607:f8b0:4864:20::b133])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMf-0000000EWK2-1Qi1
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 11:01:22 +0000
Received: by mail-yx1-xb133.google.com with SMTP id 956f58d0204a3-6662551100bso6032627d50.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 04:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784113280; x=1784718080; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ba8rcUXQdsLarFisL+/pK+7ENc59ySEgz7MRaAReypc=;
        b=qIhqkheHnyX6yd81k21fdxWCAv9vQyDuahygZuRy5gHBzBMX2xhuwhEecStLw1EPUF
         4NV53O+9Ys/jQAZYETaim9TIrWZ0xbiD1MNJnQq7CqrGzomShAtXGRGoTQm4JsHVnn5z
         LkXT1qMbFwQB3KjCuDYFpPpBP6oJ1bmDAacWXJ1mIXtOr1Xfd6NDE87kjdQO+NQUNhH9
         oGUViONMh4tPkycvpcbQFVQull9l8dOR6NDrfoV++lfreH+8AQF2R1BihQnvpgIoY7Nt
         jsp3I/WEtGriLEszQ17hOFVdDcU8OZO9OGVrvAIbepERHTM30hYTqS7ZArGVZGX4dEqX
         wLfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784113280; x=1784718080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ba8rcUXQdsLarFisL+/pK+7ENc59ySEgz7MRaAReypc=;
        b=rWXNRZkpd5jpHv0anfKPT7VPzhp/zuYlIWVlak86CveAFsnBgnBinbWMTcobQd6izs
         PS6paCwVxFwM7WtIuIa2IEBxhUyE1jRH2z1FtncRKFmZ9d6h5msWcaMO3cFyrNTpFMgR
         XS2qZcbEty+obQCYbuAE21b9MuSH3nFT+NJb8PQLDVv7G7SOSBCzPWh/JfledMh0/ya5
         XL3VujC6LDAjpb93giaT1OarJStRZdpGQEUNoMjQdFXAAdw0Csym+Db2qg82wJ6xYV6B
         mOHZiX7MXEgaHnLu5n7iKEdK4ELtp5qNPNYp/gvOqfiOCIX3zuLQEoJQSp4s3n3bgCEk
         HBqQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrd/nUDnxCxl+4y0xFaguoUsiXuJL11krsOQOOfB+YxAOlBVseljgjPQfPidefV8rA0uD8Y97Ep8RVIgFyRQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwB22w1L5CkpjbMZ+EUfPHJQYmsF+iVHNE7/QtBFAtfyo8Z/nR0
	idaIbgbgBXPNiCUvYgu27SLDJyKtc6D4MOvBomD/XhKsRCzTeKGXeCtR
X-Gm-Gg: AfdE7cl0vM8NMzaG74//8rAc2bT1UpuLGKNBnymbfjsvEsN9Sh0eGCtztVPgakvGCSu
	4NiDNztE9TXhVjUx3i3iE1KcaFA1kqpvdLjDDnQRPUm2/d1yjCiNuJ4Mygx3at/UxuQv+OORfQY
	KUa8u9+d1MFPVPjWctPWgcbZhwRplpk/+fxuINp27MImWwnLd8j34sJt0d49FPHooIcY2Vv7YIX
	SIn8nPEm3Y80NC7fmOSJVRa/mFAhLGzMyQ4G7zN7B3ctEHlpPKlNWYtaPUDiD9OripplxuUC6n9
	0eWvZKFx4yLtbNPRKXbnLeUWU9748l2PXySSzfUGPCUCObHTL0EdWX3wkTGmD0UMX4xIqStVY2f
	/NyBVvqUSVsBYzhDzlm0Xya02hloW0ywbTAoZjkT7zdG/GYBDkAuJwWJFPLV39e70Q4QAYHyhWm
	FJ2pmHMGqlVF5FSBI06vRP
X-Received: by 2002:a53:b118:0:b0:667:8b90:2e5a with SMTP id 956f58d0204a3-668078c895bmr3427781d50.102.1784113279355;
        Wed, 15 Jul 2026 04:01:19 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6681fbd8c5esm59066d50.3.2026.07.15.04.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 04:01:18 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] nvmem: rockchip-efuse: add RK3399 OTP write support
Date: Wed, 15 Jul 2026 16:31:05 +0530
Message-ID: <20260715110107.409204-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_040121_415720_6B496A46 
X-CRM114-Status: GOOD (  10.68  )
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

This series adds write (OTP programming) support for the RK3399 eFuse
controller, gated behind an explicit devicetree opt-in property.

eFuse bits are one-time-programmable (OTP): once set, they cannot be
cleared. Enabling write access unconditionally for any board using the
rockchip,rk3399-efuse compatible would be a significant safety risk.
This series therefore:

  1. Adds a new boolean DT property, rockchip,efuse-write-enable, which
     must be explicitly declared in the board's device tree to enable
     OTP programming from userspace.

  2. Implements rockchip_rk3399_efuse_write() using the Array Program
     Mode (A_PGM) as described in the RK3399 TRM section 21. Each bit
     is programmed individually using a software-controlled STROBE
     pulse of 15 us. The SoC-specific callbacks are managed via a new
     struct rockchip_efuse_soc_data, and nvmem_config is moved to the
     probe stack so read_only can be set per-device.

Hardware precondition: The VQPS programming supply (1.8V to 1.98V per
RK3399 TRM) must be present and correctly sequenced during writes. The
driver assumes the board power design guarantees this when the DT
property is present. Future work may add an optional regulator reference
to enforce this in software.

Tested on RK3399 board with rockchip,efuse-write-enable set
in the device tree. Read-back after programming confirmed correct bit
patterns.

Hrushiraj Gandhi (2):
  dt-bindings: nvmem: rockchip-efuse: add rockchip,efuse-write-enable
    property
  nvmem: rockchip-efuse: add write support for RK3399

 .../bindings/nvmem/rockchip-efuse.yaml        |  11 ++
 drivers/nvmem/rockchip-efuse.c                | 152 +++++++++++++++---
 2 files changed, 138 insertions(+), 25 deletions(-)


-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

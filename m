Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E079C71153
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 21:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rHjYCbrOr2CFqqHA+nLoUTMD5jhbu3K/92fikSu6J6Q=; b=T3QvirB1gC9cQF
	90eyezwlOs+uxzZjbL3eEzo8Ut5LHNwb55N3CJ4UlHcIXLcSSYoFzFPnfMOcJ42daLaOXmWe+WvwF
	Y8Emi0ZfdHYhRjV5S785qcZekvLfMs+/apfiRc/AGp41CPwj+5tBLJXA2d4nn2l21L+GNr7n01zkH
	pAFdG9tT8Q41LsxpRCjebZeU+9IIx1gKkyFvVRcqBQaBQM0HSzHgGENrjudxw2JHcqxntZl3SJ13C
	gL9dz40vgR5ougoiFqTicqyc2sOsYu5rJwpKWjuE9QEcTxmRYT29twBf7+u18q3AXEJF6OMdXG4Dk
	Rw2E/daRDsqj/78/vFQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Sg-00CJBe-2u;
	Tue, 29 Aug 2023 21:41:22 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Sd-00CJAu-1O;
	Tue, 29 Aug 2023 21:41:20 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-52889bc61b6so6494039a12.0;
        Tue, 29 Aug 2023 14:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693345276; x=1693950076; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vgbDSFaryU4ca1B55I/LLmVwTu+viTZKb05cg+910PM=;
        b=eWJtmPWB68B2s/rUSjwJN0paau4UeGbbbs3lkyUOYa4nucAar4v6fwE531GzSWzbdd
         Z1D9EJNTA6k0f50qGY4oLo7ItKftI+AXd+5n/V0rJOZVNsQq1vM2p91Td8n1S93f2fIU
         VIC+63AXe6CdlJvUN94pD8mNRxkV+VTgt7DSg2r8Y9qvYks47cMFZQ+V1o9M59BID0PV
         SJo9uRC+QStziCZR76GZ4eiIFb9P6/IaP3Mte+6hcapAzkJS8OEGX68+cNpz5ePf4YCh
         gnN1m4Q/ErhhkY2nXddh/tKtn+uD6yvDT9eK9cHVeYAgSwUjqkTAYooTlFT5yY77y6jZ
         cy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693345276; x=1693950076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgbDSFaryU4ca1B55I/LLmVwTu+viTZKb05cg+910PM=;
        b=MOKu2stIBnc9ZYgNygZ4DW/XJUcffBuedav2ibQtq9I8WBqPvqRGoRNa/SkHaN7/06
         ZG86kSCWrfyqiAUC3RDceMxIi2uNg4qm+ypqM3UK9MZ/tE8iAUjtFwfMA+kixapHAsz3
         bD8U2XHhLu+m5al1s+yi/fnKTJvzvRjb6Jd/Y4PrpHJUqV3PaoAWYI/U/tI6zzZNDpU+
         p8lg3Esmwzkz3f5+0y7J4RmhlWZo0nOkyWfdJqbj3OBUwIvgRGxWTE0MbQnUaV8NoHJH
         7GDm9FAeX3tA6f0/CTzOASBe5wPy5OhXPlfLlEG2pUd1MnKylMXcXHKoChpvjwyFLY8A
         jfHQ==
X-Gm-Message-State: AOJu0YxnN5mLKyphKZKSUJq2AOSCMPE9oI4WMVnJXZLcXZIpXzphhHpa
	wxoGQstcU4lladtGhwcAGg==
X-Google-Smtp-Source: AGHT+IFUtF4tAi87N77EKj8HYwHF1DKsELUTQbd3MjCDy66CG2SqZHgFuUrx/SQ9h14cPF8BM5rtdg==
X-Received: by 2002:a50:fb95:0:b0:522:3849:48d8 with SMTP id e21-20020a50fb95000000b00522384948d8mr389164edq.9.1693345276579;
        Tue, 29 Aug 2023 14:41:16 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:84d2:f616:9527:dd98])
        by smtp.gmail.com with ESMTPSA id f15-20020aa7d84f000000b0052228721f84sm6113428eds.77.2023.08.29.14.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 14:41:16 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/4] Enable SMP bring-up and cpu frequency-scaling for RK3128
Date: Tue, 29 Aug 2023 23:40:01 +0200
Message-ID: <20230829214004.314932-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_144119_488971_4A598AA0 
X-CRM114-Status: GOOD (  10.50  )
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

This series aims to enable bring-up of the non-boot cpu-cores by the
Rockchip platsmp driver and enables cpu frequency-scaling by defining
appropriate operating points.
Please see commit messages of the individual patches for details.

These patches have been part of the pretty huge RK3128 bring-up/fix-up
series [0] which I've splitted-up now, as suggested.

[0] https://lore.kernel.org/linux-rockchip/20230829171647.187787-1-knaerzche@gmail.com

Alex Bee (4):
  ARM: dts: rockchip: Add SRAM node for RK3128
  ARM: dts: rockchip: Add CPU resets for RK3128
  ARM: dts: rockchip: Enable SMP bring-up for RK3128
  ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 61 ++++++++++++++++++++++++--
 1 file changed, 57 insertions(+), 4 deletions(-)


base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

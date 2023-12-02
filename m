Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A7F6C10DC1
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uUjBau8DQdiEMUV8gxK/rMfvZAzlIir2Af1ODSf/Zvg=; b=abT1O5Rr7/GQzg
	Cc56B5qJvDaLaLeTRqFeFVtFufLECNasrTCSP4auQ+kuk/lh38Qk98thk83z3tTkut8KXeJO/WEo7
	CHzyWS7xAw6XiXrGRJ3g83Tb4ggcBUaUASVHVu+sU2fGvaziemmFfleTUPSjRaNw00qresty1WBPL
	ezYXw/RZfrMqWmUxP1sXy4oi0emJbMsUxhLHen+4Cdq3RaGBgkadP+j81yJ4aEUaqFI05McIa+ftK
	810f6gndxY2lgKZyt+2IuzuDKIhMvf8ZCwHCXGgRxF3VlsdZ31qiZHNFyuTOjkKUYJI73MR9Tcy51
	o84qLfJvNLxl7gnjwVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTY-00FhuH-22;
	Sat, 02 Dec 2023 12:52:04 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTW-00FhtU-0D;
	Sat, 02 Dec 2023 12:52:03 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-548f853fc9eso3994088a12.1;
        Sat, 02 Dec 2023 04:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521519; x=1702126319; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=alZsdcAcMlLtVRnOYds6Kv0dEWGog0rlTIYGT7GnEUw=;
        b=jI2dVHOA8vLimgJBBearJeXOey5dy+d5WPDf9JGkwyKQbSwF03USCRlWgAeW9ZCFEN
         yClBvc6TNUGWL0FtPH0bu+yxMmBi7nb2pKfvueahV6COSSVp5gBkGslGyA/0l55JrpIP
         rvCY/Q6mXttDgHJH0GZ5H3SgMEbmr2kM+u6p2o6G3qt4W3vPfq1E8O/iBwklhbz/lEjE
         qgV6MAvJhnN8YSen1JITkYc50Yp63ukRIVrw3d7LgDBHPoxCXBkPWDaZxvurnxTvfuSf
         tU9pzJkS7J+ICdu9Xwizr/Yvvsp7eLmH7Zi2dEYfR6hwrV1hRwl5u7RLi+m0GUaACILV
         C44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521519; x=1702126319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alZsdcAcMlLtVRnOYds6Kv0dEWGog0rlTIYGT7GnEUw=;
        b=PYUip+K2KO3Q0ekYoZVaG7tY0UU57mxWIwNKVvTP6BdlN9rzhQH8lddoefOi4XtFby
         VPsGCmgoh/G4GyyK/Nm+TNzVfRqrZhzs/TLV/Y9LJwocyqZ7M29kAeK8J4FIhZa1+1ro
         TDtJ8V+eQjHQC8oM3KUztf3v7bykRjM9UvgQKQnBkn4fgV2Ue3J5JO7ZGcCJVY38ffu9
         Fd8L3AJdv14Tggr/MeuajJiFvvJw27Xz4s2t2tSNRGzqx23YgYmDYfuH43FQMfULOIRn
         oumoHmZEihuEdslEHsBtwzp3tCF/suRK9dcdHHekOAKTZeEZl43tm7Dw4kXO1lW7UWFl
         y4gQ==
X-Gm-Message-State: AOJu0Yzu0/3NBxOopne6Q6ZmdUfPTm8FNbEsSv8oXPnWBKoCNFRhrLzJ
	mhJQFxWd5hiZhxvP1hiyzg==
X-Google-Smtp-Source: AGHT+IHtz8+Zp/uL1trpgUWl4gzjVY8w4Xh7BBppb7LpwHM+Q+E5jb/aRHUwTg4W9siZYL2ZFwznIQ==
X-Received: by 2002:a17:906:51d9:b0:a1a:76cd:697c with SMTP id v25-20020a17090651d900b00a1a76cd697cmr219758ejk.100.1701521519205;
        Sat, 02 Dec 2023 04:51:59 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:51:58 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] Add power-controller and gpu for RK3128
Date: Sat,  2 Dec 2023 13:51:39 +0100
Message-ID: <20231202125144.66052-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045202_123309_788D1620 
X-CRM114-Status: GOOD (  14.53  )
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

The first patch in this series fixes the pm-domain driver and adds
power-domains which are currently missing. This touches the ABI which is
not and was never used until now. Not all of them are used yet, but when
the power-controller is added to the DT in patch 2 the ABI should not
be changed again.
Patch 3-5 are adding the the gpu compatible to dt-bindings, adding the gpu
node and the respective operating points to SoC DT and finally enabling it
for XPI-3128 board.

Note: DT patches are based on maintainer's repo.

Alex Bee (5):
  pmdomain: rockchip: Add missing powerdomains for RK3128
  ARM: dts: rockchip: Add power-controller for RK3128
  dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
  ARM: dts: rockchip: Add GPU node for RK3128
  ARM: dts: rockchip: Enable GPU for XPI-3128

 .../bindings/gpu/arm,mali-utgard.yaml         |   1 +
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |   5 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 145 ++++++++++++++++++
 drivers/pmdomain/rockchip/pm-domains.c        |  13 +-
 include/dt-bindings/power/rk3128-power.h      |   3 +
 5 files changed, 162 insertions(+), 5 deletions(-)


base-commit: fd610e604837936440ef7c64ab6998b004631647
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

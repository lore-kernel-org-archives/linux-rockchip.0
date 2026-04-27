Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7C7FF8868
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 17:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pQ4FfrOTYKRdDsS4bgK1e/99PTULzWUnT6gD7vCluEc=; b=oIJU6C/vJG8TQA
	yUA2W2nAfjGpEusHth3QZQOKyFXaOy/5MURC8LuDD3ArlHFnY5q7Qc5MBHku38Ra4YJHpJfXKRBr9
	/pvn+G04bZrJXliIUaauDfCceUruD4Sjyq4Q0xgJoqzokhuiHKThE7Js0/bSyAclWmxwbFiHebGl9
	bLX3H/oR99cRMm2CXwCwBWiyaVw+kcjiEqiuTItreAcyK75DrzquKZdZl8eY/k5HuOzOZrwThwqoh
	Gqj7q3RNsmwIqQdW7Md03OWPfC+CsOkKRj8fyTYmBHRir7R2ANNTaLbSvyFAbt5WpLhb0SV/3IbrJ
	2WU5Edmrhhll7y0UXTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUo-0000000HPgN-18Gr;
	Mon, 27 Apr 2026 17:11:46 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUm-0000000HPfT-03hG
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 17:11:45 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-40f0e14b9f9so6031500fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 10:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777309902; x=1777914702; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DWxnwwnK1m7QIiM+kHUhFi9CGYBGNw3PT7/C0xFv7DM=;
        b=CQaZd/yY3AAY+Y0TMsjdzLYECbhi6PljM9f809mQh7y9yYUh3Op7CeEBSE29YvZDGA
         ajvtTQZgXmQcwva0UV9d517eNG6HVw/WId1P9cZcuxgkIXlB2k3z4Z6tKry5CnrlLv+S
         NswzHI9ZeoL7BQKfZfdFcnyDqkk3zfZNvzLygpf6880FWGYpcxn+3TOOTezy+zIbr6u5
         yShfJqtxco0waD+p4k4b49TpgDvxTWPsoqxdByglgABjjFSLJ2fizavW4rceFj+1YNW2
         qMyq4cNiWpu/cnCuNDQUI2em/5bHLAqPJ7czg9nukExtV+QAcI3oL0waUOHzEOC3FlHP
         B0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777309902; x=1777914702;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWxnwwnK1m7QIiM+kHUhFi9CGYBGNw3PT7/C0xFv7DM=;
        b=CDl8j79z3HHL8pelmuIJvuINjI/g5aoKtw+HT+RJg45oVQRf1hpq4rn7izMGEot8JA
         YKbYSx+3P+Uk6EDNpCtk90qWElQBwSfS6PfCPBH3entYdDXu2Qq2hoY7bAzFEs+Edj1t
         1razE1+ivEcFgdC5E8hgZuI3kB57viuaCuOcGsVovQXJoInWPMHyvw8upSEP5lS8o95I
         XQjnmdaTmTocF2Y7xDJhOMZGojeEciawj9f1FzrFTQyhaSZ6ptwQvPZSoWy6khTIUy96
         f242fR7SrmGwdnQccodb+jtUui5VUzXLAcsmHOHulgygPYyz6Xx/FIM8INSISuQL1baW
         lO7w==
X-Gm-Message-State: AOJu0YxDZ++WhnB3Mv+Z6Yr1OWUIwzeXs79GT+nfBUt68WGRTpl//NSM
	LFAuv9Qs5k5j7D6q6kzHVFdeRmldw99e5Yfpep8wdqSfFN4R4C1MmHQdnOcUOQ==
X-Gm-Gg: AeBDieuy/zTyYNzOkauFa+yftEXgBc+SKcgWfx3sAcVVgFOg8bPltW8Gg7vy0EzKl3N
	LFfbonJG2KtpxnwoJpfLdgdi/IGnKM5LtqPo6F2/wf7VW/FOwWxayDe3BAbpD205rraSZnbbdTl
	0O65D/m8Ca8u0cRaOmhWtCqQTY+noy0aOBjb77j9lrdJMZzlV691GXianhtRZ80pn0cSTmmMW61
	IQi1Ul4OcQlIV4LnkE3F/0pzrCkQfvxhQgZ0ruDhSDjCGgcghz6p4AI3BjbqGZ+ISAHVLeG8OpU
	/JsKevRmbPdP887Azuz+V/GzV/BQz64cYCJwqO6kNc6nz7vgIN8OLmiOHXKEaOK7pbO5WiBsLhs
	1XvA9AIHd13W6dCKgU5ciBkQw+GOmHEVg7Pb2mGvXTdoM8CBZxgeeoNp3H0w7soTfb8FO12qw4T
	CPvhSPdQCpYhMdagyW6MDVXUEtCkchjWw=
X-Received: by 2002:a05:6820:150b:b0:67e:160c:36c3 with SMTP id 006d021491bc7-69462ef3455mr23999976eaf.48.1777309902045;
        Mon, 27 Apr 2026 10:11:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6955036558esm10261236eaf.14.2026.04.27.10.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:11:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/6] Add Anbernic RG Vita-Pro
Date: Mon, 27 Apr 2026 12:09:08 -0500
Message-ID: <20260427170914.5062-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_101144_061506_4DF643C8 
X-CRM114-Status: UNSURE (   8.85  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: document Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   63 +
 .../supply/sgmicro,sgm41542-charger.yaml      |   99 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    3 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1317 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  291 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1045 +++++++++++++
 11 files changed, 2844 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

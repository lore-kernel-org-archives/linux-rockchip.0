Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA65C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 01:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tjoaLyyhw/NRm5sYUiBEww+RbvrHsIJAv3xIz6cCIUw=; b=D8rMJUbcWiwPC4
	zuur134PO4+C5wz++AtOcm7ISh4p1pvVV1wA8ZPNiV/GYQIwVnZGUSHYHDuMLv40I4JOnm1+H9RUh
	AeriDRxV3w+287dLDrClefMnyN8CU4CZM+MMVp5LpSo8uEMbSyRNCbcPv+PCWa/vf6fkFn58w5tl2
	XoDZlsbWegPldShWxz6rpt6dniV66QD1DKdF4i2TJ7tWPG7q/Z8qGLrN2xOxI6gmfp2MAu5N7VXTg
	7S0Pw/3aJ9Ju3cgvcrIVO1gjMbE0apSTqZYulmJV/SfIkgPyoIiLJf0ioxepNNRZDUG8qXgdSJDuT
	Bh6AZe32kK22DR4T0z1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbunf-003GqE-FE; Wed, 06 Apr 2022 01:49:35 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbunT-003GjA-JA
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 01:49:24 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 g15-20020a17090adb0f00b001caa9a230c7so4377433pjv.5
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 18:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/YAk+fWUU+ETvZMAahO94+Nmhx8ga8SOKFjIYbyRo2A=;
 b=TdiuHKaZORaWPGQTvEUC06LmhEQ2Hv4BGNuu+2WWjop40q0AwxKFUcVd+SuxV1iC2f
 fqTGkOvq2So+26pvLbXOPbG++jhun+FsmlEBb7ZVx0joMcOhwx6tONZKnOGOSWcLcAfc
 /hqRG+wM3LeeAcZ6vYUV1vNuR2rb/C7Aet6wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/YAk+fWUU+ETvZMAahO94+Nmhx8ga8SOKFjIYbyRo2A=;
 b=GsFkVGaIG+qrZRmOjAU8cVKMRkzw7inMnFz9PYs3LtJmAg6rTLobIvblZv+GPQ0MLz
 3DIdppeAID678jcTvDfUoOxKXyqFJvmheF8QHlLpDBlL9RHZaXhpUIyiqipO+UwlfG8T
 b31vwEF4tznW3X2fMoBegFF/G9MVm0+Av/yHwxDwOohjimRd09PK80gM27mJpsmkOkZy
 qaUo8hfNYH9dUZd0P29ztgnhQKecORNhovLUpU4E8uGl8HtqktEeWE56WB8WwcVLFB2z
 QDtDIdmYlTIZIe/iwR63btFMcrgBSFoUFA7hDFEI8IOqLvIsgzEiyqAzAX9zVenw8Zzs
 b5CA==
X-Gm-Message-State: AOAM532h2QE73R+bR4QRy8AydPyAFWOkZmlcAziv83rJnMtzlcarQN/6
 M0GsM5n4Jsx4mEDF/eU8MNOg8Q==
X-Google-Smtp-Source: ABdhPJxRiO+aF5ru+VVliawznjkQgTfqyIcNS4jn2oAT5iUCxwlpZhGj0CMVfVLc/UCVkgor6cxH+g==
X-Received: by 2002:a17:90a:c253:b0:1c9:ada2:f28d with SMTP id
 d19-20020a17090ac25300b001c9ada2f28dmr7240326pjx.17.1649209761200; 
 Tue, 05 Apr 2022 18:49:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6903:769c:e1f5:9c25])
 by smtp.gmail.com with UTF8SMTPSA id
 t69-20020a638148000000b0039822f39a40sm13620410pgd.25.2022.04.05.18.49.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 18:49:20 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [RFC PATCH 0/2] rockchip / devfreq: Coordinate DRAM controller
 resources between ATF and kernel
Date: Tue,  5 Apr 2022 18:48:40 -0700
Message-Id: <20220406014842.2771799-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.35.1.1094.g7c7d902a7c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_184923_703588_B21F6F06 
X-CRM114-Status: GOOD (  10.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Rockchip RK3399, there are a few hardware resources that are shared
between firmware (ARM Trusted Firmware) and kernel (power domain
driver) that need to be coordinated properly for DRAM DVFS to work
reliably. See patch 1 for plenty more description.

These fixes are based in part on the specification in the RK3399, and in
part based on extrapolation and observation. Any confirmation about the
behavior of PMU_CRU_GATEDIS_CON0, etc., is welcome.

Otherwise, see the patches.

Regards,
Brian


Brian Norris (2):
  soc: rockchip: power-domain: Manage resource conflicts with firmware
  PM / devfreq: rk3399_dmc: Block PMU during transitions

 drivers/devfreq/rk3399_dmc.c      |  13 ++++
 drivers/soc/rockchip/pm_domains.c | 118 ++++++++++++++++++++++++++++++
 include/soc/rockchip/pm_domains.h |  25 +++++++
 3 files changed, 156 insertions(+)
 create mode 100644 include/soc/rockchip/pm_domains.h

-- 
2.35.1.1094.g7c7d902a7c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

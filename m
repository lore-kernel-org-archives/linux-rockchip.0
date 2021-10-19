Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 21:59:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 349B161260
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 21:59:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 349B161260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6oywOoivMZJn8fnoJRKzc5F2LZWTCjJyHUBEm9ZgiQg=; b=kmAp4wy7sz+Loi
	VQteWsac68fUaLG8qDLJMpDkLnQJEdKkspSDR5pGuqv5e6PJf4qHaBkqqF98YcUOdYRrxcFdZ6HJn
	lXolTgJMPVE/MG75EuHIBdTKaCNHMjft0YTHc62t420rMV9bRXwOkHtKbPc+6rbKMVJ9R0eB+dQ2N
	CsD/iFbErs5Asfscu3kgi9zN1biXmafWQNK+mT38+uz16uYEPUVIFXtZ5vKG6MyEhGPYYAkkxoqzq
	vekrkzkRJxiFmQbz4bF3OWjoAr9Bw2/gNk8fAwBHbXVulbXtppyh2FLmAtUqvzRpUdDFbwkD4GGE1
	mKpkB3Ug1LFrfYRCfDHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcx8L-002ijE-Gk; Tue, 19 Oct 2021 21:58:57 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcx8I-002ih9-1N; Tue, 19 Oct 2021 21:58:56 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 b189-20020a1c1bc6000000b0030da052dd4fso5812741wmb.3; 
 Tue, 19 Oct 2021 14:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UTdIsdP9DoyG3Sn5cCb/sgu7yaV7F/mWMfz6X41RVl8=;
 b=ci4doC7W+ulH1LId8uCX/KLVftrH6c1lQ2Uhb+Q1IXZt2lJriH8SULXr+9gSN8hmdk
 MRf3y21oreaoiAj2YIeKCJ7EONutAYlb20VX5Yas+C5oHXr5jDSX9snKyxvJoWv/6Bkn
 snQgFNdbpaNRMdU2rGqDAicm/IShCiitHFIIMfGp8x0BQwE3/Q6UmzcDOzNXEyI1dTIL
 /EgyLVXrXsN1SfbDKqDhGJz4+7vVcuIJfisMPpu697lqM14YHV5NTdxOhPYQgJTTG51u
 GFdLBSYKWo2R/OUmmZR2RjWWHJbaZjl+OXGsvRzRX43etdKTYjH76CQlb+0+QhIkY3l9
 2XjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UTdIsdP9DoyG3Sn5cCb/sgu7yaV7F/mWMfz6X41RVl8=;
 b=wFfkgCLntxlQDtSpMRrSchyYQ+STtBxovpY/Xd8LgYai1Efs8AJcmiO7UQHwQZRKKc
 v7J8Zzr5FyaFy+s2pam7nU4QMNcsdYYghaU1Q+XBSx8D2hnrisbKv3BLsV25TuNLExxv
 XpwvIZeyzgBVh2aebw2hCQWvD3todCG1MnNoJ/jDBSxu0xHZ3a/lJuptembcrODEulH+
 Rwy/4STzwM+8YmLhqnpPWIBzfn9SwdPoMymLDq6kak2dh9C9WzzM8TV3o4glGvaK52M0
 nQk0w3OTku+IqG3AEoc2yOQZ4CILkjh+pwb+cr9Q/RlthapYESWr4PF5n4hLNr5iTwsO
 HktA==
X-Gm-Message-State: AOAM5302og/ScNf/sAiLm5Pk+ui2RCCF1fOi7ip0A9h0tzsVJffIyHpP
 ppuPSp17Kcpwq9ZEXZNaF635PXu8sEYsFPAu
X-Google-Smtp-Source: ABdhPJzbYFOuHPDh0OCrLYmRLSUPFkOFXTgrQJckuKVyqgF4rnehpCz35C3R1facpylD00JH0DzSOw==
X-Received: by 2002:a1c:4d15:: with SMTP id o21mr9187365wmh.167.1634680731408; 
 Tue, 19 Oct 2021 14:58:51 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id s3sm178540wrm.40.2021.10.19.14.58.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Oct 2021 14:58:50 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com,
 Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 0/3] drm/rockchip: support gamma control on RK3399
Date: Tue, 19 Oct 2021 22:58:40 +0100
Message-Id: <20211019215843.42718-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_145854_099888_035A6DB4 
X-CRM114-Status: GOOD (  15.85  )
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

This extends the Rockchip VOP driver to support setting the gamma LUT on the
RK3399 SoC. Previously, the driver supported gamma control for the RK3288
only. On the RK3399 the method for updating the LUT is slightly different.
This implementation was based on the code and description from the vendor
kernel [1].

The RK3399 also has the address resources for the VOP general registers and
the gamma LUT located adjacent to each other, not on either side of the IOMMU
address as on the RK3288, but for simplicity this series follows the existing
DT binding which requires the gamma LUT as a second address resource.

This should enable gamma control and "night mode" on all RK3399-based devices
such as the Pinebook Pro, it has been tested using the "redshift" app and
GNOME's "Night Light" feature on a RockPro64 SBC. The changes should not
affect RK3288 gamma support using the existing code path, testing on RK3288
would be welcome.

Changes from v1: Moved the vop_crtc_gamma_set call to the end of
vop_crtc_atomic_enable after the clocks and CRTC are enabled; otherwise VOP
regs are written to before the VOP's clocks are enabled which is a no-no and
can cause a hang if re-enabling the CRTC after gamma has been set.

Hugh Cole-Baker (3):
  drm/rockchip: define gamma registers for RK3399
  drm/rockchip: support gamma control on RK3399
  arm64: dts: rockchip: enable gamma control on RK3399

 arch/arm64/boot/dts/rockchip/rk3399.dtsi    |   4 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 105 +++++++++++++-------
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   2 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  24 ++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |   1 +
 5 files changed, 98 insertions(+), 38 deletions(-)

-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

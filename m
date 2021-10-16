Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B149C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5798060F9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5798060F9D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AnLh9LjAMx54W03sFRQZOUi9qWB3Ps9cRsa1t5Pv7a4=; b=d85PtKSSNVrW/M
	kvxjq4UNOgSPo38Mpajr1/h410b/Xa+iW4GIg1qE+3hgXAufWrab7Amp/G0K4S3nkTLFFZMSQeNZr
	EManpSTGCaalU12h7nRdyxXwHx0bpf9avuNQVrrQ6/g2XzAZfLSBoIzSVLEmQzgwGeqkGEH5EW/du
	n+2NNAqmXG6gT+fXnUyn9V5VsGfw/9xr77QdNGgse65dRdvIv5rbe6AWJpEZlHzuOh1Lr6D4dQS8E
	8pw/fBys3xSTq+u8Ml60S5X/ZUC248G7TVE4NZLwn9g+m7WZag6YT5rurBsuYDKi35pVTk6DpyIkS
	mwtn2tVfgcmlhnHBrb/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgma-00AILA-2a; Sat, 16 Oct 2021 10:19:16 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgmX-00AIJf-OJ; Sat, 16 Oct 2021 10:19:15 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 a140-20020a1c7f92000000b0030d8315b593so5003583wmd.5; 
 Sat, 16 Oct 2021 03:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uFHq5pMrJLlqHIoifd8IzUgmATqJ0HiByPSLSQnC1pY=;
 b=mUi7nbno2+KOl/X+jthof1bE34sfYVb7uCDDj5/WgpSL8yV2DadYaLOHjlTzKm9i6g
 q9s7tZlxZ+rrs7aJnuzaCAEJfjySkp0lwmkpyns0JeBS2r15+DW/XpiuPDZ0DdVcAld2
 0IjibwlX0gg/OHQMIJ8kXEAfWMblhiOGURAGsTvVcy5q5Ttcj1JUkb7Kfy3xCGCDUQf1
 zF0uIvAzC2cE9FkwflqVHxqjt7q32LW7NKW0yWMvX83nqBvAD3qWZWEedsE2AqSKLx2Y
 fUsmuRPng7IhAUwCiOwOA4e1Sf8fzXWoaU2hHq7FDDyWrwySXZvFDR0jm6BOPDMoDIfY
 By1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uFHq5pMrJLlqHIoifd8IzUgmATqJ0HiByPSLSQnC1pY=;
 b=hIrKyWWA5TH9/KK9fFti/5W3Jpf5TqrfWRvCuDrJShZdo3VDfYBdXXfMwP9W6ubufJ
 8hD9QaAiZcBm8YA18hKHnML7Teb61rH4tcjr1YbV+R2e7OPVVfxcSP5K6+O/HrrSNdlE
 PE8FDDT1RDQz7p93UwARpBIV708+1spD+O3rgE3fFLiskRTCjwE7KNZPaA8++xzkS9wn
 QJQFYY49Ub8c6MOxE4f9moZo+lrQNV4yen9XGg3eiMvk3X/Bni7FZbC5aNdRNpXq9+BY
 7Q9Y/YN7GOtVnMQ3RfmAT1zusRzetTsfuhVhHzjULfzw/4KYgmp8Tzl7lkWrQwAFjOve
 7QTQ==
X-Gm-Message-State: AOAM53391clzu71WwpXRKBcu7AQ/cC83gkRZH+foFsbvT4qk8xJvPnL2
 uYbiXmLujWNI7WiTATjI4f4=
X-Google-Smtp-Source: ABdhPJzgT7XXN9D8uSHf18Ft8oKY1Q7cFjkU3MF9MbinYRG/nfCkVnSA8B2cf+vaCwH/hduer+eeow==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr18355372wmk.51.1634379548494; 
 Sat, 16 Oct 2021 03:19:08 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id k13sm2920926wrp.86.2021.10.16.03.19.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 03:19:08 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH 0/3] drm/rockchip: support gamma control on RK3399
Date: Sat, 16 Oct 2021 11:18:49 +0100
Message-Id: <cover.1634378097.git.sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_031913_837733_C739B04D 
X-CRM114-Status: GOOD (  12.89  )
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

[1]: https://github.com/rockchip-linux/kernel/commit/4a361fa5d433dabe64b0fae49b49c0fcd16982fa

Hugh Cole-Baker (3):
  drm/rockchip: define gamma registers for RK3399
  drm/rockchip: support gamma control on RK3399
  arm64: dts: rockchip: enable gamma control on RK3399

 arch/arm64/boot/dts/rockchip/rk3399.dtsi    |  4 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 89 +++++++++++++++------
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  2 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 24 +++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 5 files changed, 90 insertions(+), 30 deletions(-)

-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

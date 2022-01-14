Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85BC4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 23:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z7DoUDlf43yMDGB6c/Y2p0ax/NpCoxgp7U+s/UfcA9M=; b=mSFJI+YtgQSPJ5
	DcLmbhM9F4+5/YLH/BnDniGSJcDWUt92aEKtvDWxDKDhpefR3F7lgYmaYbcdimc31MzKbdFupPQDp
	lTLumQ9dVqxF1oLGi56qzptiiRWYgkzgwIgwE5WAbgKLguToG+r/IxJrAVLmvHaRHmT7+j6UfLLl7
	s+BnVu4LyGzdgQRQo3AI88fWEdl1Kwr5xLB0HkTbM4R/UAX4Qge5ROn4QnckKKaOyfmro0HVwA1W9
	BqtQ44QFPKBaujt8501x9XTuOhRdYnv6PPjO+mKOBYqGyiP2XH08QmbjuLuw96VsFxLpZ9+oekXeq
	2CSjQcLCi4JfWcXjKWNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Vaq-00ANPE-Om; Fri, 14 Jan 2022 23:02:48 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8VaX-00ANDf-J3
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 23:02:31 +0000
Received: by mail-pf1-x42f.google.com with SMTP id w204so4059646pfc.7
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 15:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BVKiFbTgrN+4dfFsvMUyjh+c0889xN5w0pTkQdz39q4=;
 b=RlhP0wuSMGhXyZ0phG35Nuw+vFNDE+c2d0FJlvmi0+5DgQ5O5JmdPQeR7DqGCdMJCC
 /VlrAAmzilfFOfy2kC38ITfTjtJpZv4kTsfB7s/L1ganW6OWvpHUVXoHEafET0oHBu4M
 Ppj9Vq7LGVUguy0vkS7dCTqHlj8W7ppW3F7jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BVKiFbTgrN+4dfFsvMUyjh+c0889xN5w0pTkQdz39q4=;
 b=An3km0AhWIXuqN3QMRNK9WszRnAA/ze3Pf19LtUEqEt4RTVRHEzJ9YhvwWvA7hWgQj
 MC0zyVuoOu3MkCOMqLRbQRnw/ICj+T45Zpty66tdhneiFUD9Ln1n2CsoKTXhbyB16+tc
 BM2MrJo+qpi1W5iHTtaS2Puy4vHMYnF+fchmvPMpZaG6kaK8eA7XSC7elX4nC25W5L8b
 iwjka3UvE5RYxu92HJBAx+dxpYx73kmDhfDSxdGrpEqZpShN0/GhtMVviYe1egMsqoO4
 TaM3QS/kJ44f/fMqFNi+VWcCvmwGlmmKlBH9VYBMn2AqfCOF4VtsaKh1WnBFySoeqOnX
 PxCw==
X-Gm-Message-State: AOAM532tMFDqQUYkKTHhN9u/0RM6D7bcnq58L6yMFbo0xJhJFL4xZCGu
 r04aRJSXxiqO+wttlxUGLWiqTw==
X-Google-Smtp-Source: ABdhPJygQAhOjz++7gMBKAe+FDohBuatX363kR5ClyepF85gLiZS7G/unLnFqdy+/LSmnjDXX93GWQ==
X-Received: by 2002:a05:6a00:890:b0:4bd:347d:8aaf with SMTP id
 q16-20020a056a00089000b004bd347d8aafmr11000008pfj.61.1642201345551; 
 Fri, 14 Jan 2022 15:02:25 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id c10sm6750264pfl.200.2022.01.14.15.02.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 15:02:24 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Date: Fri, 14 Jan 2022 15:02:06 -0800
Message-Id: <20220114230209.4091727-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_150229_635077_B2ABAF9C 
X-CRM114-Status: GOOD (  11.16  )
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

This series fixes DP/HDMI audio for RK3399 Gru systems.

First, there was a regression with the switch to SPDIF. Patch 1 can be
taken separately as a regression fix if desired. But it's not quite so
useful (at least on Chrome OS systems) without the second part.

Second, jack detection was never upstreamed, because the hdmi-codec
dependencies were still being worked out when this platform was first
supported.

Patches cover a few subsystems. Perhaps this is something for arm-soc?

Changes in v2:
 - (Un)set pinctrl, because the default assumes we're routing out to
   external pins

Brian Norris (3):
  arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
  drm/rockchip: cdn-dp: Support HDMI codec plug-change callback
  ASoC: rk3399_gru_sound: Wire up DP jack detection

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 17 ++++++++----
 drivers/gpu/drm/rockchip/cdn-dp-core.c       | 28 ++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-core.h       |  4 +++
 sound/soc/rockchip/rk3399_gru_sound.c        | 20 ++++++++++++++
 4 files changed, 64 insertions(+), 5 deletions(-)

-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

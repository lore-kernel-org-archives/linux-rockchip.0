Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 109C3CD6E55
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 03:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mdOggJIVXoKCiFKWwNtX/wt1STv+xoJ3cbsO9fL4zo8=; b=Ty1tvNcMFP+qwi
	wuUKBlv/1EI9INeQENSDSwr7MZvQrSr12Ng+SRnYrESSoSWW0hdsq8TLzaeQZoocfAAc2nv9W8w43
	VWscnJrxelKthRE37keltOpuTexmu/ay6vguCi9yrRc1fyWayjdL1++AmNrTlTdIgNEWAodPomBjW
	+CidoP1AHe8NM4eE5o6vwQqdFbMOVI8bkcyrawmDkoymsCz9kqHkyZGnivrAx90dB8sQhtf+4g+DH
	NnC6a0i21pIsyrPlbZyo+IKbfs92YKpkTX+CAJKS2MiJ7OKmH+F1FlnDY1mJNiBOg2Q7n65vkgc1t
	zjo7V7e8dy5frtNXzEUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysP-0000000G6xo-2dKi;
	Thu, 04 Jun 2026 03:36:13 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysL-0000000G6w2-0GpQ
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 03:36:11 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-c85a297d2d2so165551a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 20:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780544168; x=1781148968; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4sGy0akI76XbwNYB58aYQ6sLn7Il/NliKwIUEuxnuMI=;
        b=gq1mV6vXY+xUm2/eiZZKZQ8b6TNDImmXtpKilCfktgPecURC1JDW+Za8zGjQENiux9
         R6RBWGHedHf77FoLyFMRqQ9H/5CKDiI+dqZYzbeOwSpfyQNKh0Ri5TFMq49dQkZ4vFnq
         i6hVByd/UY4W1Nqq+fzy3uFhPHp1lTnCBq3bm7WDUCrSLyvUYCYXKFIn1N6wsSZDgkc6
         4twuqipeHnfubxbYkB42JMXYSEkOr138uEviXi2xDv0s4YI0pY5eUdqgJgCdiKGjqhLw
         kod269gu6zs+rgIaNR9PxIaHvKLNLQxiazMvrJugfJKxSLD+Le4i8d3igODxRiKzoCOE
         P8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780544168; x=1781148968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sGy0akI76XbwNYB58aYQ6sLn7Il/NliKwIUEuxnuMI=;
        b=SMJPO8SIQnayt7Mc9A6iCCQ/dck7IkfF9mNZN+QMqthlb6Cq8zDphtgK+hg1Mru37H
         O+WaF43vQC3h27ZiHmAuf9hJpl04KhczaTpoUB7qQG4Mi4hBQIVZ+h4sc5xcYOn95Lzj
         5JMszoijvS98/g8YPI2k7y1mTwqHPa7JtQSvu11Z4kLhx/TDAzbTuypUMtf1NVTb1bPr
         n36EQjheD5JrZpidqIkZ/g9Zj8YDUTR9CrdL+bKNrLMTB63O1ZG6fBTtjjMgmEfmuO1N
         Bf5lr4FzbcnKtkE0LgZk28tevZp5INkcOvZFdhni+l23+QoJqtLnNY+8OuodnRLjKmjA
         wYjQ==
X-Forwarded-Encrypted: i=1; AFNElJ/ivYx9XK1iCKUEt2EdhRdJyo3m5iIjotPIdejs6OfItT760cjoG6t808wKNjDFRP6B4UG1E05SfZq42AKS7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlgYCJs48GNaH2rquGGs1daJrrjkOaehvbx/sISSBemIn1h7/0
	wxttEQzaJgId9mbvAo3vHN5jQvJJiLObxm2tpYVUPn1/IQIHDZao69XSfEIGXQ==
X-Gm-Gg: Acq92OEiGDgMCaWs8dFyeHAX+egjpUxqMZfjq88JupnnPpJLh2wNJZffTqB6sx7vtjH
	fxh6p+agHMpBurqUia94opOg3odj+Kl7zC/hvB5n9D3ovfJnjsTYf5SKH8454+5DaLRcNJEcnyr
	qDCt+/rwzjqdP171vVP+NAhbcjUaHVw/rsksbQw/14hHYENB5gk8L4yKINkRoEWM7tPWXl/KePW
	7+7r6EF/BG+bib1n7LlVl1Rwob/X39+CqQiEzk94+0o62hbKAlulijKSgI3tecW1WRS3xkrzJqF
	QXdrhzCX+0pt5gFvMnR1hcjWy3jjr5C3WIbxI4vXm3IF4eSrXlLIgGuJ6jaIrSDrdYK0hN+p/hS
	miqDY547zyU02OBJts58+M/7Oh+FV34sYd250iOBxfE1k3iqwl85cTQpg23IzJ2wUStIRTtb8bc
	MCukMcl8cEGzeJttq4XG1SdUVuJ/TdYyPx3ia25QYVVh4qiXo4CNpRSp6Jj4p0yquOe8Tb
X-Received: by 2002:a05:6a00:b603:b0:842:6419:3ed2 with SMTP id d2e1a72fcca58-84284f2c206mr6902399b3a.33.1780544167919;
        Wed, 03 Jun 2026 20:36:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8428221a7e9sm5539745b3a.11.2026.06.03.20.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 20:36:07 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 0/3] ASoC: rockchip: Use guard() for spin locks
Date: Thu,  4 Jun 2026 10:35:50 +0700
Message-ID: <20260604033554.96996-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_203609_096125_FF79C9D8 
X-CRM114-Status: UNSURE (   7.75  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

This series converts spinlock handling in the Rockchip sound drivers
to use guard() helpers.
The changes are code cleanup only and should have no functional impact.

Changes in v2:
 - Remove the unnecessary err_pm_put label in rockchip_sai_hw_params().

Compile tested only.

Best regards,
Phuc

bui duc phuc (3):
  ASoC: rockchip: rockchip_i2s: Use guard() for spin locks
  ASoC: rockchip: i2s-tdm: Use guard() for spin locks
  ASoC: rockchip: rockchip_sai: Use guard() for spin locks

 sound/soc/rockchip/rockchip_i2s.c     | 160 ++++++++--------
 sound/soc/rockchip/rockchip_i2s_tdm.c |   8 +-
 sound/soc/rockchip/rockchip_sai.c     | 262 +++++++++++++-------------
 3 files changed, 211 insertions(+), 219 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

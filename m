Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAB8E743CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 22:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=87wRlalZyF/npKzFCDFnQOrWRyK2XsPzrecHZjo9+Ik=; b=K7YirfNG+vj4nI
	kzbQXxlrjs8WkN0n/ymqmvisdzbRfJiY6ZSJu20OKjYm3kcuSSydb5PK+XeBB2RJQb83Es96O80tO
	iV4X3B7b/gDJmhUjRsXuzXTlBAZCP9Joqhgx369+qpFQF4flReTv207HAWZ0FODImy+pIEQcmELu0
	MEgOdb51IDS3xpRGBbIY6uLpsEpjyv4E1mW7XG8jjFhE2QEdBsGplEz/C5/CzluyVCKzorViJ5hFU
	vwtN4Id3B2W746yelk8Gjiakyl5dRmX5rSHCNLDcZ02VtBbS3XACgg36LOK2hwe2Fzk6WWnyMq9Og
	ebbLlNFap2HoNQ301ZRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFn-006l5E-30;
	Thu, 28 Sep 2023 22:13:03 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFj-006l3m-26
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 22:13:02 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50307acd445so21170063e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 15:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695939176; x=1696543976; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O6rklr6oFZBRP3XLshOSG7uTOA1JIwCF+2vk+UW3dq0=;
        b=RBIM1qQP7vXxsVBVYLVWtlaFrOoo/nsrTq4wUjZh/WGgSiFozjDJUx+eL4IrXx58tJ
         xVvQoG68bP8AZSlFRAR6UvuD0OAtdENfbJ9oKJssdoLPwYXyaw36QDQ0mDF/1lhd9yCL
         bzX3lYIzYc+KQ9DHsMbHjqfaQ2/K8uJDn99W7IxxdCVgbenJRRbCz+pSwAopD5fSFhzA
         m8pqeafts2minSfymv3XWXEba2zgKd14mZdEsXrX68O65eLOcKpzoouoiyoJT0N7aC3R
         jbtFI2N6ZLHszq1911gWua4DG/0oJct5zMGLzpH6lgdKmshRw4iAKOqZesGM83qI3fug
         yphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695939176; x=1696543976;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6rklr6oFZBRP3XLshOSG7uTOA1JIwCF+2vk+UW3dq0=;
        b=DaehERJtV5KvAyMu0AlLH08uJYJyBXH7ywtZ6mTNbYtZNBXWJDY1IQ5mNNMUI9aDDA
         FZvfHjw5ZR35R+WRDyk5oxkK/cmXLBNNkjmvPWxIAMurqiovZRECZ/E4IvJn/spJsyPu
         0cVavFM9KOSPZjFVQm7mZa76FYtmaBdJGOCX9B6f3wW1JBYsd4aoDr81QVUCSOA/GvI/
         Ya+2PQKIVgWMOhtsFNtarybf+4ltuJ7JEbesSquteyisZsKFYCPJ02b1LN+yEjG8eoD0
         7VmzDYSI5TEDm6ubCt3h3MZrS73nh9dX4cuMxPcjbBwRJuuormeHQ8mb9IzcpoM9r78t
         WzmQ==
X-Gm-Message-State: AOJu0Yx9R6VV7PQRAdXEREXDdGY4zkzzCS1Od78do4dn8GgvTvSHJ4f0
	Uviraewq9es2FXCJPws10fEJag==
X-Google-Smtp-Source: AGHT+IGS4laI4UHVLnIkjLSrMRmia+rD8yaRDC1PhmkavvJYotFSmpNaF2s2LDwJ/U3xrGw2O5pC9A==
X-Received: by 2002:a05:6512:3095:b0:500:94c5:6e06 with SMTP id z21-20020a056512309500b0050094c56e06mr2394386lfd.56.1695939176271;
        Thu, 28 Sep 2023 15:12:56 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id r27-20020ac25a5b000000b005030cef433esm3271964lfn.94.2023.09.28.15.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 15:12:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/4] Convert Rockchip ASoC drivers to GPIO descriptors
Date: Fri, 29 Sep 2023 00:12:53 +0200
Message-Id: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGX6FWUC/32NQQ6CMBBFr0Jm7RhaGkFX3MOwqEOBiYY2M4ZoC
 He3krh1+X7y3l9Bg3BQuBQrSFhYOc4Z7KEAmvw8BuQ+M9jSVuXZnrAPSsLpGUXRaySUSHeaOGF
 TVd4NN6rJDJD9JGHg196+dpkn1my996vFfNdftflTXQyW6I2z3tne1U3dPnj2Eo9RRui2bfsAI
 fpisMMAAAA=
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_151259_724112_9029DB5D 
X-CRM114-Status: UNSURE (   9.35  )
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

The Rockchip drivers are pretty straight-forward to convert
over to using GPIO descriptors.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Make the GPIOs properly optional in the first patch, preserving the
  old semantics of the driver.
- Link to v1: https://lore.kernel.org/r/20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org

---
Linus Walleij (4):
      ASoC: rockchip: Convert RK3288 HDMI to GPIO descriptors
      ASoC: rockchip: Drop includes from RK3399
      ASoC: rockchip: Drop includes from Rockchip MAX98090
      ASoC: rockchip: Drop includes from Rockchip RT5645

 sound/soc/rockchip/rk3288_hdmi_analog.c | 46 ++++++++++-----------------------
 sound/soc/rockchip/rk3399_gru_sound.c   |  2 --
 sound/soc/rockchip/rockchip_max98090.c  |  2 --
 sound/soc/rockchip/rockchip_rt5645.c    |  2 --
 4 files changed, 14 insertions(+), 38 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230926-descriptors-asoc-rockchip-833a4fbc7c1f

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

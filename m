Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF0BDC38A2D
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJu54+5esYnM+4bXWW4JmrAkyD3grEs6kqCt2rHRLYA=; b=d/z7ZSKmOuFILV
	5ji7vXLDJEx7lAVQHqocmmtUYKto/ukf+Et+6h+dFIJcJRclbVkkpSeXjJEKNstxHoLx1/QiorkTM
	N5TIhbZAC8jIzFaTWAJYm2F5UQdsNVFtIwelP41CkMjjWNzrdAw5Zj8j+5i5w4Ai+lsqw9IOUerNi
	yzYVePJ0wAveypyXQBL9qq8mnx/G330fG726C+9Ppjek0tM1Peqqvg/lokmesub9zye0Kt5i0OkxN
	1VmfT75BuTMYSMuv6Jxo2sFMbL6iVYo5GDV0epQWAv092AxLMZYALNgftabSsSi4pErFTVSavwgDJ
	E5EQ+ymtdyKVlDMXlWAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFl-005E1l-KG; Tue, 25 Oct 2022 12:41:57 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFh-005DzV-V5; Tue, 25 Oct 2022 12:41:57 +0000
Received: by mail-wr1-x429.google.com with SMTP id bp11so20073451wrb.9;
        Tue, 25 Oct 2022 05:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yH8jcG0t2JnpHFP328ErEiy3xOc8p7F+XJJ12TGrYJ4=;
        b=ADcgveVq42dClUSYh1OdhJor5VPmcRA6oevJkoIoUn3cs3uhGEVs3eTiNOnAQDUoJ3
         jqZ/Cza0BIP9QGy8ZetmZ8xAoA7TYpkv0rRaIJ4iysx4ine4E4lEjxcHjGGMNC4p77Bs
         gVHSlRuSEYGign0vPFAYRcC/AVLOPVWpMUF8xX7GO4RkO1Af9UuWuD4yhAOTmBV3v1ml
         etxwfTQTQXCVmxYSy4oMnLxyZS/v40OOCw0y+anTWWnZ9czbBgVVn3RxflHj91yVsNYu
         JXRLAlTRPXOMxGb0Q8lAXZBI+SKVQ4xjDFNYj36MnwsrfDzCTVN5rEzyN1uoUxj/6PKv
         UREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yH8jcG0t2JnpHFP328ErEiy3xOc8p7F+XJJ12TGrYJ4=;
        b=QbcQGZwKW3HtUk8NOU9O3CMMGW7Tk+eVQHeZTu2o4XHXBnJ0QFBVdo6lx8yvHUt4bH
         5cjJXv4MP0sn7wGzduxCUxt3joOmVZfASH9/FHDAfbdZlacKSprS0uzX5Dz7W/6gUyg0
         esqkgumAGJWD3A89Tm4/jh0Ts7QKFEb2KMjYndeOyFouq1bchRgGeSHbYskIfpPf/9gV
         RWQWrFFshDO6C96FiSbVMrMiCjTB3cwXKISUGrroDU32LPSYonO6xyC5wboihud81QoQ
         2B9Blgfza/ArQdNT91h+CjrOC/ZznhKDZzTEz125Z6Zl7bRTzDOGWJ0v8Yr5nrmVhSK0
         VMcA==
X-Gm-Message-State: ACrzQf1jQ2O1k/6lkBJzreiTT6PeAilWHYPBtVev/c/RLmlPg2YybZdt
	fZ7zNAjdiXB4ESgpWFlrL3E=
X-Google-Smtp-Source: AMsMyM79M+Qo60SRQPkng0nGNuvvyofmUH45lXPvafVewbcusEHRtb9umhJDmerFTJrt94xMZHytvQ==
X-Received: by 2002:a5d:4ac8:0:b0:236:781a:8d2d with SMTP id y8-20020a5d4ac8000000b00236781a8d2dmr5463369wrs.715.1666701710247;
        Tue, 25 Oct 2022 05:41:50 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a1980d55c4sm11250664wmb.47.2022.10.25.05.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:41:49 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] RK3588 Audio Support
Date: Tue, 25 Oct 2022 14:41:28 +0200
Message-Id: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054154_033341_82719241 
X-CRM114-Status: GOOD (  12.67  )
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

This patchset refactors the Rockchip I2S/TDM driver in order to
support the RK3588 SoC, and then adds the necessary compatible
string to load the driver for it.

Patch 1 rectifies a problem with the bindings where we were too
strict about requiring the rockchip,grf property. Most features
of this audio device don't need access to the GRF to function.

Patch 2 modifies the driver to adjust its behaviour to what the
changed bindings now allow, namely using most things without the
GRF.

Patch 3 and 4 are boring compatible string stuff that enables
RK3588 support. No special data is needed to initialise the
driver for this instance of the I2S/TDM IP.

Nicolas Frattaroli (4):
  ASoC: dt-bindings: rockchip: i2s-tdm: Make grf property optional
  ASoC: rockchip: i2s_tdm: Make the grf property optional
  ASoC: dt-bindings: rockchip: i2s-tdm: Add RK3588 compatible
  ASoC: rockchip: i2s_tdm: Add support for RK3588

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  2 +-
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 19 ++++++++++++++-----
 2 files changed, 15 insertions(+), 6 deletions(-)

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

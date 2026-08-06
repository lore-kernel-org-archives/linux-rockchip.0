Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C25F9C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlcVqZmX+u+262/e3So8VGSeAO2D67wiCr4sy5gOV90=; b=0uTI7ohjE8cD10
	HFq0s1VMGHvf4nn4thhRDyYWDs6ahDmjbDCqN6wZxlgMQksVvU6Z8ucN4f87+wTUGoV1WIbKJcMiU
	nWswzmDxQoLSGj8LCD7rLfUFxd2FASm1CvcCmsC56cdy22cwm3KkILYD3qQCZUKqeUFN4kOZGROOT
	Z26DYDsaVK6U2im+Jf9CbXZo3B1vBASZDHBoD9a1lkUexEyb5hr4oUctSysPVrpOx0JRfR2yZjmR6
	RDo7iLjMMEQBkxd3EOPM+wLKPrmjmEZ0I97XlUnV9Zd8YI64k2cyhzdGyS6MXV5iT7/T5bGw4apxM
	BsJ6wjhREcngsYK2N3Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYK-00000004wrI-0zhD;
	Thu, 06 Aug 2026 05:22:00 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYH-00000004wqM-35z8
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:21:59 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-84e84a6c4bfso654406b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993717; x=1786598517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=PBJSVLcuS698iPvcGBsGEqqGtyBuKd0ri3MDZGD+Opc=;
        b=C8ZanS7hJygsw83hWkI76bwicL0LdFSp426GwxUPKPTenNpmiCDZFqp2NKle2nA38J
         zUdLIAyF8olMhSpwbv4CTG2cmbsh1syy0J1BjSRW0wl+55YZn0s3137He2QRJVA3mxDv
         RK8MoDn542oW2ytYYrIPfgr5qx11lXusyttAl+sdc/0eGDhUX9xP3AlMpbc0Wk/uieMW
         o8IVFYDsfYoj5MAtevVn0AMWJLj1AemlYD3sm+O+TcPpLktFGkx4FvkgriQjdudV/Kok
         hubayNZfk2Z7h4ZiKjxFA4ABbV+/7z/RUy0GUGPETfIMNnSSxYdm4i1e4qr5T/gpZxmj
         gcdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993717; x=1786598517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PBJSVLcuS698iPvcGBsGEqqGtyBuKd0ri3MDZGD+Opc=;
        b=aUDVf444/XZVTUX3lIABkFN24H1Yy8uxENcUHpG0cbevr9Wz7unI5yx3wtribBOmeY
         ToJf5ZSO0BaV5GyPw1HYmBFwC8R7G01tCVOH+ye7DUcrfQ6++vUFBpUIjk7xdXeeoDom
         e3Spa0t5gNs6x/+hWDVXir0PUvvLOe9TPy/xqxotNX9sKB6ftJ7XnbKgFYNCbXh7qHQd
         97aJhvp+JHFa+zEls/ScqMTJ5Dy+QZHYhTKpqaYrvQYi2BeeqkKs3vRsv0HZnuIwQsxY
         cVqzzwFK+LwC0uDxrE0+m+AVMROQV/iXPX79YikEJAikaRGUDoBAacuhPNoPnKxGndKA
         ZMYw==
X-Forwarded-Encrypted: i=1; AHgh+Rom8iD0QVWCgIrXfUUjXAScplHUqiFmQFU+clE2Xoj1A+mhSHC9xcdQNio9HyVlsYIaqRuaIkIFzvaW7u1LXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhmIAmqQ9oxTnipeDbEe2WPz01pY+qjDf78fhH2pCPLD6Ru89e
	0EUFkzcFRli+JNe9p4qfDkrxymDid+P/G51XiiDk4E6LowAeNPi+uKQP
X-Gm-Gg: AR+sD10WN0kc0xyslwlBr16NxuSD5Xq4NTzXp8fi5cxu337HXkvL961+nDoSfIpvhTX
	4RWoDJ4kg0+4hbVsRPSXKw9fCI+RQKQHwj9r/LaldCd4lkhDUjoF0kNsuGsD6GInFq7uaKNOvZT
	4fWEXOePb77PpcUn5agVYAXJQ+uOI8aQVBHv5O1crNGC6l6VvlhxcEb3fkaW8B0xUyv4NSUrLrO
	XFUrBz07/tIfX9B7ApfmCJIscY1WAz6MMBBgWvUEg+QF6WCT5aIRohtogkTmJTgxkYgBZmUz1aA
	Z+AIwubsEkHq2dwBmfFkIxoVs5rG5jnndfAkXm5PD5T3UyhCQEi30p7fEuVXfrFAYUlzKYJVLeT
	FNGNRqx3rZXlIyrHfE6xepVMwaWuEHo59U2G1fK3eismLmx1mkMXVsfsXEgEWwuUe0PyfqER35o
	NIFGpB88NfgHyqYS03+/H/oTaKKZAeezTPQDBB+8Qgd1T9CpOiXdt91xUjHHVU9cLlN1BKN0ByJ
	F5TJ6tbB5CjNkGuHbFybESGZUT+Q2ctzg0JrOobh6CvI2XYaqxuPrnxaiWckMei27EHJ3ZlS9JI
	7mFN
X-Received: by 2002:a05:6a00:1482:b0:84a:29af:a0eb with SMTP id d2e1a72fcca58-84f47d8c4f2mr1960005b3a.9.1785993716736;
        Wed, 05 Aug 2026 22:21:56 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:21:56 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 00/14] ASoC: rockchip: Simplify probe error handling
Date: Thu,  6 Aug 2026 12:21:22 +0700
Message-ID: <20260806052136.21034-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222157_780555_B54BD53E 
X-CRM114-Status: UNSURE (   8.19  )
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

This series simplifies probe error handling across Rockchip ASoC drivers.

It replaces open-coded error handling with dev_err_probe() where
appropriate, removes redundant probe error messages, returns the
original error code directly, and fixes handling of -EPROBE_DEFER 
returned by platform_get_irq_optional() in the Rockchip SAI driver 
and devm_pinctrl_get() in the Rockchip I2S driver.

Compile tested only.

Best regards,
Phuc

bui duc phuc (14):
  ASoC: rockchip: rk3288_hdmi_analog: Drop redundant probe error
    messages
  ASoC: rockchip: rk3288_hdmi_analog: Use dev_err_probe() for error
    handling
  ASoC: rockchip: rockchip_i2s: Use dev_err_probe() for error handling
  ASoC: rockchip: rockchip_i2s: Drop redundant probe error messages
  ASoC: rockchip: rockchip_i2s: Propagate -EPROBE_DEFER from
    devm_pinctrl_get()
  ASoC: rockchip: i2s-tdm: Inline PTR_ERR() in dev_err_probe()
  ASoC: rockchip: i2s-tdm: Drop redundant probe error messages
  ASoC: rockchip: rockchip_max98090: Drop redundant probe error messages
  ASoC: rockchip: rockchip_pdm: Drop redundant probe error messages
  ASoC: rockchip: rockchip_rt5645: Drop redundant probe error messages
  ASoC: rockchip: rockchip_sai: Propagate -EPROBE_DEFER from IRQ lookup
  ASoC: rockchip: rockchip_sai: Return the original error code
  ASoC: rockchip: rockchip_sai: Drop redundant probe error messages
  ASoC: rockchip: spdif: Return the original error code

 sound/soc/rockchip/rk3288_hdmi_analog.c | 16 +++++--------
 sound/soc/rockchip/rockchip_i2s.c       | 30 +++++++++++--------------
 sound/soc/rockchip/rockchip_i2s_tdm.c   | 15 ++++---------
 sound/soc/rockchip/rockchip_max98090.c  |  5 +----
 sound/soc/rockchip/rockchip_pdm.c       |  8 ++-----
 sound/soc/rockchip/rockchip_rt5645.c    |  5 +----
 sound/soc/rockchip/rockchip_sai.c       | 15 +++++--------
 sound/soc/rockchip/rockchip_spdif.c     |  4 ++--
 8 files changed, 34 insertions(+), 64 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

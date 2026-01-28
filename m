Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22220D46BEA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jan 2026 17:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fL8+cveDq7AFZ98RPZX9vJJG89uMaMudwCygRIUfkUw=; b=M5pb/TDKtv6uSd
	x/oO+bC6HdcEXcUdJlM/yRpM1OhoVAYfbWg7lhQ5A0/i7rqHAi/H0k4fXe503+R4kmI8+QPf41pjQ
	IF/2k+FWRTXNAQ6BRE8D3Q+jMLGBLHj3J7bQBgdkA8heAn6sq20C34Z7JFprx8RwBHzkIx3A7ohvs
	ZYkpSrD04jls8rY8izhS09OxCkAaetyNiIt9yZvlkXAWr2oPjodBNWFf1W9XcDiojCNTOWyDtcWDx
	Qla12zbsv0Cm3yQnmjM0lnrprybi96uSKTr62pB+EB0uIdkhjFhyKwmZZgqx6e8OQmFj9l5LLTTQJ
	4hK+ooC5pt018bsfCBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl9en-0000000GWQi-0Gqf;
	Wed, 28 Jan 2026 17:48:45 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl9ek-0000000GWQ4-1Wy4
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Jan 2026 17:48:43 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-409470ad5bbso43267fac.0
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Jan 2026 09:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769622520; x=1770227320; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k3xEzEkluUrjAOEaCr+kR2isbV4mKMndumYa1efkEFs=;
        b=l811STo6pVv9dwubqsRHLwyjER6nnTzPyVKPbInETIuY7bpaoWVH0U4eeXSIh6Lrw6
         2XqYy1dOIyIkvl0S0ZYm0lm1Wro97FRKqnAz60W/Jz+IdWx/k0riSgVftUo25l4JCJNg
         Eao9O07c4dYUtf0TmZpCo6jQ7ygDyeYkNxrjW9BxLKAXdnaBF3wVOi5UW4SyPC1hhtbJ
         gtVm5ZuXKsckA6lNt87yV+qYiFCoBTNIRPK5shtvLnTQu/DD7TtjLfpNjmQSwHt0fuu8
         8PqcqtE6louiSqBHenjAtuUR+6219IRQTQ4cyS1skcXROwhOUZ4ivRN59DOudAZ90Ttm
         8Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769622520; x=1770227320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3xEzEkluUrjAOEaCr+kR2isbV4mKMndumYa1efkEFs=;
        b=oNRujYWHXJVPhB2dsxfBzjwaFWunpCSbjB88S33NBku+SkiLdcBciBKK2s/oQ6TA95
         IIhMWKlYiCcljTlXL8uSfTuQhovDK92tNPHRemO3kFm4wlKSI+N8W8xrUMFT+WTHJUWo
         UEI5lAVjvdK+0EVBmFljxbloKJNeaXoWtQgmZcuofOhKS+cu2Eg84rcXPbDUklo61iio
         8tTgwBRGffOmQHsDs2T889dGlG+/lRbwAVVtP3m/oGcFrA6xuZBHFCNUE0UwB5cJ/lFm
         vr/gXe5q6JfyEdthy+dnZ7uDDmfbJVQFqHu5qGTAycSkBiBmgaA3bTJwVviP8C03bweE
         9Ypw==
X-Forwarded-Encrypted: i=1; AJvYcCUhYV2swHKJxMe8c1IaOpH0rfX8bfcIbZAHovCX5vFs0ITY/o9Jnt3AeJU93Cw6VC4nRkCHILmq1EdkMooqgg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdcXwFpuV/4F/3aYz4YpTUHVRIvkalpCkDaREuuqIjVa7DiVx9
	I12QQ3P0yDgwvl+XfURXld/IiyzSgUvmfNCWBLKafBNQmL/oEFzZk4jegpqBHw==
X-Gm-Gg: AZuq6aLqEl+kDu00rqKa19wDACPCKSOzRh6yj1mK4QzJt5QXoPO/lwc8DwJfa+BJzLz
	9Xsn+o6r7lPWPLeuqwH66S+OCC2iEMIu7EvYHNaY3beYyRL3Xg44mPAc+nq3hFjlc9xY2JMWghS
	/ivumcosc4FupblFEIS6cJo5+dn40RX4pSe4ngktOGhnt+2MTW/JqCMz9LqxphoLX7VXI85Rjjc
	FdTz/Yxe2NM0HiEY3cYf6M/fHU4HOISjUn7Mwo4hzZwLFb7HcONv27smA+gAe2a4Z05Tf+Fjt0x
	Dz+s6BkwmbQYb7LL53ON4rsesOCOIEau/qdzTV8paIxSEJs79s3UHce/SiOTN/r2i5HcHB5s024
	634sZhzVMnDpxsZYD3UmEQQuqEKW+mzZUHLqTJGshZeI2U94GGISuBfmyuiqi2hSEX81zbm9lxR
	hfQM4mkakwOXmjR4YdNhU=
X-Received: by 2002:a05:6870:8649:b0:403:f8ca:3fb2 with SMTP id 586e51a60fabf-4093fce1a18mr3870975fac.17.1769622520430;
        Wed, 28 Jan 2026 09:48:40 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409575b0a89sm2187647fac.20.2026.01.28.09.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:48:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Date: Wed, 28 Jan 2026 11:46:05 -0600
Message-ID: <20260128174608.1498-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_094842_434961_DE182317 
X-CRM114-Status: GOOD (  11.27  )
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

Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
manufacturer did not provide a firmware file, only a sequence of
register writes to each device to enable and disable them.

Add support for this *specific* configuration in the AW87390 driver.
Since we are relying on a device specific sequence I am using a
device specific compatible string. This driver does not currently
support the aw87391 for any other device as I have none to test
with valid firmware. Attempts to create firmware with the AwinicSCPv4
have not been successful.

Changes since V1:
 - Correct an uninitalized ret value error identified by kernel test
   robot. [1]
   https://lore.kernel.org/oe-kbuild-all/202601240757.gYdQGsXp-lkp@intel.com/
 - Added devicetree binding for the Anbernic RG-DS. This is based on
   the following commit that has since been accepted. [2]

[1] https://lore.kernel.org/oe-kbuild-all/202601240757.gYdQGsXp-lkp@intel.com/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit?id=9e3f8ae040009f66367b2ba1081b7e313b39aeff

Chris Morgan (3):
  ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
  ASoC: codecs: aw87390: Add Anbernic RG-DS amp driver
  arm64: dts: rockchip: add Awinic aw87391 for Anbernic RG-DS

 .../bindings/sound/awinic,aw87390.yaml        |  34 +++-
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  44 ++++-
 sound/soc/codecs/aw87390.c                    | 175 +++++++++++++++++-
 sound/soc/codecs/aw87390.h                    |  86 +++++++++
 4 files changed, 322 insertions(+), 17 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

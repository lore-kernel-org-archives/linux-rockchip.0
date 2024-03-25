Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07CAEC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1chSwnTL9bgvqtlFLbZkLAv3CcXaMBn69G3BEUQabok=; b=raT9wZ6+K7r44e
	HAmds3PEZ1cxXAzUAM02kwQjOvSGJxptJRNpuadlCreoH1VR1och6kurqtEUNGfBYPUbMkdEv2i46
	MvDes035Nqy+6awHhWEunfs0oWuSNBG5b3mzGIWVahqj+IRpE+iiFRDcSm8n7M+tizHk962KKomjD
	TXMvhshL0H/nVWyW3385xX9QRizVZ1VLKeHfMcz8lytwrloS8OV9efeQMMrzFc5P2IrcfxWK8/IU4
	XyXyz4+bMTedZXT+5DJk2fmz6h6RpO+UODhWR0LST9k5vnQCvKl4mHH9oisxNp/1hTAKZ7Qg24DdN
	sqpKqjN99Tbh3J5n/mPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSC-00000000GnD-33ru;
	Mon, 25 Mar 2024 14:37:36 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSA-00000000Gll-0Y8o
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 14:37:35 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-2282597eff5so3081704fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377453; x=1711982253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CHXhjJWjnxIiWVpwLnVown8C0k9DA5ZojMOHGZI8kRY=;
        b=Lg/Zwnoo1cpxLmnCZtfN5s0BilFoE8MKGCvharF9su0FQSomu279T+GiJzU9JbdFsO
         JroYSAqEOf4M4vttNEyxzzWrirxzKgzaA+mx77P2qi9z0AU98FCdHuykJsiDCgPfFX1Z
         ZpFspBWgAyi7xWncA8fE7I1ENfZxWtAVb4KbznRf0tmATFHHpDQC5LwJB7Wj3WFZJCvF
         77dW1QJEGTN2yfrpI1ZpIGGRFYCos3atSipNEJsowFR1fowIw8xd3WNjdvotG8ANzyv8
         UgpDsHadp6kSIhY9bQkh2S/UCEN6RiKboVpUvf9SNPzhPsUYkQbNvBIGGUVa97JcuQH+
         wq7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377453; x=1711982253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHXhjJWjnxIiWVpwLnVown8C0k9DA5ZojMOHGZI8kRY=;
        b=FhzVrbkjpWSiDXlqCdm/qrxilITc7UTeBiNa/H/TsywTf/SQLODQJOx8Sf/XWKg1Ty
         B96kvrDF3gcnIJJGrW1CifGUxMbn2HhXRxPGqowLSouf5K7ySeWccFb6vUgjxF7lesj0
         m8fFUpCVdEzR6hpIcjIhqaSdEehOPK2JujHy3CmL3xunZfQbR9BK85lMnoqfa2hQWQR5
         7W+eQoeYxmY3l6frsBbXYGMMJengleqm9qUBbpGrI2vb7zRFvW7TuRg6Jc7B+yFpfuAS
         2RXOnGDhaK3fBhZjTuYpILANXjyZMgwyWaBDSDuh58rggxx0QCaYeoho0gMbpHVCYx2y
         j+Bg==
X-Gm-Message-State: AOJu0YxD2dF3fabrYqNDE1wRIKaGCMjEE77s1MtIvtu4URIxTnj8ieco
	f7S/LjTbe7Q+URV+o5wt2XxCXI8fKe1d6G09kzsgUEF+uikK1TyEEw3Sft4n
X-Google-Smtp-Source: AGHT+IHUDWUSCv9u87bi1dNcgdPTV3+KFK6kxGC0XJ4f0baGuP+vF4RIdDClds0BV4HbrVTiPWJD9g==
X-Received: by 2002:a05:6871:712:b0:22a:36b9:69e3 with SMTP id f18-20020a056871071200b0022a36b969e3mr3757124oap.19.1711377453091;
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Date: Mon, 25 Mar 2024 09:37:25 -0500
Message-Id: <20240325143729.83852-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_073734_243726_DA71BDF8 
X-CRM114-Status: UNSURE (   8.86  )
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

Users have requested fixes for Anbernic devices to help with some
intermittent WiFi issues by adding additional properties to the
SDMMC2 node and by making the sdmmc aliases consistent across the
device lineup. They have also requested that the model name be
represented consistently with both the manufacturer name and model
name.

I have added the new/additional property of "chasis-type" as well.

Chris Morgan (4):
  arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
  arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
  arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
  arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices

 .../boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts   |  7 -------
 .../boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts   |  6 ------
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts     |  9 +--------
 .../boot/dts/rockchip/rk3566-anbernic-rg353ps.dts    |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts     |  9 +--------
 .../boot/dts/rockchip/rk3566-anbernic-rg353vs.dts    |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rg503.dts      |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi     | 12 ++++++++++++
 8 files changed, 17 insertions(+), 50 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

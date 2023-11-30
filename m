Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D2DC07CA9
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DKoGPmz0FRhsmfkJjV5kfs95Gg5ayD6vTPI42FcHUs=; b=srGj8J3VfcsqHS
	b20PaKIgdlVbl9Tu5ALqLxoV3zYZy4jySOBN9jNAn65n0iNgqVMLXG6NuZ39rAhzdL9hH0uHf0gE6
	icJSlfnZ8VTVqqjO6II3KVUMwehDkOo1D5xpyK6zWitNalQazU30EcZjVLZEenxLNVKpx4QWwP9p1
	z2JZdR965Ufvh0go9sp+pbyo1p2vJYfX1YZzkiNncLhO6egY7+LiBt5h+WKCnJ4hSGXRYJ6WfZj6W
	ePycgQIBvhqwJux90I2GKlCDMc24IuTlL5ssmM/Q6xmzvpyA/tVm3WriufcGFPLRlQFPBkeQjNYJb
	J2ceRlbrcQL2n7juPCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP7-00BGkz-1X;
	Thu, 30 Nov 2023 15:56:41 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP4-00BGju-2L
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:39 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6cd0963c61cso692044a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359796; x=1701964596; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TvmqJO0ppzl3rJXfbHdcHrgR5dQ8u3NxPpJslKQqqYw=;
        b=a0pfNQrdp8KHi1m4Vv6iziLPM5kG8ld0r2ymp62IMyagDYEQsIVxNT0u3EkSeifE1p
         q2ZaceeEen/XAbkSBnsPVzEP0YLzw/gtgplmgd/ANSXZkn6V4vLHYBjVoDxXQRp9/5AZ
         5V9koQsZeoi1Xol5tA4P0ixTwNjJrOrcQU1TPhIBNDCPu9BKMOOug41imaHLPvKNJk01
         tZhQaZyiVF62UweFOxG4JRpJKK9jzvKoqKvRm9i/se+mYiSjMhTn7nuYwNyX24QpMS1x
         RRVSA4Qvp7VqQiePDyTvvneUyiR2kc7O4EGPdtD81el3V6bBjB9PU7eXVfUt8qljM3O2
         Eq/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359796; x=1701964596;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvmqJO0ppzl3rJXfbHdcHrgR5dQ8u3NxPpJslKQqqYw=;
        b=u6Zxo8eXK+24erhkYBWxLCe5WsmLrsE2R+ccXhAUsHgAkOguFs22ziwxvX7T4+M0KL
         idtZqyn/9D8R9SdFGhpTK43C/gIHWNF7yD04tlZsSXTLFh5MXdN4StXde4sbYylTTii0
         Iw7LnaFWf0WNq4cMzwr2IcfKSH0R2Nroy8rrs/MvLApmRA51yTmZg54TEXwDFBg/qWvs
         XYGtYB3JDcMDPo/Q0hdSydA12pZqKx6+x271v61tUYB6DhyPY/pvb1qhcoh5+53wtWk2
         UDiuBGZiFSEWxN+JCcjrooKUi2fRrfxAVJAEWhItytqev4j/Ls4pQrKghjf9LQAPeIdW
         yq4Q==
X-Gm-Message-State: AOJu0YwnQQUftXD/ffaGxW77TxKnhDP00JcIpKPbks06JLVcQ7B5HebI
	llNKbJ8wB7u8mS7bq1/8qHP1gMxnDx0=
X-Google-Smtp-Source: AGHT+IGETl/gTp4AkG0pVc3uLa1QNZZM4WQtChA8x1bd0u1DJ9TEu3j4YaOt3w6rwoz7iauW3gsExw==
X-Received: by 2002:a9d:7416:0:b0:6d8:17ea:e48e with SMTP id n22-20020a9d7416000000b006d817eae48emr16937254otk.30.1701359795998;
        Thu, 30 Nov 2023 07:56:35 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:35 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/9] rockchip: Add Powkiddy X55
Date: Thu, 30 Nov 2023 09:56:15 -0600
Message-Id: <20231130155624.405575-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075638_786845_192F90D0 
X-CRM114-Status: UNSURE (   8.07  )
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

Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
console.

Chris Morgan (9):
  drm/panel: himax-hx8394: Drop prepare/unprepare tracking
  drm/panel: himax-hx8394: Drop shutdown logic
  dt-bindings: display: Document Himax HX8394 panel rotation
  drm/panel: himax-hx8394: Add Panel Rotation Support
  dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
  drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
  clk: rockchip: Mark pclk_usb as critical on rk3568
  dt-bindings: arm: rockchip: Add Powkiddy X55
  arm64: dts: rockchip: Add Powkiddy X55

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 .../bindings/display/panel/himax,hx8394.yaml  |   3 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts | 926 ++++++++++++++++++
 drivers/clk/rockchip/clk-rk3568.c             |   1 +
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 180 +++-
 6 files changed, 1084 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

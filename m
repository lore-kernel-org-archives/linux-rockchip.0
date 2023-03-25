Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68FC2C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 07:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jL4ekkN7OtEh1SSbL+Hq8NAYH8P3UhZ6K1QZKueau1w=; b=FCios2hozZsUjY
	kRdth7tTBtbEnY7QsHIUG6gMmSixHdkiKslxSQKd3qR71vRhI+8FhHa/cddC5yzuDwIHH+b145fyk
	yPPN4DYueL+BLq8fHVsbBirygyh4/0kvfzhhVAFWQHYXEhstlAuNeS1k4ym+erL3/YVXlQBBflo6A
	kwnKkvP1S3Hk3n8oSQUjiAmoElsD/Thmq3DGx8T4gIMFwNdSvYTR5DFBC4/EYrMoOexyeHbvELnnV
	YUWymuAqWS9wdFg2Jrm5MY+MG5y076XX5EKPsgIF+85iqaya8aXFSmgrv6OMxyA0DDtyl0/i1pdAA
	XjjYBdfjOsMjwaYB8Tfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVt-006NSM-1J;
	Sat, 25 Mar 2023 07:40:33 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVo-006NPr-2c;
	Sat, 25 Mar 2023 07:40:30 +0000
Received: by mail-yb1-xb31.google.com with SMTP id k17so4826640ybm.11;
        Sat, 25 Mar 2023 00:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679730026;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rYsDanyFIFeDSw0nKRS4qdlqbTjBz25V3/PJAUjnPhI=;
        b=cJ2pOCHq2roMIGE7y56sK4+Y1Ez+n9X9FjvFc4STQcE4BnhdVBB8vN/5gGZwYB5z4T
         n2ueTvW4Qjdv2inJf9st+Wj9r7u4pQAL0vELkFaNfVFuS+KH13hrM69ChquyHgud+wyk
         UZM54S+QjlVUTC1bov2L1EUuEYY1frv7k2sL6LzPpF0OfoAuQJBFtp18iPH9tOBIgVoZ
         JUs53gityYzkL85dAMd/CjHIXi3LJmunY4z2jGXKxfDoQi5FyjC03ngWZ7zmERpjMG3R
         l7910vJbctm4yWM6Oxn+oSD64k1wiY5JqSlIOJE7X/b/eiOfLXPs3hw91GYR5WCbnCEz
         akYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679730026;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rYsDanyFIFeDSw0nKRS4qdlqbTjBz25V3/PJAUjnPhI=;
        b=0h9UpzulBqBq5dP7HRHuriZzM9kovK1MGoMhQmT+mnDE4o0g2frzYa73dt+vOO9U+J
         9i4JL4R1MyZ+7sRgj6+IcuWIXknYhDyktpurPGU5y84oH2PaBxgwPi56/zb+W6Krf70Q
         1NZcVSOAQHIUHUTk5DI307jP3iOzIo8RqMvvyAuBCXjl9wb43NvJ/rxwwD7azKzhiu80
         Dy4uNBuFEVHOtoqDsTvX4jZ4RG0zZhNVU2r8t8d4pJYHlIu9+3YJ73u4unglR0hUIyF/
         cOsX+OPfaFHoawQi6vQ5IZMpAJJVnhjxsU4F/SBxT2WsZGofqKkkcNoh2whqynpjkJf8
         Ln9w==
X-Gm-Message-State: AAQBX9fFCI3ly5haGEkDOC6NmLlOQGu483fSbuPk/5l1QL/VIloJvNNc
	Ysk21nROafp2MAhIepuTvug=
X-Google-Smtp-Source: AKy350YBztxmYOrO82qvnRcnyHLBYIfQ+edDVxGjdeutSueof48FJ8pb1sKRae6EsG8leonu3IRT7Q==
X-Received: by 2002:a25:db4b:0:b0:b6a:51c9:d7ba with SMTP id g72-20020a25db4b000000b00b6a51c9d7bamr4845084ybf.20.1679730026306;
        Sat, 25 Mar 2023 00:40:26 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id w20-20020a25c714000000b00b7767ca7498sm969629ybe.53.2023.03.25.00.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 00:40:25 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Add support for NanoPi R2C and OrangePi R1 Plus LTS
Date: Sat, 25 Mar 2023 15:40:18 +0800
Message-Id: <20230325074022.9818-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_004028_890461_7E29F210 
X-CRM114-Status: GOOD (  11.24  )
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

Hi, this patchset adds two new boards using the Motorcomm NIC which
got supported/fixed in kernel v6.3:

* FriendlyARM NanoPi R2C - yt8521s
* Xunlong OrangePi R1 Plus LTS - yt8531c

Changes since v1:
* https://lore.kernel.org/linux-rockchip/20230323123807.11882-1-cnsztl@gmail.com/
* Updated dt-binding description for NanoPi R2C

Tianling Shen (4):
  dt-bindings: Add doc for FriendlyARM NanoPi R2C
  arm64: dts: rockchip: Add FriendlyARM NanoPi R2C
  dt-bindings: Add doc for Xunlong OrangePi R1 Plus LTS
  arm64: dts: rockchip: Add Xunlong OrangePi R1 Plus LTS

 .../devicetree/bindings/arm/rockchip.yaml     | 12 ++++--
 arch/arm64/boot/dts/rockchip/Makefile         |  2 +
 .../boot/dts/rockchip/rk3328-nanopi-r2c.dts   | 40 +++++++++++++++++++
 .../rockchip/rk3328-orangepi-r1-plus-lts.dts  | 40 +++++++++++++++++++
 4 files changed, 90 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

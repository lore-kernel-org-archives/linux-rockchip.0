Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79730C76195
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7fRIbSFE15OjAw/RhjRt6LkEoobP51lmUk1SEpftLnQ=; b=JmBjQ2xtN23jGL
	qCVRFChan5sHdwJ8DUoPtYkBJCnZMuvcrxeX36IcN/3D28h+LcH1yJI7KwxFsi1Yg9ICY7LJATr48
	BQyEumchfLJddWBtAnspbcw8zlF3R6u0cdV4mruQmEHvjYV0KzR/RUE0y7BDsjUH6UfKwhzPsZdAh
	0ZYRtdSxVQIwz/T7qi0e1ShSzl93X+kSZPnm8NSUbLuHVCYkcCN0Mn+SY/uhcaRNkUqpH7WQjovtU
	NzzQo0EfwmO+M1byyRSS+z9KN05ncOHZe2NH+/HShV/sAVCE4R9n0eZuaKNE57fms7p346pgPYLdu
	FUty8m3o9mGvb8TBMxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKCw-001wHI-1o;
	Thu, 23 Mar 2023 12:38:18 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKCs-001wFQ-2o;
	Thu, 23 Mar 2023 12:38:16 +0000
Received: by mail-io1-xd2d.google.com with SMTP id bl9so3424759iob.8;
        Thu, 23 Mar 2023 05:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k0+bynfY00cSHIQkWQ+zWdlHvZK8vqNNp0Ky9kD5v54=;
        b=mgMcflB5KA73/EKyNij7S3rJtq36/WSvZ2mvo02ncMPDNqVKryKSrou1ObzG6sV1dh
         eYzOmo9sv9JS5FFNzhzMUKMDPIXGCWBZ2M4D+q86ql2CNuR2qu5ivZdTBoBw45A9si/j
         Sqrfz0MmeFemZPXpSA5jW6+jBUyJsvTJ7FEK/iokV3RFLRA3mtYdKlOPQ4BzaWazrQsM
         oLI8Q4TVIQ8jbmGZiaAUBtsmkZzcyaSEdgimcVWOz7LJn37E0BEV3XyocyHvp1MpDRSH
         y+sLfB8KvtPrCcL1xHsqwA5u9eTdo2qGf/7rwFRj7iIYebsQ0X7uD6AapaV3XaUYvEoA
         AKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k0+bynfY00cSHIQkWQ+zWdlHvZK8vqNNp0Ky9kD5v54=;
        b=JqL3ecRL9yAVTRCmDos9Hap3+xo5hprm+OTkPt1caTeTusVFT+n/M0sajkTvtQIqJB
         FaQq+6hWl1ssOK3bH+JbL8X4Zklc5aW4DoFbooqpYI1iqr+WUHFlDQfL6Nilh48VWTCd
         Fsyedm6D/iZ7l5ykd0OIU8kwWwduxjFaxFHaI7vyIK61/foqNwMBlvmid3HV0OdFupKG
         SNsufuTKVFS47aeAjtk+KayzDwqy0vX0o0ByZ9qRi3QIRE0ixlcsdojR+rxN2v9HEtWn
         HaIW+nPcdXrmSwbA7O4a6bgoHUX7aSWKz0OVtjF1A3U9gWcTtwug1WB3qo9o8fEN4ta5
         1ygQ==
X-Gm-Message-State: AO0yUKWhy2Irn52uj9uwCgUTpnzxbA2ddX6NSvCI/crk/S+ZChmlSP0b
	KRK8TSQ/JNSDNG3/1Muo8BY=
X-Google-Smtp-Source: AK7set/WWhepU+oqjkK7UqqkkawBKVSq+Np02Zli5m9hkZjc3hKS+f1QfT5zwOtJK1BWMNoa4aLFfA==
X-Received: by 2002:a6b:ef04:0:b0:753:989:ebb5 with SMTP id k4-20020a6bef04000000b007530989ebb5mr4138339ioh.7.1679575092378;
        Thu, 23 Mar 2023 05:38:12 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id n11-20020a6bed0b000000b00758993500f3sm1307608iog.7.2023.03.23.05.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 05:38:11 -0700 (PDT)
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
	Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for NanoPi R2C and OrangePi R1 Plus LTS
Date: Thu, 23 Mar 2023 20:38:03 +0800
Message-Id: <20230323123807.11882-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_053814_926251_E7B111E6 
X-CRM114-Status: GOOD (  10.60  )
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

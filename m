Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48793C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 22:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZyFJG5tKqzHCmop5yswQ/W703NDzQSZRkqDIyDKSpzI=; b=cP+igJd7Ts+NLt
	SUXLqRoAX4jHhXjlvdmQSiRVsJE0qMwDMthYbFD2uyvXxZYGwxtKA4hIqbyFsG3opBje9accPKJSf
	BKMJKEY/vbYh19KYeicKV+mMsXkT14Eory/8on1HJWx+D51YWcDyxr4ohAWnSWM21Ndusj+jTA5DV
	C3p3Le8Z7GI9jra34d9omXF3vk7Biv2DgwPEgZElx/2qaZABFzwTAa1u35DxeW0+ygY7MW3aHEGJZ
	2kBI/qsDCtwi445LubKRMACdIcT10ppZvtMBq8Mxkw/XhbryKkHkB4ojVaaov1MWWZkwPxv/X4mIT
	QqcVmlWK+StVEuoMv96Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njqPP-003oNy-SJ; Wed, 27 Apr 2022 22:45:19 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njqPM-003oMy-QM; Wed, 27 Apr 2022 22:45:18 +0000
Received: by mail-ej1-x629.google.com with SMTP id i27so6118020ejd.9;
 Wed, 27 Apr 2022 15:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ULuEHFX75GMwmo8k2GzRUntcH3yDcucdCP1qTc/I1I4=;
 b=ml8uzSNJMVs1/c6qGisCf+ClB3pqZe7KZtcX9j50z3ZpwAqed+4ReF/LBsDS6MEa13
 fcf1XXRgzmoNG60h+AX1FFwo1w3N5Tx84W0KYKYDSSlXYm07xf9MyW27uXcw47ArSttb
 y5ZNDJXdKgUbVHtLIUGnhraNOoSizkDT6oyHxJX+vTNrze3tUJbsrpWdGv5SHa+rfhV/
 HjrKmJlCwBbH1WMxtq8+MV4qOvHavNuK4UhqXC+SW5rIgSNenYyv/tofybFkaLG466bw
 ogRBcnYhJHXDhZWM0nAClK0PTcjEZnd5XEPs5//E5udmm8/hj3ueTWnesQsv/zssDiFp
 GLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ULuEHFX75GMwmo8k2GzRUntcH3yDcucdCP1qTc/I1I4=;
 b=u225bhRPdHH72U1oTrfkv4T1J+4iidzbo81Du7icxp0fFFk9s8Bl3rB6ADMRRVcbz8
 xmRwQcSKp2UvpILtIhu6ghDYNvuC7Kjlp6pUun61h8Yn4LvJtp5i445zYgmf7YmJnNCw
 0HfEQQ3dKPdVVTZvm2+JjzvghAaNx4zuwA1OPLJtRFJGbF7/ASzW1z0nJZ0JaJGkBSDG
 RRZmu9nxULf3eUqNes9984cWoHBQbbZ52urtOevR0q5nU60Vo0R9463/GqRH1EA/hhZ2
 ipSilTsrcvvyX69IsxMW4ImOhvlX7hJuz4KuKgraPIXIAEO+DD6xcGMvLnuftWIEzPWu
 NYmQ==
X-Gm-Message-State: AOAM530uk32sjVCsrn0krgthU/mr4mp6jNTrSLX7D3pIHaOK45UlHyXT
 tfgdL3ZPecSoeCW6y9p+MrU=
X-Google-Smtp-Source: ABdhPJw/kmkRb4ECwQsyT2nZLTfzWQIwaBKXnJ04SiQk3nK6jZlCQaiwz131OR/BDU6OGu6woJ2hCg==
X-Received: by 2002:a17:907:c06:b0:6e0:9149:8047 with SMTP id
 ga6-20020a1709070c0600b006e091498047mr27930716ejc.765.1651099513153; 
 Wed, 27 Apr 2022 15:45:13 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 t27-20020a1709063e5b00b006f3a94f5194sm3762594eji.77.2022.04.27.15.45.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Apr 2022 15:45:12 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
Date: Thu, 28 Apr 2022 00:44:35 +0200
Message-Id: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_154516_906924_64D59674 
X-CRM114-Status: GOOD (  14.80  )
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

Hello,

the following series adds support for and enables the hardware JPEG
encoder on the RK3566 and RK3568 line of SoCs by Rockchip.

The JPEG encoder is its own little Hantro instance with seemingly just
the encode functionality.

The first patch modifies the bindings with a new compatible, and adds
the ability to just have a vepu interrupt without a vdpu interrupt.

The second patch makes the actual driver changes to support this variant.

The third and final patch makes the necessary device tree changes for
the rk356x device tree file to add both the node for the encoder and
its MMU.

The series has been tested on a PINE64 Quartz64 Model A with an RK3566
SoC using GStreamer.

Regards,
Nicolas Frattaroli

Nicolas Frattaroli (3):
  dt-bindings: media: rockchip-vpu: Add RK3568 JPEG compatible
  media: hantro: Add support for RK356x JPEG encoder
  arm64: dts: rockchip: Add JPEG encoder node to rk356x

 .../bindings/media/rockchip-vpu.yaml          |  2 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 21 +++++++
 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 62 +++++++++++++++++++
 5 files changed, 87 insertions(+)

-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

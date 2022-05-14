Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C764BC43217
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EwuXa3yB0DizWu7Ca0x34SECPnK313ydGi14PfpdG1c=; b=XCYxj7rlQbXxeb
	Gsiw2hFf6pFnIlaEb7uvH+rLj1emhNyU9AyMHTdxeLUf95oEs/YQdQ8SbHgYMrFGYNRGuYjsAyOVn
	sfu/3WlDqCCXr5pDvDsb9UBeo1RIO6lvMfO2G8IoXuVVhDspEzVVU88RjI8FnOzci76VQ1vzJCI+4
	RnAIlJGvmGsNuEimpiaeTRf2KJR0HihknKz8Liayf/CLEczt1o0lPB5jNeKWqsYocO69smaSGfTYY
	oESr7CQFgZoSAOGk99sg860u1XrRkwUcX3Ibrm6ot8ngOeV1xru/KFexKofYH0cM2iWqUOMpFhjOF
	S26k/Ca8YeBybHyzCBpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nprwj-001VEO-FO; Sat, 14 May 2022 13:36:37 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nprwg-001VDX-QY; Sat, 14 May 2022 13:36:36 +0000
Received: by mail-ej1-x62c.google.com with SMTP id gh6so21059318ejb.0;
 Sat, 14 May 2022 06:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VymNsO9H8vXev+tiyOhAo/oE9mXI2dXizsJGlsEEQ7M=;
 b=U0xcrl1+33ooDeGyYEvLTuxZUiFJ1G+F6tNH+a/Fe79ebH4D0fHhkPMbgtrS1CYRY9
 AmHE8zmyq8CiNb6QbKt0TU9ISdTI7yul4Y9S5MM78mj2f6aSE73srHj0llzFWm+heX+n
 vxjj6E0n30bMybxyDegia7GDYgQpIIt8sIn/e3mHagwRhF+IStAKE3d6pPkLlhZh1hiu
 BV3VThfgOaSirer8YLww/6OGCP7sb9gUdBbdzVgIoH9vh3TtntZKc139P5g+iNBquf32
 gxcl1lvrcTThP/igiSd5r8SZIoH5IgOP+Pm/xuEsCsm6Dh7EEOMYJ7kgTFkI7TLrokPc
 bo0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VymNsO9H8vXev+tiyOhAo/oE9mXI2dXizsJGlsEEQ7M=;
 b=QJnJlkN1SaxDMXQ7KUYcQn0o1cTg0x5sqgVeHMV8hMqzuToPwcBWE5TR0AnTX7JZFt
 voucmlzdVcbJKVgAMpbkZ5r5Q+fAfjHb7ZvoqCrKNXQ//n811BSjmPmx1Yc6NiMHGGRX
 RQpHp+4oJbOn1SROkwiTChcbxCKyivGo6czES0Q47cEyR6SlaGSxmgPpR6WHXz7yZRdy
 N1ojt2EUhcyRXq3zDxZP28p0NTpqoOJmP/MCmX0npQLtPE2S/oWl2ssNZMES2tjTr0A6
 HlmVFQBG/hzPaGrCbDBM673WMy1TXZPw+EFuquWW1mJhycGqRlccG/2Kct1YxWyWD2kt
 smIw==
X-Gm-Message-State: AOAM5326o7gHI1lkuZJz6nbv4/4Kz/c5D+wlRgozqI5eFnMfrf7sP4B7
 a0mUsJLMamF0fUdmLKZhz1s=
X-Google-Smtp-Source: ABdhPJyvEAUNi0SNhPPHnm5cy2aKmPXeX+3XH6wYj1nL4AKXica1uFiPnVGsop4zTWEUFMhY/meH2w==
X-Received: by 2002:a17:907:948c:b0:6f5:183f:eb6 with SMTP id
 dm12-20020a170907948c00b006f5183f0eb6mr8055998ejc.112.1652535392262; 
 Sat, 14 May 2022 06:36:32 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 ci18-20020a170907267200b006f3ef214e49sm1736739ejc.175.2022.05.14.06.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 May 2022 06:36:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH v4 0/3] Enable JPEG Encoder on RK3566/RK3568
Date: Sat, 14 May 2022 15:36:01 +0200
Message-Id: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_063634_916347_963D99BA 
X-CRM114-Status: GOOD (  19.01  )
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

this is v4 of my RK356x JPEG encoder patch set. It enables the Hantro
hardware encoder of the RK3566 and RK3568 line of SoCs, with JPEG being
the only format the driver currently supports encoding for.

The first patch adds a new binding, the rockchip-vepu binding, to
describe this kind of hardware. The reason for going with a new binding
instead of modifying the vpu binding as the previous versions did is
that the vpu binding is getting quite long, and Ezequiel Garcia suggested
(on IRC) that we could document encoder only instances in their own
binding. This makes sense to me, especially considering that RK3588 will
have more Hantro instances like this to document.

The second patch makes the actual driver changes to support this variant.

The third and final patch makes the necessary device tree changes for
the rk356x device tree file to add both the node for the encoder and
its MMU.

The series has been tested on a PINE64 Quartz64 Model A with an RK3566
SoC using GStreamer.

No interdiff this time around, I discovered that it breaks patchwork.

Regards,
Nicolas Frattaroli

Changes in v4:
 - bindings: move vepu to its own binding, also add it to MAINTAINERS
 - driver: rename a stray rk3568_jpeg_enc_codec_ops to
   rk3568_vepu_codec_ops
 - devicetree: remove interrupt-names property
 - rebase onto linux-next

Changes in v3:
 - bindings: change consts to an enum
 - bindings: add check to make sure devices with a -vepu compatible only
   have the vepu interrupt

Changes in v2:
 - rename compatible as it's not JPEG only
 - rename device tree nodes as it's not JPEG only
 - reword commits as it's not JPEG only
 - get rid of a whole bunch of redundant struct definitions, as, you
   guessed it, it's not JPEG only

Nicolas Frattaroli (3):
  media: dt-binding: media: Add rockchip-vepu binding
  media: hantro: Add support for RK356x encoder
  arm64: dts: rockchip: Add Hantro encoder node to rk356x

 .../bindings/media/rockchip-vepu.yaml         | 64 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 20 ++++++
 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 25 ++++++++
 6 files changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vepu.yaml

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

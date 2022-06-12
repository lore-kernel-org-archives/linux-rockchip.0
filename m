Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEE0CCA47C
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 15:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qJ597YaPfs+XGR4ch28csWr99VgAg3spE1xDsa+/Vp8=; b=tdsNM+drXzxz//
	dUvW2uqdXfDnqEorxeUR4DPtpfJX6MkBB6rmoBRgXNR5PJnfCoZgMKu/roJeBmNmzUb4gdJQlKpg+
	AUH5X8uqmMkGmI4MhPOYcmMvkut2RGldfh35bI1fIESSyKSifwN11bfgUmOT8xDoGAGwFw4EMYlVf
	9s/BJQreYJ/GdaM/m5oaNTTSF68mpFOSH7ru6+nK4lkYk3DTKu2pOjBklJwvmPHUVJNVOJNy/lANj
	d0eNsrY6aL7TfFzX151pIqwT0bku7gP/9NyuGD2VdXZiu3y5A4VcElo/vXO/N9cpYqA+cGJfiJaCf
	LocLjLgO9GUGfALryBGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0Pv9-00H0Mr-3u; Sun, 12 Jun 2022 15:54:35 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0Pv6-00H0LU-UB; Sun, 12 Jun 2022 15:54:34 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u12so6742318eja.8;
        Sun, 12 Jun 2022 08:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fgRDXCG0152Z3tFDn2gSPrHtara3Cv/otakf5tLuBg8=;
        b=bKKJa3yTkzViWR9SYaKXSbaSBhzt4NWlst6pZhou6xHjuwAuCAVDMPsgZorewuVY/A
         LBP+qx0Y3f8GjqZ63quFAqx84tof3XZB0cChOUbRJvtDgHofl0AWieEBXGSUlT6wGwID
         TuhUSYAufWyRrwU3Q0F/E5uMr8hL9QhxCJqM6g4UxsbQIx6pnAQzea2emEGvnKUGUqzw
         8H0u+ZjuDI7qeK1IwkRwE295OYNuKHfaIKWUOQDtgTzzJWFbDq7OaFy4H6MHeTFhN35j
         S8bX+mlaAf1tNkdBJ0Mf4EFricO0bEe6KBfc1+W1dxj1nCekiBT2k8muiUNYaPOhdP6U
         J6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fgRDXCG0152Z3tFDn2gSPrHtara3Cv/otakf5tLuBg8=;
        b=wIr0OvhM+potsnFj309yli7g081672b2sUygoiivA298ptV0p17ZS2xIYhi8MzdNU2
         FthLPAht0MaPtzhXe0zRj841JZXb2MVGYbJRQyc3biXfNGoy+Monrbnknj2Uh/sN9mO/
         D4bjDemetQ2MiH2LXpNRLMT2vrH6irN9j9cNoP13QKPpqigirSHbhwMrTb76+iA5hreq
         7doIP9aNhO0f2jGi08aa2I9MeuVJ8oqY1sUOT8rvEySBI/V52OcJIktvWtLk0kmuSXgL
         Hj2AyBs4aLWLyBur6mj2fBK5L3vGb3Jy1ukVHyDprFjxMxkN3eRLpDd6YGY+Lf9r1YO3
         wZ8g==
X-Gm-Message-State: AOAM532iO5cOK0K68H61d5nbNhzf1xoNOFaiJbbUBMrN24MSrvnb0YYA
	OFbPgw8TaNuOEYsB3p9zMdI=
X-Google-Smtp-Source: ABdhPJwxbSdECkbBuOQJjUIZERJaR0TEJtWoXqbo0LfKbmT+uXP9XNPSyMZm98oHFA6EIt/82xSd+A==
X-Received: by 2002:a17:906:1f09:b0:70d:b470:1aaa with SMTP id w9-20020a1709061f0900b0070db4701aaamr45775524ejj.758.1655049269268;
        Sun, 12 Jun 2022 08:54:29 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id o1-20020a1709064f8100b006f3ef214de7sm2609459eju.77.2022.06.12.08.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 08:54:28 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Liang Chen <cl@rock-chips.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 0/3] Enable JPEG Encoder on RK3566/RK3568
Date: Sun, 12 Jun 2022 17:53:43 +0200
Message-Id: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_085433_035201_FA65720F 
X-CRM114-Status: GOOD (  18.84  )
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

Hello,

this is v5 of my RK356x JPEG encoder patch set. It enables the Hantro
hardware encoder of the RK3566 and RK3568 line of SoCs, with JPEG being
the only format the driver currently supports encoding for.

The first patch adds a new binding, the rockchip,rk3568-vepu binding, to
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

Regards,
Nicolas Frattaroli

Changes in v5:
 - rename rockchip-vepu.yaml to rockchip,rk3568-vepu.yaml
 - fix #address-cells/#size-cells in bindings example
 - fix indentation in bindings example

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
  media: dt-binding: media: Add rk3568-vepu binding
  media: hantro: Add support for RK356x encoder
  arm64: dts: rockchip: Add Hantro encoder node to rk356x

 .../bindings/media/rockchip,rk3568-vepu.yaml  | 69 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 20 ++++++
 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 25 +++++++
 6 files changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E57B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 15:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKODELg4JkVcD4aIVIWiMVH0dPGf4YMtaul/rgUmkwM=; b=bzHsQv8bTz/QgC
	8iVnxQ7+w5Bm6xPAt8fEzpYMEVwux0iKWbVY7acgoiBIJr8ZMG1p3hLW4NB8USgPF+x4sQzy71O2B
	5UG3CmO2uBnLFgL7S0fzRb7g4MV6w27jVFfC15xtgWbeiz7iylt3UUPmMiVRjUQgjWOslodKaw+MH
	x0sCVZnMwPPNTHsnlwvsjOlrXfeiZjBJ3siajmmUlSaOlzn/AqCBe8dDsuPvbqn6ZlCBt/q/gjS0A
	4j/wTPMN66yNrDHQ+DF00JCt0kmtPkscvJ8amQaTTGDk9qYo65zqRAsArAb9U9T3mripds5DPJRws
	ppxHsm58qaUsv8HaCX+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncqIL-000BuP-GE; Fri, 08 Apr 2022 15:13:05 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqI1-000Bjl-Nc; Fri, 08 Apr 2022 15:12:47 +0000
Received: by mail-qk1-x72e.google.com with SMTP id b33so5026902qkp.13;
 Fri, 08 Apr 2022 08:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ChSEY7h2sRW/2ExANChMlGLpgvQbTjAzXwSGw78syU4=;
 b=VL1Y942y0CjJChV2tq2vsSLGf9pTuJOFpVmdTPyNruzKwny/pl92SPdwDE7JjJqrC7
 sPQ3fqggNInkGYeBcIH1fiyaPuU4wvysUlDRIkRuRC3Wqb3Bbhvc3ym473gBDVOGKQk4
 mv7YZUmqITDZ2Etk09PrfFLmxD3Ki6eRYtXWKKCloAtUE2FjDY8TfQQH7mBktUkR+LN1
 2kBJZHf1ktDPuQxcejrWCIngAVNBKuFZJRRmXCKCn0VUQrha0K1exXCzIg6xq5v1Ag5A
 EL6mehVqJWqU4dbcne64OMdSdvKp1KXxcr8Ti6xKJUdhKPiRGp5aMIIJd8mb/2XEC11r
 fvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ChSEY7h2sRW/2ExANChMlGLpgvQbTjAzXwSGw78syU4=;
 b=FUdQSF6JNByHfRgquy2hKr++LI0Lf5UpN5ivTrada9w8C7NSDdkH3Qdg3P02KKWuoU
 epBa0zeWMldap0HjSJS5aw2688eNKloJWjIg8ht+I+QVPKqJtdVykeJ4uXtSJIau88Z9
 0EaE/+Vgb80G8XOMC3jSgXWdrB9AXSVsyXWQ9OgC+8ATYYCVfQm+6xf5PCabFy9QQCjt
 1BV4+RLuWjoJQo50HF9hxw6gqgBxa+5da8ySZLYzEzJ4qt3YnBs9On9m3odfXLDe+c9s
 ZGFAt72NhZvBR1Mk5dpc6gIEaZPoBqunSfC4Bn8ectp7K3kyd/KDYCmEsEbtyRzvJtrk
 TmjQ==
X-Gm-Message-State: AOAM531ANqUQy7IZRtyi200N5waenTvj1iK6RgTVUppbmylmgarmuILg
 OxJtBjJQUKwTm8Egbj6HONQrznq8wwiDUnj9
X-Google-Smtp-Source: ABdhPJwyTFG9s1eZqDpr0it5uK6x7Wfc6bXkHoffjYadfbrQpn/oFApdowm3ocx0VSpB92zWbYg23A==
X-Received: by 2002:a05:620a:460b:b0:67d:1cd4:527e with SMTP id
 br11-20020a05620a460b00b0067d1cd4527emr12838615qkb.277.1649430761326; 
 Fri, 08 Apr 2022 08:12:41 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 191-20020a3707c8000000b0069a13545fcfsm2266052qkh.123.2022.04.08.08.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:12:41 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v5 0/5] enable usb support on rk356x
Date: Fri,  8 Apr 2022 11:12:32 -0400
Message-Id: <20220408151237.3165046-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_081245_802053_8717971E 
X-CRM114-Status: GOOD (  14.22  )
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

Good Morning,

This is my patch series that I have maintained out of tree until the
combophy driver landed.

This has been rebased on v5.18-rc1, several patches in the previous
series already landed and have been dropped.

Patch 1 adds the dt bindings for the grf changes necessary.
Patch 2 adds support to the grf driver to set the rk3566 otg clock
source.
Patch 3 adds the dwc3 nodes to the rk356x device tree includes.
Patch 4 enables the dwc3 nodes on the Quartz64 Model A.
Patch 5 enables the dwc3 nodes on the rk3568-evb.

Please review and apply.

Very Respectfully,
Peter Geis

Changelog:
v5:
- Rebase on v5.18-rc1
- Drop patches already merged
- Collect acks and tested-by

v4:
- Add SoC specific binding, fall back to core.
 
v3:
- Drop the dwc-of-simple method in favor of using dwc core.
- Drop all quirks except snps,dis_u2_susphy_quirk, which is necessary to
  prevent device detection failures in some states.
- Drop the reset-names.

v2:
- Add a dt-bindings fix for grf.yaml
- Unify the reset names.
- Constrain the force usb2 clock dwc3 patch to only supported variants of
the ip.
- Change dwc3-of-simple to support of-match-data.
- Drop the PCLK-PIPE clk.
- Rename the usb nodes to be more friendly.
- Add the rk3568-evb enable patch.

Michael Riesch (1):
  arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10

Peter Geis (4):
  dt-bindings: soc: grf: add rk3566-pipe-grf compatible
  soc: rockchip: set dwc3 clock for rk3566
  arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
  arm64: dts: rockchip: enable dwc3 on quartz64-a

 .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 11 +++++
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 35 +++++++++++++-
 drivers/soc/rockchip/grf.c                    | 17 +++++++
 7 files changed, 155 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

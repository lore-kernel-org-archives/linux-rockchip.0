Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C6C4C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:13:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FAF760F41
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:13:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2FAF760F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=icshlY3aPYvb4Un7kaP8Z1IUyffuo0yAY26JJmCdHCk=; b=FYsHwoH3yIHDji
	R9656/H8WHe8Ylp3mNgCCZqxGKhy0Vr0IWRwdII8LCAUQ7Htkr4uA0lJE82Pjm68xBjSmi7BVVU0j
	akNFnyd2YS2dehSGseXqPVZ9ZblcPYXZCZzXg0DGconnqbudYINAhBdhIWNug/L65fL+Rr7ZuDGXd
	bBLxNgfpJiU+hQ0D4csnS/hIztnMNYlqbn6nE1cB0iMEB4N4H9ZCsPoZa3ctPs56RWLgw/7croF+0
	2tNp2kKuYolzZabMY5FKj/z3PN0Lf7Qqi2gn/m76rQg71l2Zi2lo3HXbq8xgSkz34l39Z0Glb9YMO
	0MimtMnviNKxZTebHulA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw66-0022gW-Q5; Tue, 17 Aug 2021 10:13:30 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw4b-0021uD-6F; Tue, 17 Aug 2021 10:11:58 +0000
Received: by mail-ej1-x62a.google.com with SMTP id gr13so8455135ejb.6;
 Tue, 17 Aug 2021 03:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jqw1AzmRK6zGBEx+a2c5M5+dO2MAySjNQQ8o1qXDJs8=;
 b=ZOD4sNytd4WPSZyPmbX2m9LgLSk9COCpOOmzj4bjLOzp2hFpikCaBnzFGgBEJXICwt
 DFV6SrstOLxM3pjIJQkIqAsjum+an8vUqUMGq4tdyNV+qQLzWl24Xn6SIoHoZiT9HmYs
 K6tTCTfaBYOh91jPdHHjTqZ9i22gfQjdka4U+GzF0Om23yB3MrVUsgNm8U+9JusW64Tz
 V1BHhVIxeqkxBphRPnqyzO33KJn02nxmZ4XjS4gU2sPLGkTt+gWcF1QVjPF6t4Wljy+X
 3UMt9JMbllLtSImr1hQHs/PyaM3QIy0V6JWU/I2K4yx+UPq+RTJBXjI6OSHlMMH9xHIq
 Ie2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jqw1AzmRK6zGBEx+a2c5M5+dO2MAySjNQQ8o1qXDJs8=;
 b=UEgmHjRCgMIUiQExjg3WAVUSnb7zn9rgZRMgFgnMp0KmOkky6rL73oQgcwiUz2cTo4
 BkgE4WZEXUQDWbqMQyZh7Cn5hU/R7dxIF76qRqUvPkUugJ55BLXRK1TUt+QBF/8yYFkF
 O2IkVvCXGlofMQ1WNxwgMb6wnxLa83+O8zTS+Wm+QHXS3/7EH6TditcEGEh6yY/hmB9e
 93S84lTi2mB/8K384/OV07+FV6YWxDgn9buYJdGeMNdRUbHrhzF/VRqUSt72LShF0Un3
 XSI4F+YMgc2Rmlqpxsu4DFA0hFbPa3izJxoFOIFwlPCdRpT1IycRdlUCgzCZdtdYhZ8M
 8jUQ==
X-Gm-Message-State: AOAM5308vgRJztjh6FD/Y9afy1BZEiNhzfgNp/hpGcSzDnA6Qop1pZ/V
 Mr9lXUWMKD/7EkLZfbIjOCv9tsHGNZMY5g==
X-Google-Smtp-Source: ABdhPJx7FraHwOny+E8f8qN3AMF/gbn3eNC37y6iQIiMzCrRbYBFSEtrtKJm1qLG9Pa6rK1MeNaVHg==
X-Received: by 2002:a17:906:4e59:: with SMTP id
 g25mr3104501ejw.399.1629195115109; 
 Tue, 17 Aug 2021 03:11:55 -0700 (PDT)
Received: from localhost.localdomain ([185.213.155.232])
 by smtp.gmail.com with ESMTPSA id m6sm822920edq.22.2021.08.17.03.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:54 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Rockchip I2S/TDM controller
Date: Tue, 17 Aug 2021 12:11:15 +0200
Message-Id: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031157_288301_335EA258 
X-CRM114-Status: GOOD (  23.32  )
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

I come bearing four patches for your consideration.

The first of these four patches adds a driver for the Rockchip
I2S/TDM controller, used in interfacing between the AHB bus and the
I2S bus on some Rockchip SoCs. This allows for audio playback with
a matching codec.

The controller has three different modes: I2S, I2S/TDM and PCM.
It is distinct from the earlier Rockchip I2S controller, and
therefore not just an extension of that driver.

The driver is based on the downstream version, though various
changes have been made to hopefully make it more palatable to
upstream. Some needless code duplication has been refactored, and
the probe function will no longer let wrong device tree values
write nonsense to hardware registers. Properties have been renamed
and had their semantics changed. I won't bore you with the details
of what downstream did, since that's not what I'm submitting, but
the changes are significant enough that I've added myself to the
list of authors.

The second patch adds the YAML device tree bindings for this, which
have been written from scratch by yours truly. Since I didn't like
having random integers mean things, I defined them as constants in
a header file for the bindings.

The third patch adds the i2s1 controller to the rk356x device tree.
I didn't add any of the other i2s controllers on that SoC for now as
I have no way of testing them; in particular, i2s0 is tied to HDMI,
so needs a functioning VOP2 driver to even have a chance of working.

The fourth patch makes use of the i2s1 controller to enable analog
audio output on the Quartz64 Model A through its RK817 codec. I've
tested this to work properly at both 44.1 kHz and 96 kHz, so both
mclk_root0 and mclk_root1 are definitely functioning.

This is my first kernel contribution, so I most likely did
something horribly wrong. That's why I'm more than happy to receive
any criticisms and concerns over how the driver is implemented,
because I've run out of ideas on how to make it clearly better
myself.

I'd also like to extend my thanks to Peter Geis, who has been
acting as somewhat of a mentor and gave me occasional feedback
and ideas during the writing of this patch series.

Regards,
Nicolas Frattaroli

Nicolas Frattaroli (4):
  ASoC: rockchip: add support for i2s-tdm controller
  dt-bindings: sound: add rockchip i2s-tdm binding
  arm64: dts: rockchip: add i2s1 on rk356x
  arm64: dts: rockchip: add analog audio on Quartz64

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  221 ++
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   36 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   26 +
 include/dt-bindings/sound/rockchip,i2s-tdm.h  |    9 +
 sound/soc/rockchip/Kconfig                    |   11 +
 sound/soc/rockchip/Makefile                   |    2 +
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 1804 +++++++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.h         |  400 ++++
 8 files changed, 2508 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 include/dt-bindings/sound/rockchip,i2s-tdm.h
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.c
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.h

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67280C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:28:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EABB61242
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:28:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2EABB61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5yiEHlFce75U7lQK72J6dAErU/W8khtVV2tPjkrkYb8=; b=iIcT9E+6F47PTt
	6D4F/TrVveeX39nFCG+l9um4oydGaUIl9JMGLkuVoYPkfgmp+hd1yD0WNsypqVm22FseyLq7J+oop
	gBc02Nh5LA2dghP6JofwZvjzahX/4dzOmat7eW+Wzrf/8nEx18/7mw3F1ld8y+LA0rZA/n91iXbXJ
	ylIvB2KGD+XzmdCLugCuPOlVYfmxJw4be6IgOmhjL4JOjJ8V/fGHb6jwKXLSyxKMOspxVj0U1j1Yn
	5QKmcRYHsXnlljcNXE7bvifxK+TAT06vynnLgDTc/fFz4wUL9bw0hMG7bp8K1pNf7ypDaMPbpFwyf
	CM7X14qh8nhN1dS+KPKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9Fo-00BqiZ-Cb; Fri, 20 Aug 2021 18:28:32 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9FY-00Bqbr-PW; Fri, 20 Aug 2021 18:28:18 +0000
Received: by mail-ed1-x529.google.com with SMTP id i6so15281535edu.1;
 Fri, 20 Aug 2021 11:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+fwJK6cnEZCMjdsnKpqrNeZQk4XPHKUiIqGOR28Ciyc=;
 b=f9cByAwt5N7co5rgLKUdcfgA3NWyB8162sDzKYPn0MfsiCQGnTm6Po9A5Yz9vGAJhN
 adtn6UIXbJ1zm0Ax5yU1pgAKgJeFCyyYM2rvRMhK7AQBy8mkuwe2lfDflteCV9s4TmMj
 Al7TVZS7MX7aA/U3nz3RvspdJelXqNjXSbTJCShro89hsFSXXpfIeAMl+WYXJKNhs/JY
 3HVYd6Yg34SLpsWSjuQwCCj+oeZJbRHwVNI7++0BA1dClsMr5+Qw468EQeT/YlHkQN4a
 wGu2FNyH2eCUti/TfIVVtqTwNdpfAcRlTswIbNf1V8AAp/pAvXU5MKgt2vDXWnSdAJl4
 tC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+fwJK6cnEZCMjdsnKpqrNeZQk4XPHKUiIqGOR28Ciyc=;
 b=t0LY/CK5128W6stijffH22uCncbp21nfyuyQL5IdJpIQ9CMaKVoXnh4tRqVy/WIaRN
 7J0Cb2kTzcwhy6M522XfLrKCFEyTd9HUYqV+tJifeE7Jmd6jyY8fnTenE+6bpEJ9Cb0c
 DqASJxPBW32IeDahbmT8q4AMIioA6Y0YbeuPANkWteX692MhAabBa2TpUxg1rJZZhiNx
 cI0B3oh8RS1Vfh21jKQm1tI7z77LBI7N0+rgmHB6hr01xmJQzGnD39apAQVcgUzOKDnX
 s4mTyvph5LrDLxzeF/+vtcCwnpvHD3C4PgTuczlgbfSSMXPbkF61EBJ9zXqos86eNeMm
 oJfg==
X-Gm-Message-State: AOAM5309BKMkNjdkNGcyTzbIRqiVjeX/Qm6RItI7pjM4SnoszJKF0NLk
 5TZgPxlv0etB/rkq/hndB8EQi1/wp3eFiWQZ
X-Google-Smtp-Source: ABdhPJzJfYq4YbWtWWxg0FlVHG1GBA1BRHiyIib6NSGMRYw5NSToA66ll1pqB7aSeGllAPnac5DuPA==
X-Received: by 2002:a05:6402:100d:: with SMTP id
 c13mr23727138edu.261.1629484094603; 
 Fri, 20 Aug 2021 11:28:14 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id n10sm3255724ejk.86.2021.08.20.11.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 11:28:14 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Rockchip I2S/TDM controller
Date: Fri, 20 Aug 2021 20:27:27 +0200
Message-Id: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_112816_855955_BB459724 
X-CRM114-Status: GOOD (  30.20  )
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

Changes in v2:
 - remove ad-hoc writeq and needless (and broken) optimisation in
   reset assert/deassert. This wouldn't have worked on Big Endian,
   and would've been pointless on any other platform, as the
   overhead for saving one write was comparatively big
 - fix various checkpatch issues
 - get rid of leftover clk-trcm in schema
 - set status = "okay" in example in schema instead of "disabled"
 - change dma-names so rx is first, adjust device trees as necessary
 - properly reference uint32-array for rx-route and tx-route
   instead of uint32
 - replace trcm-sync with two boolean properties, adjust DT changes
   accordingly and also get rid of the header file
 - get rid of rockchip,no-dmaengine. This was only needed for
   some downstream driver and shouldn't be in the DT
 - get rid of rockchip,capture-only/playback-only. Rationale being
   that I have no way to test whether they're needed, and
   unconditionally setting channels_min to 0 breaks everything
 - change hclk description in "clocks"

Additionally, I have been made aware that registers and code seem
to be an extension of the rockchip_i2s driver. This is true,
though merging the two seems like more effort than just slapping
a few compatibles and properties into the mix. I'll investigate
it further in the coming weeks, but would likely still prefer
basing any unified driver on mine rather than the other way
around, since I think it has better code quality now.

Original cover letter:

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

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  193 ++
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   35 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   26 +
 sound/soc/rockchip/Kconfig                    |   11 +
 sound/soc/rockchip/Makefile                   |    2 +
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 1737 +++++++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.h         |  398 ++++
 7 files changed, 2401 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.c
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.h

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68B4606A337
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 08:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sxA/ffjO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=IncuGR7s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=iWLaUfNyEe5PIuK91I8RVep6BUUbIQeBEg/UqMbxt4M=; b=sxA/ffjOW2u+/qeajAXZ5ej/mH
	IiTcFdqkmkVCQCUd1Nr+Xbr5EogUuNoowF7IeZAi5xvzQgZEEaCHiBuQYCeOHEkWW07m4Gvbe7NvE
	aNfKJbpJZsMVden83WqMe0jpklf7cOO4JKyaXnRCrweTitwGbfRIdy7t2whOwKcNAsl+gHw6q17rH
	fGa2dowrpmLf2GlNZ9A9mphpQhoKdloATmpMiSr0AjuYSHWpArfk8237x6SaUj3iB+00WsO83H7sA
	s43AR+t4Nw/m62HXYIWw+SDmvgrYEJFuJfh3S7QNFhlRTa8Dz5N/ZOjw0qbO9k7cRntFvVmLhAunY
	hNoCzjpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQdI-0000000Dxui-1MxQ;
	Sun, 01 Nov 2026 08:09:40 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQdF-0000000Dxu2-1VXB
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 08:09:39 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-36a0f27c9f4so3714180eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 01:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793520576; x=1794125376; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=U40/ZwQIGB99gEwVGvIAqyV6gYrXisGSQoDqHe7yhd0=;
        b=IncuGR7susK8VgAmrjXo0DaE5+8Fsvm/csSvRPxvOvPliLwxIt2B4ZTpaKHZYzsIwA
         fwJ2KJVysE3QT2oBqIDApa+pLojkptpJfqhonpUPirrJmQxAs7MbbWpVTFUOxX7rctYR
         ICeqDrS3+KUHWdwx0/KHIPoW4IzJg2AuJGuWZj9i765cUyIUyisM78P1v/LTX0TnVmTi
         XJFbJkkNjgBspgrINfq6zsHbJ1NrB8uJdYn/DOhr8xaMiH6UKJnB/dWG2sH3/wmxtOaG
         JxUbLIcs+34EB5pG00hda3MD58P1El6CzrjwmQ5RzOgIfIIb0p8rRHqkcQk2PNG49cvE
         G6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793520576; x=1794125376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U40/ZwQIGB99gEwVGvIAqyV6gYrXisGSQoDqHe7yhd0=;
        b=fnNY4MlM+vfti3p5ktGfy+VsGSWcnunKAV9g0EtGQ1vMSYUvwUWTQRM0MS4p6IVnKP
         KCUIi1R02zoTq9M6e9apePMS7eVdYWOsz5jFHj+Fy+dCxLN9XEfRY19W857OXoIUw1Xi
         RTOoe/sYNgs5eOlhUEvuKxzFirq7Hr1Z3sbwPRNb57yAsoaKgfhq2RjN37WTawWB3Yn2
         Rp+7WUKcUeUMFbf0rVQKZTg7ann0Q7FSb4v12ar/poMgeMG/D6j1wRYgikLIqdBicDuS
         G+6d7fQuotNuOaFeNVEjM63BWu9wCR0kNhukVJmfDfUEB93bmh5jVSSXRKwwGG8Jx4rD
         sKmw==
X-Forwarded-Encrypted: i=1; AKwUvBy5yEqNneCF3yr3DpBLPpFlCHFi3PezRHjp20XxVE30FgVKlxpML2e+zXgdDOI+pm3EPSGY+YnjN6K3VusAkg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/7+g48zarm+M0wCD/BRD3k1dnKuGqGygbnv81e8O3t0ad5+YZP
	DyjsVxfUbpFlS1KVF2rLFUMDwhA8nmArblEofauAz4gEz+hxofqqd7b5
X-Gm-Gg: AYBFou0Z3ZB6oQCysYE9fXxQyxziSMmBaOIj3oEUw2PhqH70eQDH3S4cA2AoVviIujg
	x29Brd/CZSWbnkglenHMeXg7gEdWikXBM+9URSZuyJ/XglA5nfbaedb27pCqM6Gunio6s4iUUYV
	Om6Eal0GZhk+SF8kLqATYnj/wDU94jnlmGRGiTafdsaE/XB9KvMxStNUeAUn+9y5W3RKSUSvT0S
	xITbNjfD6al7td3t9sJ6TN2+Go8Gd4LHNYnz4aOsRX5lRR1gC26rNG3izHatzEd7bVZFOPrXj5M
	7kJSwrYGCcRdonzCmr3npwEtCAQ1pLEzPaX/rHaELMI6egihzD8cjy4rJIeC+8cCwhZ5ndOqEvt
	uQrIn9J5CtluegjuorJYJmyCqMTgpRX0ARdT7GePb2fPa+cHMovf2JYw0mCOnJ4GOvSHJpgYVLR
	FAtMxbiRjDmhAICSskg21ywLOy0ieu7muGxqkAaE5NJRw99i6E9xSelR4PEKQtUo0jEAWfW0baa
	XtYYmVeCFeXE44tRlI6QBYBI8YR0seNE2sf522fqNtUaXfuY4pRU+E0/8uiNFev2GkFczYF3HEt
	Jjc4+ODo5/BtMY2Llh97iEP1DITqfvM5i5TXZavw
X-Received: by 2002:a05:693c:69cf:b0:369:daea:812a with SMTP id 5a478bee46e88-36a423fae73mr9966452eec.30.1793520576167;
        Sun, 01 Nov 2026 01:09:36 -0700 (PDT)
Received: from arch.localdomain ([152.175.67.103])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42aa8999sm27611719eec.29.2026.11.01.01.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 01:09:35 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jerrysteve1101@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 0/2] ASoC: codecs: Add Everest ES7202 support
Date: Sun,  1 Nov 2026 16:09:24 +0800
Message-ID: <20261101080926.267041-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_010937_433099_49EBF90A 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support for the Everest ES7202, a 2-channel PDM
analog-to-digital converter controlled over I2C.  Patch 1 adds the DT
bindings and patch 2 the ASoC codec driver.

The driver is based on the Rockchip BSP driver, reworked for mainline to
use regmap and devm_ helpers, probe the device ID, and report the actual
per-step PGA gain.

Changes in v3:
- Add SND_SOC_ES7202 to SND_SOC_ALL_CODECS, convert the copyright block
  to C++ comments and drop two unneeded includes.
- Turn the volatile check into a switch: the ID registers are now cached
  after the first read and marked read-only via writeable_reg, so a
  regcache sync never writes them back; ES7202_RESET stays volatile.
- Set use_single_read/use_single_write so a regcache sync cannot become a
  multi-register write.
- Use devm_regulator_get() instead of devm_regulator_get_optional().

Changes in v2:
- Drop the hard-coded 30.75 dB PGA gain from the power-up sequence; the
  PGA keeps its power-on default and the capture volume controls apply
  the requested gain.
- Keep the PDM outputs muted until a capture stream starts, instead of
  unmuting at the end of the init sequence.
- Re-run the power-up sequence on resume before syncing the regmap cache.
- Handle the regulator_get_voltage() error return as an int.
- Drop the unnecessary of_match_ptr().
- Fix the copyright header.

Link to v2: https://lore.kernel.org/linux-sound/20261021124552.767218-1-jerrysteve1101@gmail.com
Link to v1: https://lore.kernel.org/linux-sound/20261020143135.623897-1-jerrysteve1101@gmail.com

Jun Yan (2):
  dt-bindings: sound: add Everest ES7202
  ASoC: codecs: add support for Everest ES7202 PDM ADC

 .../bindings/sound/everest,es7202.yaml        |  56 +++
 sound/soc/codecs/Kconfig                      |  11 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es7202.c                     | 373 ++++++++++++++++++
 sound/soc/codecs/es7202.h                     | 131 ++++++
 5 files changed, 573 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es7202.yaml
 create mode 100644 sound/soc/codecs/es7202.c
 create mode 100644 sound/soc/codecs/es7202.h

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

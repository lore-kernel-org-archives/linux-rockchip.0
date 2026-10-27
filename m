Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B986606A31F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T4QOmHjb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=iwf9m6OW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=OZEDilnhHLuUqTjISNiE3MlMNo8QkRsBsvtaLK5qiqs=; b=T4QOmHjb2fULwSauzOY0rvgK5u
	6BN+++2kB5SlQQfK95/LtGAfeVIRriaDLQhh//RTVKIXHSRvpCCrb9+QtvDjLFLciihseMSUps5TF
	k/Pv5ROXEzSrJSJ9zn7aMjPfxWwF+oSAGUYotVASnzKm9nRyUfb4IVRUtq2segYORwTLIeaolqI/7
	7pCpftIqIv1LFja5qbDxhvooFyARafCKUH3unbjke0habAgJWnpgx1RASYJGFroBsD7wB3ffbyn57
	AmPJUeAGLlzWHQPOKXmOHBGyN3fDHtAo+VkV6InIfc0TCg6axCsT3mW4+dFf8U1qPdwSg9+umUtMR
	CghGkcfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3t-00000004m8W-3p0n;
	Tue, 27 Oct 2026 13:17:57 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3r-00000004m7V-1imQ
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 13:17:56 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-475920b9ca2so1305509fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 06:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793107074; x=1793711874; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vqZvXjV4n8be69kPlaiT6+hlyFGKWR2Jg6RBdmE5QhU=;
        b=iwf9m6OWe5QVmaV56314oY1JIp4qx3ElIHAG2R9JY4jFOFTiR/P8ynDykzIpDsiM27
         p51BE+MiZzM7rbOpiRjKkQvDqapVrSes2bGSCAVi7m2Fy0vOMSeX6wUkUFcZxXj4giNr
         sPA/3oIODmcW+MYBzc41aMFitrIz3pmmLqw2n0BW3cRtxYhgb75LmS/nWKrAcieBr0Ws
         ZE0VOwJ9dFTyoYAhZCQDWYDt8r2M0MGxQDruuEkDPG6vdgD7qr3bxqSnlFR19Hq9NPSz
         lEMvU+L/MQjdcevh5AHbKHsNo03wpxkCw/0pd3fBE1LiFO0JeTf9NJGdLrzgwT0ptw/L
         7P5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793107074; x=1793711874;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vqZvXjV4n8be69kPlaiT6+hlyFGKWR2Jg6RBdmE5QhU=;
        b=vgcsw07Z5FaDG+ZBprHT+4kLeHzJpRf9jww+eqyLVUR0VsqpSSAnJtpwPDLWrtk38Z
         VUAESYz7bjNdwCleW3bE/Cmlf/Q5H8H+yTay2Dgs4ydiIDmGMBQ/cF4kf/ONr3jHZDN6
         0c9U2uU+DxDoA4FR+s5AmMQzTrK5fibLBCPhqs+JksWdoA9ShrB/3LfTsoUtRqf+DI9H
         3ARKFRucpMdsvyZWeamFfcWJnI0BNNUaoypV4a893RnYMexh+25rZ4I0vm2LoZYnPRZP
         2QUD7xejC2KXli5dj/kfP3osTbK2u9SiM2+iB3BGZ59ahAYOSxnsAkl1G8GAD6t4GyT8
         hHqQ==
X-Forwarded-Encrypted: i=1; AKwUvBx5HlgIAptJMmsNWGmVq/ZrLOM8Kn/SSrwCxrf5La9VbgfEsuLj6eznjT45rGEG05gYWlfbI+ikEqdZshBsww==@lists.infradead.org
X-Gm-Message-State: AFq9FYKH88clYPlpboXAQd9feARolLF07mwywLhKnp0SGZpKwUgcsuUj
	ZlnprWE9vok7ahQyJ6lalir0Lc2YfgoQkNrJe+HogYOPH+/AxOLTCAfs
X-Gm-Gg: AYBFou0Q++8fDGHwUg8Sa+spBgX0cCbuSK6hEQYxdww/3FDU/6yfEy2YXcmC7rXnN2E
	o5+G3jGPsMiGZNUsmH3ADp5k/AKEanPX1lW6FWYIRMlFtrsmanEHUwvOhTFyVgSuJuRCRIdytX6
	txc0T6hllO8Tc+WySy/q9Ca/SmJaKeqoXPwXTsghJ9ZRrZqM/5IcAu+NVsqKSOFHAYloxYvTXF5
	joM/hNvSdAgraWAF7Yxqs3r2/oLk8CBgMB8b+rAb35UQnb2VGDjxjHnzwbAt+vmv7ALC5RNn2+/
	4FWpyXMM8quKzKZP5R2tKbkjjDf5urYglUSwoti6/v67KKJI7KzVm99gCu+O4CBi4zL777iJvNd
	uYoCNwmvDGsGPFMd4C2Pe+uR3Jj5Y4UaMZifpAcyTVH9xgKdXosfnWvgJWiB9fnXtm78bhdmZ+H
	6PVY2yl9/eE3cx7NRudlBNpWBOtNy/YrA+yGFtczhgZMAQSaioqEeJdGPKA2IE6h+8Fc42N9xRa
	dt/ecopl2aCgZy2ueicRxllFfPvonjYSkuzHDSHwupLaWVjDQpitOKpyOrd0E3MSr8x1lF4cK0a
	xnT/EZbdaAMv1xa7py6yeXcM9dbgHQ==
X-Received: by 2002:a05:6870:b0ca:b0:475:a112:1276 with SMTP id 586e51a60fabf-4a83f5d3533mr5799677fac.35.1793107074123;
        Tue, 27 Oct 2026 06:17:54 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a8b74c0a7fsm23412fac.2.2026.10.27.06.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 06:17:53 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Cellwise CW2217
Date: Tue, 27 Oct 2026 08:17:48 -0500
Message-ID: <20261027131751.1724448-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_061755_451495_48C57C9D 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the Cellwise CW2217 battery gauge driver. This driver is based on
the sources used for Rockchip's Board Support package [1] but has
been updated to use the regmap API and devm helpers.

[1] https://github.com/rockchip-linux/kernel/blob/develop-6.12/drivers/power/supply/cw221x_battery.c

Chris Morgan (3):
  dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
  power: supply: cw2217: Add support for Cellwise cw2217
  arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro

 .../bindings/power/supply/cw2015_battery.yaml |  42 +-
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  |  21 +-
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/cw2217_battery.c         | 818 ++++++++++++++++++
 5 files changed, 885 insertions(+), 8 deletions(-)
 create mode 100644 drivers/power/supply/cw2217_battery.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

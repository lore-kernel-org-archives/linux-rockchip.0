Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3763606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 19:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=y7gwSPil;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mt7CfLkk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ug2GznKEdwP2oPoqbK1YmmUBTsdoHEMH2Bch2Ucj4YI=; b=y7gwSPilRAOEGzKszSSajcnc0B
	JW1ahjaU+3/6gOFTatQybWsZmxafMDxyIUHtDzVCMi9piLpJSzfgCk74SBNVFpo6I+AROdwGraM4V
	ZAXsZj2Byx/27ZempT0FwLBFv2clfo4XiuOZB5Va8Df9EcBVmeZt6teFFoZjzSCeYJgcjb0PH7xHG
	0kt2qtIaWVCVes2B6OzNb4BaZDhfUpmVHPpspeZmrY36YsBEtB56vM6c+X4mt18B4/SdcZSj32bIY
	OEp+cmrvuJFl/0YL+4DFmufz3c0eHrV8DPHb7XN2P83pdkiZOjESwHHx122XOQMsWKTDHHzagp9UM
	2MhH4tlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xl-0000000HXR5-3NLH;
	Fri, 27 Nov 2026 19:23:37 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xj-0000000HXPz-2F80
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 19:23:37 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-71ac9e15640so5244140eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 11:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795807414; x=1796412214; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YdE4huuvwKUfz6uZKmm4M7NAmc0tPYzip99VdkJjyKo=;
        b=mt7CfLkk31zCnOYTkYmHs/OLDKlMJxonRhg5Ijds+lPbyjjDvsgmvyJMUIC88SoGxM
         y22WLI9u+u3+c97juFqjcmGJ52rtLwornU2GfH4TX1NN/JVdsV45h0knISQdn+fYopMu
         6LzzsPcA3Uo0fX/okqEjyw5zm1LiRs/6fUTR2OYf06gepbXLr1ecxOajvCBmmiAQZauL
         ys39fGTzH2kigu3Jr+mUWHP9F0qq7L9Glo60wmFPd7/U1UVGNwx/q9TETD3welJgELeT
         o39zBtNw9tPuop//wnpwebbb8KG8rxERFrD0ZzBkY8zQ3cSwEdiA7Hn4ESJZSnHr3ixz
         BFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795807414; x=1796412214;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YdE4huuvwKUfz6uZKmm4M7NAmc0tPYzip99VdkJjyKo=;
        b=l6vqD8Up5mnvnuszRU/i9K2x9d83eI99O0ngULB30QFSpRLiCu2RVbz21sKIV2v2s3
         p6U/cXB4jBQ3bCtBFieSIgXDw1hF+AyISo5BPZnOM0OcpYbYUqt3eg0CZFKw/ytaHEAd
         NjcgCUtS7R2LqCakFhxrSQUoYT6BKzpxMU/1cbvIOqVLi4Y/bJn7mHKhmX/eImUfRdTF
         kZ6NK+cpOgWJGfezGmIBLHGNzoHBwtqx8vnmUPUYPB5zkq8J28QkFE4GL9ucKj6Lwhg+
         5H7Ea0j+LwKwgoTAolT7GsRxkd3a767P1/IsO6vDAo+gZorjPV60oAayF0v+Vsmo6C0E
         m03g==
X-Gm-Message-State: APuU4Z9tNQepziCQugDPFlplpAVZ1rlTe/Vrq4ECZdURDMWdBG+thHap
	PpcvL1Iz4DvPm0jFsrKPWT4DjiImA/EAwvckcAQ2kvX1J20zvqeVRr6CSOatfA==
X-Gm-Gg: AZFdTZfY1eFFJTt9LVkuhBzDtLwGpo40D5jVEefUYHkhAb4+vZElm0T+kuz9Os9vzMs
	Fs7oSDt44nRjSvzG4ycBYvbtcUre7nTqT12H5ESE9wYMjV+Y9D3vK4KEH3CID+B3HmoCaK8mrNh
	SrnrTQsxpEWkaptZmwCyvxYucvSf9hkDOWV1IleqR+sewjpQoqEGtNVilXjn+FtgxAgyx/9kJlu
	j0yNtXYp51gNxJxe6COmq9fOJFmHZb9tVRcd1njLYWcYUoMuhzs0jGxYNo/xfL2xYaV2+TKp/NE
	N/pUE426IkyK8qC7zs98uRd6K7draoE/uQpZBWsZtfsi4LMuTVJd6szrzAmA36dBVIjEfawRo8h
	t5N8AD7LZ69bIN5m5BWhUzZogkFBv7Ps5g0CAPlI3/NQV3NnoQsR/bvXPy0kbGDTPFn/NyPQy1m
	VE+eegfj6VPentGSxbchPMMrCHQN82f5gpDaJ7AHn564ULRl6qXpnnKoTthdbdz9SSsVWIdlwGO
	XWxP1tuSO4VE8C/f4NRdAXdK5HhC8V/vxU9FDa2HpMS1ZeKqMjJcFU6lDtpNnKwh+s/RkXq7DX2
	QdvfXvC8H8e60eq3UyAkIXZdd8W3Pg==
X-Received: by 2002:a05:6820:3510:20b0:71a:efbe:ef21 with SMTP id 006d021491bc7-71b3920c4e2mr14032041eaf.5.1795807413607;
        Fri, 27 Nov 2026 11:23:33 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc60891cf6sm24044850fac.13.2026.11.27.11.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 11:23:32 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 0/3] Add Cellwise CW2217
Date: Fri, 27 Nov 2026 13:23:27 -0600
Message-ID: <20261127192330.610452-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_112335_580175_582E6D40 
X-CRM114-Status: GOOD (  17.28  )
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

Changes Since V4:
 - Updated bindings to set 64 as the minItems and 80 as the maxItems
   for all battery profiles. 64 remains the min and max for the cw2015
   series and 80 remains the min and max for the others.
 - Renived the status okay line from the vita-pro device tree for the
   battery monitor since it is implied.

Changes Since V3:
 - Two more small fixes requested by Sashiko, one trivial fix for the
   to not always write CW2217_CONFIG_RESTART for the cw2217_active
   method and a small fix for the regmap writeable/volatile ranges.

Changes Since V2:
 - Fixed more bugs pointed out by Sashiko.
 - Corrected an integer overflow condition when measuring current.
 - Corrected logic for when we don't have a user specified battery
   profile.
 - Added power supply changed logic in the worker.
 - Updated the Kconfig text to note support for the cw2215 and cw2218.
 - Added a check to ensure polling interval cannot be below 250ms.

Changes Since V1:
 - Added a default value for the shunt resistor in the binding
   documentation, and updated the commit description to note that the
   min and max for the battery profile is now per-compatible string.
 - Fixed bugs pointed out by Sashiko bot, and corrected units for
   temp and shunt resistor values.
 - Corrected include pointed out by kernel test robot.
 - Noted in the commit message the patch is based on original work by
   Xu Shengfei at Rockchip. I did not list him as co-developed or
   signed-off since I did not have his permission (yet) to do so,
   but I have his authorship included in the file itself.

Chris Morgan (3):
  dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
  power: supply: cw2217: Add support for Cellwise cw2217
  arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro

 .../bindings/power/supply/cw2015_battery.yaml |  41 +-
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  |  20 +-
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/cw2217_battery.c         | 878 ++++++++++++++++++
 5 files changed, 945 insertions(+), 6 deletions(-)
 create mode 100644 drivers/power/supply/cw2217_battery.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

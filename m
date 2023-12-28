Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8714CC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 17:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/K3KzMwfkSiSzqouz9JxVzK2O79ludgiY4j5ukJh03g=; b=q6dKzrqU+zK4rf
	u9ya4Qey8vBOXWVNyjmAixl0fPsBc3A9rYYID1coLBIo2njBdbaZbDjJAmzOmEktFnedhaWVagePa
	YqR74rNLXuTUo6zR7fZi6lO3AahD4YFxEwzpMVinqBqk7a2rthVmn5gGfggKuWSwWu8M0NseoTnnP
	32rWcdbipZi+qt+O8WnmML4RKm5PYNtaj6qgt+rHQEugIVatzqSC9MWMPN4iN/Kjx9p4byfjJ+p7p
	wZY4dfaUzVWOZ2meqF1sEuJKDUi0PT9xoL6TtltrNaz8Ww3PtrxdSXja9Bj7X/25FBLcdFvDAPwYN
	dpKFgn5liWQDf1EANjVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIuDJ-00HDMu-39;
	Thu, 28 Dec 2023 17:30:34 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIuDF-00HDMS-1x;
	Thu, 28 Dec 2023 17:30:30 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-67f91d48863so45269816d6.0;
        Thu, 28 Dec 2023 09:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703784626; x=1704389426; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N4Z7YQkAwcysiA9pCezffCW5EWUHNwwvsbHz268u+54=;
        b=IWAE5SDfT5BHOLD4QkLC7vCKkdoXFOuSzk53NOmuZhWpTiVLYgKaBu0sto++cN/dX6
         fCEMjRi9vGX16wxAZ+A6sUj78vSX1RZEZBqZd+6RPcTDhISyJd1bWzRJ10LzFt7BJD/3
         XEKQfjdL7T7I6UKI//WTIlHrQiERjqwWN5kTNaJwhMHWuC3q26R1V7sniQMEulY0X8zS
         13Wwyc3+VGYo+utA6u53jOMeBiT2wvnebdlGvk0bmuq/kRowJmTtPHYCateVgMicFeW+
         fO7kmLM3MXXNbNo/NFBuTC8rGfoeME+Bt5LUWWZnCfbVHS6vO0mtiHnV2w+mutHTTFQK
         b9wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703784626; x=1704389426;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4Z7YQkAwcysiA9pCezffCW5EWUHNwwvsbHz268u+54=;
        b=RvWs9hxaIg/TOf6HR1WkpemP0IbnFDZu/GoguTUFaxnaTNfk+PcbnnMYLMK/n8l//S
         Mgmxfvnoi1ev6QMrKd+qgRYQuIniNBmcSJwjVOmMJ/Hg1Slhfog6xIA9dXLhFEX4UWRM
         o0sIwku75ArkjZs9IFoLiE+nJAduApPBCKJgJJoG/i5NYpzEACgJ8sX1Zxw0vWbzDDNg
         OT6I1/zImRNl/YrrudD31qHwOLvCB6i+ajE/8vmOT6FWXckeh/Mac5n8uwxLWXvkPH/d
         xVmp4dTk63HCCdaNrGYilCK+04T6ex/L39YEKNPDJWylakKfMW0fQzS96pxRWGgG1kdW
         wF+w==
X-Gm-Message-State: AOJu0YzHmc4WXjiB9TKiLVfRG8D4tbbC/Rv1A5zJuFzqB9phvChLJLVG
	gQN6G852aC5l7MCAZaQ5eTQ=
X-Google-Smtp-Source: AGHT+IH1asPUVNlDf2zYCLocNWw/DPbpdqhnc7Umuc9yND5MTYpiYP5Pk0oH9N3IonyIP77uoBbtGA==
X-Received: by 2002:a0c:d7cd:0:b0:67f:f29f:93d6 with SMTP id g13-20020a0cd7cd000000b0067ff29f93d6mr6401646qvj.129.1703784625812;
        Thu, 28 Dec 2023 09:30:25 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id da7-20020a05621408c700b0067f2c03d4adsm6392917qvb.100.2023.12.28.09.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 09:30:25 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: nanopc-t6 sdmmc device tuning
Date: Thu, 28 Dec 2023 17:29:35 +0000
Message-ID: <20231228173011.2863-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_093029_667701_C0E4FB2B 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

drop max-frequency = <200000000> as it is already defined in rk3588s.dtsi
order no-sdio & no-mmc properties while we are here

Signed-off-by: John Clark <inindev@gmail.com>
---
Changes since v1:
Additional scenarios need to be tested for proposed regulator and
cd-gpios changes. Withdrawing those submissions for now.
- removed proposed vcc3v3_sd_s0 regulator
- removed proposed cd-gpios
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index e83b71510a47..d7722772ecd8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -536,13 +536,12 @@ &sdhci {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
+	no-mmc;
+	no-sdio;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

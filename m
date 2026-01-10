Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11C5D277CE
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 01:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlLfAsZmcO6xmnMCTF2kIEjDrhZsj3z9ySt8M0P8lVg=; b=NaQiUP8lykM8J+
	wBTF2zdrFhJKoXjYdOuPhqImB6tfd9XOOph9rBC3GKWsZnmLII6p8n4khXVlUWDvnABGpES6a138a
	Fp9wxOB9Y7gQHnrX6ETpjdSUuxeYUNMRgUG4Ab7JNtMw8ShlyH5S0C6dHcOOkqCWmCcC2/VrOOXxi
	lp4pQ/RDqy+/F7sDMqjjXLQUDqPw6fnNBLBMCSam0ODRhN0Sfqj2t8KYFfg7eII2iHH44XCrL2BGT
	6doZgrhl5WV4L+a6KXjU3gDViln82czjlBSRonnybAm3feUb9xru7p7QFJDRrpqkS5DLmbgpNxM9M
	nPaNpS/WdclHIznw5WcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS4-0000000393l-3ltl;
	Sat, 10 Jan 2026 01:07:36 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS2-0000000390s-0SHt
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 01:07:35 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso22671575e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 17:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007252; x=1768612052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DN6MSURqxWOvIBN2xDV0KAizo7981QvoO4K7apHW68Y=;
        b=mK6GtGw/3Nky5l8bTvkZj4XzPxg3+CJ+mfVwq7DB5CLlYMx3SQu4MDck+tRS0pXqxV
         ILbjGXDcdKcvAeai8cCt26vJ1qRxlzYiF4zmrPWd0OV+mArEuQj3SD8PYibTjRgltyyA
         aPC7WffYSaWE2JRaNhIdKnbnRsk8CkLdpDzRmmylegGzFpVfR9YpEnwWmtP8YUL+bDN2
         3O04BfO/5SIAtEYPULsJpcqllK3JEL94UDBriOnEihqOyiLxMDvix7qjPK10cwge058E
         p1W/JH1w8m+1t913HR+FvcJQXkxLkB7gUp/Avyy79mrz+Q4aCXqH1seFfD0J+10rNMir
         7lbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007252; x=1768612052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DN6MSURqxWOvIBN2xDV0KAizo7981QvoO4K7apHW68Y=;
        b=vL2Zu+OhAGOy5LhdxefMvzbWAa8857NjBnWjOxmg+2qC713rUXfzre0gNmga56btzv
         URobiDXus87P1j0eMWQptgzFs1qyq531meKVzM3hjQtbg83D23TKOyC44B6cacbQ4czx
         6sSIiDvf/K7q+89d5Yk90xpUKTT2sntYoFU48AQoWuKFSzpEZvD1pG0mpLEMhte9p7oX
         htiRptqIBdBjdkWDYZyXTV+pyZ5Kbv8u4lT9WkIr+b/AMiccRiJTUpOKorv3naP9Sy6G
         y63j/gs97ALTu+KUgd8WRhwxS8AsruSsw6xBldMYzXTC10blpI2a6kljUBKFBP2B4XGN
         doyw==
X-Forwarded-Encrypted: i=1; AJvYcCWItQH9qdlPQsmXtaUkX311Oesc/KwhSNdg4ONvbSgt0U/nQc/jyOGpJ5x4aiK2jGS9qFakCcuJlO9Td+MoiA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAQEWu7hQnk0qdBx3OdLWhDYR3DdINIAs3+q0HuCIQ5hdqJiqP
	CpeMPASobgskGYD/1XlbMoWy/bTPN6L7ShKUzm1HaNQiaZKnNpQG8S7x
X-Gm-Gg: AY/fxX412PxNNc3rgb27PkjjVtZc99t3/8S8TsMRqUJ61r4uLsvtzMc+oynxgNPBF8E
	GFW3rs7qXa6GCBYpGpSzSUnsqGE8oSOgftQtOYITlUg5AoMPlVvdnICgHgcoos7y2xeyBLzhy9W
	98aDeW3gTi8uC86G88agPvlO5pVUkaiKAeBrbO/KljrXfd6cXd/vifVCNZ3LRld/7vv0XywXkXH
	rORjC6Bd25q1/MqoI4z7czEq+BNG1a6ggTS0NcnoCWng1QD5BjdGeBDn5PLjc83DEDJpBiNywNn
	xR0e3HM48ba+wZcHBBh/jk+nyBO1sSBt76nbIsE6UP6ZoOGimYiUfr3k5NP70voomj4XZBaOCud
	2hifVU9t1GK90SrSa3MDPEmrEJp97KXzMbudx6x1aN0lObM5u0fG5XVrLxDbM7eIRHPL+bFGbqX
	onGs4WZO3ZIe/xSuNLKVOu9qHpe7DQJy6p8cdyv4tgzNWeQPOaaObsNIJTvjuzKOdBghxhsbCet
	Jqty14=
X-Google-Smtp-Source: AGHT+IHUUZ/4ZQNhh9IvF2WBWql7HyWhiFdLiU8Xz+XMhgJCU3OwR9PNJC6uNnx3kZs51See/jVZpw==
X-Received: by 2002:a05:600c:4fc6:b0:477:a21c:2066 with SMTP id 5b1f17b1804b1-47d84b0a902mr114638605e9.5.1768007252116;
        Fri, 09 Jan 2026 17:07:32 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:31 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 3/3] arm64: dts: rockchip: add stability quirk to NanoPi R76S
Date: Sat, 10 Jan 2026 02:07:15 +0100
Message-ID: <20260110010715.1610159-4-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_170734_145647_6250611B 
X-CRM114-Status: UNSURE (   8.70  )
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

Enable the 'rockchip,disable-runtime-pm' quirk for the SDMMC node on the 
NanoPi R76S to prevent bus instability and retraining loops during 
idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
index 31fbefaeceab..90a798ee9e68 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
@@ -754,6 +754,7 @@ &sdmmc {
 	disable-wp;
 	no-mmc;
 	no-sdio;
+	rockchip,disable-runtime-pm;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

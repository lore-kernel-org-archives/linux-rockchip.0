Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF24CF2599
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 08:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r6Bk/QRQORCXtwcOP8dd4K0APIbKaCfLaepbzMSfNY4=; b=0wse5/DW2wEQxj
	z2nc+BcPV1PI/Qq/NGMEXaorkJ3mdbYaW4pj4otrwyloD53b7600e6Ds/yWmkBnKmxi82bFFukuC1
	xewVSFzco/47bWE3IxSpviHycsVL5BMGLEgOViOisiBuG8mng0uFmUNvwmN1MJUIj6inapEQ9IxlT
	vaYeO4nX2V+x3KnngqUIKQVcod1V329HdgRYM8JuDCvrdmSVDU2s5Zz2DQ3b4OcVYVpbYjtTgOw1W
	Ni8IPBv+tTsJvlAahHqC+/HLt4uxOOKRgyQITrLrYxl1SDFNLyVLdoWhxMDLOEwKOFUPMbGniH5BM
	5Fw2kp1kV3uWT4zs744g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdGN-00000002lcp-0T2F;
	Wed, 19 Nov 2025 08:10:03 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdGK-00000002lbK-3Hpk
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 08:10:02 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so3866092f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 00:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763539798; x=1764144598; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FiIFVMX2MR+XXmvXnG9d1/8nmYiayzPl3ENasC1cOTY=;
        b=A+HQS0ySoUj9QvVBNjtc3dNp8X0LMCWQU6DIQCxbGYaw95Wmc1YftUiwmvUuuC9WDD
         CxJGhgQjTPGttHzklDD+Z5FnJ4fm537+pCccTZRD1J5dJ1mka0bWpBVLc6lbuOMXQyGV
         TthXH7R/duMGlk3fIPT4cm4R24g2Yv9q0JQjACKLBxXwyuP212PSVxspqz7D/zJPYcNN
         4aWzgRWxkBbB+J6mINtvmITu6O/EBiQe3c2eS0d0Oucdatg+t2k+qU8uVULWuVKAcqKk
         8QNb7GtIgMS/yZEq8spgz+emZ0RU2DI1MKM3tUkoCQR/akMnAxeIsglmEaO8eNoqSrDa
         /ntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763539798; x=1764144598;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FiIFVMX2MR+XXmvXnG9d1/8nmYiayzPl3ENasC1cOTY=;
        b=ren1TLDdBuycLsPFIRV6/F8V9tqONGqEl7hb9zee1XljaMiTF0A6KN1OxMqsrWGKsG
         mxAxKbJL7Cmc36celFzzJe56HFhVw2CI/yG4ShzcXzmMA6Zd1atJ46AYWyCzApIC5xQa
         ILAfuBSND13VxJM/ZjzSqeFE055sxNTT09fIvMckAi7X6BysGZYhuwnzVBMT1q1rkXJL
         etrjP2nK1e73zbCsmPS/LHIzR0Uag3m798T0sYekJYhxNqpv+UioZcIuN1o21ABldYxP
         UMKOYznxORKVEWJYBnYwMiPnKwCXfZhGybhV+qzyBiJCzzmf/k5u7FmEzLYl2BoBR/XQ
         FbRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCwW69A0LEXbS0VMdpWwziQYmjgwt8qBZ0seepS1hTliREmK5jzZPuK8TqC3Y+lH+TdmVLPJsiI9+5sC8Lbw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTaciBdM84hvlPnRe5tFRSCrqrmH5FTHnP+RB0eFTdf/BD5qsb
	/mDSyMBNFv2wlAaTuDS04A39OWaCMDbcgwePdl5ddkqGrluKxLOL1Mt3VzhP+g5YhW4=
X-Gm-Gg: ASbGncuMYXUFAqwsMz007i9RB+ztzMtvQsCucqzertg/vX/VJgj6k6nOQTz7i1L4cxe
	lSy95hDTYTltgmJUQl2deNOOvD4Eu3vpsEq0aqkwqg2vvweSzA7krVw0B09+nQ77mGhnng8TSxc
	/nSo5t6TNQqm01dmqbx4cKTANA1TaipIsWnw/c5ahEB6CVtEp+GA6+PuJ92Ke6tOI3SIYzzrfXw
	s6j4KzeH3m18ayBotqmgUYdvyRK9i1tskPMRLxdDvjfLSe7QqxMeI8fiPi0SFzyBiOlP/SoTNlx
	7NHx/Jp3LwCn3n7toZz65H/q1Nuy17Yezf5r+lQLeYWMwe2tiFqNvjDt/KBllNmisvHfHkB/cmv
	Jv2QBVUTT3dTAToQLvAtwd5TV8nIQnEyM8LN6qObwutcXCMZ6ElT5d4h1lp78Q2rDHruzWE+zwl
	LXwXFUls7U1t1HJJCojwiYOByJr4Q=
X-Google-Smtp-Source: AGHT+IE1q82L18y3VRPhHfEId7f170t/V5fSl9Cnt7w8NWmAat0eSm35Q1/LPz22OoVfb8I/7QAR9w==
X-Received: by 2002:a05:6000:4383:b0:42b:3c8d:1932 with SMTP id ffacd0b85a97d-42b59345301mr16798960f8f.23.1763539798470;
        Wed, 19 Nov 2025 00:09:58 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-42b53f0b60csm35501317f8f.22.2025.11.19.00.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:09:58 -0800 (PST)
Date: Wed, 19 Nov 2025 11:09:54 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH next] media: rockchip: rkcif: fix off by one bugs
Message-ID: <aR17UkYsfAxCZ4fe@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_001000_842227_3EA00640 
X-CRM114-Status: GOOD (  12.49  )
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

Change these comparisons from > vs >= to avoid accessing one element
beyond the end of the arrays.

Fixes: 1f2353f5a1af ("media: rockchip: rkcif: add support for rk3568 vicap mipi capture")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 .../media/platform/rockchip/rkcif/rkcif-capture-mipi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
index 1b81bcc067ef..a933df682acc 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
@@ -489,8 +489,8 @@ static inline unsigned int rkcif_mipi_get_reg(struct rkcif_interface *interface,
 
 	block = interface->index - RKCIF_MIPI_BASE;
 
-	if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
-	    WARN_ON_ONCE(index > RKCIF_MIPI_REGISTER_MAX))
+	if (WARN_ON_ONCE(block >= RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
+	    WARN_ON_ONCE(index >= RKCIF_MIPI_REGISTER_MAX))
 		return RKCIF_REGISTER_NOTSUPPORTED;
 
 	offset = rkcif->match_data->mipi->blocks[block].offset;
@@ -510,9 +510,9 @@ static inline unsigned int rkcif_mipi_id_get_reg(struct rkcif_stream *stream,
 	block = stream->interface->index - RKCIF_MIPI_BASE;
 	id = stream->id;
 
-	if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
-	    WARN_ON_ONCE(id > RKCIF_ID_MAX) ||
-	    WARN_ON_ONCE(index > RKCIF_MIPI_ID_REGISTER_MAX))
+	if (WARN_ON_ONCE(block >= RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
+	    WARN_ON_ONCE(id >= RKCIF_ID_MAX) ||
+	    WARN_ON_ONCE(index >= RKCIF_MIPI_ID_REGISTER_MAX))
 		return RKCIF_REGISTER_NOTSUPPORTED;
 
 	offset = rkcif->match_data->mipi->blocks[block].offset;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

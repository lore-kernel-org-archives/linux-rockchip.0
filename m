Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E071C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 May 2025 02:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QWNhvt98Yi0iZvV3SoxQ7xcx/XKS/ZV9ttp3sKscC8g=; b=upUvhGLnOT0DYN
	CTT87iCOGBoc79IgkKMjuLaDvbfABKEmINolhsX6kWj3RC4iVLa+mvMli6vOIrrvLdSwBjVAxTom+
	SIe0am8CycKhVaP6nx1SSf1uy/i2q6AU6Z5rFfmIAY0FygwYDUzzghPtXVFAHADnShfmtCmN694ot
	IovbxgQL2NFROQ4lgxIhKloX2dQ3EAlHo97ocFOPuHs2cVsPtyzfR0EZGnVNoCuU2KPaY0EEiYqGj
	K7J6NSCnpRkxBHbKUd83wS3r8iAModtGhRcto1CmKRxUagTpRi9oK1Gw1iV4sJcAlExYBMBg5Xdyb
	JSnFBUglaCMryaM0q7ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG6wS-0000000521M-0Czf;
	Sat, 17 May 2025 02:06:24 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG6wP-0000000520Z-2GLI
	for linux-rockchip@lists.infradead.org;
	Sat, 17 May 2025 02:06:22 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-6f8c53aeedbso5841846d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 May 2025 19:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747447580; x=1748052380; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BKXLeL3ukBspnW2IUVVrIXJnVabhkRXsrkb89rHps2U=;
        b=Bb+MrVaX0q050EBH6xCOb7GaE003Je0DcWokewAYj1os4uYFK+y1cCijf1UBWAs1uB
         3ibE/64JzjxsR5GJpNI12lS1zVw/7lz1LQJa2X5o3YayYBCJxPKeFJvkPeWm4HhuLIOt
         uFN83GsvVzTpqPAdYyQqRO25sDXVxXl4itMV8RMUj6qEYE84oa/Vyhe+zCH5csIn/SoL
         lv4jZNBSjsuZEyftUT6Ql4q+8r8a/Lrjy/jfK7rhXUeRYegVgu7yswhVoOXdc8RAuRSI
         27+vJt8jHRuw2RzegsgvICjVJdDsoHxs8Ou+jmr7jDLVUDNIpcdLCx0HcQV1qeGP9WJS
         FPWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747447580; x=1748052380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BKXLeL3ukBspnW2IUVVrIXJnVabhkRXsrkb89rHps2U=;
        b=p+EGFi/8ALqr6+2oDGe3XTSOyKgDQk/qiGRq1xx+FNbcCNWh4tRSCDN/BMjdY+lgUM
         1fk0urBr0Mdxyp1F3jEQLZX2dgYB2ysp6S1NQcN48dkp6HCiW/lyNeUL6ZTmoMJHHED0
         OkOysogM2PcHrWrX6fYlB+TInC0BqlGgX14QD92cmMqSS3IyDu/00D+cXvetbT/ZPew8
         9kuEwF9Hj4LyUTml77m555vyWO2TBkwB13Bd6i4Ki9vRuVFebkmArfpABZS3DFL8e8gN
         39S4icbqX6ZoFijwaVJfp/jzx+wrvhGpQOhrbRM5OrKTbbsuSAfAbgGKC1UTOZE+VbEs
         xfaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv2ozdM1n7Ymvq4fZPpMbMhcXPBsPMeSxYeSWdlx/wO5CaWcll8EBxAehvNJG4rWNyrDFYszmb86n/KKpt2w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhEYdODGD+h2vjavwqEZEOdPpbqlPi3DJNlD0+RgxMnFLloyzP
	dHpQ1cb/eiHmw0uFCSIozQv3lRYT0Dq4V9155d/KQFK9gycumFVQB58=
X-Gm-Gg: ASbGncvIIuLOMicvLGeLqBOhHjiwadNog4zl/iscFQUd5A8ilCTsnDMlqhptbu/TU1N
	OWdgEf1PLL6gTa3nthiS0iS9tSooJDVj8mzt2CrmssPJ7oKonL4uPF3B993+/p9/hbx4wfN/chN
	SRCvILiwhdhYSJpysQESYmRffn7/O5w8llh1kNxFVOdmCTCDGpW5PgNXhEH4GZpCyxn6dfwYjbd
	L6SHbPKStdcmi8zRE4a8dDPWZNYAQRLasShXpKKMAicbyzQ5gsU8uYX0dxUIviJoHVMVAgDVAzF
	NUdvAbgaPT6QlLInv7ogMoW4TKPEtRo+g63Ajci6Yu7Xy9T7G71v6+EoqYwJuXQtFOkYHjudojh
	a
X-Google-Smtp-Source: AGHT+IGpr4M6tPFJTIRklSzJoum9VgP6uUrsrUv4SQX78ySuBkpTAW8J4v1g4DGVFtzUXC4O5TsENg==
X-Received: by 2002:a05:6214:2681:b0:6e8:9021:9090 with SMTP id 6a1803df08f44-6f8b2c9d22fmr78053266d6.26.1747447579646;
        Fri, 16 May 2025 19:06:19 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:224f:4011:50ae:ea20:4b60:8f04])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f8b0979851sm19250876d6.97.2025.05.16.19.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 19:06:19 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: heiko@sntech.de,
	briannorris@chromium.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH 1/1] Fixing a minor typo in YAML document
Date: Sat, 17 May 2025 04:05:52 +0200
Message-Id: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_190621_589139_F178C381 
X-CRM114-Status: UNSURE (   9.76  )
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

A small typo in the rockchip,rk3399 YAML document ;
"less then" should become: "less than"

Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
---
 .../bindings/memory-controllers/rockchip,rk3399-dmc.yaml    | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index 1f58ee99b..1a96c743e 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -128,7 +128,7 @@ properties:
     minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is DDR3, this parameter defines the ODT disable
-      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      frequency in Hz. When the DDR frequency is less than ddr3_odt_dis_freq,
       the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,ddr3_drv:
@@ -176,7 +176,7 @@ properties:
     minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR3, this parameter defines then ODT disable
-      frequency in Hz. When DDR frequency is less then ddr3_odt_dis_freq, the
+      frequency in Hz. When DDR frequency is less than ddr3_odt_dis_freq, the
       ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr3_drv:
@@ -223,7 +223,7 @@ properties:
     minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR4, this parameter defines the ODT disable
-      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      frequency in Hz. When the DDR frequency is less than ddr3_odt_dis_freq,
       the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr4_drv:
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

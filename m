Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB99EA8123
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 14:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3a8QpfjRSlQcxiuExDAIPdIH89o6E1dRLpTzGBdA+0E=; b=Ex9yjeu38OPQ1B
	xlSn7k+yQmZD3b1l72wNbxu8TbsLyZxXPXXcKmGXzWznS201ptbt+TVpTv2rwsS2/fd/2+jbl/WC7
	Y3vYA4kqgRihh42yipln8dmFbvCQiDP/xiYrh3doRONSpBbIgzCiV96/f3qbRigIMor+Z6KVcWLmC
	5mGFd5weQ7pM+EG99vSkxfJBK6UrKrt6ITVPk0DKElZ5iFaccIHzYjd8ckQW/EI0T7OEMpi4ILI0T
	d2G2PnFKa4DsIiCPmHMj92ZyVbEwXhZNA7dRTrexNfvb1Qq0Ka60dunggCRWhzlIf+TZGJ0RtbnvD
	pohXqW7kZAgPdpWtFUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3N-0000000H43s-0CV7;
	Tue, 10 Feb 2026 14:49:25 +0000
Received: from mail-yx1-xb129.google.com ([2607:f8b0:4864:20::b129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3J-0000000H40X-1665
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Feb 2026 14:49:23 +0000
Received: by mail-yx1-xb129.google.com with SMTP id 956f58d0204a3-6481bd173c0so3609059d50.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 06:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734960; x=1771339760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRvhqTW/9dQaIxqN/xLV7/5mlXB1evHeb5Au1aMeufE=;
        b=lYdrXb5RkwST0kcPLKJVY5yZQd79NWwtPz5t9BwuT6uNzP0fD5FXczFmGRQ+OeZY45
         u8eK0+bXigTwAb7mp4cKa4B+W+ipgC8zysMHFcj5iSgUKjAjfqJNAKT3UXEcSAk6DpEg
         GXpl0OmVSMH54BCgE/N9hVa8t9ri1b7h9EBJmY+bu1p8+b1lqNo+ynS+NyuyRf+LikCs
         3MNwSi87x8cHDs2meyZ6WfokCNJEhrEA7+V9ktWHj97AvhWjOs6B+VDpnJyAoL4SYAfy
         xl3TKXw9p5V0mHL4AO08yUywta0mREyavHljl2ZqxK3ww3gmcbPsGJOBU8SgwasAibg5
         Pa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734960; x=1771339760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SRvhqTW/9dQaIxqN/xLV7/5mlXB1evHeb5Au1aMeufE=;
        b=xDvAboKjUSjkib2j7M7F9pk71222fmeTOtgat2QmDaLc8DwdGsQTvp1KCLjBG7kewJ
         +x2doaGLOohJ28KB+jfxLI0w8I7c4XSD1EispTSph040JPMSvRlk10EpEkzu2RvgiAPS
         Aej80jZ4LAQLMG2nep2S5iHDqr8bs0sTXfUWmhrcgsgVF8X02IrPDVETWFoOlCxSIdor
         Z5GgshJ0iJhI4boXGZf0KfymFTuFbetxYA9Mr8YV/poIbA6pT543ZVLkrVcDgdSn71hj
         QnztkCY94irUu/GRwPWd0OkICjH/NLLD58tS2xyLJD6CxB0BQCjlRID1r7SzmJCA+05Z
         Lzzw==
X-Forwarded-Encrypted: i=1; AJvYcCXn6Xng9p0w4D0Wi4fXXAk34Qfo6EfKk4cQ5HG+83pdVdqX6g3aewY/BwWHldwPGLxwwoQag/Fs4/Wc5k7ebg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCF0kpW72RO8TqQxOFTqsoJnlee27e4TTHMpk8UScrLiHtjWgM
	DEQySOXHmbOrynd3eMnC3k+ofztecfrJ/+uYNA45qC1Um5z12CBEQt11
X-Gm-Gg: AZuq6aKcuRqcs1PugqagO6k4emCSbOMzcYFsKnMsLjojAc+x8r0p4qu4NUe+6RYEL/C
	Hh57XMBOgwmbsw5QY6OrwbpRn3SOkMF5IEmWVT7Nryh1HPoVZHXg3TDKgE65T6sc81aE2QkEx1j
	9cb6TmvuEQCUilYOS0Q7+PCKEsjyNZ9KiapDDUnKOlZDZt52WJ1fgenVvbx7em5/s3/Lnhzq6ep
	b0h710xVNI4cXucX/I5Hi4FxuIx2Z2zBFdicDVtZnxGLu2hL8mT2FpppiBSOm04gTpj4Xw5XvQW
	t5Z2HMX9Nh/ehZul8p4YQtmGEBtvVvD/x11LXyoLDKDCSQKV5w8DDmlJLl/ZN1qXAbRnFjffWe1
	SjVcEFbmESLfB4NbsiPvwk2D223OrpB6t9D/YMPBBsma80bG23g0dAOdlSi+iO8jAvQgA2Rlx3K
	+RIm9uS6X028gXh1yWmlOv/X72Yn8PsE0L7ett
X-Received: by 2002:a05:690e:d07:b0:64a:efe4:7b47 with SMTP id 956f58d0204a3-64aefe47ebcmr2613048d50.83.1770734959965;
        Tue, 10 Feb 2026 06:49:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:18 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Tue, 10 Feb 2026 11:48:44 -0300
Message-Id: <20260210144845.317048-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210144845.317048-1-festevam@gmail.com>
References: <20260210144845.317048-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_064921_404152_67116B81 
X-CRM114-Status: UNSURE (   8.63  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Split it in the EVB and SoM dtsi.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..409c11b8ff97 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,rv1103b-omega4-evb
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEFEC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 16:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yargMUmxbUQNrEvgODn8qZuEwCFDCmKmkOHllxJHerI=; b=v7bSVg9hno9EUU
	tzTHFy0WSTx4yioeTb2rsrO2MDtH+x5TxwUHZEji611UmIN4MeVkbWSE+JKjYJ0R5Dm5xOprfkC/I
	sYlhwYWkaQBeENGW8l08RS7pB7/GOaWxUXPKAl2eQmLucTnezW+psuZTKHB3vnRNEIICFuU7kBSsg
	yjvYGvBNzXgJ+q/jPmZpsPcrZ5q4sOhTxWge0Nz7QRqiB2gnSiWqKmns8wOd0ZcMeRPMp00YjWvC0
	32yyOTRUvpIwvEjmGLxFJdlXCxnPqip+3+cuuIj0C5k4OlQZQSrOmK40RMxXQhUYWpIxM3Jr4fs8N
	kmvoAa0J671UXHVirMQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7I-000000039OG-0VVH;
	Tue, 04 Jun 2024 16:34:32 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7F-000000039MY-0S3i;
	Tue, 04 Jun 2024 16:34:30 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1f62fae8c3cso42791925ad.3;
        Tue, 04 Jun 2024 09:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717518866; x=1718123666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kNMkvSgPRL+HFbVKuBUDCFz6Q29OexFnXfdHgCkxWRo=;
        b=l7IPdg94roejIquT+ntoza4bsPhJYpG1KCjPQcfKBovr7uiCxo2GY5IlnlcgujyGoQ
         jJUWMwDivnfYVKJyqO/X2pjvlgBjjv2h186u24mW31Fi+3ijkRR7DHefsgpXoSqhpflS
         qLwncCUuFLiKAhmHkz8+Mtz9jn+eiPr2ZuBZ1s3fyVAmnn9/+qkwuVMJjTuhBoJo6ocD
         6t6T14jwpk39eKqrCV/i4PJpj4xRqreMBij6MzOUNCtUJmNGI98oB6+rVGXA/HepQVpN
         Rg79SOVgqVUG2wsSIVZ92xh3yfz3DQ2wvvWYRhjkGJU8TxQaa0xja1hIh+VWLFTVd+Wg
         X4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717518866; x=1718123666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kNMkvSgPRL+HFbVKuBUDCFz6Q29OexFnXfdHgCkxWRo=;
        b=wxDFYmZ0r+g5SUizs/D831daxdADabz61hfF14aEzh63D1BPqqleXYFFsTri5PyRTw
         OUhojJeyNPua8Pn23JbFihcfnxjQq+x3TzVJScU+vr5H42i3c/S4fAJes0PqV5pVj7f+
         QJFhUR7Q3yMOquqRifj1N2cMiHuT2BnHNIXgd7G+2gMjKB0ibOWTw58QvZrPk8V1o6sH
         aQL2DeqKbe3o8FlN02KQfd5ZpkdQk+FgInk3v7iSU9tehhdMBpmUNQNVXcpVX5lNBDaQ
         iRrqw9g8coFIxeIVdTX6bFUEeitgFjR5PfvPSYHvYg5SXBuMiL4zf1qgVLoLBlB3NUyq
         NEFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLnW3D9zvBX+9nPj8VVsIAYeevOOX17kudhZh5g1qOxWJXhSeWpTW8bqNenbgUxxVZISF1aPgzd4FTpTvPZc0g3Xv2rul8ZTJcpG9Sf+1u4GgAfMg=
X-Gm-Message-State: AOJu0YybCEFiQiChk8H7Y41rJlQxgwmqOc84h++HyMdIMzV/T9lS2Kc9
	bJDth86sbcX0FuyC2uh3jjL/ZyrmbHAoWDptlz5zAlSUW8hhjCnSiWMeiALtZ4A=
X-Google-Smtp-Source: AGHT+IHG4sUVA4FYCO79uY2xVAxXrrCVHdyaWoU5wYx3c5RXxoyENfCcvYDXP7nWGqajSo2m0xtr9w==
X-Received: by 2002:a17:902:f945:b0:1f6:1780:f7b1 with SMTP id d9443c01a7336-1f6a5a0ebf7mr491285ad.17.1717518865978;
        Tue, 04 Jun 2024 09:34:25 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63235561csm85463445ad.70.2024.06.04.09.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 09:34:24 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH v2 0/2] media: rockchip: rga: Add rk3588 support
Date: Wed,  5 Jun 2024 00:34:05 +0800
Message-Id: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_093429_170233_1F3639CB 
X-CRM114-Status: GOOD (  10.63  )
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

The RGA2 on the Rockchip rk3588 is the same core as the RGA2 on the
Rockchip rk3288 and rk3568.

This series adds the necessary device tree binding and node in the device
tree to enable the RGA2 on the Rockchip rk3588.

Tested on rock5b with gstreamer command:
gst-launch-1.0 videotestsrc ! video/x-raw,format=BGRx ! v4l2convert ! xvimagesink

Changes in v2:
- Sort node by bus-address based on next-20240604

Jianfeng Liu (2):
  dt-bindings: media: rockchip-rga: add rockchip,rk3588-rga
  arm64: dts: rockchip: Add RGA2 support to rk3588

 .../devicetree/bindings/media/rockchip-rga.yaml       |  1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi             | 11 +++++++++++
 2 files changed, 12 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

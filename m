Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B0A2CCFA03
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cch4+7+oXF7NY6a79mrSTOonfT2oUA8U/QLj7eLLR1M=; b=tfFui97I3+0eRo
	kL1o+9DehebaTzHmPb5SrzGmWSgJmNlgpqPZbuDbwKe74MNYOpfRma2304gM240tQUP8mhPr3gBya
	EYgHEN+l8SA9rLrYu4kWfbciZEZsjnX5MW3J35D3NXBu1dSOivWCvr8gHagm68LWnfFg4P1uAcrte
	sBEc2Y39Nc3SEiBq8nsGwbGltipxuwKDhcqZtuRIT1HoiLMyVgL01L/FNNkYlXiVw6+1QDsGSA5X0
	ZV7nel5IHGyF61NFzFtPPm9WaeSQnxiAXVxzKLHvUkdE+H9M56d3p0Peup29cw9PyGjyFpZ+P9Gwx
	O41SaR8GqHZGgqBVImrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBU-0000000AObM-0QBM;
	Mon, 03 Nov 2025 17:17:36 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBQ-0000000AOa3-3fYI
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 17:17:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-7abe8442103so616063b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Nov 2025 09:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762190251; x=1762795051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2kksmKNYVqd+uErs7CVztic7a4Xyw6TxrahAVbwRtSA=;
        b=mORz/dCRADAYAwArXkEaDrZfWS7lWCTIyP+KX8bMyznLsQkcWY0W5JJlnPRCIdpIvq
         A5qz4MniN/Qm35/rADabUJcbF44VzNdEvFsxf2vEu+4nNBijYB+cvAhFOZ7XsljTB3zK
         frPmqnm4UuDzt/nGpCDq00TV/bjLMBNjCgvjGdxAs+hcW66pNwR+800keGv8I35LZQGv
         c5gc66AdulDqRTXZTxRgaItBGEHmZibcP7FqXGfBgu0KxRFDDw0f7rXfEq/oYGpSR1kr
         N2fB2+u+5qA9aYvL0So66hPlPBPmhHEeFB2G5C/Jb4YRprJS7SCB4zCMKXA0stYoQ8kq
         BVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762190251; x=1762795051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2kksmKNYVqd+uErs7CVztic7a4Xyw6TxrahAVbwRtSA=;
        b=uE4wTTNg12vGPM4yvIgjHJEuLA7y3G4TIAHhaPKLdM6a61zr2UHzF145igrrf+mYOJ
         dRd3+UUtF7wd75J59hCU2ok6F/sWQF5Hyl5h4yJz0hp82MgICEe4gSUQzp+dbMA4ud2N
         dPw0otqRFpbhUI+0TT/wT99mLOyDO2YTd9nqPtFDpKs3dkm0ctUG573CnaEYUWPvqgdK
         SnVoAy1Ffl9vwrs6V/PHbCcFCXSg2RFzaja6rbZWyCDuRQVmIbT7cdo6o8DBqTKK+kW5
         kxOB3sZ8Opi0zdrejjr3p4WvgSN0C+koL8rN4GSstLYvvBhirmg+ybwrGHOaCypa45eo
         e5aw==
X-Forwarded-Encrypted: i=1; AJvYcCUurT5V4hYMpwdBzK78lidUq9eypI2Nvo3orVxl4uW9uNivaUkdFgTK73grUOniPozCsalISJH5XNd08AWhug==@lists.infradead.org
X-Gm-Message-State: AOJu0YydJkA8X27cSoTNhfU0ktE9QrVk3RlT3zBsXysu4ZU9mJw33yb0
	+V2JuGaDGBgzKuZ8Hd1KsEh8KLOIGGJlqxGCvF7ga0JPSuuOjVA3/GuI
X-Gm-Gg: ASbGnct8YKlGM2sLhyqHCsUqz9fk+0vV692I9bvAG2vBq3a6JFyPZMkDpSd/MZQ6N0H
	e7qnliDMXPe1Pw3XC1x7DncU8DB96ssfZyp/UXclUfto9gdSJskN6t6zICNRI1vZJBRl+CBkeHv
	2LpFq4lcqDahZVaurgUa/LVIvHb7YEvl/v83yo3JvAFT22AwL4LObJX1bPrIwTfmAddHB1Psf2P
	eM5D6geGjQO9zxIOQ2/DAasX+z7XEiiqb/n0bconLr/5YtUq3NYzPRs1XDHkn7dOs1UPh2gAilk
	ESZansnl+8NywKUcrCIoJJr+9CSndPsqzdjJ7nZpR9w9RkjoRYGVinf6rS2tWbN83InRX3jAksE
	heRfyLCmbVGXKYyxQOLoqOTDCjuMhUJq9YWY8YxPrhhAZe/CQCL0zPbxNJo46p+cXeDaRzcdkKZ
	Q=
X-Google-Smtp-Source: AGHT+IEh1pB9FNn1laHqFiES1TSY/mujOV7r+ksozCtg3k8Zu+1ydhQneDCtjE1I43f+WBjK2mFcPQ==
X-Received: by 2002:a05:6a00:951a:b0:781:171c:54cf with SMTP id d2e1a72fcca58-7a777760e07mr15739593b3a.1.1762190251263;
        Mon, 03 Nov 2025 09:17:31 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db28d3fbsm12148112b3a.43.2025.11.03.09.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:17:30 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v5 0/3] Add devicetree for the 9Tripod X3568 v4
Date: Tue,  4 Nov 2025 01:16:59 +0800
Message-ID: <20251103171702.1518730-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_091732_920741_0BD2A8F0 
X-CRM114-Status: GOOD (  10.73  )
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

Change in v2:
- Add vendor 'ninetripod' to board filename
  > 'x3568_v4' => 'ninetripod_x3568_v4'

Change in v3:
- Fix Makefile

Change in v4:
- Fix overlay dtso

Change in v5:
- Rename 'ninetripod' to '9tripod'
- Add rtc0 to alias
- Fix PCIe regulators node
  > Test passed with CLK missing and CLK installed.
  > No boot issue observed.
- Replace ethernet MDIO PHY
  > mdio0: phy0 => phy3
  > mdio1: phy0 => phy2
  > All point to the same device.
  > Rockchip's phy0 appears to be a universal PHY.

Coia Prant (3):
  dt-bindings: vendor-prefixes: Add 9Tripod
  dt-bindings: arm: rockchip: Add 9Tripod X3568 series
  arm64: dts: rockchip: Add devicetree for the 9Tripod X3568 v4

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |  11 +
 .../rk3568-9tripod-x3568-v4-camera-demo.dtso  |  84 ++
 .../rk3568-9tripod-x3568-v4-video-demo.dtso   | 154 +++
 .../dts/rockchip/rk3568-9tripod-x3568-v4.dts  | 887 ++++++++++++++++++
 6 files changed, 1144 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-camera-demo.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video-demo.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

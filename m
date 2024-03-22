Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C168C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 05:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aQZCSxDhZijFONwkFenrBtDgAkhrEHMGmTeWgrDp7SY=; b=eb7z7l3GcVqGl0
	FSMnpys+s/MSoHJI3ZheRne3Hg7JD7hhI2JWctMMCl+AP9tWExI5lxPk8xxjRdfWUhn/J7odjYtOl
	BKeLDt3rawiGX2/e8U2SsuSjb7QmqzT6qXvgUmbypqt483L7/kHbzk4VN358U6ESq2MmNY4Cop/GB
	oloJrIzR/JoLsahrsikQ4Y/OFpdgnRQUeeXS6rgISuIIoGePvDqVfK3S6Dvw2Z9Raecu5Kcy43zno
	WVhM+XX8HlNXWShc91ppkTbN6FLYL2bAnYfgXZTLEg3g7EvjQCbRIaCiVoXpbzkJD09kc22YPL4da
	U7kODDWbNKOqyRGoA7Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXUs-00000005sEZ-0gpx;
	Fri, 22 Mar 2024 05:31:18 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXTK-00000005r9X-0VRm;
	Fri, 22 Mar 2024 05:29:48 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1dff837d674so14022545ad.3;
        Thu, 21 Mar 2024 22:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711085379; x=1711690179; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eKuc7rRsF3BVGUdsmkv70uBPAFrZhnJYrr2a7AQjyLM=;
        b=LXi2qdik1q/H57JvViYrZU2Jh21hSDDgL6VsaJXASCGj7F6TOS2/zFMbT6VEPh2X+C
         ionxlcWE7045DdpdTmY+VuNYa1hIujpJD+u7TTtpGL4rhFA0tL+eCoal5U4ShDEUYQ80
         TFLqG/pwH9zVyVtxwB17HXF356MS6ij48HJhKP2WmfmoR0nRGPW6T/tN9xtHdFqB0u/k
         /I4egXvycNc/lz/e2cGtPzRbx1Ekc0jlx7p+H3aM2cDhb0DumdPIAIDRmSTIGPJoqzKA
         xWWR22GpwDmknJQ5TPI/3i/COeG07sv1bnFwCZ+7fV6Fw8V+JDM2ZK6QPs0jtlOiqcE2
         I2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711085379; x=1711690179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKuc7rRsF3BVGUdsmkv70uBPAFrZhnJYrr2a7AQjyLM=;
        b=wEYqcJbl7lhpZm7YV41LfwHV1/ilpb4tNht4zM1B9+X4b4XgCXlPoWTEzTpRL8wYx3
         GSOZUUOjMg6hoAzJTyYd6GoCtmHZA6WOQYS7QGrEsMqqWX7YBBFhrbLSj6RQk8EKGoUl
         0dUwxTCKQEh/RH+ncz6P9LGZZMyAo8+nIq5qRqM7Jk7Rgaw5BYXH4noqIh8rPQoLCf3O
         C0hy73+XYxWwB+JHixzZmArfZC19Dh1rVfGhe8/8i1gOS3YLjwPuHqA31RoZf5T2Wq80
         /q+vx50HC810uQC5AKeCdD8LIuC4etMpp6FUlMme/9kNQsjuV8/jjf2k9nL73hOHsAxN
         +Mrw==
X-Forwarded-Encrypted: i=1; AJvYcCW2OAMPbuL0WEN90IWRgv1uJZoFrUokF7Ft49VhMQMmJukcQi+cd1GFu3mLen+Ox4QxDCHTs+psUdeuuI2x7r1zH3GL00pXsuYYt42fkiZGRtKXvlw2Txl3LgYU3TleaOHzQyB+1DR17GcVZqxgGPt/4EF5ianA99Q=
X-Gm-Message-State: AOJu0YwU6gznURT4qVaNow7Qc+nGZlAZuxhjsqi8k8NyUdodNUr1pvOt
	WE0goVeJD4uWn+ECBBPiTpgDjKN086Qv56cAUb3hWGNBP3opcBWt
X-Google-Smtp-Source: AGHT+IG1wONfMhDgpNcmYtojN3iaTSokCBfqPYFhCX95UwuPyoVY1kdaKMY2QgMtuma7vNQeBqQ55g==
X-Received: by 2002:a17:902:da83:b0:1dd:9da3:59ff with SMTP id j3-20020a170902da8300b001dd9da359ffmr1946521plx.42.1711085378879;
        Thu, 21 Mar 2024 22:29:38 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902d38500b001dffa622527sm882978pld.225.2024.03.21.22.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 22:29:38 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v1 0/2] media: rockchip: rga: Add rk3568 support
Date: Fri, 22 Mar 2024 13:29:13 +0800
Message-Id: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_222942_556381_B70C9F8B 
X-CRM114-Status: UNSURE (   8.84  )
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

The RGA2 on the Rockchip rk3588 is the same core as the RGA2 on the
Rockchip rk3288 and rk3568.

This series adds the necessary device tree binding and node in the device
tree to enable the RGA2 on the Rockchip rk3588.

Tested on rock5b with gstreamer command:
gst-launch-1.0 videotestsrc ! video/x-raw,format=BGRx ! v4l2convert ! xvimagesink

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

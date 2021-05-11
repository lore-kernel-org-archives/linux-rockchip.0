Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62935C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:29:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA0F3616E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:29:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA0F3616E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bi9CgUaT2eVxafAWHrLBHB+MkD9qCwMf62IXZJNNov4=; b=L1Mfc8hluImEMT/XNiQab3R/+V
	QIrSvghCOC7J8b/BD6IHrUAM/RbxoL+0swNoZq1asdpX5rnD1ja75kWoiS26AHU++Deg2jFvwQFfX
	lFcUiv8AN3aremTiCmmCEWsV31RJOaHzBE7jWZs2OONmn/s9uNbBEPOrbfSxtPD2hMZXJkqB2ZoEF
	PEPBvxodtMzbb9vO6G17yG6PB8PTxhsrgA609PD6p4e9egsVN0r7OBKKzWMgtdbZMORJzfJtBCm2k
	fB3l96xdX9VbLGlWNlMxgXIc4U43A96i0hd0CzhkWO0ffa1pGYiQMw2j1sF/wn+KkVR04J88B/uHy
	v0xxZz6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQZJ-00H8BD-CL; Tue, 11 May 2021 11:28:53 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaD-00GJL8-7K; Tue, 11 May 2021 05:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=pi3/NFfh4P9X9GC09hvS2UeJKCy4lzkslaCKeUJUOwg=; b=mn3O6HnP4FzZBl8W3rWeNXMI6I
 vCyPo4I+CZQBDP3Pxg2dsqKJUz2WRyoePEQge+QzMN1Bh9cwPcaLn7kwvtxmSMe8odJng/mVspund
 lT9Qd4mEOE8qYRtBPktH8AN+jDVEz31GUpLeeS7d6oKsAPRkMhBXLTzAZAli08e95e7TMMbk4Q3uX
 +ZYlAiPaAlnxbjKvdEpucweeMkkwJP0lFPwZKC01ZSqIcT9o5SgoJIsl2sxg+1CZIqwJ2qFpfBkmU
 zsaFYfeBfYOUc6q3W6Kxwg2BxXabJWAlIEBivIKC1rbCmtDpJ8q0g/DSgQi3UuJXe57Z6hjtxl0oy
 cN6fxcYw==;
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKa9-009JBt-VF; Tue, 11 May 2021 05:05:23 +0000
Received: by mail-ej1-x634.google.com with SMTP id f24so27826515ejc.6;
 Mon, 10 May 2021 22:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pi3/NFfh4P9X9GC09hvS2UeJKCy4lzkslaCKeUJUOwg=;
 b=u0+ImUl4+lah1bM6dsHAM2KbaGBBNcgQKIi793yudjXdbEo0vZWe4O+zd2CjnBNhCR
 8jAEJMSeJStylpaVbCfHjYRZ0WcVLDTR8bUl6IJQjUoAlCuBXmZX0I/wfQNKXDsDnOu5
 rfZ5sHY4ZUlWvM1pmtIJylNI+mFz0qMWSgrh0yCP7x4zWoEXhDjLte1DoWLgpTfMgU24
 E2Ti+yA+i3E4ih8OpGMP5vU/stA40yo/fl2N95JJynBQ/cmnlYRplMDG56IYqU8pBULk
 Fl19yin0hW10o02ZQqGI3L0tPW+6LWftoQERzXTDVu2uSUFKHBRy7ZwZAFeKQc4fYl/N
 MZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pi3/NFfh4P9X9GC09hvS2UeJKCy4lzkslaCKeUJUOwg=;
 b=OOVttFysOQX57RMI00PqIuD+m1EI+VA4NWZ2CFJz5h18z/YsMGYOddF6KH7WFcXGn6
 4C5PDaLirajvuJcnzWUPzJtwuxjN5V1xkL/uhlNysSyhhHkAqRrXty0C12zZ6YhvVXFs
 SXq4bqYEjt6k91lVD7RdIDW9IvS4lVXrLNNiCrY4kXADpO9WM/h/CQbcfywKvYVORNyR
 KpG+7YyMtSGUnRxG0pxmkzzE2zq7HJ0RfCTfxkSkQV7XT0Tfh7CKNr/28AXsGDqGNqZU
 vlhhtgqZyyYXfbOIvB8uxu3zVnXH/SvIErwuJMNIzdezDPTythFH/Hc8b3eajzj4yc9k
 ZO0Q==
X-Gm-Message-State: AOAM531EnhFov1YksTF81JIN0+DX0Ot40uNakjKj9NkccaBLg92ZTIud
 Akzkhi3pSZvHwkegsBpT6TE=
X-Google-Smtp-Source: ABdhPJxMtbJIPsrtfj8tO1vPEjLqtg1sBvhU/90sVjhlTluL3Lr6o9TVqNjmXrjykIXPUePv3FQppA==
X-Received: by 2002:a17:907:3d8f:: with SMTP id
 he15mr29129813ejc.22.1620709520484; 
 Mon, 10 May 2021 22:05:20 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g24sm3620302eds.41.2021.05.10.22.05.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 22:05:20 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] convert grf.txt to YAML
Date: Tue, 11 May 2021 07:05:07 +0200
Message-Id: <20210511050511.5973-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220522_032664_91453D5B 
X-CRM114-Status: GOOD (  10.45  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220522_032664_91453D5B 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Changed V4:
  revert separate schemas for each 'if' subset
  add additionalProperties
  move properties to top level

Changed V3:
  remove select
  change unevaluatedProperties
  add separate schemas for each 'if' subset

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename

Johan Jonker (4):
  dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
  dt-bindings: soc: rockchip: convert grf.txt to YAML
  ARM: dts: rockchip: add grf register compatible for rk3066/rk3188
  arm64: dts: rename grf-gpio nodename in rk3328.dtsi

 .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     |  32 ---
 .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    |  51 +++++
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 246 +++++++++++++++++++++
 arch/arm/boot/dts/rk3xxx.dtsi                      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 6 files changed, 299 insertions(+), 95 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

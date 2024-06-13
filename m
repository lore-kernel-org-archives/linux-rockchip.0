Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C9B0C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 11:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9dgM/pzSYCTC8+ij9c7Aei9vDqkAuVnlaUt9F3I+Lw=; b=iNBZKupHY6G1pJ
	FDhiW3/MH+UU0Pkx8pqvhRjrm7rpZi8rBnBJOS4QQL8cPn/xcUEZsoLAK08JATAqFunoAfVTRCtjr
	8c0E97BKgNQocHdXYhgEhhJ1Wd/Rigph/muZlnstC7HEijcwSolG7+ufRVw/lwYd+QXniQIkM7qhQ
	FNiDJsoQkygI0TJeR1FAEAcYr0loadHYbJuJADJB56pwOJ4x7Z5U7JIJBi+PX0S1GsvozZg1ne9P+
	/n5A7KZkZJWzXnmW3hbYQkFXbFjLc81U4PVS0kUkN9/EOHclP2H2s6fAC9WraZOFu9IFt01TK1Vp7
	P6BHnBzEPBr5RpfUGWow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6f-0000000GPLf-2zqD;
	Thu, 13 Jun 2024 11:59:05 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHj6c-0000000GPJr-1Rea
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 11:59:03 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2c2eb98a64fso747473a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 04:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718279941; x=1718884741; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RUVmviAFFyRpV6wsk/iZMwYGlufLkdnnaJs4+woFVo8=;
        b=Er0CzBfy+tFcIUFoe3pCElGiR+jEf97j5XibnpvqROBd4ZZgEekjianFOuzIqov4JF
         IleHZDlzqrMkswjgDHKY88EtvlcfybFmtl4vf+4bS0ew5Rr221ZYUhI5p2xJn3LPgl3l
         sj2JN4r5yCIL9HExI4JNEHqN3K7mtwA0tpNfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279941; x=1718884741;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUVmviAFFyRpV6wsk/iZMwYGlufLkdnnaJs4+woFVo8=;
        b=wVMh4ZgPCwEeUS7liodkWUCS/PnxihZkVOYN+0DbdOyV39BnXIHKMQp5N6OAEnN6tc
         0UwCP6JjfmrjSwBSOij1i6mWtJh6aNVhwSUXSrn61iG1Ecre5pgMYdo1JHyvBRBnU5V8
         Ex7OB3awqRnjqAmo06oJe9Rnr5EBei9A9z9KwnHCHwRr5B3cbl8M8a9D6oCogIAP909h
         8JSbrPjF14Bm/oameyGPzLRS1Qmvb+gnxNFKCuqtfhH5blfL0zTpIsS04YecrLbCWFn3
         oQhsowjy5b9P/fzrOZusn9m9j+aopsu0ef5KfGUoj9HtonatrgyZv135IULjudmAPPSZ
         Y92g==
X-Forwarded-Encrypted: i=1; AJvYcCXaaIyMX8opCIGu9eLUa5fG7HuxZ8O7e/WuF3hOg8c3xcdIkLTW/gxhofjkZOJcTd24p83cOIVyqVbHxwTCZu0WtuX8lc7Gi1OZOz86/UsHaxrR
X-Gm-Message-State: AOJu0YzsdmMUfkxcZnyqFrOAEv6Re+e0IUfrhFRMC+erecMCxPqujr0g
	OCd7cy1/WLHN2GDNDXVajKp8wdGp+v4+Cjl93k40/OdjMZX7sf9CFi+1j+zsEw==
X-Google-Smtp-Source: AGHT+IEHLpea+Zt5sKXcwFlof4YCHcKNSE0NrMfoPexcEsFoAXB4lMjoBLC+b8lATP0BTCtDNShiCg==
X-Received: by 2002:a17:90a:6b07:b0:2c2:1d0f:3c6e with SMTP id 98e67ed59e1d1-2c4a76d3ac0mr4601923a91.37.1718279941007;
        Thu, 13 Jun 2024 04:59:01 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c466c3desm1453505a91.46.2024.06.13.04.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 04:59:00 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH v2 0/2] arm64: dts: Fix the value of `dlg,jack-det-rate`
 mismatch
Date: Thu, 13 Jun 2024 11:58:53 +0000
Message-Id: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP3eamYC/23MQQ7CIBCF4as0sxYDiNS68h6mC4LTMpoWM1Sia
 bi72LXL/+XlWyEhEyY4NyswZkoU5xp614APbh5R0K02aKmNtOog7s4/BLsFhTftaXCt9ag6qP8
 n40Dvzbr2tQOlJfJno7P6rf+UrIQSViNKfexQS3PxgeNEr2kfeYS+lPIFs/5GK6UAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_045902_444688_1F33CB07 
X-CRM114-Status: UNSURE (   9.09  )
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

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be like "32_64" instead
of "32ms_64ms".

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Split the changes to two seperateed commits
- Link to v1: https://lore.kernel.org/r/20240613-jack-rate-v1-1-62ee0259e204@chromium.org

---
Hsin-Te Yuan (2):
      arm64: dts: mediatek: mt8183-kukui: Fix the value of `dlg,jack-det-rate` mismatch
      arm64: dts: rockchip: rk3399-gru: Fix the value of `dlg,jack-det-rate` mismatch

 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: cea2a26553ace13ee36b56dc09ad548b5e6907df
change-id: 20240613-jack-rate-c478fa76ce19

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

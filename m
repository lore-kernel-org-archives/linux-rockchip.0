Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 227C1C54E5D
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Mar 2024 07:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmbOul4CmAoSt70dONhBQWv1DukCoSi+tssIuNyD6hM=; b=YbCTkth9TLieGg
	F5nzTraPYQaAeSYfYTptiR1tkIaCR1i+11urUPEap8d3B7Lldl7105jm2Bd/uNCPe+9CEElLRyIWs
	LpE1VEWf4NuTParnjQigy0MD6lXSkcWzxzxpQeB8L8dIrskf9zBz3zw+4Sp8Yb16qses+4rGQO87T
	AytZzwKKGbOubfJ3EzZZfmicU1k2HitaIhTQ4N0wmu0LBfK0giGw4h1PrI77u0FktU017LQHjIW/S
	XEYsBvEb8sZNWUWpbZ7BrAFIAWeC62vLaT5er11cN7YfR/MqhHBLvBoiVV6qb3lyp+f9GuzRzdJ61
	jS0r4ubEF3P5pLcRf3aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODh-00000002Zag-0y8k;
	Sat, 16 Mar 2024 07:12:41 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODd-00000002Za5-1eBD;
	Sat, 16 Mar 2024 07:12:39 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6e6b5aa0b52so2509218b3a.3;
        Sat, 16 Mar 2024 00:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710573156; x=1711177956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8oDZKpxy0SLAMcyRnZgXM1CHZS3gVNfsxrD16EfDgvc=;
        b=EwdNfSzDXal4W5xCOnS2Iq707TL3fVAooskq9mVbRHhYCCHwUFK5OoM2fpkeEPedu8
         HJqW68sBlEprfH/ZUX3ZLeuiZLY+IvOtX8LwazUxmi3dcG37SFD30rWjW8cxiKkm80Gf
         SYFtDnND65ulSNlsfZpCLeaHtozm8QN3cKXsXweZWw5uwh3ePuRD43vX0jUrSBqlrC0v
         dPUaXOTl6QvlqHYSPIH6BlG2nP+CRRSkMhnCo1aNQRpkkUsqSDh/TaC+LOip6sivCu6o
         mb7nnsPw3YdKCX4Ta7PgSdsSAhQNzkc31wfnzbpCENEZgwB5+7cK/WOlJFHc35+OmwMC
         DXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710573156; x=1711177956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8oDZKpxy0SLAMcyRnZgXM1CHZS3gVNfsxrD16EfDgvc=;
        b=MK4YUPkzmSmKLAjr8BAIASsPASElxJsDyPYKcG20A+pQDbMcXcYlnptyd2J1GhRy4K
         KFdNJrVZng1JJ+3yQJH6T7ScqeQ9aW4BDhJghfU2FTzc184ss6gD85SAxxP/pXJhu8fd
         +5mPJXcv3TJrWE4K0gwXNix/wm9PT+IjP8yBSE3YAetY2d6akPL3j7cnOaupDkOCzSVU
         TNuotfha/m3NqlFuNQ6CHFKAx4yOnB2dZ/oSCwRVSwuBT7aXXAYGNm0hKC+FRPD5Nmj1
         8t0YfAjcoAl87sgPLs0wfDNhgp2OJbcSwVC/YYDqRaUg6plr53xqJObS7nH1G+0yysl9
         HabA==
X-Forwarded-Encrypted: i=1; AJvYcCVRZ5bbR0dAwnH+0uWa79SLDQ0gHzC+1IUm/kNmmhmdG31F2GRZSvLNxDhcH3yDw3UjS3tJxlBsaCQBHhGIZdcrypLNQOfVKQJS3vYCvoHDr+buS44CpfQTsDLZMHsperWRo6oUAySlAAd+5bUlZLJPmfXNHLqx594=
X-Gm-Message-State: AOJu0YxAIm8QjCweEL78R0sXnE0Swb+dzmDq2DEUUYM/ByXyuwv04Ks5
	SeEvRc7DP2bym1K6pYP7KMFKiXWs/LJ5kXtRJFavBdXrK2LzXt0N
X-Google-Smtp-Source: AGHT+IHKo/55+X0r4fSws+qbSoxX5taM8lhT273EIdjdmOO0UAJS1z9g1aQ+ugU43TQdBDX2VXKFYg==
X-Received: by 2002:a05:6a00:1747:b0:6e5:fb97:ed35 with SMTP id j7-20020a056a00174700b006e5fb97ed35mr7530625pfc.18.1710573156045;
        Sat, 16 Mar 2024 00:12:36 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id x18-20020aa784d2000000b006e5a915a9e7sm4574651pfn.10.2024.03.16.00.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Mar 2024 00:12:35 -0700 (PDT)
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
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v4 0/2] Add hantro g1 video decoder support for RK3588
Date: Sat, 16 Mar 2024 15:10:58 +0800
Message-Id: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240316_001237_672308_EF25112B 
X-CRM114-Status: UNSURE (   7.76  )
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

This is the v4 version of this series adding hantro g1 video decoder
support for rk3588.

RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 which
is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is also
found in RK3568.

Test results from fluster can be found from thread of v3[1]
https://lore.kernel.org/all/20240118080602.9028-1-liujianfeng1994@gmail.com/

Changes in v4:
 - Change compatible string to rockchip,rk3588-vdpu121
 - Link to v3: https://lore.kernel.org/all/20231231151112.3994194-1-liujianfeng1994@gmail.com/

Jianfeng Liu (2):
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
  dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string

 .../bindings/media/rockchip-vpu.yaml          |  3 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
 2 files changed, 23 insertions(+)

--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

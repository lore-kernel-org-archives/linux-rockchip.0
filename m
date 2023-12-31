Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAE5C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Dec 2023 15:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZzT91OO7EMgUeC+hsDsX6SqbucH4K6Bg6tmvycTBSw=; b=3ryqyNfnKeRwPk
	FgVjdFrTXNjpEAZjHNUIM05ge2bfbSnD99NR6qjlsWGDoxWWyAahEdcKW3yyzp8+9Jut1tMKmM+ff
	VOW63HlcFFb1WvabvWyOaFa7G1r+rM/HeFEiw7OXQrcYQLYc80SjOH3dFQ1Tspm3EieL2XiKYhTtF
	5lwJ+eSIcaCMXcg05tDW7jb8v6+yfY0EiB7IDm75zlDHsrf5trDOSzAuJdhgzLhuuG9UTsQKrSfOZ
	vbMZExqgcur1uOjHx7vYSZL4wlWNZJaqFMpiOwpaz0ZvdWS2Rc9LiiZQTM/IMyLr3tiGmI9Ei3LIS
	Nb+gqOodsU6wPOoSdOUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUK-004l05-1g;
	Sun, 31 Dec 2023 15:12:28 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUG-004kz4-1g;
	Sun, 31 Dec 2023 15:12:26 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-53fbf2c42bfso5933912a12.3;
        Sun, 31 Dec 2023 07:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704035542; x=1704640342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jeYeBXSxdMTougCaSNrlMRCUw3h8MjaQqsA3L1UWeJM=;
        b=lXleHYdF4h+ih+3LPNix9a3saIMOVVEgG9MSnbCjJ2Zi8MreT/XPnjtK+vC3jPZca3
         ZT20s2ch2sIpjQzaB8pBvVqhegh/Al9VNkddweq4ABsD45zOQFRAqzk2+nt0s2i+ZoUd
         QPt7btyLQW/pQA8LwzSBKbMiFF7qkREQyqeF0W4D5Fgm3B3nXGPWbNwZss1Dn0DdYBvG
         LUF1i6HFCnRBGMEkXrAuSR35JpgQsSG0T9Mbn1MiDCrxh1cH8RCa0jqJDMHq/25E1dtz
         ldHG28trFtsvV+SqVf7lAJqCzGPhaJxqfmMufYkG2kgyeYvGLPh9nutd5VY8zu4FVdwM
         qE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704035542; x=1704640342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jeYeBXSxdMTougCaSNrlMRCUw3h8MjaQqsA3L1UWeJM=;
        b=Q3JOBah14ELSXuxIYq+cW9NmD5e+fE9dH4bKTqmBiCqb1j/X8LIoVH8Gtfbis71M/t
         bBsTXTic2N9orwuFf0n4FjVXo5MZNLu3nhD+6zu8ySwGIlnS00eGtLufLpUseMklG37x
         eu/ZxC0lXrZXWZaAgQdiJBpW4QnJKwkHCm9k92ZqXW2UABDo5xBkX3uZufGZhSlyUmjL
         nqxKtm5OYFaHm92AUxoyzEtR4pnXfqTgp7VwiFtsm7DQ9UbftUyI2et7Iz15Ym0DuV3t
         kcU/ntwq0APsDrVSy9G+yqAb7+6iVHki+5EutT6QgJNf1bY5BgL7SoW//TYhsh/FzI7t
         B/JA==
X-Gm-Message-State: AOJu0YzBtlncnnpy0TmEc+yUDAiai238p61G6TFYzlnUP7sLx0DQE1Np
	t4U9FUAMCjX8nX6fxnw4EZ8=
X-Google-Smtp-Source: AGHT+IFYiCNMbl3dZt18tBdXWUUj2YyulwcA8ZtzasbEmO897ubaYYezbzhFB6TThhQZw069VWyoEQ==
X-Received: by 2002:a17:902:e5c7:b0:1d4:35d6:f999 with SMTP id u7-20020a170902e5c700b001d435d6f999mr16284099plf.139.1704035541802;
        Sun, 31 Dec 2023 07:12:21 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:2643:6273:f90:f77e])
        by smtp.gmail.com with ESMTPSA id a4-20020a170902ecc400b001d058ad8770sm18775011plh.306.2023.12.31.07.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Dec 2023 07:12:21 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Subject: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for RK3588
Date: Sun, 31 Dec 2023 23:11:10 +0800
Message-Id: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_071224_581785_FB3D842E 
X-CRM114-Status: UNSURE (   9.12  )
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
Cc: sfr@canb.auug.org.au, liujianfeng1994@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is the v3 version of this series adding hantro g1 video decoder
support for rk3588.

RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 which
is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is also
found in RK3568.

Test results from fluster can be found from thread of v2[1][2].

[1] https://lore.kernel.org/all/CAAXNxMT3f68-ptM7Crhrfmn7iwTyJc9pwz4Beob+5beVODaSHQ@mail.gmail.com
[2] https://lore.kernel.org/all/20231230153159.3748580-1-liujianfeng1994@gmail.com


Changes in v3:
 - Drop code in hantro_drv.c because hantro g1 vpu in rk3588 is compatible
with the one in rk3568, only adding devicetree node should work.
 - Change devicetree node name to video-codec@fdb50000 to match the reg
address.
 - Add dt-bindings rockchip,rk3588-vpu compatible with rockchip,rk3568-vpu
 - Link to v2: https://lore.kernel.org/all/20231228131617.3411561-1-liujianfeng1994@gmail.com

Jianfeng Liu (2):
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
  dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible string

 .../bindings/media/rockchip-vpu.yaml          |  3 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
 2 files changed, 23 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

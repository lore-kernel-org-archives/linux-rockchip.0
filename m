Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CA6C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 13:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XAf+SFpKxCVy1gw59Ln2Ux3BGSsBgAz/JfbDiOqXhts=; b=yvLs8eU4mdktZQ
	Q95uTlGawJGpfbLXmPrlD8jB5SYbokEjcZCYE3LwYAw8xBiPf938CRGK7qk9JLH0VpGXSTVNPtzGs
	VX6b6zc0NzY+MdyQ5BTc+D/h4sK37lEgkVVrslUu9quLKTWCHvYdJPa5S2OjzbKja/zHwLiYLSAtG
	rRXeeFC5qcvDjcXu5Aa4fcNHv3ngve6WonHBJ6XdaL7e2QNbdJNAYKt1FLahKmtY5LHrOlLNzSnlX
	8eiyCU64Yfb6YlqDLXk0wDw9n2bkEp1LxGx3uWY2KjK8F2r6/Na6J2Broo2uRiAEMpNOfLJEsksqP
	SPSfXuV+0UZtPGiwqTXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqFq-00Gu4R-0k;
	Thu, 28 Dec 2023 13:16:54 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqFn-00Gu3h-2M;
	Thu, 28 Dec 2023 13:16:53 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d4006b251aso49470535ad.0;
        Thu, 28 Dec 2023 05:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703769409; x=1704374209; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdxMA0IFnQNSF87xNJWS4MQoHn8cWo2ZJ5T/rZOTLd4=;
        b=kLRWC0uOp1qgL9v51c/1mCUThk0oJJZ7vLEV2f+3u9j2S6vlISageQUW/HizVsI/uu
         XLhodKMZRmXQChfk9fG+ot/2TgPjVTL5e7pPQGQ5bKlE6B/xkOpIMqGcDPG/9SEkyyyd
         mXV2FQ3yGrCwWSJgE7p9r6WB3HYe3Ep2kzgfLfQYs59hfIU5OIfKKRUuHFY0XPathdR4
         ASdVcrGWWEVEmxGJm83ubwqx/5PjVFU5ogcAr4l1p/9fyVGWHz5VPCs9VaS4B1poRAnx
         3jWUop76oqLZ26lv4YgxPBVzc6YxySC7yzavSFtgP7hkf5KLfrBpD2M/YIYVZZd97dPg
         vSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703769409; x=1704374209;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZdxMA0IFnQNSF87xNJWS4MQoHn8cWo2ZJ5T/rZOTLd4=;
        b=rCuhYZOin43JUdTGdw7oMeAiQycLcfvg48GE/3Fz2lfj+rvvOR5PCb6IVQjMknwvlp
         j1ceTcKhC35J0GYWS5fzgjDR5ejRfnxRVBNIXqA2GyHMBFZXPQYtgDEKhhg41inr9/Nf
         3yIggO3yBAWEjUFCHwuDSSQDnbitOwJdE7Da/v4dOMQy0X/nP7I77fQ1OZsScgty78To
         sNRSZxlYpHDTyqtNggdykcbzjkHDOnxmF2dHY5uVqyfSFPyWAipq7fgOdmR8GvIJrWtA
         QP6pcS+RZYcuCPKwDW0QcQzLMgpFMjjra2B/Tiv9OQWPd81DU108Hv/whPMa+5VvKGc5
         ZIbQ==
X-Gm-Message-State: AOJu0YyDLbXIHJ9BhW23OeZethsxvKJTjtJLm0sKTsjO4EzhLjtUeqvV
	o0/IYIKJcR1+7e46K979zWs=
X-Google-Smtp-Source: AGHT+IH8H9gke14Hfds3PK61sbjEENzKw+rV/8YgR/y3014PaI2W0cSmtiFb5LSDfFmIPkfRF8gw9w==
X-Received: by 2002:a17:903:44d:b0:1d0:8554:5dd5 with SMTP id iw13-20020a170903044d00b001d085545dd5mr10136244plb.37.1703769408774;
        Thu, 28 Dec 2023 05:16:48 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id m10-20020a170902db0a00b001d0b4693539sm13864221plx.189.2023.12.28.05.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 05:16:48 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au
Cc: liujianfeng1994@gmail.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Thu, 28 Dec 2023 21:16:14 +0800
Message-Id: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_051651_766516_C4CEDC2C 
X-CRM114-Status: UNSURE (   9.00  )
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

This is the v2 version of this series adding hantro g1 video decoder
support for rk3588.

Changes in v2:
- Fix alphabetical order in patch1 and patch3
- Sort device tree node by bus-address
- Drop rk3588_vpu_variant fron v1 because that is exactly the same as rk3568_vpu_variant
- Link to v1: https://lore.kernel.org/all/20231227173911.3295410-1-liujianfeng1994@gmail.com

Jianfeng Liu (3):
  media: verisilicon: Add support for Hantro G1 on RK3588
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
  dt-bindings: media: rockchip-vpu: Add RK3588 compatible

 .../bindings/media/rockchip-vpu.yaml          |  1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
 .../media/platform/verisilicon/hantro_drv.c   |  1 +
 3 files changed, 22 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

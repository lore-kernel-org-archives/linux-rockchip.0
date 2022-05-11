Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8842C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xglQV4gWPdnuRacIu8AL3tirOgXZ+10pEkPwMzlQHBw=; b=jsCTOmbDiintLM
	aeda1aNimFM2aygTg0Ts05tMosWM652wMq88/h4MGqC33u/um+2Rw+kCK45EZ4otDHygkF/dOKcET
	8HmNdWmQNhMi78L7mbQ7AMSYxgyDsejJjGsxiNwppXRKRNPVZ4J4ONVd9QAV0s/H0Kftq7tuZmy4p
	tGOtTy8Ps92JIAEPCPe1iQizniH0I8lWcnyvJI4+EHd+4C89to6f6wnhlGfkS/Wow4/b/lwgstHcS
	NeqQn1bRQeZWOw4mm8m735Bv/i85dQZK/v6NbGbnFbEhONP+9jkekilMM3+7iCXW++8lPrNRZ8F6H
	GonWrF/Y4wIcA508n5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nokco-006WbM-6B; Wed, 11 May 2022 11:35:26 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nokcl-006WYT-Kj; Wed, 11 May 2022 11:35:25 +0000
Received: by mail-qk1-x729.google.com with SMTP id n8so2005860qke.11;
 Wed, 11 May 2022 04:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fIWpbH8Qkfx6CtZf98GRcpag46QLNFxJDLii79V6Ww4=;
 b=iwUFlCXpNjAisVEfnwmlAdOatVcSnAwwbuVcsltGQ/5e2qlxjuvMvHFH0zjH653Mbe
 P10WcoYwALsqMADv3kofz5Iv36VCkh+MBGhmZIVf+tfXY4c6t/nPYMTWollwMNTd8SA1
 axrtWIBOwW4r+pvlA76424OgOCu0uMq70lLVLEb+qqhnND16vEEjQS5J1IpkudyWrFy4
 5TlJT9hljT5a5CrhxTLXnu0mHPi/Gd9oa/44/w52HsA6upKYCtvyhYOLlUSUSNn9AO6J
 FrVO5m0S9T8BVuuyUXNKoMtg808X7troFbx1f36TKqFRqd8P4T0doH2AqrtBrlJleTDW
 O5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fIWpbH8Qkfx6CtZf98GRcpag46QLNFxJDLii79V6Ww4=;
 b=mPHQw+ZBC518a5Fckl43rSO1redpdDI75szFO7ePM8AYVSy3IowoRflI7Qoc8tTz6r
 ++W8nHVWAB8wPha8kJiznLpOpdhss3Rq5TUWfqKGa222k+MZOsYeX0EN6WPbPiG5Vr6N
 aOxdsSZeoUHC2bUHIlKz0giwXpNDgnjOcXwGVs+74jqeF4/9ZwEIvJa6PqOU8Uc9ig2j
 PB1SOGmUma4J8RJe2OdJ2uQYXperCJxXsjZx4S1Ya6FPRsv4eYGxnk/ceKlC3QiLvoRq
 4uaBbeT9Wi5uxj+fQaU2yfDQcmBuVYbYfftpTAYC4qXutnT8P0Zx459lo5X+63vBuOkN
 gzXQ==
X-Gm-Message-State: AOAM533nmo4XAmLj6d87HOw8IeZD+gINCIBrHNqlDpkVYcZP+C/tuNf/
 fSxj+Ctay2lLUgE8pVmG2WgYXpteVM2Gmw==
X-Google-Smtp-Source: ABdhPJzmxu38yPKnQkUR29DXmgeEH2Q7/lQoPhE5QKvfpHBeWFD/QSRUEnuuqI6W5KyHPA4iWJ4xBw==
X-Received: by 2002:a05:620a:254e:b0:680:a307:8a33 with SMTP id
 s14-20020a05620a254e00b00680a3078a33mr18549892qko.304.1652268919643; 
 Wed, 11 May 2022 04:35:19 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 bw26-20020a05622a099a00b002f39b99f6basm953377qtb.84.2022.05.11.04.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 04:35:19 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 0/3] add Pine64 touch panel support to rockpro64
Date: Wed, 11 May 2022 07:35:13 -0400
Message-Id: <20220511113517.4172962-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_043523_703631_7F8F97AD 
X-CRM114-Status: GOOD (  13.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Good Morning,

Apologies Heiko on taking so long for this v2.

This patch series adds support for the Pine64 touch panel to the
rockpro64 single board computer.
This panel attaches to the dsi port and includes an i2c touch screen.

The first two patches involve making the reset pin to the Feiyang
fy07024di26a30d panel optional. On the rockpro64 and quartz64-a this pin
is tied to dvdd and automatically comes high when power is applied.
The third patch adds the device tree nodes to rockpro64 to permit the
panel to be used.

Changelog:
v2:
- Drop patch 4 so we don't "enable" the nodes
- Drop the unnecessary null checks
- Rebase to 5.18-rc1

Peter Geis (3):
  dt-bindings: display: panel: feiyang, fy07024di26a30d: make reset gpio
    optional
  drm/panel: feiyang-fy07024di26a30d: make reset gpio optional
  arm64: dts: rockchip: add pine64 touch panel display to rockpro64

 .../panel/feiyang,fy07024di26a30d.yaml        |  1 -
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 80 ++++++++++++++++++-
 .../drm/panel/panel-feiyang-fy07024di26a30d.c |  2 +-
 3 files changed, 77 insertions(+), 6 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

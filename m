Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35D21C07E9C
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:11:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 015AE61361
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:11:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 015AE61361
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BhIJLaOFkNzO1KpmZ1x7jCmEyMaB29Dag4NUylL/Vvc=; b=JmatEzMRL2hKd0
	umLYoPDpHhXXJKRS/20GxSUsL/xZNwf7hVBjgYJrzd6o42viqJwG2G7Tzq0V/nx0wWuQwhNesfcY8
	Grb/4+eyLBnHy4vBqEHqWLybyobNvsJwaM0jVfdMlbkYzNtVRHtdudHBMoNbjI2qZX6cRj8AMOD6T
	J3S42A5edsl9pLg1V5MBuKBNKw9APFhRVXcvpq8uvNJeeujJ5+1d0ANWmcq2+MZE+EADgMyenr6j5
	Gu0Bzktt+hrcbcmNgyizZskjtlsz4BltFXmp5lEeczCVc7VXV6XIJVvryGx3U3Zo7lr5/fnvcC+vX
	IsQV6RoLW9iStZAtj3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2EdZ-003mPs-Hg; Sat, 10 Jul 2021 15:11:25 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2EdM-003mND-Jk; Sat, 10 Jul 2021 15:11:14 +0000
Received: by mail-qt1-x82d.google.com with SMTP id c9so5908295qte.6;
 Sat, 10 Jul 2021 08:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9KndYjn/Dras9oVIQu2++er4oTGHdDL9wFnaryusxvs=;
 b=B6WoR/v9T7cQNrzS57RnEcalDQ2xAUCVfH8AHia78qYmqJcnyTrzeJvYnUmMAGKbrh
 L6lym41qO2VC+Zzi+b/1uoAMP8CMWXTOV/De66tzKyrdtIKDafc6526ll/7Om2FT7+dQ
 IwviBoG7qWow5kxW1F/o1NfkclkhBolm+oyxy9/Fvs0Dv5/GYD70BJHAmzDUbabEHDpR
 wm8Q0X2hRsA5C9Q3RESepneBX+abTr3GZBI5C9p7mGizrj8ZU5wh8S6s/yPf7ijSoFV2
 CZlKWppIoOUOcLCRG4KlEfQovUaj7tjOhxHqJejWZuxmKtEK2Da8LNqj/jiiDGC2PKZr
 J9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9KndYjn/Dras9oVIQu2++er4oTGHdDL9wFnaryusxvs=;
 b=iOw+tjgX2rjJ6SoJW6pXnyTsE1wsd145ICjN3Z1GHsT6jBmT39s+PkOGwxA5PsGZRw
 BaYTasoXEDxSpWIltgrpKg7CGKxbrdDpGqXM+Om6uzlyzBhNTkaoddVsU4TTsk8GcQh2
 1yefMzfX3HYJ4R+aYornZLvloaQsylER/6/LeXC/tNPcONM5f4tYhzBQ5wjUUJ+EcHS+
 3EMvFKPKYJCaTRkG9h7OutyMUuYGo2xSavF6q0oooPjH/o7fZC4rck3TykwrnAto3mTA
 vdDlHYv5pLcO3g7StkAVyxjR3NCBXePtLNv6/LkcsU0lOWzftk3xpDldGxMqxIykN45b
 WD5g==
X-Gm-Message-State: AOAM530SF2K6hXmzqLukN89KZysTm7uAs8IyYi+u9yzXsRkkIJw3XYVs
 Dnw3Hzb2MJeja6g+qKUoilA=
X-Google-Smtp-Source: ABdhPJz21VqzR4nb52cDDOeFHg0qPp4Qsl+zwsPTGvKAX58JL6UuNxo6EjbCCPKhk86LIDOel9MF0A==
X-Received: by 2002:ac8:ece:: with SMTP id w14mr39481837qti.5.1625929869827;
 Sat, 10 Jul 2021 08:11:09 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:ecc6:5233:6153:7b36])
 by smtp.gmail.com with ESMTPSA id w14sm3445482qtc.55.2021.07.10.08.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 08:11:09 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 0/4] split rk3568 and rk3566 device trees
Date: Sat, 10 Jul 2021 11:10:30 -0400
Message-Id: <20210710151034.32857-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_081112_712387_3565A59C 
X-CRM114-Status: GOOD (  11.35  )
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

This is an example patch set that addresses the split of the rk3568 and
rk3566 soc device trees.
This method attempts to avoid deleting and modifing nodes by maintaining
a common dtsi for all common items and adding in the differences in
separate dtsi files.
It also includes a basic dts for the Pine64 Quartz64 Model A board
as an example of a rk3566 device.

This series has the following prerequisite:
arm64: dts: rockchip: add pmu and qos nodes for rk3568
https://patchwork.kernel.org/project/linux-rockchip/patch/20210624114719.1685-4-cl@rock-chips.com/

Peter Geis (4):
  arm64: dts: rockchip: move rk3568 dtsi to rk356x dtsi
  arm64: dts: rockchip: split rk3568 device tree
  arm64: dts: rockchip: add rk3566 dtsi
  arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 321 +++++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |  20 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 814 +-----------------
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 786 +++++++++++++++++
 6 files changed, 1153 insertions(+), 794 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk356x.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

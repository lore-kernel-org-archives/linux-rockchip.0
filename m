Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D365ECAC583
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FsbMAaxirrBybOE5WYSJxdJEOt0OJAdzJ58h4mZSPOk=; b=lM2QD0LBQfpxcn
	yM2a40B43l3WqnoxxSMDH01brzcKKhUk+F6QVevj686cNcKrpgDlLEU4s6A8kd6kqb/Rz32anyPp+
	P2Yl+CQ8BjVZxb6v3M7kIciv/xPfxytKZn86Rh9Lt8O07o0yrKLddol8obBn03d0z/jusnmDDCWEL
	zH6fmBjOrQ0g4/RI4N8Jtn8qnN8sxawxtN6fjVyhp7EK6MKYi3x6sDe9OB5tF/00ZPfyzXr1p/Y8V
	Bt3wfFLBpZZrZp0cAj53i0P7YfQoNwcwLPNKJVQDf8nYW7eNMb/w8k7UTVCaB/cc+Pw9vg6E2fgD0
	1Nyuxyp0JRmZWn63jz8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmY-0000000Gxym-2e5K;
	Wed, 10 Sep 2025 21:55:14 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmV-0000000Gxwq-3I18
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:55:12 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b042cc3954fso12681366b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757541309; x=1758146109; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SgBJun68GT4t+Q+ZqI1trDwNO9m1ngITxMaI8EXqUuo=;
        b=QhDXt653Zb2Fxc5SU6v4mAbf4G4/OUE5bcFBsWrkNL+KLJqO9rHo680M0KB2eGs9EU
         mDwJ8RhsNiOCpy5BMad33hQ8FsP3HJB8ZbmnB235Jdb/EBRgDVF+VliwuV/1ja/AbggZ
         bXHLUjLARNoHFFfGbeRFhaNFkhAiuRExYeUw1bpUUjd0V0oRdnmGMfUNeVDw/6iKcCXo
         0z9XGFIAs3PJageM/z5NhWM9BPNONmfh9puY+hhL9Q9oDrofu7JOwtQXWnQ6znkKWqQo
         BO7xK2xvMUxTFmp2wWrH4ByUazrVgCSH7iXWXzwPmUaG5KC8t36TPwGYVdtgB5O+sM6r
         vNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541309; x=1758146109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SgBJun68GT4t+Q+ZqI1trDwNO9m1ngITxMaI8EXqUuo=;
        b=AnJUhATkNUHGUBEsTU8UhpBO0tbSixeqPJqeOlp1+PzdjadGeP66GDGHchraa3HSSJ
         bIWuWeqYWxvQ1/W50VAecb23IhKy+2m2i0ZFAtanN9pyacjRDANHJ4rptwXVhPZWZ0h/
         pqsCm7sm+GIxw5bX10t7ZKDQzFG8Zyv0XWY2D+8VBqkaKpSkbZUFqqyym2g2EzaA8RbK
         2yvn8hm8fSN6znEh83MsRE+3e4SlKRhkL6rUYCThOfZ7Y1QZ0tzTW9neQK8qgadWYGUs
         qGl8scysZ62zmspxAqA0YTI1OtDPepSmRnGnVzlrYi+CbfsqPjB9wokIHK48miM/6yVK
         qHbw==
X-Gm-Message-State: AOJu0YxjdKP5kVJbc1KKTB3mdBPgcSx+pf9y8sj4A2trD28F3h5xLOTa
	SrBUSwliYL/80nCnLiAYuBBOtQSzTFCOH9LGOhD8jIVS3oR/YFDKpjKIlgPBQz9l
X-Gm-Gg: ASbGncuxa3PY8X0IKMEmZXEZMdhy7pSI7PK/w9XNlRVm4q2AGZooxnSxaSwZ30UTmxW
	yNkfgC1RbvmH/UGjuRjVqoMSdQuF7VDd1Vv5V+x/iSJgq1whWp562VjUPFpFKQW4fXyjGHweexJ
	06YflYrgnpkxT/fXPETAgioHAN7wiENzdruMIhcUNyPbz4daRD/XOaMG0Djz+MtJi0QqLIVE+hS
	hsRiurhIBc+E4cb65IMPkRFP/XcuOvyGGugIDLMW+gYCiyuSRFf/EJRt28Uu4AudNg0SW/Tl3Rr
	+FWn8d5oWRFxC0dhmu5pkSrICWoeZ4WKmIrKFYDplwwX6bDLqTHa2AgbIpVOMpnXmQY2v5Vl5Sg
	90kIgo4hobT4zgJGHhCiK2axtQOwEGBWmODNcn6qlpmHWgm4=
X-Google-Smtp-Source: AGHT+IFBh3Y3x16hFnmn1Aw5oQrSzmSLwY5khU3GBqjMJnoz/aVbxZ85Zfy+xSrhMxn2ewyMMTx20g==
X-Received: by 2002:a17:907:3f18:b0:b04:7f7e:6d5e with SMTP id a640c23a62f3a-b04b1445bfbmr1347713566b.15.1757541309501;
        Wed, 10 Sep 2025 14:55:09 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830ac2b6sm240517166b.27.2025.09.10.14.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:55:09 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrei Leonchikov <andreil499@gmail.com>
Subject: [v2,PATCH 0/5] RK3566 BigtreeTech Pi2 fixes
Date: Wed, 10 Sep 2025 23:54:42 +0200
Message-ID: <20250910215451.2244192-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_145511_823818_6FFC9240 
X-CRM114-Status: UNSURE (   6.85  )
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

From: Andrei Leonchikov <andreil499@gmail.com>

Some fixes for a DTS to a valid support all features.
Two fixes affect6 to a normal work, two for supress
a some warnings and one to future use.
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    2 +-
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    2 ++
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |    9 +++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi             |  105 +++++++++++++++++++++++++
 2 file changed, 118 insertion(+), 1 deletion(-)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A70D5D767DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROvfcRcuY+azs6PVZVC1/njsGkKsJSdg49WN67lkTXY=; b=G79OQVb45C5KFP
	Bs7xdc0JxATGhZ3IbVc+exZBZoJRYBjisTHsFydOyLiNNKNuWwODhiqeBMeoJ0zpATY9Fh+fhLnZd
	HNFxcq3dYOuEvFuz8sOsQ3Q51TOuDcPFAuuMB+IwBTT/6YmPWI+5Za6DlOKraoexUc0gUMFmjKDj4
	0n6hrbozWvuYMkL8FH9DHPy7InZG2eYoYRL7R3bK6GSE8YZPBUQpSfDN61hsicvcHU/o+01Pia/2h
	JJ7o882om5/ohuJaUk6rqayTNX85juBkWYc2V0vsC7gVfWFqosbO3W3s8lSNZzrGGI043fUiYuLCc
	b1QVM+BAzq8Sj+pQOh3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6XAp-000000040em-3WqS;
	Thu, 31 Oct 2024 15:33:23 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wlm-00000003vMb-3jTL
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 15:07:33 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5ebc04d495aso569803eaf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 31 Oct 2024 08:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387249; x=1730992049; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=hD53J8TQq2iJSjZjHT8qL9eekWp7Hnlua1Cokfmx1XRpXEYktUQ6iQv9oRQRQpVdg1
         QA46E/v0Hg/JX5H4qQR9D6zk9EcY1V37RrMOWb/2O9qsbezpkRIOBaaoL49+H8L4AE6l
         NDQUjlHI6AVJSQEO1fqolfrfJMTCrXOGfwE4DYIWCYNZa+w8eMBGptsM3Aj2sEdo7Pt1
         fkA+Vpbm7Pajv19um7/eP/8nOM9CFyIWaSSRWj0whczN/ckJJOcUTEmiHPzJOmORh6yv
         Rs/ZFRi3slan+Xb9gSeeJblRUifUCBNkCp0yAHFEnMUVSv/GLe4+wAuV1yXxHthSllt3
         c3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387249; x=1730992049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=QXPJ3S7II7xl1LGNOQEUyk1/UFIRIoXGlOh1InyMwD0NVrJar9hBVddOq97nmaPUpo
         Aar5vPncyINQnwZpaceMhmQz9KEAn+fW/RP0YmjKgdXIsSlHUdTA3SyASMtxC66Hculw
         L9T70AuvcOzu+C4Z1qwD2wN8lqY71sKm6oM0vUldX8Q9GWcJW/44ZF+Efk5M25YtRA4Z
         f3JVpL3+hWwPwp7pNUSVYYvlqPY8XwYJW2uy0UHACztFH56mGDFtQ+EB2F7JhmerCABU
         daq1Gcf2G2iXO9v+Twv0hVq3PgC8sHEutwtPuxlGfKKGJjJs/1PiyQbCBuyfFk8SQSug
         CPag==
X-Gm-Message-State: AOJu0YyO/6iZEeX42EiTBU3T3dSF4U8RSBODU0tVSg+Zxs2bWQu5BijR
	KyIcDkvRZ3MkJ/FWsFIbLD+cABSRIWBHtqM8Q6540LGOtXBDQEwmptwGWA==
X-Google-Smtp-Source: AGHT+IFpwhdGkgA5cSeiVkgJ9W4SPMmDL+naqa+41aoQaq94G7PKFapqE8me7huL2B74H3NSbmXuow==
X-Received: by 2002:a05:6820:1ca2:b0:5eb:b282:5916 with SMTP id 006d021491bc7-5ec23a8d4c4mr14701062eaf.7.1730387249341;
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:04 -0500
Message-ID: <20241031150505.967909-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_080730_938067_5B92F8A3 
X-CRM114-Status: UNSURE (   8.74  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Enable the GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..065d44735001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -242,6 +242,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

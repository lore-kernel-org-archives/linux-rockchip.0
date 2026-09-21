Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA66C982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+GHxmqbCm6sFFadZMIuEo+EZuHJ3nuca9d2oB0PR9w=; b=W79ZRAW3uFgRHk
	rE4xVEjMgGuzncxFVkvJ/CS40ULbdroqRtZhtRVykjvsT7WMhtZ92HMYpVrFCR/wuAIufDewhhdgC
	P0dSNP1zVrImZo6MSP+IpybYDgKJbnQrSsyuUJs/U1WlUqHTVDBrrZ2OEB0mLdC0I3VAzptou9Ay3
	pvdEzam3W6sQ5qlUyefTm2GI8cPxJZIvLkNprsCGu1esVtgXxUZZh+8HXOKP1tBDpT/7wTixzLyEt
	WBGHr1Gs+ol5/pJ/mZAZQVxWeIyy0bo4moaodJv9FD3UWsrZyuBXEgNdIq8nFjr3ZvPO9m62vlZNZ
	21xk+VLiVmAfHilCsA5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xc1-000000011sE-38wz;
	Mon, 21 Sep 2026 06:34:49 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbw-000000011o6-04wE
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:34:45 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747f05ffcso19526335ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 23:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789972483; x=1790577283; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B3NigTRFcQ6QJySBv0y+v19B6xVRqekP4D+8Fd4im1Q=;
        b=NWE1ZGMRXKdK2tBGHx0j8LfQg8tsi5oO5Fxalp5eu8+M3XYayb+PbIyWbzcdMZqWNb
         OSFg4mYNKG0G7n8GzgtWGkccJEqNKfCcB036WsLAL4IifpcCDv/dPxtJpHuLmpYPdHwz
         DPuXgDXymp0tpdxXnTTEKz1tXaZMNEXvsmN+mGse6hkWxISgayOtufKQWgj1AVmYK7CF
         J90f47W2211MtyVEewEI+4zCOpP7ZaFfLDgIsEw+yxOOtoG7z5co+Mde1Lo1FmgEW8WS
         MzsCiZ/nolt4ZiGFDmityt2C0iA7yNS24RWhifM8nBT36Iipk8wxNH717vpLvJsmkdhh
         6XIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972483; x=1790577283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=B3NigTRFcQ6QJySBv0y+v19B6xVRqekP4D+8Fd4im1Q=;
        b=iIuUU5P3g+OMqvOoLnPqUm6lqcYEgPt5mCvaFIS6Lh4NpJi2dJGglePCblacP8O+Iz
         EWOLOCKaT4q4Y7jxWMxbF5ppNP7p4ujUNUsSzb5rllJBaXgiZux2e9MsZf7bKtcH7FzH
         CHQ7uocI91uzovz5zYq4IaNeJ8r9A7jhnxR8d99T/VO1VIUang8c1CYXeTCeIXba3jcI
         jGX/V5Q7w1C818lQ/E7sY36Bc9L9NIWIe8FO3RWwdestXqk9uhxGDDzrw6OpAAM3Odok
         WK/EuEckCGL/l7Bxp/K3LpDRSfQ8JcNvR/5GDku0Z0h6In+ugrefI6gYUGfdeLPxYcF6
         eR3Q==
X-Gm-Message-State: AFuF++nf5IUPYQr/ZLMKcqemFAOQ4J0atvHoBJOkoUJqJeFks7nK1M+b
	vK+g5wjj4t1/ALT+V6rqcBdCoZdqCQWBAbXmzcU3rDVayymT0ljLdNi1UU6F/dvfY18=
X-Gm-Gg: AYBFou2EoUxlT1jbnaiaD2jZdN+YrZpK/wCGwEj216iiPNPmKGMe5VS/2xtli8S80eM
	iq53uqRZHjkF4X9EcuLjxEz84X4Gk4fdEUDe5s33CINyWU07tXr5pPs53Usx0vspB1DVJuwDK/U
	MNRu5GLsVw8cYE+tUqEjHZtc7GdLcQ1h32e/CarnWZE5WaBRrmeptf0+597fv+hd9Q7Xxw4j/pO
	7wL9Z3NxTqjTLdt016yh9McYfuYrsut6KC8q2YhchYklTAC0vZ3ySrFHRxhjHBo5yhOecP7y/ag
	RzKeRh+Ij/Qvfli94a9YZu/WthTQwgwFYmH2q/ZH6AE8KpFQg/pjK0zcgqtqZ2YJN1yHk6Uibei
	Ud/S9fLIYDB+5jQSK1VFGlDif9u43mXEn2suIYrtjZlD1AutWnqJdpd6onVJScd3MRAqvdT5HtI
	Yal6k2nQAnI6WQEB7XuoLUWn5eOH3XQ+JuiN/vzgqwTnFaFicoLSIcihVzGOAaHcxNoOXiM6v86
	y3G1nXRn9g=
X-Received: by 2002:a17:903:13d0:b0:2dd:c100:80bd with SMTP id d9443c01a7336-2ddc10081cdmr97269725ad.56.1789972483238;
        Sun, 20 Sep 2026 23:34:43 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc179dbd5sm28173565ad.39.2026.09.20.23.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:34:42 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: enable HDMI audio on rk3399-firefly
Date: Mon, 21 Sep 2026 14:34:30 +0800
Message-ID: <20260921063431.103-4-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260921063431.103-1-yaozhonguwl@gmail.com>
References: <20260921063431.103-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233444_054991_DDBC9F26 
X-CRM114-Status: GOOD (  11.26  )
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

The Firefly-RK3399 carries audio over its HDMI connector, but
hdmi_sound is left disabled, so the only outputs are the analog RT5640
jacks and S/PDIF.

Enable it. This needs the previous patch: with i2s0 still holding two
pl330 channels there is none left for i2s2 and the card fails to probe.

Tested on a Firefly-RK3399 with a 1920x1080 display attached. All three
cards register and the hdmi-sound card plays at both 44.1 and 48 kHz:

   0 [hdmisound      ]: simple-card - hdmi-sound
   1 [rockchiprt5640c]: simple-card - rockchip,rt5640-codec
   2 [SPDIF          ]: SPDIF - SPDIF

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index dbc38dd..0469807 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -323,6 +323,10 @@ &hdmi {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

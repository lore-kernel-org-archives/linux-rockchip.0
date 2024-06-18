Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE64C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 12:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=976A1XlOWCccM138tS6aHPvdwfBEjRkSF+hHygWV9Nc=; b=SxUZhAvoaNFQTS
	f+33rtWHLVH6QLAEB1Grzc3Xa0ucEr/uaqQCUltO/K69kZ5j9PGxAHLyJDcbXebDwM9K3F2bs9zmR
	NOJcoh2MjQR3+SXoFh7MnnbI5fILK9JRHfudwXcnlkRjRAbAzqjN72yUSutpGPiV6zeR7PsiXtE6Z
	T1uxHdlTOavqv4ZHwakTyeXhZtlkJA5+Wlw5JarYRpDU+Sh4Ck3OWlQqnz1wSDnMD/CPcw3Lwpq3D
	X3PvWDcJN+Uhiaf8cMxNCy3i3UTTRv+NQkdnv+sl/N8xSV3fByAXU9O42yG98IJZPlS2htTrSeazG
	/XptlbscORPpIUCG81vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJXXl-0000000EldK-1yUv;
	Tue, 18 Jun 2024 12:02:33 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJXXh-0000000ElcB-3dfn;
	Tue, 18 Jun 2024 12:02:31 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-57cf8880f95so1094474a12.3;
        Tue, 18 Jun 2024 05:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718712146; x=1719316946; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=haMm9kUElw9QALa2HCVGPI09+V35cG0nxwVmSkEijp8=;
        b=WtgLWb6NgeouEjGRmitXo0s6QUMFrZEwb2H5alruTsBSgx1jKkXvtYEbOW43/up3tp
         ULolS0vMzX0o+3ssH0w5RbwRB1yKKye9R+JD34HcpLiTKuPpE2EIA0ZqsM1F1ROmhjDH
         A0mMBmvhwoFRwc3/Qyhxn2RGIATP3pXUKyKxOp+paeDvWSvwLX4qoNY1opkmH+8DkP2z
         qykR5XcvngiDJdsKmaYteQpgcvWw/z1Rx3ddlj3o2cdUnjU21vmSgaLT2Y+W6qQqUtWi
         scSWOx9QirCSHOlPVTXb8YpW+KGevKPAKDoMQZ5Uwv6B+Goo++uEAz1YHlFHapVx9Vhe
         HD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718712146; x=1719316946;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=haMm9kUElw9QALa2HCVGPI09+V35cG0nxwVmSkEijp8=;
        b=V4WSnMyOfIUkIKg2XRqbNSKK5YvzTVe1hCNc9kb8Xz6Q3ty6hNXaqpD7gPKletO0aX
         jUwz0HSY0PozHeOGCpXuA4KdIFcmEfZF842/7D6OeaFaI5iHEIlr8IOY2Ad+BfqdRCJx
         1MppSAz9PY9R+OynPys5C47Wkv1KFGB6Y+OghPm+nMMmmlmedQ1HLxr7yfGzWyNeEmPQ
         hbVkaxkO5xep8801AddXQfmyRY5zsdC9x1zV6zpo3k2a5hTCHafufES9OSJSRvcvlCIV
         rinXaFZjtxcRebJlUcmjqHCqx0Q1KBdq40FKUUD5igfLUUHku60ie9o6X5QhXPan7sAA
         TpCQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9Sfn48SBwzO2M0qDEgoeiiyayda1FUnqxt2mCaaLNspYZW0z0CiK1dl3dfFBxDqxwVVnOWw5rn56tcnM7Aakn0Szv4Ux9Jf3nkCafjFnG+DLPoIbf4qADWZQzfUR1TMul+go91mgpyggRH8AS+f3sPGrlaiIesjo=
X-Gm-Message-State: AOJu0YxRuRdjUfESr/wY6Hj3Lamr2X2puBxv3dA6L2TQEnlXyFKnv68Z
	EdMylxpeAz++KLueyMyH7UR6qUsUdh/UkXFVSD1UZJqLNRHcyuEmKn8Ztg==
X-Google-Smtp-Source: AGHT+IEceX/tQXoH5/SOBLcKdjQJKVpeYOaE9SIl3OdqZW7F80RU9A4QwG1PRrACW34ftqCmyh+acg==
X-Received: by 2002:a17:907:7849:b0:a6a:6ed0:fbdc with SMTP id a640c23a62f3a-a6f60d6063bmr1038360866b.38.1718712146152;
        Tue, 18 Jun 2024 05:02:26 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56ecdd1fsm608496266b.102.2024.06.18.05.02.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 05:02:25 -0700 (PDT)
Message-ID: <5fe7c2fe-4a38-436a-8017-66989959329a@gmail.com>
Date: Tue, 18 Jun 2024 14:02:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_050229_943450_6BB659FC 
X-CRM114-Status: UNSURE (   8.51  )
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

Add hdmi-sound node to rk3066a.dtsi, so that it
can be reused by boards with HDMI support.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3066a.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
index 15cbd94d7ec0..5e0750547ab5 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
@@ -53,6 +53,22 @@ display-subsystem {
 		ports = <&vop0_out>, <&vop1_out>;
 	};

+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	sram: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x10000>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

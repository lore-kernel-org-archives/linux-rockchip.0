Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 298DF1125851
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 16:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TyRXa9BwYyfisSgw3ZZ67GCtZapuN0RdVANx5fyosTY=; b=1MQd3Tn8ulj80b
	qKRyuVSLODdyO6FOtUed87X0qcwoRo1z9LKgjvHDrLFQS+p2sI01qKjcH5lyDikHPZuQZcIdgrlc+
	wN7m1I/gt3mYIjsi0/WTVyr2iUWToki5+pTa6v6SrswRHJjeM7I5XS1J0/gRxhLfiJsxvsDHCKIX0
	mFsqMQXvPXO86a9js0SSZIUWrpvqpiXBl6pUjETAgj5nAVsoRZNM+ly2hIQijBWIGaAZBMAMr9Mqa
	HwxvpiPbslDr5s6DU5FF4C+OREgJlqdSWayIFDUBd9wsSlPYWrbNDd8ra7eHB4jVMl3+/uVMdd9cP
	drR2PbET3tIi94koiHSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MMw-0000000BvUk-15ZS;
	Wed, 11 Mar 2026 16:25:10 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MMu-0000000BvTy-1UZW
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 16:25:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-439bcec8613so43575f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 09:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246306; x=1773851106; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=avEg50b7lIE4cReK2Q5lP00wp15UEOQn11C/oczabmk=;
        b=LrdXXaY27gw4pkamSCDgPouze0sfApBwk86tjLWl6jzw1dCdFa5wqtbbEwqG+5T2Og
         8K9XO6+WkKxD9ghmYnWKi7dN/gxfelw7Nv3Rpg3XvIlWGc8hnN4V87GY9bkPhoobF1ek
         fc7qsRtLMubRqbWPn9eRFakZiQrJmdENvRzKJRaw5X8fyWqu6o2ygpXHZi9HY04OakH/
         qg17q5y3biqs2PNoIydM/9+DhAvFGZyd9sKc+qPLXj3yBZnZeJ8hm9EQDXYMsDetbBwx
         9x7y05fOhYP0YbUGOtBlRASXWfqezZqsYAdwQqYFxOt0h+NBGhTB9ma+SdyynP8poZmK
         KIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246306; x=1773851106;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=avEg50b7lIE4cReK2Q5lP00wp15UEOQn11C/oczabmk=;
        b=fzagl932GhwcWuP88HZnE0c/t0MlReqF7+T0a9lPB5/M9+v6CYkSI2mddwfxfAUXlu
         EpV+7K0TGMiGkjiBaVJa5b7Omr9z22eEhx9TqTtcEGLAWXjiONrYgws51PFskDS4//vJ
         h4uCQrldpZhYFBEmcARwjLFhuHqJ87morG1yASt77rV0/bdPmx3e9vsSokEFPPBHvkYS
         se9dgNXffnh8d6OAAFJjFhNhSMnSNsdnugyUsPGqKbIiLVyDUm/EEFloMm+OvuzCFru8
         AvdAgAJdiYgfStLwmJ/EixPz1FoRqNAfUZZ10lqHTVSmOAxValWOjs/1x6+zoi0sXcyI
         WUnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDrzT3Z38T+U7LxGPE9/ymdPIFr2OdylqpCxfMz/rJRKGMvgmXvcti+e8XZ1/KYAPmoikUgZ1mJ3K3MDsxwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSVcaGKUW4EF+cfgnYmAav/c424XYZTzrLJvCNDJFtlVPuKPB5
	+F0o2r6/rZMBscYauRY2Q9mG1n/ZuNATfYDw8y4uTGYGg5llylBnDbDEF5CHcKRaE6g=
X-Gm-Gg: ATEYQzyFzqYm40NKKdqs342SIDjoRoDDJgYKv/reQKVEL+TckrY24Xoj4qGWvXA5dQl
	IzpcBOZKs9+ubMJyl/buCXbqyyJxiQYanjsHWwX2n+YrLgswLAap3gYLAslEbrcISexGcfc8XBA
	fLvgRghHBnYrHIKDO72Ho43x+nEac+UoPIVg8h6dCplHO+vUvumLBSbD1SPMI3XCMSdX0Icjjvn
	5WC5mub6HqTqxqZvb5V9+dMjuw8fstw9mkjNL8XoZvr4Wr0nfOUkbRe50VIy5TFh4mRpP1b9ef3
	fh+RtByZ8IyUUNMKdLd6ly5tDWWVjE0C0RCCO+Ni9rJnDHOorMyWoaSvKLs29VT0Ewr/sah8yTX
	wogk1V3pLmH8P0BzmFqilTWBG0aE3tb4CA/G9MuXM+T0KsZvlFUq48wYbY5RpAv2ZZEEFxAhxdk
	tNULZrsXV5aWkVL5UDDlfCZtq92qYHvmx6kkpKwlAVVX6BgQWIAwH8Qqe0nK2jVEb3eoRP5YXem
	PoL2HUSsfkc1j7J
X-Received: by 2002:a05:6000:200f:b0:439:b1d8:6084 with SMTP id ffacd0b85a97d-439f822334emr6514903f8f.44.1773246306286;
        Wed, 11 Mar 2026 09:25:06 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1a76e5sm295946f8f.12.2026.03.11.09.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:25:05 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:25:02 +0400
Subject: [PATCH] arm64: dts: rockchip: Add analog audio switches to RK3576
 EVB1
MIME-Version: 1.0
Message-Id: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
X-B4-Tracking: v=1; b=H4sIAF2XsWkC/x3MPQqAMAxA4atIZgOmagWvIg62RptFpfEPxLtbH
 L/hvQeUo7BCmz0Q+RSVdUmgPAMfhmVmlDEZTGFsURIhn45wOEZZUS/ZfWDFuildVXljHFlI5RZ
 5kvu/dv37fqkBMDplAAAA
X-Change-ID: 20260311-evb1-audio-switches-573b44c22b16
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1099; i=alchark@flipper.net;
 h=from:subject:message-id; bh=SrETXia2AeuYWSUIAN84IRhX87WCsAlPD9OXpI+Iy1o=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJ5QYZZe9/vcC+Z4I4+nEXcWqG569EBsSvXas39eb
 cx4tFpftGMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICplt/CyLDDZX9yyLZjW7p0/yVWPDXce271/yYzt2XGv59qrp5q/PwjI8OpMvs
 Z298ebLCcyr3JUJqr8bOJ8J7KiTM8N0pbxogu6WYFAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_092508_436896_3E360FD8 
X-CRM114-Status: UNSURE (   8.44  )
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

These allow selective muting/unmuting of inputs and outputs, as well as
setting mutually-exclusive rules in ALSA UCM.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index f5746bc2970b..fb0dd1bc5148 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -270,6 +270,7 @@ sound {
 		simple-audio-card,frame-master = <&masterdai>;
 		simple-audio-card,hp-det-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,pin-switches = "Headphones", "Speaker", "Main Mic", "Headset Mic";
 		simple-audio-card,routing =
 			"Headphone Power INL", "LOUT1",
 			"Headphone Power INR", "ROUT1",

---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260311-evb1-audio-switches-573b44c22b16

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

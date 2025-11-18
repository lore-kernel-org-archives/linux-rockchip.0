Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1F47CF2561
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 22:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXsf+J/iRfzFp6inJNEg0Eo8QFOaxCnfnewBq4JPJCs=; b=SCrPPbwCDCiocz
	LbGXBVfcMsJH0N8Kmr1024kzhJrTiyleP/JSdsA0x6iXEme+am9A6ro361x1JCUOD2fRMHgnG/vby
	jMWmVAogF3lvaba2anAXRIkMWqNr3QWy5mzaJvQk0K6Xo57m0saYxf+iTCUnM3iKlmzgU9uce/OnK
	xaxyC4L9q4roqlOafD2kT32nwuSwGq/nfFP7Pici+o69YV66cOVTm6BT8duMyMZ8LRUKsiDQHd+pe
	zp9Yg3kCah2iZLQMJ0c16PCXn29uWIIwNbljF1hUKw2UZKsiPy35WpSdjQ/jcfjErqwBcDtStyEQY
	aTBavLaaMDprUXnNq/aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGD-00000001BSX-1XYh;
	Tue, 18 Nov 2025 22:33:17 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGA-00000001BRC-261q
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 22:33:15 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7c6d13986f8so209912a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 14:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505193; x=1764109993; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFl1M+aZQbK/RUGnlQqp9WjJULhOpbyDXAT2VaTy8aE=;
        b=ckaU7PH99GywNlt+tSRUB50ccolgaXke3ye00ZaoroLgWyQTRGlJf97Jj78kzBQaly
         MGTBhTmeIcqBBj7M9KGu4IcXPcTBiH/2gh4ci/9J21uOvzKwiUx4uw87hJSf/ii2ppoD
         1NMxT40Ln6+sf7QeOBbPw9833qaAY5hnUUZZkt5pHFLdF0RWdUB07ui5B7O5YMrAgmQC
         cn7q7z1FlWlGpSuc7b4pB+7T/yoCTPLg980gNA9Z0DuzCw8UsI6GTX/pyhyk4eIR9XO6
         JfB0cAR1NDPGghyxV+A8AwAXefTzEjglegJbYkT97a4YZ7eCk9wEUdc5rQrxsyxjnE2o
         quPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505193; x=1764109993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EFl1M+aZQbK/RUGnlQqp9WjJULhOpbyDXAT2VaTy8aE=;
        b=YqmDak1uW6bBNWfSVf++3DBO/KKv0LvqW3zlFNmO3UzjxwPuLjBnp4uMvr5MnaBA29
         gIsGmxUXZ22UTptOQfZkzrp4nggRVklptauzQSxkIOF4emwug4tbRgKvcODl0VQlz9Vz
         tMgPtXZFkybPQGi+vuHkq885YQN4VWivvcohVKdj7OKAb4xLgbbCl0HJgDTsmCYJcwEI
         dNuH5ANlHT4xFAU7cs/qMDk+o4jb60EXnVOAlsNU0fNDL1+ykpRIqMNquNhyeqeoMZbc
         NUDCvUfoNTq0q/Pw0JcuzuunpqsNnvgognU5Ywqa/VWgphnRywK/kfFCFPVgwPHw7sXk
         3cng==
X-Gm-Message-State: AOJu0Yy60KMwYwR5c0S0as5a4zSdvqLsya4pWcsLdEIjLbTgNPo54DzV
	zeaxqRlwPKg3hfFy6bFyv0+D9TYexlAbB1/QtSRP4qZ0F2L5SQUEV+wCz4J0pQ==
X-Gm-Gg: ASbGncvPZ4lMCHbt8TxoR/cBDwVN2HokH2Ah9rycZNpiUqHDqiTX03RmNVw5Bw9l2mD
	sFDrF8TRt/0Uw6lYxjIBAmbel94l+MEHnVZIC1u84mgOn7UzX7EuV00faStgl562Lr8V3d7Pzud
	w4mcr15MgJc2Eibm7cheCt/mn5UiVogVG/xAixi7aWSngUJmIriLEagmYEOwJHpACbQAFck61Kl
	fXSDsA4UjzDHJOsCSL0dyh3XOTx1JaZpGO9Ol0pF7IgTfVUCOXlUkltQyNVthqRd2pMoAMqYT50
	OjoDN+60/lWI5MAEujxanMc10CO0TbwZYsLYA7XGW6BYTeWnJjdZ8QUQK5qsB7OycH+nb+I+7Y8
	fpXYCDTxBi6ONqiFkfr95D25eWIWK9DPsEF3BLeE0YCBSEGkRWN+1AaUJsZAZZwBDTzoREyeXoh
	NVCyeUFMKbg8gEWTwamHE=
X-Google-Smtp-Source: AGHT+IFSqViiJBcsrAWccVkLlo/b5OZmrDScvvMHxElzmMEKncX1tRoUUzx/ohfTt++bgQVux2LhQg==
X-Received: by 2002:a05:6830:8d:b0:7c7:5ef4:a52b with SMTP id 46e09a7af769-7c782bce174mr149954a34.9.1763505193219;
        Tue, 18 Nov 2025 14:33:13 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:45 -0600
Message-ID: <20251118223048.4531-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_143314_560459_4D8C1EA2 
X-CRM114-Status: GOOD (  12.70  )
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

The clk32k_in pin of the SoC is connected to the real time clock
according to the schematics. Set the pin definition on the real
time clock to reflect this.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 769f4a7adf0a..d1cef48bcce5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -430,7 +430,7 @@ rtc_hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-0 = <&hym8563_int>;
+		pinctrl-0 = <&hym8563_int>, <&clk32k_in>;
 		pinctrl-names = "default";
 		wakeup-source;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

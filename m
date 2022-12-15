Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 291C7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 23:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u3nSGYpc1vD3nQJBPRANpJYLe9Ia4nKCWedUkgiLGRA=; b=KVgVT7o5IfTtzd
	gQxCSJ6TPjdrK6LEHnvpPd4D16ac9sOC5unYfRjMH2PJtP67hjrGk9VbOds5X3gYC9PJcQZVHvTi1
	7OpwZPWDZ+Cs0P2bEvpG4TCGwEwVolw+WtaVGVbaMZnPpnXsFICCUk9vWBOsBghPxaHG3KGXDbDjS
	Yvd4Bi8l1QN4/2L/8m6QXc5MzP6lhPKLtq5tlvQLYFJFCmIEMyi9TzSTD2Hf/2TuKoSEcdDMTAGRq
	lfaXQOlWwtSMVN4s6SVYupDjoWk8c4/l6h7C98C4P02Wo2T7YwRG/BYzot0WpxI7saZSgzr5mnaNg
	XU4vMaTjsf3r7XpWYBiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5xUH-00BjTD-Ow; Thu, 15 Dec 2022 23:18:01 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5xU7-00BjOs-Qw; Thu, 15 Dec 2022 23:17:53 +0000
Received: by mail-ed1-x533.google.com with SMTP id d20so1473525edn.0;
        Thu, 15 Dec 2022 15:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Na6VNdVHdyvAKfL71djiErCbTUOkgn1z0PYMYev3UCw=;
        b=IlXVoNLI9hpWFxEkhHb1L03k/1GNwjxuocwbZipeg89PuvxJyk4/oSFN6752xV+A1M
         pP37tcGT7wHcw+oSOE6w+BsuDE6e1/81yynMcdgDvP75aGzEoR6pYUiREGxpZ/k1fNDp
         W6Ld8CsfV7PXvvi1q0SWCbOEwt0JFtZqmJ8Gr21FoGZdDylxTfFZqqdan48wirMm4HRP
         cJW4tizfOmEW2/qcD2uT45bTRo1i3e/Cm9ONsJ/7pTaGdrTSwpOo7gd/Z3r9VlX8GPmb
         UmyOz8IzTPddLJKiNbWin05q1OXMGe4eyAAUEIhqdpST/6YIsqCd6XENKdM6RHfSeEFN
         pIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Na6VNdVHdyvAKfL71djiErCbTUOkgn1z0PYMYev3UCw=;
        b=sjEc97M5BTWA6Csxs+cPQoCYTuFKmOxbYdHTfwY7qaxdNZAzxoLKnMwl6AdJEF7iI1
         bPpjXROhE6IA+XN4+2IRVcFQy66fIv9Ob0ZXFl1CT9pgt0aPsFulr3Wky6UDZMdk2sr4
         IG6VTDPEJnAPQNyiXJzZQGtu2qUFVDT2Dqjd1bGdikaoAsMIEQAkvuh4Qg1kenZbYgfd
         kHRfiKDZqpDbQAuJfoVQ8ypQrRbAyMjd86gCqdhBHM/rr7vc7tSvEWtTappNrCi12dUF
         J59E7LF7IvHUp5Jm5OOchAVa8+TtQ/yLzle2Edwn9I9sYTE4Rnn4F9vVwDB6pDM1TxA6
         73Cw==
X-Gm-Message-State: ANoB5pl+9K271Uag0pztWz1F0QwZLI/ap98mOporcCyD1hp7I412LRW5
	owuXipJ2tskyYOGbru3fjWERzLL2J5E=
X-Google-Smtp-Source: AA0mqf62x7/46Xb5777xQvxUBzJolKIRYpoC5k0dmvDaTdgfUK67gNT7wAKj7D3WZUO663oTf5ufbQ==
X-Received: by 2002:a05:6402:249c:b0:464:5ec3:c46 with SMTP id q28-20020a056402249c00b004645ec30c46mr29378919eda.16.1671146265811;
        Thu, 15 Dec 2022 15:17:45 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r20-20020aa7d154000000b0047013a9cd76sm228036edo.56.2022.12.15.15.17.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 15:17:45 -0800 (PST)
Message-ID: <b3c7f1d7-47fd-90e4-badb-e8ceb8901e27@gmail.com>
Date: Fri, 16 Dec 2022 00:17:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: add brcmf node to rk3066a-mk808.dts
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_151751_980083_B67512BC 
X-CRM114-Status: GOOD (  11.13  )
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

The MK808 board has a wifi chip called RK901.
Add a somewhat brcmf compatible node to the rk3066a-mk808.dts file.
That's what's available as driver in the mainline kernel in relation
to this Rockchip wifi product that is able to load the firmware.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 2db5ba706..5b9e8026c 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -157,7 +157,14 @@
 	pinctrl-0 = <&sd1_clk &sd1_cmd &sd1_bus4>;
 	pinctrl-names = "default";
 	vmmc-supply = <&vcc_wifi>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
 };

 &nfc {
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

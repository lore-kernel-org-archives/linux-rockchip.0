Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB17C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o7bysaw4/4Tsb6iNw9ITcOfC3UZdt2aO3zd3Mt2jtQ=; b=1LSANnGGv5Djm4
	ZEUvrgYypsHA5yhgDVSQyrBFP6f4YWMNd3fBXyYwNAcoS76jw0oDZZJSRazX6/P3gf2ddONKSBNF0
	NYK9dbaZ43Lyjql29xB9DPyRtOpT9HEL80mbwEcj9UsUbwjR63nC17ZmI1XakKM/jaGM8sMoaDZaU
	60Cufc5yMCYeHB9LAJ8pvQ2rYy/VBRvEddmthuS1kjnhGJiZS6ylXKkYM6hh68S7Va/ZHzBtTAv4d
	QPfeuZ2eN2fiTCWBRw2GSKK3STjRAYwoffWqlGJ1/F0E8TkpkesMrDF1JUgRDFec6yz082wAcre6D
	wqHI3oIizC6mmheBXGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83sv-000bCz-B6; Wed, 21 Dec 2022 18:32:09 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83mQ-000XOf-FN; Wed, 21 Dec 2022 18:25:28 +0000
Received: by mail-ed1-x535.google.com with SMTP id a1so8181551edf.5;
        Wed, 21 Dec 2022 10:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bW6Hd9ovFsWCrzyECcvTbdEVVhvmMqsQBtWMpTHrRQw=;
        b=c6PLr84dzk55g4TInxedeMSL6DbBADfkbaE+qIPw3Qn+5j/qhJXOmQTG6hY/PcWH8g
         aDf37hQlbTXxU9q/kwcsm9XhbVdr6PkKPBho3MCvFt6nuKNekmSjx8t9XxODZFvuUK/1
         v01moJBqkKUha+/niV0yAX4n3hegzpLt3xRcCzlpONPs6QRfL7QilSk3U9Q7JsL0QQgI
         j0nk5iTi4emDiCAp3FxPXwq6zpfy+/nHAhnPn4Z7ujR1zKW0js/54wGdhh7RdpN7W9ma
         vWBzBfy1d24O388Zv6R7p804WcYvsE853PdgOReHLNwpHaExWEUqprsJZ86m0XDSTEda
         ePAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bW6Hd9ovFsWCrzyECcvTbdEVVhvmMqsQBtWMpTHrRQw=;
        b=AcaMcD3UiKJ8EsdFX7fUj1aGZd6rYKrEEKZkAByZ6PODqGj8FdQGOQxet1wHmzDD1j
         BlTc6M++E/hgzEZeJdiZqYygnoatXnn693P/ZfEUTW/E208d+Mn+847uUZOih7zYh9gp
         uz6SQwK1M/t56Ep411Uhg7nDaQbfaJ/dyQYcuYZbgBQGSkt4sNAr9fqzItu7SqO6kGs/
         9SOgGs6qUJmH5gJYWWlyB/4ihvRYEtoKK7qKe8CDcQQ+347K0P1vadV4RXuvSMAZCl3E
         W66VdTyPkf9mYbb1Ud1BGtamO5j6NFHWBgo0MFME8buizr5xt1W8eQhvmRV9T6uRRMOd
         hvfg==
X-Gm-Message-State: AFqh2krpyy4u2pXD2lCAgoBC1wyQEaAoAhQY/k8Cx5bW88g8h1BEGVjB
	MqVX36ZwDGqWF1QhjavXNmQ=
X-Google-Smtp-Source: AMrXdXvTC/4eIpPvqgKcBGiKaMezF5TmdklRaodynC+6Ax6UhTecCm8Kbwq4bFPQzwHpDW5kOEXcrA==
X-Received: by 2002:aa7:cd04:0:b0:46f:a70d:fef2 with SMTP id b4-20020aa7cd04000000b0046fa70dfef2mr2382224edw.35.1671647122248;
        Wed, 21 Dec 2022 10:25:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id d30-20020a056402401e00b0046b25b93451sm7255607eda.85.2022.12.21.10.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:25:21 -0800 (PST)
Message-ID: <76fea2e4-f298-19d6-69b0-d99dcfb142ed@gmail.com>
Date: Wed, 21 Dec 2022 19:25:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 08/12] arm64: dts: rockchip: px30: fix lvds node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102526_650064_CAEE1BAE 
X-CRM114-Status: UNSURE (   9.73  )
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

With the conversion of rockchip,lvds.yaml a port@1 node
is required, so add a node with label lvds_out.
Also add label lvds_in to port@0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V5:
  rename title
  add label lvds_in
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bfa358042..e34d81f29 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -453,7 +453,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;

-				port@0 {
+				lvds_in: port@0 {
 					reg = <0>;
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -468,6 +468,10 @@
 						remote-endpoint = <&vopl_out_lvds>;
 					};
 				};
+
+				lvds_out: port@1 {
+					reg = <1>;
+				};
 			};
 		};
 	};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

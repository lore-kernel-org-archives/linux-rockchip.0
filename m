Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA0EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgXNBROPS37tXLcoj6HJht4XdrQC+XgnHegij+F67vs=; b=w7RqzxGefAIiPp
	9//X9N190T9Cri3UacxNjCUaXFQw2uDydzY6XZRQx5K/fB4Ff5x6EcC/IU6LuoThdIcPEc5OzyTqP
	1LVQRp0XBF8S/K5t15jT8icr2WEZeil1713oR7h5/+xoAORKZcW1NcxAECz0arDHFeTQPlufIFHKi
	3e1T9NGXCInRHa7xMix8di+5WHUfGbXYxBU+B3uGtWjDunO7u9/AeFxIwxAvbtivPd9ceVMJbED0k
	X5oDfkV/MphAD7AhZ8yXs/zW1s9UnuNj7NVVXknGSUEcwQN6WrUkzA6ud1krjqcccgiE//jLH7kPc
	G+j+6Cm9vBy6WVqZ/ZFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83uO-000by4-6s; Wed, 21 Dec 2022 18:33:40 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83mw-000XiN-HY; Wed, 21 Dec 2022 18:26:00 +0000
Received: by mail-ed1-x52d.google.com with SMTP id b69so23197279edf.6;
        Wed, 21 Dec 2022 10:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lFvMuvMh7YEjHgfoyUurfQAp5Ldp3Bc2q4aAnoQCwkM=;
        b=l5lzKT0fdH5xMuiwJ9jOC+ldxvWofgM4nJqXUSh9Mn2iBc3NIAz25S/j6oWg5wYrVQ
         gvzeeWJyu5B6+vkCkhdelPxBTxp5hgJ8ta+Kgdj3md9R4uhu1d9BXGhAWyxlsypsgZ4F
         okIDxpGxkMAItqZ+zJHnCnzdS5wkaAoZ88r4mZofuH7H7Z+XSm0DJHCLDTxazfKvoE60
         IW2dauxNPsn1xODZUsqMFq6DeoGjZLY+Hs6LTjhpfoqEP9lnRohQY1sDr6ZlTlKh47fn
         MlO9z82lQbbSmbdjQZNJr6ArAlRqkjvPRoVbeyKPStliXXPcPomcrG5MFyKqJ8XDY71c
         uzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lFvMuvMh7YEjHgfoyUurfQAp5Ldp3Bc2q4aAnoQCwkM=;
        b=YF7Izs6gBzJZ9RZJa6nu6gIa4qKpbtph6lYUCkDQayi7Czs1V7t4YbT5t43XTkvT3H
         a+uxPLYAMtN6xxIVSEmEQSo4Jqu69EsynJmYpfCrLHnVFaTtkOHLgSyK4OVpyKXSrZMa
         fvIAvQzs27FLfs9Or62vh0X0OaX2dyKYtgN5RZkKGVsA1F46KOOUmcBocg8GMUXLoFla
         xage3ej2DLWvIan7Els1Lo/7rsgeg/JcNW3mnp/ciTLNmCdZf7RoFC4Ua0zJZUARlzXS
         ZJ4bfBfzUfG/+W+l/+xEaKURIgjtxAdcQ/fhiBV18+czY3fD0LWOuXObHs/dpF2TzgsV
         qyvg==
X-Gm-Message-State: AFqh2konskpLZxtKErEKhUaF9XoCZZVnDh1sj1FykL3TeI4SV3I4zaeW
	f7TIia+0nxHFgdQvgFz0XGs=
X-Google-Smtp-Source: AMrXdXtP9bzGWAfUkrd0SHR1XBaiEQah3omk51EpOFcUJ01rSPS2LZ2fESX9jvaXgwv0/ICAM8oH5w==
X-Received: by 2002:aa7:cf94:0:b0:47b:16f5:61dc with SMTP id z20-20020aa7cf94000000b0047b16f561dcmr2421265edx.37.1671647156160;
        Wed, 21 Dec 2022 10:25:56 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id q20-20020a056402041400b0046c2eee21a2sm7278561edv.11.2022.12.21.10.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:25:55 -0800 (PST)
Message-ID: <50eb43e0-c39b-5512-edc5-78dcaa70b255@gmail.com>
Date: Wed, 21 Dec 2022 19:25:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 09/12] arm64: dts: rockchip: px30: fix dsi node
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
X-CRM114-CacheID: sfid-20221221_102558_644804_B95C88F0 
X-CRM114-Status: UNSURE (   9.60  )
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

With the conversion of rockchip,dw-mipi-dsi.yaml a port@1 node
is required, so add a node with label dsi_out.
Also add label dsi_in to port@0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index e34d81f29..272b01154 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1117,7 +1117,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;

-			port@0 {
+			dsi_in: port@0 {
 				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -1132,6 +1132,10 @@
 					remote-endpoint = <&vopl_out_dsi>;
 				};
 			};
+
+			dsi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

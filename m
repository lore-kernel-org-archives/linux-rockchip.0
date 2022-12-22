Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09962C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hu+0oP0MMrVZ7P0pVIEHc/llsppaeaH0DQo6ZbCbUg0=; b=tLfEyt722/q+5s
	A0s0vkVKveRAsLcMA3sqJ7ILkM6aZ7fpL/xSxVlZU/yUKcpuP2CLepdO4hek0yayaKAq7QDxF5q8f
	ef0LFXOUcH/1C2/B1/bLrxraxHgAd8iPZ6ONT03tmOl2en419HlfNsYURxy6nx52j5wdBuGRfw81m
	6L85puCNTZljsiXiUa6IVPsfi9PpGMWhPfnnNALrbDhMKkG/0i6SZ3Czrs/od68iuWq8XnE5ojErK
	iV/6MkIL09d5v+fSt8qH4Ip7MWuF0JK7gCjx2LCfJhYnEj3bBbpL8ESbe6ddVLshdfI2brhAlLkYj
	DdC5YtpRqqMrnCxRNy+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8N4E-00DGeH-AR; Thu, 22 Dec 2022 15:01:06 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MaI-00CyeO-77; Thu, 22 Dec 2022 14:30:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id r26so3130002edc.10;
        Thu, 22 Dec 2022 06:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sr8iGvYv8Y+FUygmw8CozO+P35yD6ZFMgxS2kANtCbQ=;
        b=VaczJC3DYayhT39mpuYMMNQmAe6pOd8vIUqq19xXuzH+xCl2aEgwN3IsaSTR1hH9Uk
         uhePN9hjMzX2lQmaG5d/c05laMe4ShHPUzQGyeoa+ifSKElXnlrR7QVH1dHdGsEq4Dd7
         j+2E9Nv5SN8HhYJ/3tCDbTmsiDzyETXjVCKKQ4CliNHJvrDaZRuVM2E5oFHZjHBq7ll3
         rsTJIybJ3he9K3Hknr7Q3zVnh3000wSsLfVK4dAce7Eh+5sIc1uyQ1wXS2u08Cd+vcdM
         uE7H5gbSfx73XuMy3cHOBtr37+FwZSQr5cPPCCtXwG8592mjHRMdiKKJtAASJxH7GfEe
         HY9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sr8iGvYv8Y+FUygmw8CozO+P35yD6ZFMgxS2kANtCbQ=;
        b=gT22F4bzBVSbOt3Ts/e5XXp5lY3Udhr286PSwDoMmXIXPbOongimYJpIAz4ahbLqcW
         xwPU+JmU+gSQ/2cqR9l67Cop2G/MBwaeoR+yIh4efOQNsSTa6kmdo44z0eH4b7ATHZQA
         vrtWt6PGVDeF61is+teUkm4IqZhLce2u276jo6D1YAQUmMYTdiuwSiEfdC/0Wwi6u/pw
         pid9iqdabzR+BpKQaCriP63LIHpJQuTfQX5gXFzZdzIR+g5mEO0ezwcr7l+H5ly4SJbx
         v5Qg9wbmiO2ytza6Jm/jxVDPo6iIDm1CR2og2QatQFBUaNSPb7ULgZr/JOH7t18MzPt3
         gp7g==
X-Gm-Message-State: AFqh2kporsYRVy7Jpt/QHZPl9lxyQME0tiu/eQ+xnbGZbKKgOhhURp5s
	7qMhIFbsw7LjBI2HPf0BvK4=
X-Google-Smtp-Source: AMrXdXurqoOFkI2ZF/Yr2+mXCk6PmZYuuFqlaFxmwRRIisoHNe/8QJlN0NWxlPobXkNO6fFrIoIZpw==
X-Received: by 2002:a05:6402:33a:b0:47b:2524:5cf6 with SMTP id q26-20020a056402033a00b0047b25245cf6mr5189089edw.40.1671719408575;
        Thu, 22 Dec 2022 06:30:08 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id h13-20020a0564020e0d00b0046b00a9eeb5sm427095edh.49.2022.12.22.06.30.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:30:08 -0800 (PST)
Message-ID: <e7b78a73-0e89-d9e9-2ecc-a8a380635f64@gmail.com>
Date: Thu, 22 Dec 2022 15:30:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 10/17] ARM: dts: rockchip: rk3288: fix lvds node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_063010_329611_5DE77BAA 
X-CRM114-Status: UNSURE (   9.96  )
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
Also restyle.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6:
  Restyle

Changed V5:
  Rename title
---
 arch/arm/boot/dts/rk3288.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index fbb174729..9def3988e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1167,7 +1167,6 @@

 			lvds_in: port@0 {
 				reg = <0>;
-
 				#address-cells = <1>;
 				#size-cells = <0>;

@@ -1175,11 +1174,16 @@
 					reg = <0>;
 					remote-endpoint = <&vopb_out_lvds>;
 				};
+
 				lvds_in_vopl: endpoint@1 {
 					reg = <1>;
 					remote-endpoint = <&vopl_out_lvds>;
 				};
 			};
+
+			lvds_out: port@1 {
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

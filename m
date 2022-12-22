Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C49A0C001B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39y73FkesYh0C4SkHoqmpfaicNHQsy6IykILSHoLCO4=; b=LtSwLj8vhWngvg
	CIKXNlMHC+hUbzVTbNWXYjblL9vVU9SeNExEe5VQcBZZHuoJ47HlxRb/kaP0kZFtfhP5tZTpg659g
	zuCf28Q9hkBVlVVX957fkt9PDuF7CcQEtUkUkZqNDHRvIppkhk19a0yi0TNPD5AkyEDWYQMfDcliY
	oJUFp8gkX14vqImZgBLMl5aztWg2AY9/lQooUcp+VXw0wruRppgkOMnQZIbMbTN3MQlG+OLz+AkLz
	cY4swUdVi9cfxXKRFvdUFf3NZIizK+arjDwPumuszo5bZRPzCiPTA+kc2OySNnEbgRX3BKHnr1mvJ
	KfXV47tQLFxUoOJsE+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8N6I-00DHpT-DL; Thu, 22 Dec 2022 15:03:14 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mas-00CyxM-7g; Thu, 22 Dec 2022 14:30:47 +0000
Received: by mail-ej1-x636.google.com with SMTP id gh17so5310839ejb.6;
        Thu, 22 Dec 2022 06:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9pQhvyxS2+lxPQqiIeyKdGOnYGr9Eh6AUJtIVNTuj+A=;
        b=pra17mBr3JgRZv93t/vpFNPmD0aO+J9on1u8LfSQlR0gvmVU7fCiy6aUFxsMq6vsTw
         88osDMCGg4w9sYCHIY2iGRaYDHMJmDFgtRBmnAhzbeuay1wknN9zrOnqyK/S+hYEfPJE
         ufGsRbb6TMoDnIzM1EiGs+P3rUo4keriGyIoxZtVPJ+FTT9wvk/BsASkl8ne0hLBtesG
         fx5ygMW4pFrPfjoxdWuc9HzeTQ7HdH0E4rYv9y0ysaJnaezO5OwUnf46GvaOLDPH+FEf
         ASEjvCOYvV2eIck3hnoJR3W8dOEXhA2eKeZuGPxcvX+6peAsNRCahyRvlqJf5WhFkyeJ
         eKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pQhvyxS2+lxPQqiIeyKdGOnYGr9Eh6AUJtIVNTuj+A=;
        b=3r9yK4L8U9J4ot8qzx/8byZEyMuGUbzGcSK0T5pYdE7eqLicvAQCCcFnYwwM7Ur+Sh
         gvQCPJVQ9j0KyPi7InAI5oZMV7Jo2T2eZSbGlqqgfyU7uGxe2rhpWgzCvpmpTFmVL/WE
         +Q1YNrCZ01HwpuL3MXZhPVrhbgMy46ls14Da9h2bTjpvOj4gDvaAw6ibAenFot9HL/0y
         3aME9PJN62jw3TTODIJY8Iq+6PzcqAFzSKrED779jw3JZEXXv/ggZY6NPrbYat7W+UBD
         oCs2WmosurcdkP4ODslFRKTVmM7CKnJ54B7e8NIySM7pCdfur5eSoJUlL6TaMwbTFxAg
         q0PA==
X-Gm-Message-State: AFqh2ko4i7EaoFxVfMuKPfpOwmgGnjQq//DDHFHt07pnZkLChpqL5133
	Fq88UKjHpl332+x2lMJRneY=
X-Google-Smtp-Source: AMrXdXtmL49MyBKUjTsMoWtqCRlV2PHafs92EJpPC3lRCxLlFg44CyiVrl1MfAnIoLBEhLRJvzfKQA==
X-Received: by 2002:a17:906:71cc:b0:7c0:ff72:e877 with SMTP id i12-20020a17090671cc00b007c0ff72e877mr5058112ejk.63.1671719440099;
        Thu, 22 Dec 2022 06:30:40 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ku2-20020a170907788200b007c0e23b5615sm317771ejc.34.2022.12.22.06.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:30:39 -0800 (PST)
Message-ID: <0a423eb4-0ab6-7ecb-d450-d93639160dbc@gmail.com>
Date: Thu, 22 Dec 2022 15:30:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 11/17] ARM: dts: rockchip: rk3288: fix dp node
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
X-CRM114-CacheID: sfid-20221222_063046_409064_C6565D58 
X-CRM114-Status: UNSURE (   8.53  )
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

With the conversion of rockchip,analogix-dp.yaml a port@1 node
is required, so add a node with label edp_out.
Also restyle.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9def3988e..4d1bc6784 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1203,19 +1203,26 @@
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
 			edp_in: port@0 {
 				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+
 				edp_in_vopb: endpoint@0 {
 					reg = <0>;
 					remote-endpoint = <&vopb_out_edp>;
 				};
+
 				edp_in_vopl: endpoint@1 {
 					reg = <1>;
 					remote-endpoint = <&vopl_out_edp>;
 				};
 			};
+
+			edp_out: port@1 {
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

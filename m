Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B68C47DB3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 22:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCpDW7+IZ2xTdGRUzY3dkcp3AEkYW5myfeMotpGwIGg=; b=hTPkiumS26vJUy
	pAtLRB+elSwkAFcaimDBf+HdDSdVaS+hpVlneatDH5t9ykVbdM3eBhPfp451s9X5j3kyacniDZuBY
	M8HljsyV1VFTQyN+uG2dcfNQYRjJGcAAVH9nPk74meIapabDqH9i4amv5tq6/zJZAdIa7AhqfLQjm
	+X8Nyf05AV9mGxbpYfB3vhUyM2oqcQrmutljn9ORJlXfcyfLKA6uz8XkOTFsUvPOQqqvan/Ij4U2t
	84xUuv38wDl4J8XKhHz4dUsvHF2mDx68PG04bJEeybfy0lag4tQBTzP0cWPZRL4RuM4k4jHxhULUV
	2OOSQs5k6H1wuVXVlnhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJ7R-00000005iEi-2c3Z;
	Wed, 31 Jan 2024 22:31:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHxj-00000005Tg3-0KzF;
	Wed, 31 Jan 2024 21:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=R4aZnJ0HXPSCrrZnvvv03peCc+aJLdST+sQtI6Yh7ug=; b=Iw9Bhsgn1nkLcXzCvOpxZfndij
	2yj0NsHeA7WffcwbFQA6IDVU4nP+DjtnTBO/A0cmWo4cf6lUUvi5zY4DcfJE0I4KmtBumCG0dusBL
	V+GTIHEG4c5mFL3qXxyTaRKiYqzRqbCtO1J6g467vKj94SthDr5CescT2p9+HIx7PWDD1+ENzujc9
	JBkrjSGmd/GJ51T6hor4drU9rIEYHF3wuQBfoG+R2Ut8Dvew2fESB5kEGUJv0jqBNRfDBCZP3wr98
	jhTmrJVitNIbXzYeU4pnJ3VhLupHdzjNRwUdCiNh0Bt5KTer6W04ikKth4HFIlkhZMBmGPUpPg8UL
	/r4H0dDg==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHxf-00000009D7R-2G1y;
	Wed, 31 Jan 2024 21:17:37 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-510322d5363so283666e87.1;
        Wed, 31 Jan 2024 13:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735852; x=1707340652; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R4aZnJ0HXPSCrrZnvvv03peCc+aJLdST+sQtI6Yh7ug=;
        b=lJoAzszkr3HSB8tqht063q3b7/5Q4i/ZZAfSp1eafXClo+kugt+ZEc0KtmP7k+vTZq
         +B76Qm//wd+9ZNKjQ+PW7NIk+3NIH3UfMJBKP8dXRo0QiGrkXNPE42n4zZsw1kN1pSyU
         +wo7wkSykeCkair7G76JMD9KFwHyV2isYHBWUIaTW6tCUtKEV6p4bSictn2qKwzu2KNh
         wEX/SbjakWDvpXeJvHdzuc0uzusQ1prOqJTo84TpjsIZHTgJsVrNq5tBEhmHihlJPZXH
         0JPji0fePmZapWNnxCGVqv2sIiqNAbGq03oVnt7Wk0Dx8ZnTjG+535/tMVvKogY3R/Xs
         Ahjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735852; x=1707340652;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R4aZnJ0HXPSCrrZnvvv03peCc+aJLdST+sQtI6Yh7ug=;
        b=mVXrFr3yPLRTTLKPRJz+lnTvTF1KbHqedQQY1oUz9YqwwharscxOKa+R8kbNUa+dak
         1lyBQPFeUe7wwpOxolSCQv+PDAR4Dj0/l2xmXg4hy7Qyc9feraL9MiQjrMi9ER9MlFUo
         GftGTNBntOpMTfxk8xg3OYJJtJeNimkV5A4bvxvhtebyDRz5yyajh2Rv1UuwIJEl8ZUW
         JGu2WxflDDdmZrjEsyKNv/47dsfaKRKGHb7Ri+Iyjf5q+KfzWFsWXHk4RcisXiWY4hal
         MGR8mcLCVLAxC9pJnFXYYVp09ZxlK7hTnBlmkXm+c36uloyB89ef5jjWLG1Djirn980B
         NnJw==
X-Gm-Message-State: AOJu0YzmPae/3bComVpwLQ2yavgGe9pr4ReqWuqHVzEWWMwXgmtGU/x7
	BiBRSNwV55OkKXrya5QJmjzyd4RqIiIb/VTJ2eXflaZ0LF+Zkve2
X-Google-Smtp-Source: AGHT+IE+0isqNh4+ujtT55m3CO8TfbUQsPsn/Em5gcobBL4NzwWM+JzTycjuSMlXff5ckL/9eHFKzg==
X-Received: by 2002:ac2:559a:0:b0:50e:d514:77bd with SMTP id v26-20020ac2559a000000b0050ed51477bdmr437572lfg.18.1706735852064;
        Wed, 31 Jan 2024 13:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCW+Y6j2zZMzBfnbk/bhkKrrJOnx2LOrJUHkBhyYcPiBX7GMnrzVU7PF8xepNbZlA/Tzl24kBAFvDkoBY/knhdfC/aVwufd/Onk1b7PatvAlaB9BCwDzlkeQJceUguUkRk8AKe9xsdhFH2JnSGzFSGdECPaNYaLKV/6Kexnb7hyeS1T3vgRJmk9BcOHG8h6Z+TDGC3Y+CT6CjIm/loZSAxPgoE5isYhAEru5DRsM5phL5c6vbzdCo5E3OB4DO8WZzJpJUhQl0vaOLlKfWamY2StJi7vrCvn6PTNsIvX7q20SkFlqqGrW0QVEoKUr4bx/kz2mWl0T2IFEQbmwCT8Gqe22XguZVouuNOG+tGyWhreC/XP2lc6TIn2oYtCUaWAmnyAoY3G9bec+5Q7pK015MK4JEor5WAH/W5Mrix00dlx7XJsmP3Pow5jUDpv2kJ5Y75pw1yEMn1Gx5z/4X78vLgEgEwyCmHCEfSqtrr/5cFJTzBYu/ZZj9cc1WoR3GvcgevMXd6cyPIFXFPO7LT2LwTYwgVKxhDHv2S5WLCekbGhEKzLsItaXOIgThqVcJzKg8cIgXVw4klvFxTMFx9E=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4040634ejc.135.2024.01.31.13.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 13:17:31 -0800 (PST)
Message-ID: <a6ab6f75-3b80-40b1-bd30-3113e14becdd@gmail.com>
Date: Wed, 31 Jan 2024 22:17:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 6/6] arm64: dts: rockchip: fix rk3399 hdmi ports node
To: robh+dt@kernel.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 mripard@kernel.org, markyao0591@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
Content-Language: en-US
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_211735_916844_AE8B19B2 
X-CRM114-Status: UNSURE (   8.86  )
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

Fix rk3399 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  keep reg-io-width together with reg
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0caa842bba0e..9d5f5b083e3c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2022,6 +2022,7 @@ simple-audio-card,codec {
 	hdmi: hdmi@ff940000 {
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
+		reg-io-width = <4>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
@@ -2030,13 +2031,16 @@ hdmi: hdmi@ff940000 {
 			 <&cru PLL_VPLL>;
 		clock-names = "iahb", "isfr", "cec", "grf", "ref";
 		power-domains = <&power RK3399_PD_HDCP>;
-		reg-io-width = <4>;
 		rockchip,grf = <&grf>;
 		#sound-dai-cells = <0>;
 		status = "disabled";

 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;

@@ -2049,6 +2053,10 @@ hdmi_in_vopl: endpoint@1 {
 					remote-endpoint = <&vopl_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

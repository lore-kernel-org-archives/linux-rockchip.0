Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE643C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgXNBROPS37tXLcoj6HJht4XdrQC+XgnHegij+F67vs=; b=gOIogNefkEmAw4
	d1y7VHezHYBQdFxyI9BsCBgnC2SHP0Cqp6enPp26iN/upbVCOU0y57QK5Vb633YfPw8OLvAgzOv97
	vD6+tsCnTeP2s0OsftRs69i5yy3nWzr9t8Tb/oPvSeuBwmOus4iBSFvS/bdXNb9DPDDNOKIirA56+
	kjNqrV7/bvjagxBMmLbhiTlIvFkUUQ+fSSjTW+98HuY9pCFWA7Kd8PKHyYMehUuhWWggKjHG3iJBK
	crHjW2TMKuEULNhS91N02/joSxvoqjHO+iPeQTfcD2giLmIojDJ68z1E0Wl4IaLVWtpvjqvol6mkw
	j/iGLOUr+P7B30TxdYDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NAX-00DKNe-Fb; Thu, 22 Dec 2022 15:07:37 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mc0-00CzgC-Aw; Thu, 22 Dec 2022 14:31:57 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u9so5430988ejo.0;
        Thu, 22 Dec 2022 06:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lFvMuvMh7YEjHgfoyUurfQAp5Ldp3Bc2q4aAnoQCwkM=;
        b=UEIhkKWoFeB7/VD8t9PzUu7vtS7TIeFsilzBgAB+93Xv4bZU2aqtdrqCrWaiHn8/4k
         Gqh3MnUWes3mh8RfOzl03vepj6GNVlTp02NM6MqPWLBnNWGRJ9nYtO1Tpl1NexYFKloS
         nlqlVa7LeTwImrSwsFeLkQ6mKkMY0O+/IYfklKN3B7Tr7u4TRRrxseriD9tWFMJ6Jhu8
         kyOLooolnbzf5hlim0TLVJx3hUziFlKSLWEkAVBaWXLGSaqgjV06UIWBcnv66dqdP6M5
         WY+jyRVrmwHqCY+D8blj2xmpEW7w6ddmIj6vSvOO9kXz+3V+do9PePr6DQY3c/NToSRd
         XS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lFvMuvMh7YEjHgfoyUurfQAp5Ldp3Bc2q4aAnoQCwkM=;
        b=fXmAvkZUE1oHdfocISaW4JhixypPLRhKWKAUuBDFKkFcjFNQW0yBMoDD6GCJN+zUSf
         49K9v2OQ/vgnFiuZ427+kYgGqBHaILdOxemv5jg/4Dc9blybaCNyyDMOo/+xHER9qBLt
         gl7f5AK7DH2cSHkRtLwa9UDinVi5fu96Nzw5xCZHMYgIc4ssWYK+CkNLjJvDcJyzY15v
         /4s0IH047bohqCBGwK166Dv3i58CpUm5L0OC9PShTPdxfEgPrcrCn60Xld8Pz5z3nttA
         L46S9U1wHvj6KkQ0xNMQfv1LpbroSWMr8ovBSfOmAeRiyVgPiTEu8NEvsJ8yh86shFnQ
         5TXQ==
X-Gm-Message-State: AFqh2koaa7uGHoXLg0rTDHod11M0EXu/3e5c0bdaXZN7gsUTSbKjMmqG
	nkkzROJlS/6IgvDMqfEFgRk=
X-Google-Smtp-Source: AMrXdXuKo0y+jgpQ4XMYoeRlNa+3DJD1h+IM0SCflvH2n8L7F0YnfErTLmj2vVioQdYM4xGprfD/AA==
X-Received: by 2002:a17:906:b150:b0:7c1:2931:2263 with SMTP id bt16-20020a170906b15000b007c129312263mr4906531ejb.71.1671719514446;
        Thu, 22 Dec 2022 06:31:54 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id k8-20020a17090632c800b007c0f2c4cdffsm312593ejk.44.2022.12.22.06.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:31:54 -0800 (PST)
Message-ID: <1ee3e676-aef4-f464-82b0-8fb39ba5c60d@gmail.com>
Date: Thu, 22 Dec 2022 15:31:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 13/17] arm64: dts: rockchip: px30: fix dsi node
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
X-CRM114-CacheID: sfid-20221222_063156_505899_83B54DFF 
X-CRM114-Status: UNSURE (   9.55  )
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

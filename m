Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB19C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 17:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eM/gLrfqhwE3xweNcdEo4yHJFeoNsSdTcpGbWv8D12Q=; b=TxmdueOxVHknty
	Ge105cWfjuhsXb3q+h1i42P5GSu1pyAFj1dOdgELyPlO9xZNlNt52sH9mpX9fzgI3rPqkfvl4riLB
	l4MHvNonzX0zuNERgmitrSiiuabmVcXvluu0r9YMH0+/Y59tmSlLrnkc701cjpwSdo0VlXhUE7y/o
	ZYCI1lyF/parwmriUx2QoLa3pO9C64r0ZbzFc9rNRJeW0cX3iMbWP1GC4LaxxZW6PS49F80wRIEDl
	xmLcik7b5oLkLZVM4vTGm7/DmAeIwNwJvxGbqwYdae5uouN1NTl15Wdf1Clvnq+++wyZcHzpbjimK
	zltpr6DgxWEZ5WK2JwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rACvr-005DcZ-32;
	Mon, 04 Dec 2023 17:40:35 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rACvn-005DbU-0Y;
	Mon, 04 Dec 2023 17:40:33 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a195a1474easo462464566b.2;
        Mon, 04 Dec 2023 09:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701711629; x=1702316429; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lBX76/WyazZCOF7hTYHm6kdCEbLg+NpPINR6F7BEsKQ=;
        b=BTVR+GVwgVU6kH1c7HqboU0tL25WaKwbC25NQXqhGopspzc8lx03s0RA5wkHf+nwLK
         Br5raA5vQA3al7SHsedoftcQPRyH0NfC/Pegg3eDz7ElKEocMrOYQ7AS4vcYDmpJBqBS
         739AHIvSHhUGZCKG21Gu/4pL78dwUYJXj9hb5hjonUPLM37yuHi7jKYH9stw2Jpa3epk
         7VuNeqlZ0BLTWR2ouX+l9Fi6t6lpI090buGcCjSTwvtOpy6WSW2UJCJexXL7lXlnuKPV
         nLEbSSAAvhb0u3o+PdSLrX6Q2nzzx5/sr6nR6Dlep1pWkpa/3ZWAbscafsUN9bjiZUu9
         rDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701711629; x=1702316429;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lBX76/WyazZCOF7hTYHm6kdCEbLg+NpPINR6F7BEsKQ=;
        b=nL8iemavHWluqadUz7im39s9BvbXqUZBtaAetyIH+1kHNQnijamXiv0Yk2FhjY8qKD
         SQbFtEpWPS3FhOP9B2o5ELIecZMaz7CzZeQYX15UXnyFBB5i7PlRibswXvF+B7MmJIVD
         T/XvxRhNdf27ign//xlqFfGrfPWmvB0udY1tL23DXHcFMhaLthhKeJ+IhccdnGrn7Kv2
         kE5MX6IHWcxU97vitG9VaaWydplX1NKjhfalXh6WGPzUe9BGuR0SP9YtYJxwuH6FkrUD
         DA5Q2KntK4wfoohcsQXK6GXOCmmpi5ZFu3BdzyIlR6vc1QyCwtJL9AzHqWaD3phPaSLn
         +nJg==
X-Gm-Message-State: AOJu0YwNyiC2O74RcSFDOLoHnse6ax1zoxy9EPj/y6KHx2nU/c8UAHSh
	1vAVyLNaLeKSMKf4RBzHGZM=
X-Google-Smtp-Source: AGHT+IHMH9uic5dLSCR8Pr0qU32sTrkd1wr2Qfk2m+Ql0J7xa4OYX+U0HMiwUojUtUW7pGG2yw6/9g==
X-Received: by 2002:a17:906:3f1e:b0:a16:3da0:dd36 with SMTP id c30-20020a1709063f1e00b00a163da0dd36mr1108363ejj.48.1701711628992;
        Mon, 04 Dec 2023 09:40:28 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm5512149ejb.35.2023.12.04.09.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 09:40:28 -0800 (PST)
Message-ID: <9a2afac1-ed5c-382d-02b0-b2f5f1af3abb@gmail.com>
Date: Mon, 4 Dec 2023 18:40:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/3] ARM: dts: rockchip: rk3036: fix hdmi ports node
To: heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Content-Language: en-US
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_094031_211451_306F0DD7 
X-CRM114-Status: GOOD (  10.12  )
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

Fix hdmi ports node so that it matches the
rockchip,inno-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 8aa2e0864fed..2b00109bea6a 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -405,12 +405,20 @@ hdmi: hdmi@20034000 {
 		pinctrl-0 = <&hdmi_ctl>;
 		status = "disabled";

-		hdmi_in: port {
+		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			hdmi_in_vop: endpoint@0 {
+
+			hdmi_in: port@0 {
 				reg = <0>;
-				remote-endpoint = <&vop_out_hdmi>;
+
+				hdmi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
 			};
 		};
 	};
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

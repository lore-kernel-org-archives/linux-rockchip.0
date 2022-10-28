Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B373FECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 18:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8RfPLT8fkKWlEAEsdfO3cgq3q8HDg5PNTOVENrShIY=; b=RIzawDBXf6vCFZ
	kK0bfqYKKMvMgLnjnQy59QvUrdrUv5extZUXxaH9Om/qi97nW4dWqiQKchvuP8FlGf5bk3KplbjID
	MnslDw/l2A6U+JCSUACQBP/pXWWRPqeX/690XOFDnpAdn6eeUrlH4DQkTJnou64zsuXthBQP1pG7G
	DLky8/LQI6k09llz/8Azeix7YDCGCPVaFdR3SbGc3X+AxINJbc1mAZCjwJhWgPUAvlW5KSpCgH5GX
	7aHxl4LCExFk9ZQMIgUO+xzT7Rplg3mXtCaZUmKzFO3hwylb3d/Bf+k3pdYZrh1wmx36YmfSq9b9I
	coYFOJUfbE0VidCgaGdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHu-001fz5-Sb; Fri, 28 Oct 2022 18:41:02 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHs-001fxF-Ny
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 18:41:01 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-13ae8117023so7220579fac.9
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 11:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/QWdUrpoDZLh0j4C0GXLsHelBZKLzsXC5vrQ1PadXQ=;
        b=Wgxsaf2Rsru3M8eSrCoWXWrgCionlrDnASbc5lqgvZwg9uun0ZgnaSiLlIg29jVBqo
         8Hx0RTXJQw4fl5ESXlFhvMT78Jrcu0w4+/6OfHWXPVx91AM4qoft1HIAK/Fdrr0GlEBc
         0/sBmdcLsx3D8neoBzRlTV3/ncrnm8+RZKRIugu0yhMwE573VJqpZAWAeJYVrTyYpL5G
         Dxr8UrvOg6exXxjAmSImrYnuP5BGE95PqHOH64VO5LfaB+LGW/jOOHTE8ae025A7A+Ae
         vHlUMVNsCDTuKn/fmoEgZ1Cy27grqGsdgQpCF16z8fXhps3Tu4nOn0w/CfHdxVhMmaPS
         arjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S/QWdUrpoDZLh0j4C0GXLsHelBZKLzsXC5vrQ1PadXQ=;
        b=QcecuobygNTbuJfwlXA3GBSLV3imlwgPsz7yPeKeBDC9re/EaY3sH/mxIkWWwBKCK8
         +8DfPGdRb37ko7XZ52ssaSOUnFBqsK0grAeORliZy9n9PfjsIExnciKwO4xgdlT4ROVk
         U209oh5tYfhfSL2vbWSazSpEAbqQN0xTnK07/zjLEsuR1vMEmYRkKvIRYgMC54tV3wo0
         bvcnhM7wvuIdakYep+uEDje618SC1Egeqq4RTKYaFzg6XYIt9wP27T33ja3mg5lj76LZ
         Ic33leT9vbnk8ONMh55uCN/0bqH2uihw6LQgRgkTNX9r8tTxOFCagVAdToQkflml1VDF
         FF7w==
X-Gm-Message-State: ACrzQf1jv1EZ8wKGvVUeJLRU7n7C2llOqLQJ5UESJf08y9z8jiTuAXCx
	468bx/0XqCN+N1mYosAXWRw=
X-Google-Smtp-Source: AMsMyM4EtixCoGnMGFt/ySf74KgfXFP5uO9BIdChyGv4Qii0/JcSmapSzYVdjqh7xM4Yg2bcxsDx3g==
X-Received: by 2002:a05:6870:3452:b0:127:74a6:365c with SMTP id i18-20020a056870345200b0012774a6365cmr9848211oah.169.1666982459561;
        Fri, 28 Oct 2022 11:40:59 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add poll-interval to RGxx3 devices
Date: Fri, 28 Oct 2022 13:40:45 -0500
Message-Id: <20221028184045.13113-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_114100_813791_BE2DFEB5 
X-CRM114-Status: UNSURE (   8.46  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add adc-joystick polling for all Anbernic RGxx3 based devices.
They are all functionally identical in how they work.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 010c6a77a9da..41262a69d33e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -22,6 +22,7 @@ adc-joystick {
 			      <&adc_mux 3>;
 		pinctrl-0 = <&joy_mux_en>;
 		pinctrl-names = "default";
+		poll-interval = <60>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

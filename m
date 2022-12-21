Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80082C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQdfFdTfnWVmu5SzXyQKXwYqC+3RdCgsGnANpFi4hxU=; b=1QkPzA8mDrA71I
	oTUkCcfLNjC2BUD2DdP4rNGTOeaDyn6F68h+9+4ugDKCligiIgMPF2QQ0fHHr1uVxEAbI9rJpzmEm
	QJPvGZJYsKCUVenGm3cR5bNXcvvP0uby9ywq0IP+lveyh9G5ls/EaPFfH6Xx7FnZ9b0ObE5/MCZI4
	BB7Zq0LdJgooQNYjeW69kLwpeRL+CTjvcBKHYU0rYQWPqSUEJf7JC3rep0f8XeKr8qDiy8gTMuyBg
	kNHKCE6c7z8gso371CC9tm036gjkF7QnM9Y9/uogjBKVnvL2LDTuWJ79DHVzac4bAtd+8Tx3xMdnc
	YcApgpEy531JviCgdKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83rV-000aVm-Dc; Wed, 21 Dec 2022 18:30:41 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83lt-000X7Y-QM; Wed, 21 Dec 2022 18:24:55 +0000
Received: by mail-ej1-x629.google.com with SMTP id ud5so38846041ejc.4;
        Wed, 21 Dec 2022 10:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mj8JvHtlFXNgsizQJkT37AcYJIDfVlJOqhJ0wEsXlLA=;
        b=iJb3ola/qEjyOWpzkP8dM1EAuZT5yhuF3+T4qFfi646wXhG86WZsUz4jbRQp5aZ+0n
         nI4u+qMUvzQQeEbm0ptRpBvIMqu90KSqeVxsyNzG/hRZEOJ23kyiRroVkLSnG2STD6zr
         ivNck3b/aka/OOV+1aN3ljYfbmtVKu3P8olwsncCoTbnrwqevO5w4nCI0uI/FICcv592
         Byq2V8pwSTgBBUJBkjjTPRb2sQ6LXnE1U8y5Bj8v9+WcHWJuyDyizfVFEQ7rpILsx06o
         wc0L0RIGphT+VSR0wR5RyO88tPhwdwDqnFhhuwNwtPiJ2XzU24oRWB37v3o00DfjWBZu
         QnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mj8JvHtlFXNgsizQJkT37AcYJIDfVlJOqhJ0wEsXlLA=;
        b=T3j0tiJGMaujqBx/PxXB+9Q5O3eouDKM3nEgZp0Jnl+/5Ftj4rwwQM7kTjC+tfbRWt
         J0zie03z+yNLUCe+3J3v9WdZC8laetc2Vnw8q8ZOcXm2019UFP9B5uqHvBbXPzhFFzLA
         DwoI7S1HKecCcDhBeFp0972YcGHHoNIA6DNPqn7+TZK4LSjrgjEi1jcd0dapvxCYKUG5
         Zmslk7uhiJ8WvOFxBvLmXuCIt6C+5KG1UFljDe0CKNR5z76yXLTjEIIVYoxaz5ZcXTsV
         gMFb8yMxu29c1i5O0bWa9Xbs6WVUMMX2EBWNnFootFtsyyNvcHE6Hxu7eXlw3y5ez63d
         ay9A==
X-Gm-Message-State: AFqh2kqP/uMPJIuQ/cL7ZkyUN027dnni6CvQwWFhJtSk6BHSKch+2No0
	nto9yCwpwQIbWA5UkgfVMxY=
X-Google-Smtp-Source: AMrXdXtM88dtxlfmxBgWts0v5ArGwbTEWnL/kV0EPA93J2FfNjRKV/Xs4K2kE/BXvkonB0Tr8/i+2A==
X-Received: by 2002:a17:906:700f:b0:7c0:d1cb:2165 with SMTP id n15-20020a170906700f00b007c0d1cb2165mr2028252ejj.56.1671647092517;
        Wed, 21 Dec 2022 10:24:52 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o26-20020a170906769a00b0073d71792c8dsm7435482ejm.180.2022.12.21.10.24.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:24:52 -0800 (PST)
Message-ID: <4f0a828a-a933-24fa-c97e-ca29eac9c881@gmail.com>
Date: Wed, 21 Dec 2022 19:24:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 07/12] ARM: dts: rockchip: rk3288: fix lvds node
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
X-CRM114-CacheID: sfid-20221221_102453_964866_4C48BC34 
X-CRM114-Status: UNSURE (   9.16  )
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

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V5:
  rename title
---
 arch/arm/boot/dts/rk3288.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index c22f90e53..cedaa633d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1174,6 +1174,10 @@
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

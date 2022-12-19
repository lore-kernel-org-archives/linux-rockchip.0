Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32640C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUXiU3MChJ3u/OvKFrrplIlWliHcPsMYkAs+p0RIe+0=; b=zui4aaDiuAc+2n
	G5L/kUPPm1f8vRuSv6PuRt0uSlxk01wVroe+Myn01v9A9NlwtvQV69P/fYfMLZnKLK2eB4ZjqzgTR
	BtUkTpiOq9tsHLLpnvJ6NfNsXoeXpv+U0hm8lfv0F8k0Y9dWG5+4Vnst576t4Sv3Pe8J7lNWg+3KV
	VCu1LNo7kdz+H9tv0i1OUoU7IxM9RVcGZar2CdduDtbClWl5m36r1Px0id4oAdWM3YwpqkNtsLxif
	Rknu1hA7vWjS4piwL7xaFmLiDeEY49j8lXiRLjvhBnlR20REGKhn7uWOJpDB2sLjpmwU3t6PEeSnj
	ZGpfAeHJJvSKEslgl/YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7L82-000820-KI; Mon, 19 Dec 2022 18:44:46 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JS3-00GOKi-J4; Mon, 19 Dec 2022 16:57:21 +0000
Received: by mail-ed1-x52f.google.com with SMTP id i9so13784442edj.4;
        Mon, 19 Dec 2022 08:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kIy5s7RC8AaxDeyaGvZlKmpgc7tJJq7KaYed9ZtIYzo=;
        b=iKglceLNmpm1irnAm5RRAj07Ddb4fMJSondsKNS6Q31RnxA8mjeoWTv6oPmtfqvrXc
         j+ERWlUSshlqypOamf447O77jGgCATSNtECUyqesnW9GNPJEhaQwX3I+3T6c581L1gmR
         rQBBEnGzFmnuS1L7pSOYV8iyuZaOTDG9znMOmEeUkXUT9Xo6UngJSlH4dks4no9bhcNb
         onO+u+VuKPpvBkj/RgVPmB4HjhkufowWX0duOABfKzf7V1GN4asTERAcgrgJstNB8tGa
         YefUQtkW8GN5c4BH0cmiji2JGw4XI4LfieNbIc/GE6E7UJgQ2FNH1XjoF3Sm2AljlgwW
         oMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kIy5s7RC8AaxDeyaGvZlKmpgc7tJJq7KaYed9ZtIYzo=;
        b=OTYF9AkIQpymXgkALsCVbnq13pm3Lilz8cpCQu1PAkA7LV/2UJ2GtfDL7FiQdt1AZZ
         XUtcOTf7obEVQaU863wXE8kHBZjaZu+4g1hnkdzgHah0S0Yg0PoMn0ewTm9tGQDoGNed
         Pccqi3MvikOUjZJaMKY1LXXs5gJBU3sRj/VE+lo0dNRlqMBuMcDJVD/B0mDqjqsJjTR6
         f4MNnlsm6fV5ZvXv2yBrmhE6DpeIlDIheF8JDHYm6B2/VmdWCyEJSvf+Ka8LTPm24DSN
         6gb8t69/tJzazid/0FYu9HI/RNprSCygFxdKGbPG+rNdzfGXJrsKcm9S/V9J5aKY5zwn
         aYBw==
X-Gm-Message-State: ANoB5pnKjDDCWXmzUd6IEfEGpZrOzyFVGrmA/NIAAGnQnhEnxf6UlRjD
	vjPVR6A0fPUwKjl5cG9Ae4M=
X-Google-Smtp-Source: AA0mqf61S7E1RbeVtjJAtBhuPuDmJprWomDuF86gXwRAGuXm7fqejx+R0qp9CgFeOJLF3abeDp9+qA==
X-Received: by 2002:a05:6402:5511:b0:45c:835c:c6d3 with SMTP id fi17-20020a056402551100b0045c835cc6d3mr31251129edb.4.1671469032996;
        Mon, 19 Dec 2022 08:57:12 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id l20-20020aa7d954000000b0045ce419ecffsm4619030eds.58.2022.12.19.08.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:57:12 -0800 (PST)
Message-ID: <460f4012-7a99-ae6a-ccdf-459773944998@gmail.com>
Date: Mon, 19 Dec 2022 17:57:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 4/5] ARM: dts: rockchip: rk3288: add lvds_out node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_085719_822454_59FFFEBE 
X-CRM114-Status: UNSURE (   9.25  )
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
 arch/arm/boot/dts/rk3288.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d..60207136f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1170,6 +1170,10 @@
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

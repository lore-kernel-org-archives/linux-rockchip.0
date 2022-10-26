Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2C3C38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 23:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JWINFbIH/C02rniJfdmhE+1Spx7WvZ9hTo2vJ6cilp4=; b=FRVBU+BTKgXWX0
	w+gqu4kUcaClKATJ8fTXuw5OBh718GcnlBAQPt/k0St2zu/ACd9yM+QqzvXlFzVlnGob5jHo+o66H
	R8sSVWq9+tDvPqduYK+9Bs5XRTCLnwJU0rwrC1BpaupkqBeKopaJEBx0hZY4+5wt6R0AGTpRUXTlo
	Ha1NJzfSZFPcRI5PfBBmY2pxHRI/evBO45HWVsUCW/3s+kzbj4orWjDpW/SuZtZ610czvaYPCtlW8
	ebvbncARIjhwJlB1lxQM30O5rQonS2P0MEAOzRQWAasZb/96Jtsp/KVdzqWBHv8PKNkM3C07UiaKB
	RalzxfvmiWcHWUdqltpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpuD-00BIGs-Nw; Wed, 26 Oct 2022 23:33:53 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onps4-00BHpS-Hu; Wed, 26 Oct 2022 23:31:54 +0000
Received: by mail-ed1-x52f.google.com with SMTP id x2so16974277edd.2;
        Wed, 26 Oct 2022 16:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=blkh6ovMYUp3pDOL1MPn2xwiUyXrUXCvpPiJ5Ef5AB8=;
        b=OT8jb3uEhHe2gH4MVt3ES3GKG5GA6wEA15RnpL0RqD0/IqFJ9xhYBvs+/zV29yvHDg
         29M5erUKfU/f48kN2FRDIIYpW6BrA8QAvRz1oX6WxwCUvdci/yjjhVal7Y/Vz/Gtn9KA
         /u6do+KHnL1xn5chjUngY2dJsuVUbIEdh/gSbqtCYbB343gFb7ehD5wytJ6U/dXorTaW
         Y3tHWpiu8k0K+5O2z3fY/ljNoph1Ic/JYyf7in/+gX42TOVxKvDUYYU2jJTDIbaGY1nW
         e6FcCSNc3m3Y2b1CP4PKhduEaP1j3jCU82gqRrZbkPpTeBb3XdtontGzuhekliz8yZE9
         YG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=blkh6ovMYUp3pDOL1MPn2xwiUyXrUXCvpPiJ5Ef5AB8=;
        b=nfZbUEDB9iGkjN0pW2W87t7ldF8KhLL0iwG+ribS5sTWTKOW4ht5HEjpGX0UU+1nMp
         5G9PlKjMDvr7aqf4L97wGziZK7nsSE4GshaOGmCIaqgXnwHPlFst8sncFe1k2V1vNlk6
         VBdibjJZa7rgvw/9WWKoOrXr/M50yhgpx1UWzlx9bKVh5LoTmzlPtXUDcNBBSoLp24bE
         XgFoDCN1XXCwqsPWzkd6KzBX9QBUs5SbrgtK5mIzje56RqOiukzeCofxwuz9XgitERfi
         xA71raWjpq8MwdNTiXImgE6fZL/AcnuJBqScSE9UrN32y056wpC+N5aBAJ63tr780Ekt
         kElA==
X-Gm-Message-State: ACrzQf3r6BppCMOPZJrjsM+Zp2MtAPKYlRi7NZTZ+GXZTF0dVmvGVxzQ
	YvZrPXfmil32romvIjrL608=
X-Google-Smtp-Source: AMsMyM6j7UmHt71hAUz0A38U4asV5X3C3kp7uoTAz6TSkechcXsi82zhOJ0sbad1evndrvSZ1GLvhQ==
X-Received: by 2002:aa7:d996:0:b0:461:88b8:c581 with SMTP id u22-20020aa7d996000000b0046188b8c581mr22335651eds.111.1666827098764;
        Wed, 26 Oct 2022 16:31:38 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i26-20020a05640200da00b00456d2721d93sm4397040edu.64.2022.10.26.16.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 16:31:38 -0700 (PDT)
Message-ID: <7b9c0a6f-626b-07e8-ae74-7e0f08b8d241@gmail.com>
Date: Thu, 27 Oct 2022 01:31:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3188: fix lcdc1-rgb24 node name
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_163153_131454_13C7977D 
X-CRM114-Status: GOOD (  10.76  )
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

The lcdc1-rgb24 node name is out of line with the rest
of the rk3188 lcdc1 node, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index cdd4a0bd5..b8f34bef0 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -379,7 +379,7 @@
 				rockchip,pins = <2 RK_PD3 1 &pcfg_pull_none>;
 			};

-			lcdc1_rgb24: ldcd1-rgb24 {
+			lcdc1_rgb24: lcdc1-rgb24 {
 				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_none>,
 						<2 RK_PA1 1 &pcfg_pull_none>,
 						<2 RK_PA2 1 &pcfg_pull_none>,
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

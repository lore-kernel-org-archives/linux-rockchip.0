Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51139C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:54:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CAAEA613B9
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:54:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CAAEA613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qVyur082Jo51GSG9+nUKPm+2IXpAOGBHNobbDqDYtRU=; b=SVsiCXjovC/acuu+SwshY7W/h
	3mk0GfcWsVBEnFyBk9nIhPY3Iei4lm5nqiiBKfQ/MCM2XTlcOmRv8vLuuZ8eCPKxDAhJJoUjTfj0x
	YfFPOV2ju87aQ0FqazYCY7tmN709DnHWeRZZSlI3Jwgd6n1HXH4EoThc7LR9+W38nwno7OZuOk4Lx
	j7i1yEP1V0fGhn2u/QrzzUmEexNRLPnWdcCf2ThWix+p3aezma4k428+dAyv2PjnRlAMd5hysdpdb
	MtMXX59wc/xBHeG0JYraFVHNOZHBRO6GT9e2GQUOhU9lFgDkVAo1bb4oabE6erKw+ZsVWzZbKACkQ
	B4i81zO1w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lha8m-008Qyb-D6; Fri, 14 May 2021 15:54:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lha8a-008Qxt-Ez; Fri, 14 May 2021 15:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=nJjqUh+eedhnbrR//6OaBv5/ZsdN4XZOU4mhcsRuoyg=; b=lYy3GtbVUJISR8ZbLoKmOavLT7
 YMoH9yFCmZLb+DDyFRpoGqb/BfItkdmtViL6iRSlxKemTS5/nGqaK2ublAZZ2CxqVRJZymPPdxoiX
 uxwplpxOeFe12IiAPJyTXBDY90p/iOIxEfN4KxY5HvYTrX913DclBSH3JbGeSA7Hrl46dI6sEakDp
 v2K/f2UaVCjS6LQrgAHaKSOKRb98jxSV4wW6N00tar4DUKhzx2dzNCZRWzIXOLubuz5hYhf3DjH2p
 8kloga1bPpLiuM9+kCEAQSbFc+IwyRnjWg+xpRMZXNkp1XJNx6ZIlNvSxn6gaseYeHXaHC7tiZFQn
 EL1Pldwg==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lha8T-00C5wr-Pu; Fri, 14 May 2021 15:53:59 +0000
Received: by mail-ed1-x532.google.com with SMTP id r11so11179478edt.13;
 Fri, 14 May 2021 08:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nJjqUh+eedhnbrR//6OaBv5/ZsdN4XZOU4mhcsRuoyg=;
 b=f5pKrku0e6EM6tOZFoRr8i5ryGCMprW/ArJmi1G1tF1P3P7TB/vGZt6eUZBeYX1OGP
 4onTfNm+56vE+G3yKyyomtIVL/0TNH+IF3DEnOwqDIJ0EUpf+yDjVYVMnXLC0j8N9vlB
 0LablOmpCVmnbJPG82EWGdqqbeH62hmqq9UT7wSqc5XZut/4D2/BTlqC4eYe0rLabD2v
 OFQOhntIB1I9aLkzF8xewSXdLpLPngab91x9DAK63/E85M4PiX9uswAdiBkxJTD159me
 eg2D15l8+0Xts9zanmFZyE/89732PpRS0TuLEsgtcyKUJAca/Yq+j0vuZGPanW1zZSNI
 9gOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nJjqUh+eedhnbrR//6OaBv5/ZsdN4XZOU4mhcsRuoyg=;
 b=jmzHiPshS+e8UmluN/7fXkrWZXgn0nPgMXw1myDReaKv9eerba98Kh7C/c1Dks5NCV
 DMxThERGp2g1YYMmYaTliEK3uIlA9A3nZAgCI5RUew5Rsp+ibKF4OsSK0VqlUB5jnQas
 +zzsYAGJyGH56SPsuxUY3DWJwWmR2jRtjjhxOaFggCBXR4HdjNtv7eEEgnxANvbjQ2N+
 yANdhzRUA9d259DhKrPmdddKyds1M/uFv1tp+V9IydDu4+79RpIWXOKufGE211U+9kSh
 2bjCGXYBnV7K8GwOO6Ed81WJLMR7dkvCXr907TLumFpwSr9i9liRrjnZ4mPmGrFXm0Rm
 90cA==
X-Gm-Message-State: AOAM5325ENJBQ08eJtUIx8bseYTkWf2HXkT3YyREb18TWf/TYtLE6Szo
 tBNvrJedXOwxrI+NgvqN3XE=
X-Google-Smtp-Source: ABdhPJxiEhDApEu75kJdXXESrqi6t2oBygLR+znc2KM99z8D4A006a1c0919pGQoeo6o0GXD+663Ew==
X-Received: by 2002:a05:6402:2753:: with SMTP id
 z19mr56769103edd.158.1621007635210; 
 Fri, 14 May 2021 08:53:55 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ks10sm3911610ejb.41.2021.05.14.08.53.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 08:53:54 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] dt-bindings: soc: rockchip: grf: add compatible
 for RK3308 USB grf
To: Tobias Schramm <t.schramm@manjaro.org>, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-5-t.schramm@manjaro.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e995a144-1cbb-06c6-074f-2623bf31b003@gmail.com>
Date: Fri, 14 May 2021 17:53:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514150044.2099298-5-t.schramm@manjaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_085357_875068_F0F750F0 
X-CRM114-Status: GOOD (  18.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Tobias,

The grf serie is currently still under review. So things can change.
Must add a change log below a "---" in the commit message for rob+dt.
Maybe add a patch that fixes the reg size of "rockchip,rk3308-grf" as well?

Johan

On 5/14/21 5:00 PM, Tobias Schramm wrote:
> The RK3308 has a USB GRF.
> This patch adds a compatible string for it.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 84bdaf88d5a6..df77bd2e6752 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -30,6 +30,7 @@ properties:
>                - rockchip,rk3288-grf
>                - rockchip,rk3308-core-grf
>                - rockchip,rk3308-detect-grf

> +              - rockchip,rk3308-usb2phy-grf
>                - rockchip,rk3308-grf

Sort alphabetically.

>                - rockchip,rk3328-grf
>                - rockchip,rk3328-usb2phy-grf
> 

Also allow usb2-phy as sub nodes name.

+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-usb2phy-grf
+              - rockchip,rk3228-grf

               - rockchip,rk3308-usb2phy-grf

+              - rockchip,rk3328-usb2phy-grf
+              - rockchip,rk3399-grf
+              - rockchip,rv1108-grf
+
+    then:
+      required:
+        - "#address-cells"
+        - "#size-cells"
+
+      patternProperties:
+        "usb2-phy@[0-9a-f]+$":
+          type: object
+
+          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
+
+          unevaluatedProperties: false

===
Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

===

Sort #phy-cells below interrupt-names.


+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

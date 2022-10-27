Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A9EC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 00:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJAWi1IpCgYtF1K/DoyJ5//8FedisJrY7WbEA/3C6d4=; b=CgU78Py3FjigOU
	M8EWvvpwKrirWofrQTLrwgLyumPQas6h63i0KxmkTIAwHAqbVcOg4pnSLcFwhpAX7ppoL1S3CiMdn
	6J6Fo06Kx8cUwPh5Rf2s5ndFvY/yGAUstAV1v6lQ2qeVuGguDc/cGJnC6SqW8Za767YcIwfb7esx7
	MUCOTwyD4+QKPDF3HathWjHIvVEwxRQIFxxT3tsFhiauRzSkEcXZsmUUHwB8NWcsJ0ZfSF0Pi+niI
	x1pN64u/8FiNLNrAaXgYoCfn3aIerG1popoNEGAaNiB1ZngNULOlcNBRNwGSkvIahK9oU3EbPGswL
	ydXCL4fvZZ2GZ4hyRPxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr88-00BOWZ-Va; Thu, 27 Oct 2022 00:52:21 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr7k-00BOSH-MA; Thu, 27 Oct 2022 00:51:57 +0000
Received: by mail-ej1-x62b.google.com with SMTP id fy4so289104ejc.5;
        Wed, 26 Oct 2022 17:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zKQQQwNdmP0I/7sbEgciKRJH80dN4WVefIoocRKiN3s=;
        b=UxmhUtWDYn/Ae6ytp6eFL+jck/3SwSMRCNKSTifMbbyR3oX9qwJCmtQ/PUcfWiLcp3
         l00zgYXE+C16PItqTNArXlv2jbXvYzk2LDX8aeKZgP64K+H5t9xb+CPWLCE9qNZ4nLvu
         yi0mfrtoI/WKUh01I1UMoxsOrW8A4tt86uRtGOim8VxCwRrcRj70bCydOewQvh0yRVH1
         Vtdmz3BZ1mr1XDpYQ2eBW30Ut1eLE6BF8ABZukZn7fHVBpcnnQ9ILQXIYrFqH4roK9Iq
         2qgJVdyYCFaGPc3AmlaANX+/aRGrgfaTdoLcD4eMwRXg4uFmikTok4HkphdvWDCfwm7l
         +YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zKQQQwNdmP0I/7sbEgciKRJH80dN4WVefIoocRKiN3s=;
        b=f+HycwfzNixOcqERNerBJ61mYR0l5QADfqfnAtrrcFx2TC9NaqBNk1jw4lOdmrEjW9
         106skuxfke6p48sAwH1x/73OlyIgyxNihPJu22iqirLaUeoB+OIx71L8YF7XgjuokB/F
         7SiWTEg65qIgsqEw7mDDS5zQWQ2W6sEoGmJNhvz+egz/BF+hdmJfjSSWiCNuS91Xxuv0
         B1JIqmm/SLBxR3rhG8I1mA3h9WUE6WtUNuU4KAHAG2pu6nHIF4eTkVb+DlFWo1IAgyjc
         pjHq/TwQfcD2LFz4q2gIL0rbYNy4jrY20GHd4CxEORPZ28ZXs9zt07UXIbrumlEHHvor
         amrg==
X-Gm-Message-State: ACrzQf3K9Qo04YmjjVG4CQIcjPJdZ2D66iNht4pcmtlkb+AyWaEpSTXV
	xufh/+RIOlx0f4Zdk+rvgjA=
X-Google-Smtp-Source: AMsMyM6BPmm4tam1hIVqE5W6S7kMh5eIMq81+FlGsJXakTWmualZq8N+pHVhJ18p5o7fy2DyAl3kLw==
X-Received: by 2002:a17:906:9bca:b0:78d:bc5a:9137 with SMTP id de10-20020a1709069bca00b0078dbc5a9137mr41992336ejc.25.1666831913177;
        Wed, 26 Oct 2022 17:51:53 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bt20-20020a0564020a5400b004614fd33789sm60029edb.18.2022.10.26.17.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 17:51:52 -0700 (PDT)
Message-ID: <16afe467-7b9e-6e99-ca27-7eefce50a066@gmail.com>
Date: Thu, 27 Oct 2022 02:51:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/4] dt-bindings: arm: rockchip: Add Rockchip RK3128
 Evaluation board
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
Content-Language: en-US
In-Reply-To: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_175156_752987_132A140A 
X-CRM114-Status: UNSURE (   7.62  )
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

Add Rockchip RK3128 Evaluation board.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 72bf2fbfe..e81d9d1ef 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -662,6 +662,11 @@ properties:
           - const: rockchip,rk3036-evb
           - const: rockchip,rk3036

+      - description: Rockchip RK3128 Evaluation board
+        items:
+          - const: rockchip,rk3128-evb
+          - const: rockchip,rk3128
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

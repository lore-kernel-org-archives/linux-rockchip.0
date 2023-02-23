Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 143BDC64ED8
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agrIEIPf46lTIQuEr7VX5V+0j0Ok/fosDoL9CoMg4AU=; b=VqpUwCADHecpTR
	bu0T18bc8bmPQ0MiMotv8qZHKom3mxXm8/bUegxc0ZYXwFbCXGSMTdbc7/x6s3woHfTIBP3+3Buqw
	6rmuDFs8osNMoxpN8nusEvonApSiX3hZI/PGmuibDEnHUIu5EY6yhoremRYapvt5tvnS3yKotW+oU
	b+9AhEMZMKPkjNo/0J1MuRvxotZV2e/bVFgiJSVF1kk7oPUWhhia3d0InwnZrLiZCRhj0HW+7gIhe
	2xaVoj1OXpjyJrHALnSxLZakN1dmQpeddzcxiwWcpQciUo8cZVNl3kdYOJ/eCdekfC0PxGde5Pn5P
	wWgSVCFgUUPDp2Qsq3Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHYG-00091C-MT; Thu, 23 Feb 2023 19:46:48 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHY1-0008xj-UC; Thu, 23 Feb 2023 19:46:35 +0000
Received: by mail-ed1-x52a.google.com with SMTP id o12so46775954edb.9;
        Thu, 23 Feb 2023 11:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7LRpyWijqVyBIlwSuNRfzUQ+ZyqaAsfdjoJlUPAZASg=;
        b=eiKKSe9UeePiVEO64ojOtxKiPLmGaZ/nMjseZGtFE1mHQ/dw/eAfDtPDodcqVozXUA
         8ouHsxCJDV/s9IRvv4PDdc+v3FSNXivEqL48uYolADGle5prCL6/1cVeB+2iC4rY2Qtg
         ju8Tb28IBNNKtcX810XhnsoV33LxMT/2YBLUVwr90z6SHsyB0XxvEWB4mjy6l5ZS2B5u
         8imWQ5oG70AF5JpbyjhPLKN/9aO2P0QFL4zqltsEVWFAtji6yf+9IuJS2t+K1YQFIy4M
         yaexE1Dk/dyUSLhc0m4Wn7nXEEEYmxSy22sJYCXYK8vmuuVlpFT6hCwMeJCERZYrFFAY
         UGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LRpyWijqVyBIlwSuNRfzUQ+ZyqaAsfdjoJlUPAZASg=;
        b=gRBxS6j55bjzspbFy4DwIzzJyRFOXW3OuWdtiZkw7mv2YA156+S4JGl+rHLiHI0ciw
         aZTk5gPe65OzRw6ZTmVJ8tAZsKytAQTagTCOXz0z60sIhtQ2mmcavQa4kiIO1QOUglSw
         5tfUPRJUvPe//vz55zrci0/pA7EGndembzXegwG+mRi4e589my3hlcCVKbVpLwFFRbg4
         t/VHFGVEz+PiOD7r4z1l0CU7DADM8xOCSZeCvg1Kcf0yZqClBeDYkkeKGplv/7VsqOFR
         q+PoI+9iwjjX+4kJ2b0/1jF6iSM5HqR3jsTLTr9jODzQA7tfsbs2PVCJ2RJUsvi7QXbv
         vGZQ==
X-Gm-Message-State: AO0yUKVaCA9T+5uEBmZg4Pc16OxAYg6qeRxnxUuXaUeU2SAEv+RqbOtO
	RVh5EYL9Qnj6X9MXEtXswRU=
X-Google-Smtp-Source: AK7set/L1t843g5XkUkLOvox4r8KPibycedF4hiL/gNFQX5exFdwNgcdM0cnvDhKLdr/jDZ0jWjWcw==
X-Received: by 2002:a17:906:44b:b0:839:74cf:7c4f with SMTP id e11-20020a170906044b00b0083974cf7c4fmr20087502eja.8.1677181591729;
        Thu, 23 Feb 2023 11:46:31 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id mi10-20020a1709071a8a00b008e938e98046sm1960676ejc.223.2023.02.23.11.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:46:28 -0800 (PST)
Message-ID: <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
Date: Thu, 23 Feb 2023 20:46:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 2/7] dt-bindings: gpio: rockchip,gpio-bank: add unique
 hardware GPIO ID
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
Content-Language: en-US
In-Reply-To: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_114634_005180_AE81A5C9 
X-CRM114-Status: UNSURE (   7.60  )
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

Add a unique hardware GPIO ID to the Rockchip GPIO nodes with
the "rockchip,gpio-controller" property to be independent from aliases
and probe order. "gpio-ranges" can't be used for that, because there is
no semantic restrictions on how they are set up.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

See discussion:
https://lore.kernel.org/u-boot/CACRpkdZx8EaSFLeh4vruRsdC+Sx_ieBiKmuE7t37zhiYqtS3WQ@mail.gmail.com/
---
 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index 2e9a5179c..39ac41e9d 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -52,6 +52,12 @@ properties:

   gpio-line-names: true

+  rockchip,gpio-controller:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 8
+    description:
+      Unique hardware GPIO ID.
+
   "#gpio-cells":
     const: 2

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

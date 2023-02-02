Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 289FFC636D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 14:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ya0xy2+tXsok6Xs4uc63REz15mloayaVsnR/ZW8dhlE=; b=cErMoQxkJ1sW7/
	Cb93ZftD5Nyg5v52NPTC2FVVQzauutcN5p7MOE+/mFnoOhwBYvx2SgMJOxcQHJqPNQbmLZyh2ck/D
	WyEkDHsgyv+eMvjaXbouNUf1KyBs9z3YDl3ZzhdgBMe3/KX+m2GyqFBObb4kaWTqJBFGVa+W5+D9i
	mop5OV8oZPkmKF5j6czjlFIZWPW1sUrwyxSsNZnis4gl4xO7hreOxBlLNBiVUy6COxo/EXOdEDffP
	Lm455u77SuNoP5ueA0Wu1asyKCZBpL/hudQHwkD75QzNX+EMXcMkhns6sd89bHkX/YJYiKN8dxrwp
	VMbUAyMknScSqJ4MmdAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNa81-00G4kO-Jx; Thu, 02 Feb 2023 13:59:53 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNa7q-00G4i9-CS; Thu, 02 Feb 2023 13:59:44 +0000
Received: by mail-ed1-x52c.google.com with SMTP id f7so2083375edw.5;
        Thu, 02 Feb 2023 05:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7C4yOiCfMP0qj/5KoOd6moIn3AHrcKCsnXClv4cfnTU=;
        b=JLeYM8r6D7I8hxEIZGXSNrXiCOM1r6JaTyiPcGesBFtSNBlrYczTEh5y7VHxbMwY3p
         E17554goaZ5Rh1MR/xAnCOXn1XNvKmOxhhvifW3UisCHMNV8L0m4aU3CQdmOBTo59u6E
         T+NB9+bvs4/7prBq3D9RmiJNaxzfyS9Z2X/EpA8MrfQjm2Xx4vX1dLYVq2FNn2KvJx4d
         2MFTVmdBSUEW/s70LJvEOJcqQilYpMcWAKWg1WGCzuZH4thNkulTiz8vWgC5Qs/FCoit
         qT4knHMcXpi2WmzqiC/FP3ZEM5eQVfsdsJB8d9vME9hMszTEF3V6DTKPKj9AO+32mpen
         UdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7C4yOiCfMP0qj/5KoOd6moIn3AHrcKCsnXClv4cfnTU=;
        b=yS9NYt4EPZV+ON5fYDVRDc2CQyv8iyCLxhi0pUCHkHM8rVg+utCYFTDGSvawXC2+Bz
         B1olK26/VyC1B8Ru10d9M6dYFh4vGaZP4CR0UhlpLn6uJ+Srt8PujlrotRFfbvQ+rq0T
         d9pHhugMAhWs+9t6jfjq0pfO0pZFgw3xRLgMhJ2iOol/RRTIQp7sw2K9pRoRp3mqrIHh
         Tf8R73Dy/RAmuVGjHYOjSepY+NQoJ8tGVBrZj2q5Ed3hdUNHUwWBRfA97QgQxB6l8cQa
         NDP3Mu9R4DJgApF9noP95e/fzf5kQCcTBTUAluzi2TT7i4jkkEJQFnc3r7NSxhO6eBrb
         ARfw==
X-Gm-Message-State: AO0yUKX9TiJXORp0qhN4yFcZtfXYchTqoyFTda/IhwCpXN0MOnBd9xK1
	5Ogg3UtWuI/d/fOdexJAwTlKIVBbIgg=
X-Google-Smtp-Source: AK7set+2cZg5uKgjKIT+gcK65XOYzB/T6/0Z7PWmZujYuCIp5ZQcCHjkg4wT6MFMnqE2zF8hXbAtzA==
X-Received: by 2002:aa7:c70c:0:b0:4a2:6c9a:ad19 with SMTP id i12-20020aa7c70c000000b004a26c9aad19mr6082501edq.17.1675346377847;
        Thu, 02 Feb 2023 05:59:37 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id p2-20020a05640210c200b00499e5659988sm11120854edu.68.2023.02.02.05.59.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 05:59:37 -0800 (PST)
Message-ID: <f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com>
Date: Thu, 2 Feb 2023 14:59:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2 phy
 binding name
To: gregkh@linuxfoundation.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_055942_450708_7BAE4CA3 
X-CRM114-Status: GOOD (  10.52  )
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

The binding for the inno usb2 phy was given a name in more a common format,
so update the reference in rockchip,dwc3.yaml as well.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index edb130c78..422dcc156 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -15,7 +15,7 @@ description:
   Phy documentation is provided in the following places.

   USB2.0 PHY
-  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+  Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml

   Type-C PHY
   Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6613ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 15:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1uQCY5xEC3ajPIfA4dRHZDQmJKGW6nJKUzV73iBbp4=; b=BgLD+9TzZe6vqc
	TVDqAsSG/cIw3QOIMUXus0jTavWkhWsxbWC0uRyNoEHt+P2wHEx5k6UfSpLmQmN5m+3Rp6TEEmFgZ
	Go/u9oTCtdrX7jjT6XRSysrO7z8PZYOYp8dhB7OIau9OF361E94y77KlacELvW44lT6rRsnIq52Yd
	oRdwGi+Fp8H/Z0OmKUozOabCNinbXTCHNhz5RpAAF4pqDJe0VDfNPT4i5Sm6AX2TAq7BwpDIxAMoA
	ptRfKiIN8jGa82U0wwHe63GPdtPImhnk3g7pcgc4UNxQm52EBK1+Ue0Oe8nhdnlsOT14pKCRP4Gf+
	/azO2HgzB34UiNVPUurw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4NX-00DwbJ-42; Thu, 27 Oct 2022 15:01:07 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4N6-00DwL0-8n
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 15:00:41 +0000
Received: by mail-qv1-xf30.google.com with SMTP id x15so1533030qvp.1
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 08:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oBHDI3Ai6tJ/2wSsx3a8pbGEwv3D3cNXDPZBpWeFWJw=;
        b=JwsNdMMMJdZSDa+37FVxiNdJIjvu0HSsnrTpAxsDAzXg6WbZz/g3kffdckqKOcpR4f
         T25EG864kVLWIdpAlgIFWFOBgIoPspfWEFz2dJGFzN6Y2IqZ/bGdoT/k44Kv254AGFEB
         YhyKxEzhTGJ5sGl8AJ5oWgge02zBjn5NFqKJOD+tNnUiHlMgXCNDLtynq4c149uUO1QX
         mjM9OhLcd3CXF4GzmN8aEkwHfcRpvT+UfdXt3FbxqPoHZZ90/s4LVDmJ762hA4LFYhru
         HHYMkFss7u+k/KdOLbq82L1Z/ee+MvJLlUXuhJ8YsSH6Lial5ZAqZ3yueqeNCeKlLSea
         uYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oBHDI3Ai6tJ/2wSsx3a8pbGEwv3D3cNXDPZBpWeFWJw=;
        b=Xb++U1k4g35AsKxQLMY30h7lAgNMEo3/cQWf71HXVmjrErmBsek26tiHe8Ly1t6+2s
         whvM5znRWuL2Y2VL57x3aw0lhpZzSvtJiggyWvvsRKYUIcMhwSX412asUl36uFUSaiHk
         KNQoVo+ccypitUwbXalPQCpOGobyS2r6b7mGBYdlGClz1PlZ+7hSAP0BIJnUxV38TlqO
         X8g4T7DLzqolfqSbsyN3BuxTqBICkxjfz1tuAIZoROMXjFUWlyiwhsu0xxujNYmEHHjp
         kT5r+9OLCXtHE37loFIcPmzKXLxK9pnCY3xEuWb4xuSLMPFCSL0WDxFc3V9Nz04jtqCP
         NsUw==
X-Gm-Message-State: ACrzQf2l4U7LtRiOlBIfeKlk06CiWZiW/8hBhtMp2r+LDeQiuKIwINk6
	H173kKhmH7LOxmmYc42kNN+sUA==
X-Google-Smtp-Source: AMsMyM47Cl5/WRHYlqSCVqKZWdt9kqanDgXMtXRMfaHpIxswrzLr7hXGDI7S1pmPhzhOg+w0VKv0aQ==
X-Received: by 2002:ad4:5ca7:0:b0:4bb:97ea:27b5 with SMTP id q7-20020ad45ca7000000b004bb97ea27b5mr6506429qvh.104.1666882838858;
        Thu, 27 Oct 2022 08:00:38 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bl24-20020a05620a1a9800b006ed61f18651sm1123874qkb.16.2022.10.27.08.00.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:00:38 -0700 (PDT)
Message-ID: <00b1b451-5c0f-0749-de80-4b9eacc0b5fb@linaro.org>
Date: Thu, 27 Oct 2022 11:00:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/3] ARM: dts: rockchip: rename "haoyu,hym8563" rtc
 nodes
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
 <84f14b40-0804-9734-963a-31e200687a8d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <84f14b40-0804-9734-963a-31e200687a8d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_080040_376153_06C1595A 
X-CRM114-Status: UNSURE (   8.43  )
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

On 26/10/2022 19:00, Johan Jonker wrote:
> The "haoyu,hym8563" RTC node names should be generic,
> so change them.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036-evb.dts            | 2 +-

Also done.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

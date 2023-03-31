Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA5E8C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrvD81XAoUQK0WJHPaMwRl16eaXS1EVEUKciOOyns+Y=; b=fs+BllI/OM/sSR
	3PshLPNoc1zO0QVjGjAeLxKG2KmlZV61f4uO91CWv2iMR8gMqXAE+jZKrNVXoJ49wZ3tlET6t4vIB
	UBPOYPeYZW1SqIYm9FA61J2Ft0nH1SA6LRE+yHgCGZQZyRmiakufMyBLQgpZkygoiPVRLGQIWH56F
	j4/cnpoHi63NWf5DXwlcMG361bODMM4/VqhegjDktL0BvwP/bQkrRLh0QGQksYjLacA71lScP6+X4
	OI73ENjiR2kT8N7sKCAEHEJxRwxPCYdvulx9jPow2XFvXlG1EOsBZD7QzSr2wKWNL2p69E80Q9Sew
	LgqJZM1XhdIgtRP6p8HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piAGl-006Sbc-0e;
	Fri, 31 Mar 2023 08:37:59 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piAEb-006QpT-03
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Mar 2023 08:35:50 +0000
Received: by mail-lj1-x234.google.com with SMTP id q14so22236994ljm.11
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Mar 2023 01:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680251743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tkRYc2zjcEMTlLfWoSafrc84uzK9JDYRl9kYpG33h9E=;
        b=VDtYvpS72Cb8trEdZVmOD4XrZGTI0kgWf9WAirmYAqK6YXUnVdbBn7gj/IO2OKTFMX
         awun/DZKunVF7yFL/NqDphNreCz9VxqbyYMCF7ql9WgGuC7y0RN1peGeCe0PPyLga5c7
         BZ6tUgHyw6X7uxVpo8xxqAcNIHvIbY41ndFtvBqZEa6Em626CPuObX1Cwu7mYtJUtcU+
         2J4Y5KwVcOR1ufbnbEJ9pJr37KFGNqI1BJ/BUmjyd3mzvaQxEPIDD9A4rlK/Uo22kdik
         KN4jn7SuA+Yz9+i0bytGyuoa9xckYg4hAOhUp1YsfMUEY9LwZ6tip9uSwTJouX3bHfRJ
         /Ylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680251743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tkRYc2zjcEMTlLfWoSafrc84uzK9JDYRl9kYpG33h9E=;
        b=hUalmBYfwvKmFM4FR9M/bADJPgTUhbG5FjfF4YmZa50wG9BpCkLQQm0iuLsCMIp3z2
         QD/oN30ea3qclOaGf+PaUlmSjwav9DWeyj8t5RZEOgqpUUkjAKyHY5EN9CL1fmLheyyO
         rtMe0X7ERvp2dZaKF7V3akM7kBpq8TvfKE+lYArP3bM7uoteRrGJG4o1DQHPuhBZ/eRN
         gTPQJ/We+jDnMb4YYCo4+hT3ifDBSEM9YWwIG/pwYl0n27Qes9waqvzVg/6M9ro13oxa
         Ll6ZsgaC9j3AH/8s4RjhVXehzxYgzstOa4lbL9AXKQbsJnRp92bAYBO62sIBKfL49SBp
         MiOQ==
X-Gm-Message-State: AAQBX9cOkV+DlqHZ9oH+2vxgq9f8tFIQbVpvtfav2+xT7xKmUfekkNCq
	Go8PDcfUo4V4VQvYoF9/jzRyyA==
X-Google-Smtp-Source: AKy350biiEiYoHvXX4oy8SYpu5pCoC47zLNvMj4u1cmjiV2eNr3bJd7RLJ2vrzmFKZJOHU5xx0I7dw==
X-Received: by 2002:a2e:aa8b:0:b0:2a1:ed00:4b9e with SMTP id bj11-20020a2eaa8b000000b002a1ed004b9emr2503411ljb.1.1680251742960;
        Fri, 31 Mar 2023 01:35:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f25-20020a2e6a19000000b002a03f9ffecesm262405ljc.89.2023.03.31.01.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:35:42 -0700 (PDT)
Message-ID: <7a81fe59-7076-9ebd-d574-e4f2d55c8ebe@linaro.org>
Date: Fri, 31 Mar 2023 10:35:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] dt-bindings: iommu: rockchip: Add
 rockchip,disable-device-link-resume
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-amarula <linux-amarula@amarulasolutions.com>
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330131746.1475514-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_013545_835644_1A101991 
X-CRM114-Status: UNSURE (   8.96  )
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

On 30/03/2023 15:17, Jagan Teki wrote:
> Rockchip iommu is trying to enable the associated device at runtime
> resume however some devices might enable the iommu during their pm
> runtime resume operation which indeed leads iommu to use the wrong
> domain and this leads to device iommu page fault.

That's not a DT property. You now described system behavior and want to
encode policy in DT.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

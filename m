Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F6DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 11:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRSCTpOkXt1GwHh33rnjPIqcUFpm1eTVS6QvhADAO8Y=; b=kJrEbOQNxi60mo
	fRPUEj7SOMjzwlqQkCis/ueNTMtyd4qYEqmvvEokfkAnhEhuzc9wStsPL3R2EfW5ByFQt/P1jCxbP
	urlZBefINf9dU25mOSxu7AGo/Jnej12JckhGHj2zTx+QNIFlUdW4f1MRsPTF1w2NeKLi8vVgkl+d5
	XcT2843l9aA8qA/rImyHIgQjmsO1ydFmgzmwOI9+a3AfpEP7iQmuiiIzMMlakukZOklsPXm8wE9jY
	EEjkjC42iKfmomtJ+7L0wB96DYnJCNvgpfuq4DQeOdHA6AS9zLui7Ig5yzO/E1Tj9XSLuF8ud8/kb
	i95XnDEisDc9FDiysphA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQpTp-00EddP-9g; Sun, 06 Mar 2022 11:55:17 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQpTn-00EdcS-96
 for linux-rockchip@lists.infradead.org; Sun, 06 Mar 2022 11:55:16 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B7DE13F5F5
 for <linux-rockchip@lists.infradead.org>; Sun,  6 Mar 2022 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646567708;
 bh=M7HhdQnqg/99QgckiwYhOLXnbb7e+E0jF9L8MBDB2C0=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=qFHQ7ZrqttMPNjBsATzdWYMFVMRwB3Is9cJXob7eZ/18dZNX0ne0KpEiN3a7d3aO8
 /QCNQhoA72RA5KuY6OzYPOgJZjca72U3uWMzBYRl/QWKyo1M93b7Nlas1k+8h1CEP+
 yBG9yS++0OJpFyA8ieZaAHgihSRPN6FeuF87XNnSCsX2Duk27k+YhqGqogAg1014g0
 S0TVSqj4q0yfcMTe7Ta/fGhDGT/ZjsI/6TRq8LDpR0RhXugza1yN9x9Dwj9Mf4eP5M
 lUBDp93+lW3GUayHIb6lqq3QUG5WFi/2wm+0a7k5Ypmvx7EtbH1biOrD1ardqGheEK
 o3po4p0h/gCmg==
Received: by mail-ed1-f71.google.com with SMTP id
 bd4-20020a056402206400b004162b6d8618so1048833edb.19
 for <linux-rockchip@lists.infradead.org>; Sun, 06 Mar 2022 03:55:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=M7HhdQnqg/99QgckiwYhOLXnbb7e+E0jF9L8MBDB2C0=;
 b=JWv1xsCXwDA4CgZDwspNz83U3hrm6bx1yOFrkL2Wcb78lzpezZsag0KWWBIjL2Fve8
 kvKyW9nRoK4uTV8YgoyEbLOXPxnSDrb4K6TF+ThwHFCAidoLgJtNEyNATEwUguf4U5qZ
 wqge1SaeV+g9J6Lu4h3WamHf6tK9+MMsg6/Fg2CF8iBuEi1peLLd0xQhXwIX2KzsfTId
 lt1ffg9cw6WD+LSjzdJU1Jz6bV2UrAXMGAEQIYbDsr59Wy2nTDdmJcCmSrvmIez26tVZ
 l0CEoCt1eqBxtNp2kkPDPfT0Vg1c02mlIsq+3S9FxEKlumEDIgcxBNEPEKpNSNBfY/hQ
 Rm+Q==
X-Gm-Message-State: AOAM532uVDHaDJEwS3fDGXx4wbOJn/VU1ugcYr06ST2u/uVWB6swC22c
 jWRH2NAcjtJ3rfKT5jJiN6YTgGqJAFW+AXg8s0/+s5IliR8qARqM417ZMGZD/oYrs1qJt7i/0K7
 ygfZEWByac2egNmgHuEl6jw2fWfSYRzPUk+tjKE6NXQ28yqdfpA==
X-Received: by 2002:aa7:c7c4:0:b0:407:52cc:3b32 with SMTP id
 o4-20020aa7c7c4000000b0040752cc3b32mr6335735eds.397.1646567708099; 
 Sun, 06 Mar 2022 03:55:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzEqcWBPOeCVNUb/IWUj+A8DrXorGXUVAFBV0XM7Z0DdE7bS6WcOFGj7u+16JP6Qhb+rlqEpg==
X-Received: by 2002:aa7:c7c4:0:b0:407:52cc:3b32 with SMTP id
 o4-20020aa7c7c4000000b0040752cc3b32mr6335725eds.397.1646567707943; 
 Sun, 06 Mar 2022 03:55:07 -0800 (PST)
Received: from [192.168.0.140] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 ce12-20020a170906b24c00b006da824011eesm3734626ejb.166.2022.03.06.03.55.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Mar 2022 03:55:07 -0800 (PST)
Message-ID: <c2e01b71-efbe-7d6f-5cdf-1340c5210798@canonical.com>
Date: Sun, 6 Mar 2022 12:55:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: Re: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform:
 Convert DT bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
 <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
 <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
 <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
 <trinity-955432eb-74c6-48f6-984e-d88a61854727-1646567165101@3c-app-gmx-bs64>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-955432eb-74c6-48f6-984e-d88a61854727-1646567165101@3c-app-gmx-bs64>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_035515_544707_CBE69627 
X-CRM114-Status: GOOD (  11.02  )
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

On 06/03/2022 12:46, Frank Wunderlich wrote:
> 
> i see it as requirement for last part
> 
> "arm64: dts: rockchip: Add sata nodes to rk356x"
> 
> if this can applied without the bindings conversion there is nothing to hurry :)

This actually depends more on Heiko, whether he is willing to take DTS
change even though the compatible was not yet merged. There is no strict
dependency here, so DTS change could go now...


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

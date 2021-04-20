Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C62C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 15:06:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D71E61104
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 15:06:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D71E61104
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2zGTfpNO8W+f+dkwWiaXdavFXfL4NaT4AQVftc7rSTM=; b=GUR+K6JRHEKPCRbI2PHY9aEuN
	6wD76U2sm9Ni15U6y8aSNxb8iItD/k0IaG/uDOJ95hvpfU18DxWbE+Lj0/MAyy0i+UeIbKHcz6OcD
	uK6c174xnk/Z4fM/LSxVVRt1WllMLOS9ebPgM0ITFC9sPGzDus+2RuZC8I44Zn/1Rb/J+7tIIZsDj
	PAv7/dzZ8u117Q2cRkKFLg4f8zrM8pW8eGCCyHETAskdHCTYhozQhNiIGbu9dc5foXfxQ6LkqnjJU
	vvCc7YQVB2Fy9A5cbeDbf71DXty+cJY+kKVq5Nlr3BSSOccx8uFQyE+ZjcRpCJ0gUPC+d8rmT64RY
	hZrvOdflQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYrwr-00CQ7q-Eb; Tue, 20 Apr 2021 15:05:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYrwo-00CQ7D-Fw; Tue, 20 Apr 2021 15:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aHuLvQqopShusp+Waua9JzWi2y+R0TxyWbIgHg3wkjM=; b=b/ZAzCfY/48372l2+/WGFgUDCr
 L+95gniRGr3+XUkYX2+mwhrlwxfqxk81s/9XQ8+9q6ppNd6cirRBd9ckujL45DogFzQOR43sS3jac
 e7lkYN98WsQvifz+VX4yWb45YAsfompcXgsYXib0dT6gd7QGpZmZIme5o63mGtQgL+Jay6Kx3aUoj
 /2vYptVjV0jgf5sR5c5ndCSO99nZP2xFqaP62nv10oZq3ibGAdNtcgxN9jAjq/2AckTHngLSowDv5
 Zym8n54f4rzJDirWJOUcqZALu4VajDGGVmY1J6CegSyKreti+CqDrlFGWuCec9/AQS4KwRAemrRQj
 0S0ymV2A==;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYrwi-00CDit-OF; Tue, 20 Apr 2021 15:05:53 +0000
Received: by mail-oi1-f175.google.com with SMTP id k25so39251540oic.4;
 Tue, 20 Apr 2021 08:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aHuLvQqopShusp+Waua9JzWi2y+R0TxyWbIgHg3wkjM=;
 b=RCp00gCfxyZTVpX2JuP1oPMpiXyfDX1v3nlcQeQ251+XpngV8uKedhlQKtV5rOkZF4
 Rg4GrV97mSLHkfDobEmw8pJBDz70IAQNP3AnmSxpEJZy8bSPDig/wm/coxTsIMgh+bkX
 LmuGymuSI1yXqdHtc/k0x9e0NkJVLaT1vkiRAPEmOZoJklGfdsBCJ6e5ZoWdELSi2WoS
 uNIMAVrGssm3aj3pEz05QN2xqIT9Kg6tcF1SM1klQBQWiyi6XqODVdLP85I+LM9sbTUX
 vUvNerkRxKwlyRJhEBbXZZHUFR7dKm23f7yvIvXLejEcgvEs10Opf80Uus9hZeQzuG2S
 YecQ==
X-Gm-Message-State: AOAM533wBJfrXYzh+V1WjpVwi4F86lQ0tZ7pB419jJKsDSX1pufHlnzl
 RFOOx4YcHl52a/itF+Ft2g==
X-Google-Smtp-Source: ABdhPJylx4E1RxTqUlW7O/drJY8WtJ82nhEcNAzvr9a/xRMxuYOgAqBOm/KnxqZQwAgQlagmnftR8w==
X-Received: by 2002:aca:4dd3:: with SMTP id a202mr3396610oib.17.1618931145824; 
 Tue, 20 Apr 2021 08:05:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d17sm4205939oth.19.2021.04.20.08.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 08:05:44 -0700 (PDT)
Received: (nullmailer pid 3327674 invoked by uid 1000);
 Tue, 20 Apr 2021 15:05:43 -0000
Date: Tue, 20 Apr 2021 10:05:43 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, zhangqing@rock-chips.com,
 enric.balletbo@collabora.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 13/15] dt-bindings: power: rockchip: Convert to
 json-schema
Message-ID: <20210420150543.GA3327645@robh.at.kernel.org>
References: <20210417112952.8516-1-jbx6244@gmail.com>
 <20210417112952.8516-14-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210417112952.8516-14-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_080548_812458_2E39CC18 
X-CRM114-Status: GOOD (  17.87  )
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

On Sat, 17 Apr 2021 13:29:50 +0200, Johan Jonker wrote:
> From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 
> Convert the soc/rockchip/power_domain.txt binding document to
> json-schema and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Note for rob+dt:
> A tag was not added on purpose, because:
>   Add "rockchip," prefix to the qos compatible name
>   in example.
>   Changed maintainers.
>   Size reg description is reduced.
>   Little style changes '' to ""
>   Restyle patternProperties
> Please have a look at it again.
> 
> For some SoC nodes this patch serie generates notifications
> for undocumented "assigned-clocks" and "assigned-clock-parents"
> properties till there is consensus of what to do with it.
> ---
> Changed V9:
>   Rename definitions to $defs
>   Restyle patternProperties
> Changed V8:
>   Add pd-node ref schema
> Changed V7:
>   Fix commit message and author format
>   Changed SPDX-License-Identifier back to GPL-2.0
>   Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
>   Fix indent example
> Changed V6:
>   Changed author
> Changed V5:
>   Change SPDX-License-Identifier to  GPL-2.0-only OR BSD-2-Clause
>   Remove a maintainer
>   Changed patternProperties to power-domain
>   Add "clocks", "assigned-clocks" and "assigned-clock-parents"
> Changed V4:
>   Remove new compatible string
>   Style changes '' to ""
> Changed V3:
>   Use Enric's conversion with rk3399 example
> Changed V2:
>   Convert power_domain.txt to YAML with rk3568 example
> ---
>  .../bindings/power/rockchip,power-controller.yaml  | 246 +++++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt         | 136 ------------
>  2 files changed, 246 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

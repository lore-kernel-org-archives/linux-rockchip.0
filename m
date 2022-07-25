Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9357C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQYNKHFVO8yE1sZFGK0Orn9LWOJxbOAErxWwJNK5pMM=; b=3xyHuySvGal89f
	b+mf9zIJifTuo62TCESWDq90C/j60f+ZE8gvOEYmuVqAb6aO5no1IL2s8pilX9ZZA5VUFD1wLfn6Y
	jLpMIBdVeG+rbJuen4JUTN6eba35mjLQB3sgEZD0y8QQMbxmgtGBlmKIZLHNx+WpOHMTBZy+pL992
	ChT2lUjK7lQalvaoUKwYXdVXLVm9JA9K9Px1m2XQDC7sshzHC3SM/OvpLqLKKPs/T9Ync/kselXUM
	vYMHHMuuSs5MplqjcI8Txiq2fnwHIiXpycz3e/QYSk/R0VjcUr8e3UWg3Z2kEOYM6zIVk4HTjL4C4
	z8jIdXeY3+1WYJocPlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7U5-004FxP-61; Mon, 25 Jul 2022 23:27:33 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7TP-004EcW-IC; Mon, 25 Jul 2022 23:26:52 +0000
Received: by mail-oi1-f173.google.com with SMTP id s204so15285672oif.5;
        Mon, 25 Jul 2022 16:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zQQwIAk5EozhLG3rn8vfm+aflsqjWz1F5kcQhq5h+oo=;
        b=P0Ed6+ha9XEh4CoJMNYX80vj5cImOPez5XuYaGVQJMpQDrlkHUkUiCjUNPQSGWP+/j
         h+c/OQasUXoAEFgOaGKWG5n0f9MDHwjA9Mgq7GS+qYxYHmGPDOeyQUAaEIEflWx0ndO/
         vWc70yM5bUadAD1RQT8GQeWKqwOsLfuK2/qz8wGigzp7RZG4cRbxn7BIBY2fbXmOenRX
         U64izxl0ou812mi6KNjo53KDjKznIqvvZJLFxXh5E8A9UZ2hoEeA08kfSJxgD478f+kH
         l5Eb/gnxz9zkBlC+zUUnibH7p3kdNvCfUCxApjYhkJON9qP0HUuoFgtbqoWfWeIcI4CX
         yFFQ==
X-Gm-Message-State: AJIora90XfMBhwK2MmqJdJ2wOO3t1/nj1iZAqbtUtH/4g8yXLJSVBFhm
	Mph5MLDtUcF2XrHVRd872w==
X-Google-Smtp-Source: AGRyM1u3GAsIM8kxIdTFxl33WWpOoAzD+fw0d1zIp8xzGsKJWR4XV1a/Fp3hJQh4XU1Zv0yfo/Ly/Q==
X-Received: by 2002:aca:ba86:0:b0:33a:c6f7:3001 with SMTP id k128-20020acaba86000000b0033ac6f73001mr5932856oif.5.1658791609542;
        Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x13-20020a4ab90d000000b00435f239e5b3sm743914ooo.10.2022.07.25.16.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
Received: (nullmailer pid 2953746 invoked by uid 1000);
	Mon, 25 Jul 2022 23:26:47 -0000
Date: Mon, 25 Jul 2022 17:26:47 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee.jones@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS
 register
Message-ID: <20220725232647.GA2953643-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-17-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-17-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162651_626683_310165EF 
X-CRM114-Status: GOOD (  10.48  )
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

On Sun, 24 Jul 2022 02:13:29 +0530, Jagan Teki wrote:
> Document dt-bindings for Rockchip RV1126 QoS registers.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

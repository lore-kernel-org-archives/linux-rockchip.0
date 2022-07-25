Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE7F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWydy+Tcaf5hfioULckiZFFyYs+CbO8NMNMRVOAy6T4=; b=b2yLrQdZGiS7mL
	PqQBAYYNJ/9UGz1YLSD92pcPWQQ0D240KTU9LXT22IkG2y1WmGHDWCvTJ2Esc1TkFxO+3il5kfGXk
	k52OugjfvwZYsjiW/LdFjpMdHg0VIFwqD7/VlOh5DC3jQTP5OO+8NQxReYOaWV8Vjs3ZP22z4U3zs
	hRkq8A1qmByzF4YSeKh20SkPPdnhWvyvS66EsLKmZgIhavQiNXv0BsAPQE8pgftVyaSjAH3Znoc57
	K1jcEHo67ZYXLjirZ26Zxi10u8fS9vdmEjgImL0A8Z5FKuOcugs2i5GCkDW9bUy38/Pz4DCqrG+jg
	1AbjW7BCdj3blBgFWgKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7TS-004EmX-4o; Mon, 25 Jul 2022 23:26:54 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7T4-004EF8-Sb; Mon, 25 Jul 2022 23:26:32 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-10d8880d055so16728108fac.8;
        Mon, 25 Jul 2022 16:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KXH2/C7+h2pO7+Y9s9xtLMw52B4nuatqH7Df0xFd4NA=;
        b=XcIA8Fua6NGrNQ4bfaMW5Vs7fWu+z/8mMSepYuXaTv9jpY2eI3AB49G3J8xv1PewN+
         3yAFnUTPCZvnz5q0tLBrR/j3fv/NRYQuwxX8KPC+BolA2WYqJ8/M9A8rH+76UQisf9EB
         fWIl6kQUHG8nn9qE6x7EVQAlG/SoPPq4NIwVwli6a0N4ZxxAF0jYhntcBMDeKQnnPxAR
         gxZm3QWmYNSvz7gfF58Jkfpp2B3oONoioSdi9GZS+I1egWwii+rb18cTNYIFTzsIoynu
         rH94xQvAbLNnK+72mGqHdHQ891ZkdG3QbVyr/wxyXX3tzP7eVLHWFlOThxXzygIDxdy0
         SF0w==
X-Gm-Message-State: AJIora+bag3GTL9KexHE8ZgM0WFTFtkHV03F2gzY0W/GdnEdw1icI9eq
	wKnrTx2vvqjxFFTW6aibMw==
X-Google-Smtp-Source: AGRyM1vEVOAB5g+N1v4Cztmp/RT7BLlrQBeHObl65LRMEdFIfHeBjVlizsSkBkZQFNtZuPNbphemiw==
X-Received: by 2002:a05:6870:2103:b0:101:4016:b2c6 with SMTP id f3-20020a056870210300b001014016b2c6mr7533821oae.32.1658791590114;
        Mon, 25 Jul 2022 16:26:30 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p13-20020a056830130d00b0061b8653b0c9sm5568316otq.22.2022.07.25.16.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:29 -0700 (PDT)
Received: (nullmailer pid 2953023 invoked by uid 1000);
	Mon, 25 Jul 2022 23:26:28 -0000
Date: Mon, 25 Jul 2022 17:26:28 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 14/22] dt-bindings: soc: rockchip: Document RV1126 grf
Message-ID: <20220725232628.GA2952988-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-15-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-15-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162630_971455_68F796BC 
X-CRM114-Status: GOOD (  10.22  )
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

On Sun, 24 Jul 2022 02:13:27 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 grf.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

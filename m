Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5199DC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao7Br6sCiz7gdb3FP2DYstXSGvrqxCtQW2yzgAlHqPI=; b=cELrWkc66C5Sas
	LSnbLGqGo/1cpmI33nG/esan59/prkoMge1RD0YSDqsFez7ydDfpQlKXyRlL0qdg/b/ZxOF+sw07T
	PAukdAz3YBwcSibb7gW/3lhxKw/8Sij+nw18yNzLegaRs8BILoslpvSYRH1OCPwCX+pT6aZkg7Ii7
	unT4Idj7Z+jtJla+4BUK/XKS73nsEQKZDpAstVUjZ3Hpovu5/JbBoLvw9Unr2fnvLL2CEEjrNY2d9
	TTwAGMGY/OA2QBF66FW6ue7gWs8wLKivSb0NypLmjqGrCMEMFpKn2w9zKKQltpiG0aSVQGFNoYf/I
	upEdMtu7BNoXn/nAVVTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7U3-004FuY-Oy; Mon, 25 Jul 2022 23:27:31 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7TE-004ELS-8V; Mon, 25 Jul 2022 23:26:42 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-10cf9f5b500so16750120fac.2;
        Mon, 25 Jul 2022 16:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Oq1X6bn8Fh1Xcb7a6kom5IWyOfExZ/FEaLv/zGoCOUM=;
        b=lryH2XFCvAS2TOzlWyLB7AZTJve2+67Rn8JLA+sLiWisa0ZI+1ZPypajhTuA07iKnU
         A3JdyMhdhyVzIPZVWrs3fryJyE4zaL271ricLrFRLeqUA+ph27vTNSFPy9UEKpm5UIq9
         tqfmXO0BF4KezYrI28AGaDVddu7DYV9lbG3gHrTZIYrB3EQOSKid6mtplql6/tx2WAtw
         rAaYKi2KKKs0kChIKaAw55jbSFVpl9/0FrmCVbUUj63ug6H7k8LNUtRR+AwDi51m1wpc
         mNsXzPT+1YF+3Px7vh9Athum4vGoviPB+CIJi1en04zZQcuN/r+6FMeMIRl1xMeVlXew
         Da3A==
X-Gm-Message-State: AJIora8sH0bquLxH7kpfYNptWUjryq2xe0ZxyL7A5/mpPPHlZYrl0Dwh
	9DXtJkq39VAusimQ+pvdCheizWNg0Q==
X-Google-Smtp-Source: AGRyM1uNlPnVZfWaLwPUg1k89hoeKLKv6crDi1rKvo6RUbixRgvPHl/seEdwb88bE19RLL9kw2ll/Q==
X-Received: by 2002:a05:6870:8094:b0:10d:bebb:d796 with SMTP id q20-20020a056870809400b0010dbebbd796mr7980955oab.262.1658791599569;
        Mon, 25 Jul 2022 16:26:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e15-20020a4ada0f000000b0035eb4e5a6b6sm5332490oou.12.2022.07.25.16.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:39 -0700 (PDT)
Received: (nullmailer pid 2953381 invoked by uid 1000);
	Mon, 25 Jul 2022 23:26:37 -0000
Date: Mon, 25 Jul 2022 17:26:37 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 15/22] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Message-ID: <20220725232637.GA2953329-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-16-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-16-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162640_339230_CD856EB2 
X-CRM114-Status: GOOD (  10.43  )
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

On Sun, 24 Jul 2022 02:13:28 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 pmugrf.
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

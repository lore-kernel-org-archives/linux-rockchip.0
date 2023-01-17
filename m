Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC04C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 20:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHwvDA34n0uJRa8VGRzjU7ZkhIq1aXv3YnmYBMR4hD4=; b=KxLtTAE3pBnHja
	FuPYz8JQ5xi9OhEsc+RAS+mAcXQVOW6pLZ5NtBshwe69VgKQrzunA8D90CWu4N7lUGfQ26KNtdKgX
	8MXoWhLrf7Vnta3SGQbQ+LpHopdBzJiVIve0VNXzvrQfjYp7tMy4mfwR6R30qnIJ0LdrbtecWaX+B
	0CYt7NXOZ07vcGpnPcz48ruXuSi6VJQ4BcCMpfwZlFmTQaVkfefMEJd73DgkSdtG94mrX4TnbvT6j
	oXUTqNVTfWYLxjapcaTCZM8tnHLPNaXvR7QTYKI2A8QPsR2pmUuj4hHYEqw4tVUqQSPtWL8vy4pbN
	qHR0oIlqk2BsL4SGuW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsdE-00Fm1T-31; Tue, 17 Jan 2023 20:32:32 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsdB-00Fm0I-LT; Tue, 17 Jan 2023 20:32:30 +0000
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1322d768ba7so33261884fac.5;
        Tue, 17 Jan 2023 12:32:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ei7hUDAiokoxx/9WPMuOqNWvYrLQ+vjtAvN9ZovDvY=;
        b=e6hKIJ0zuJg0IBTc6QD1OQtSOow+YGUYvaicbX2BqVXEpbz0IRgZmxXgpVfXIy28Yb
         5fJP/eOchrByBrhIND7YCLKM1rhN2Uyzt7nF4onnf0SJFHwQJ43IBI32B+Dcrs24IH4h
         Kl/0mE+z7ulnJ/M058tFmL9cWHEZQc0Xex9vSzBXH/Amt8V+YpfX012n/O4E4ySeZjPe
         onrBwVWp07LtLK4NJwfygGw1q/GXEtXmOinQw9lBU0GnjFuEOsAexjOWo2RfVmULFDw3
         WfrCmDjsHyrcbFI7fzOlriNstk+aGu5ac69I39CQYAiXNUiFy9Qse7Gw4SMIMdBfidP4
         M/jg==
X-Gm-Message-State: AFqh2ko9Gx/BATBVxoXPA5nytZq9hpnbgCEwbURN8NLF7vOYyMLs66eP
	cs6JZszh9GncHH3gwpzS4A==
X-Google-Smtp-Source: AMrXdXvTo3qkCDH649Wp1lAdcXiMx/IKEWaaUO7T/RPepnEYZ4HtN0iRr0pfu3agouXpCeeVmUPdUA==
X-Received: by 2002:a05:6871:5ca:b0:144:1a42:fcfc with SMTP id v10-20020a05687105ca00b001441a42fcfcmr14339557oan.28.1673987547230;
        Tue, 17 Jan 2023 12:32:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w16-20020a4ad030000000b004a382acad85sm15362313oor.15.2023.01.17.12.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 12:32:26 -0800 (PST)
Received: (nullmailer pid 3658202 invoked by uid 1000);
	Tue, 17 Jan 2023 20:32:26 -0000
Date: Tue, 17 Jan 2023 14:32:26 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
Message-ID: <20230117203226.GA3650011-robh@kernel.org>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com>
 <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
 <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_123229_721132_9EE0B194 
X-CRM114-Status: GOOD (  22.90  )
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

On Tue, Jan 17, 2023 at 06:25:44PM +0530, Jagan Teki wrote:
> On Tue, Jan 17, 2023 at 4:36 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 17/01/2023 11:55, Jagan Teki wrote:
> > > Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> > > description and compatible strings recommended by Radxa.
> > >
> > > Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> > > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 3d3c59624483..6f276d787e50 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -628,11 +628,11 @@ properties:
> > >            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
> > >            - const: rockchip,rk3566
> > >
> > > -      - description: Radxa CM3 Industrial
> > > +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
> > >          items:
> > >            - enum:
> > > -              - radxa,e25
> > > -          - const: radxa,cm3i
> > > +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> > > +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
> >
> > No, it does not match your patch 2/7. It also does not make sense to
> > duplicate vendor prefix.
> 
> 2/7 follows the existing bindings and that one is incorrect as the
> actual product name is radxa-cm3i not cm3i. This patch is trying to
> fix that.

Compatibles are unique (hopefully) identifiers, not 'product names'. 
Granted, 'e25' is a bit terse, but does Radxa have multiple things which 
are called 'e25'? If not, then you don't need this change. If the name 
is problematic in some other way, then state that reason for the patch.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

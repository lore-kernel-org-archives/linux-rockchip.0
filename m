Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23ABBC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 23:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUFukTI6VCFPgVwJh0EmvaAooZRlgVNiED1gTLCvdBk=; b=mdUyVuDmpIFQ5L
	1Mu+DP4hFi4tWVD52K9wsFmlxbz4TB16U95oFFWGbyb8N5nZmGEHOyrH994EehjFAKBDV4VTr0P+H
	KNzKpsQjczLvEJuoXBFgIDC6+1ZA6fL8zwmfoPX2jYSewmC35zi6jTAJiinlEHwi79vMfp5LC0C9I
	gctB0MZKnL93aJqIsmtVBAuu/72Gsdwff2UedQLxiS9nThjrHXtUL0sFc/G2CWZ3CKZrIWjnOoJNk
	NmeKUc79kReKmeZVJDgiNhKkNFlsZL7I8Y4IToCTaIv5zdifseakg/Rz2S37ip2qvz6Rft/wkL836
	MKbwu0MyHqrl0USKXwLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB2WH-005VY5-Dy; Mon, 11 Jul 2022 23:08:49 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB2WF-005VWn-CR; Mon, 11 Jul 2022 23:08:48 +0000
Received: by mail-io1-f49.google.com with SMTP id y2so6330507ior.12;
        Mon, 11 Jul 2022 16:08:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VseoR+eOx4Z3QoDDCGx90Kg7pcCHtGEXvwLjBriYeCU=;
        b=zwuuDlHdeG7YtMjANZCHyfMJSt7sh/TbrACF/RBSf3bsUnhIHq8j9wQg/RLHQSU3iY
         aSM1Njy+QbDO02rdGTiVy787yny9uODjq/SiM2ES5lcpiEqU9slYNDQFKTklz2qehkB8
         6hDCXB1cH1wFJAk6mNiDkU7cwcEE0DcjqeApy1SSqvGe8II36DqMdEBI7Fv9/vbf7A4S
         Fxwp+QDXSbQqfjGn5+qrx+WG6Ns+fdQlZS7i9UEi9M5iR2HB5PW0r26ZJK1F2HgtoSqV
         GoC1ADu8BGTzBLRCg29d76PFEsuO7acbSdSKY8NxiiwEJud8MCTPqNDcU3eY2CKSO4ks
         dWCg==
X-Gm-Message-State: AJIora91sucnP8VH+IMpcBVaqVPNcGs0JKOlqDYcZYj+LGuNxBELbFIc
	nZi/wjS2N0Frk/8fSdIGWO4Qbcwk/A==
X-Google-Smtp-Source: AGRyM1uS4ISjJtPUznxV08Hdiqtmg0DIKreCE1miOboWMCmLhSydoQLNwHgWWtVWe68jDGaWIC03Og==
X-Received: by 2002:a02:aa1a:0:b0:331:9183:9136 with SMTP id r26-20020a02aa1a000000b0033191839136mr11465189jam.242.1657580926633;
        Mon, 11 Jul 2022 16:08:46 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f1-20020a926a01000000b002dc0d743570sm3114643ilc.43.2022.07.11.16.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 16:08:46 -0700 (PDT)
Received: (nullmailer pid 442016 invoked by uid 1000);
	Mon, 11 Jul 2022 23:08:45 -0000
Date: Mon, 11 Jul 2022 17:08:45 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, heiko@sntech.de, robh+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add OPEN AI LAB
Message-ID: <20220711230845.GA441965-robh@kernel.org>
References: <20220709102902.2753851-1-andyshrk@163.com>
 <20220709102942.2753939-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220709102942.2753939-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_160847_454749_9E4A6954 
X-CRM114-Status: UNSURE (   9.81  )
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

On Sat, 09 Jul 2022 18:29:42 +0800, Andy Yan wrote:
> Add vendor prefixes for OPEN AI LAB.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> 
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

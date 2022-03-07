Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B98EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 23:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K17At3LFfi/uChoza/8QGwXJ4HXhCR+mI8oSNwjZPTI=; b=yY/DTT+w2Ik0JV
	iDRRcrfQ5gq2MPbiXs7VZ9qXAaOGfNGrtQ5lCumyyFD1pG9dmnBLRDgTzVPs5WMDUyx+dRcWIGwaV
	kTq37Q3FTqd2fwHNPXT69TqUFEArPYZSZ5zGzsmXy88qm7AF62K/P20fZFmm9Z4BomHJYjKB4Qf2R
	Rf4FGClaKa98woiFym8NZ/rAwmeCraSXs13CQIfxycALPWJ5dJplegB556bFX9M36Ag1pXIPZBur3
	d/P3r3K4Z1ycPp4kiKvoNZ8ZRry6P6t83iYzlmqCkQURiS2nVdd0Ad9G1OJut6E4+mnv+LToXDPja
	elaRvYo2RUWrmuNETeSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRMVq-001vHF-OJ; Mon, 07 Mar 2022 23:11:34 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRMVK-001v2D-D7; Mon, 07 Mar 2022 23:11:03 +0000
Received: by mail-oi1-f179.google.com with SMTP id o64so3542207oib.7;
 Mon, 07 Mar 2022 15:11:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YRfqFELcWVyg2C0Z8c/QbnMQFJjccSNmjBm3TiU5pg4=;
 b=NR4P/x6Ha/maWBRcMAwJzKVQ/LDDWbsvbDrLTVz2BJCJqxpfeygr1EGDEhK/jV3KQI
 cCr+1OIl79Pm53TiBPi1D839zCODl89FDD7bXbsZ0FbdpdJutAJ9Qdp4/QR0Wt6SZt+F
 Gz5VegquPJpRW0S9K+IPIayaYb2BAjBeCsYFukzT0RaIVUg4zBM2mi3G/WKqPDXf+FcI
 aEwk5YwbAHpGTbOa7JPfud2NrMEjfGgs6XXT2FDQumAPujtGli5JiB8rl5xmrkizZ6/G
 5nR4tqHMJV7s87o9yH9t35CJBwsoHKjtxJB30rljmx//okxFvyR1+0sT4LC4SUno+CzO
 QKQA==
X-Gm-Message-State: AOAM531JTw78r9qvffLhJ1ptzJq3ZWsuNeZuKRnCF0IGDsa37k1we1Fp
 GPMXOwXMfiS06QyWg+YnBA==
X-Google-Smtp-Source: ABdhPJwmGbwU3z+c/gW7xfUYvON7donC6Vbtf+UOEihI0WuO7i7Qo6ieW2MkRh8sJ1tlVi9ZkNK9gA==
X-Received: by 2002:a05:6808:150c:b0:2d9:f976:3851 with SMTP id
 u12-20020a056808150c00b002d9f9763851mr881007oiw.85.1646694661748; 
 Mon, 07 Mar 2022 15:11:01 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 c12-20020a9d75cc000000b005b24b061940sm307166otl.33.2022.03.07.15.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 15:11:00 -0800 (PST)
Received: (nullmailer pid 3435797 invoked by uid 1000);
 Mon, 07 Mar 2022 23:10:59 -0000
Date: Mon, 7 Mar 2022 17:10:59 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 michael.riesch@wolfvision.net,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, jbx6244@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 3/8] dt-bindings: usb: add rk3568 compatible to
 rockchip, dwc3
Message-ID: <YiaRA/TrWENhntlz@robh.at.kernel.org>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-4-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228135700.1089526-4-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_151102_482793_A286530D 
X-CRM114-Status: GOOD (  11.44  )
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

On Mon, 28 Feb 2022 08:56:54 -0500, Peter Geis wrote:
> From: Michael Riesch <michael.riesch@wolfvision.net>
> 
> Add the compatible for the Rockchip RK3568 variant.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

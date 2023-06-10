Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD5AC77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 18:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qKKjPbzaV17Fu6NzvyySS7qxpKjoIp8a+rk2RaXLgE=; b=Verg0ZmWFaIhWN
	fxHsO9VC+BNGSMIsh8+4VXs1WB+IZaWLwllY1YQQjcI5nVoxjz5RbDSKYxykq33Ru3oN2a3yGRSmX
	eU2Lrex5jdmHikhA+e44fOYih7cmV0eRxHjOuAIQHmAuSbO+Q0l0ZohOHuuhvUJLZ3dtukS2Kdd7C
	4yHs5WAsWyOrtT1Hvb6mgIgt+29ezd40rLNth7aczJrXjpN46dnS3T57LIk1ncwSOGbJeAq4aDKFs
	zPZBKSO+KCM5/RQegytMnSi1wm3y4h2CTU4MWAvXniX8QsOqzND72jy90C1dVC5uiaanMGRnlSOhy
	A5RdaM1N+/QVbp158oYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q82zw-00GkQv-1r;
	Sat, 10 Jun 2023 18:07:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q82zt-00GkQE-1E;
	Sat, 10 Jun 2023 18:07:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B379460C2B;
	Sat, 10 Jun 2023 18:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33DDBC433EF;
	Sat, 10 Jun 2023 18:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686420452;
	bh=/Oi+qoNXc1G119BAPXC4pSYlv8GVhGqklA7F5cmrK84=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RYKw+cYbvgdgSGUCy0yaRSQfE2N/QUI0qYuics/RCj7xtEQWHkwIgZuL7uqtrllzQ
	 hNz3SJEyOHUEsE2G1MS1r/IGurTNO7mg0jKPxpYcnrVtZ7sgSNn4kUeuDcRfXB4pTa
	 YI3770ezMGkFAAOv3BeF9V0O0FL2ShwhWeUuBkMSzkbPKt7vIf14Ffovz271edTWbp
	 c+bpvqh9MfIAA/+Yuo8zbRDUalmYM/wdA7GoydFJ2l/jAN3HjTZAwPmTYmIa48flqr
	 X3E5p4ZhJjtPZNKRpohgMYo/di5Lb2RYxNdrg5I1d+hOdGD3+wtGcfYA3+mWK3isDA
	 K+8eNiUsUUKlw==
Date: Sat, 10 Jun 2023 19:24:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Shreeya Patel
 <shreeya.patel@collabora.com>, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Message-ID: <20230610192405.1a56fb1b@jic23-huawei>
In-Reply-To: <153ea7d7-25d5-8782-a622-ae512134161c@linaro.org>
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
	<c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
	<20230610171142.dsezim4gcxr2b65u@mercury.elektranox.org>
	<153ea7d7-25d5-8782-a622-ae512134161c@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_110733_466956_64CA711A 
X-CRM114-Status: GOOD (  20.69  )
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

On Sat, 10 Jun 2023 19:34:23 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 10/06/2023 19:11, Sebastian Reichel wrote:
> > Hi,
> > 
> > On Sat, Jun 10, 2023 at 06:30:57PM +0200, Krzysztof Kozlowski wrote:  
> >> On 10/06/2023 16:36, Shreeya Patel wrote:  
> >>> rk3588-saradc isn't compatible with the rk3399-saradc variant,
> >>> hence, fix the following dtbs_check warning for 'oneOf' condition
> >>> failure.  
> >>
> >> Are you sure it isn't compatible? According to your driver it is and
> >> this change is not enough.  
> > 
> > The driver changes are still in the iio testing branch and not yet
> > in linux-next. RK3588 ADC is not compatible with previous
> > generations. It's trivial to see in Shreeya's driver patch:
> > 
> > https://lore.kernel.org/all/20230603185340.13838-3-shreeya.patel@collabora.com/  
> 
> I was checking the next. It's fine then.
And I forgot I only pushed out for next to pick it up earlier today.
oops :)

Thanks and applied to the togreg branch of iio.git.

Thanks,

Jonathan

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DAEDC83F07
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 11:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0FqGEXSOhPlq8C9cFklTIDZ7/gNDvxi8vm/GrUXHac=; b=4vyxiAR5ZrCuru
	TOhBsnen2444WSGsHgkdb4J8EfccrF+cUHoYWAaD9DkfE87QBNicytdt0MLC6evmBdHTMVeDYl+5/
	IyzaiOeMoGNrRAumaG8UPygnI8qLl4pVC1V4EWUATZG6UAnoKLfySVQcmBxVbaK2aqNCYztKg/AJ7
	MaE/nQjP8O6jsuqjwbQSTostRn2LbytrVw0aGyNW5g691+7TFmVpnNWewaHTu75SQOiemX4PhtRDB
	QR/jlaXWqAysXcrHMkuhV8Ny+G5vGb50cgj2EiZu8Weh9RvIBeOf7toeq8x3IiONOKksiJ6fwX8Vh
	s9opWcExeF2zz+rjn2lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdTp-00000001m7s-39V0;
	Thu, 29 Aug 2024 11:38:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdSx-00000001lu0-1h2T;
	Thu, 29 Aug 2024 11:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BA+KEd83KEBsKWki7uMOjFGHXh+6uKMNY5jabo1SQdU=; b=2fp85cciJaJSiIsORnXaNPCdHT
	REhNujUTvFhDOEQIg7kZsUqbccRMTA4WLTj9v2XBHvpeHyA6Qg0WEh7PFJ3NjfBSQ9IBowSBfT9nJ
	Znv4jsuOOUr80d6yze+2wUL2ghisKq4/eTnFYLXnpl6FjwQtehgINTNmlNY61zTEv6Jd6o12GuvRV
	APV9EirnUY/gPANRCwcKQYV1X46VkHbOj4HMtMsLDxje9cua5JhL+/p7aImLGiLQp5BdGCYy3HUYA
	Yom7bk+gR3ecQkc1kL22gE5fMA7OgXTnDHj+UDgFy1bG2M4iznhWVnhZdKqokfQ4MsRaLrADni81L
	w2IhBVtw==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjdSq-0003Vg-D2; Thu, 29 Aug 2024 13:37:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Thu, 29 Aug 2024 13:38:33 +0200
Message-ID: <10520454.qUNvkh4Gvn@diego>
In-Reply-To: <010201919996f687-08c1988a-f588-46fa-ad82-023068c316ba-000000@eu-west-1.amazonses.com>
References: <20240828152446.42896-1-detlev.casanova@collabora.com>
 <010201919996f687-08c1988a-f588-46fa-ad82-023068c316ba-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_043727_579250_A41CBAED 
X-CRM114-Status: GOOD (  11.22  )
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

Am Mittwoch, 28. August 2024, 17:24:53 CEST schrieb Detlev Casanova:
> Add the compatible string for rockchip,rk3576-dw-mshc in its own new
> block, for devices that have internal phase settings instead of external
> clocks.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

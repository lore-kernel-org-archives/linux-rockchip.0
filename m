Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 498E0C5B572
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/z/kXBNJznU+Fz1JVaC2+w7FBmjDFJdJJ2ehxKvqc0=; b=T+aK2R2ExKi8Sz
	w39PU5UP1lwjn9AKw+oRHs+o6i85AMdTbSxwb21Z1cS+FVvvqCWqgS1k6qE81+YWaru034xEQlWhJ
	H2wWzvE1a42shxwOtLFZSfXK0ngzYWiAQLsfQNXzORo2rbDDq+GFVbrx2KA3oZxrwdf/5Oi2h4S70
	RCfwX0xNKK/pBjPavOvFsg+Ike8ebEDtr8oUGLnEhCj7QWJJUhmi2mOTrgfaYQM+ZfqRuLqgXoEr1
	TEOwXzj4d3uKtqBCaBFVp2WqKG6xP/yDwcoLHfsW1E9SiUippym1IEzqhhsB8N2VXloPevWDbBlqA
	SeLcUdiK7hFN+s+sCJzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup4i-00000002VWp-3kn3;
	Fri, 14 Aug 2026 10:23:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup4f-00000002VWG-421J;
	Fri, 14 Aug 2026 10:23:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A6C060120;
	Fri, 14 Aug 2026 10:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA2BF1F00A3A;
	Fri, 14 Aug 2026 10:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786703020;
	bh=Vv9ElWHr/YmaE7l5LFfutWEHAKuNlZRFB/RqWtFexJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fQS9sxXypKq0JbDvJieP+FbkJqcDMbLuY8RsXx1mNzQGqNdxU6HOCNzWJMbgQSi0W
	 jH+RwDIhcRpL/W09Jf8JNNSiEJ8YwwG6KsRK0E0T4PdRYb5GyEWvPjjX4wPAKT0Jol
	 4BTIjLoWV0HZMm19RoS7Thm9aN5N7Dr/8BvWwdPgaP7xcnm2WJOHmWAyuYHKgou5N5
	 j5svN3n5M3nzvT7OeIpPyZ0Tpk5DdrVbUNvYhsevyPRm3Oa+2oH0ecvn0KcIAiPL9o
	 V5JmVUbydgfMzRubR++NPyRHih5KMTaiEsiplyp0faSvsO9i+GGaPcJFSjSRm6hG3m
	 Om/r+7onHCMaw==
Date: Fri, 14 Aug 2026 12:23:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org
Subject: Re: [PATCH 18/25] spi: rockchip: Add support for RV1106
Message-ID: <20260814-jovial-black-swift-bf0dce@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-19-vlad@zlab.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810121121.210040-19-vlad@zlab.su>
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

On Mon, Aug 10, 2026 at 03:11:09PM +0300, Vladislav Leonov wrote:
> Add the "rockchip,rv1106-spi" compatible to the match table. No driver
> changes are needed beyond that, since the controller behaves like the
> other Rockchip variants already handled by the driver.
> 
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---
> 
>  drivers/spi/spi-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 231fbcf0e7aa..447e6ff47c53 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -1021,6 +1021,7 @@ static const struct of_device_id rockchip_spi_dt_match[] = {
>  	{ .compatible = "rockchip,rk3328-spi", },
>  	{ .compatible = "rockchip,rk3368-spi", },
>  	{ .compatible = "rockchip,rk3399-spi", },
> +	{ .compatible = "rockchip,rv1106-spi", },

Why do you need this? It's fully compatible, no?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

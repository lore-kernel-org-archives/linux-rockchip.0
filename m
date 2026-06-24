Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A32F8CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 19:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSBMd4oFjjzLuJS1YD5Xe2xhS8Q7ZpGMg8FZJ0t2YkA=; b=fqx/iWPeBp1Cbi
	h1tL0fzOB6e1vxZiduJ9ePzdBkuyuJ9hkJY5hyRB9v9g0+ptduRY8RB9wOgEaIqfe853nYt9Xd/c1
	nn1FeAFby5ow7JnMCSPWeuU6i6xEr7g0wrgY3xQtJ2ETav3T7oPoGnp8IXmOPqkkbHFI71WZYfwIX
	h4Fl4Qqb4kr57ImEP87NuaUeLjp6G1WVhwn4tQqHs2loQBrjHj38s0jMKAPhoMpNpf9xXKJKThAob
	q5rxUjq8k6yCWgEbnNguQVoe4AVguIuUqu1buEJRpT4k5JLWsbdUOq4jVqSMm7n8IDhDyo7zU2qCB
	Hu2PdcAyYcFkUgTXGb/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcT30-00000008Fbf-1zUg;
	Wed, 24 Jun 2026 19:14:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcT2y-00000008Fan-1E31;
	Wed, 24 Jun 2026 19:14:05 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 18912227;
	Wed, 24 Jun 2026 21:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782328400;
	bh=TJrYqkEmzBcIuRk4NkFKPbj+WerEbvtlgsXw/+2tDE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gFRWl17fewRBNx5IZw0ANyYPSgxXydfLNPrihsfkT0KjDgb+4aS3XufW5zBN+i2K7
	 Me3fSJ/Gp6uZkeqpuAXOP398GX7JFVCUvZDDSxI4OZWAazFuStseVJ+/u0GzXSbB3d
	 3dx270PDIVjhNVWXDtpBs9Mv5OX6V+dx3r/hN7Vw=
Date: Wed, 24 Jun 2026 22:13:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Frank.Li@oss.nxp.com
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	driver-core@lists.linux.dev, linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	imx@lists.linux.dev, Guoniu Zhou <guoniu.zhou@nxp.com>,
	Frank Li <Frank.Li@nxp.com>, Guoniu Zhou <guoniu.zhou@oss.nxp.com>
Subject: Re: [PATCH v2 1/4] device property: Introduce
 fwnode_graph_for_each_endpoint_scoped()
Message-ID: <20260624191358.GC851255@killaraus.ideasonboard.com>
References: <20260624-fw_scoped-v2-0-0a8db472af4a@nxp.com>
 <20260624-fw_scoped-v2-1-0a8db472af4a@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260624-fw_scoped-v2-1-0a8db472af4a@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_121404_482537_B34E263D 
X-CRM114-Status: GOOD (  22.27  )
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

Hi Frank,

Thank you for the patch.

On Wed, Jun 24, 2026 at 01:00:09PM -0400, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
> 
> Similar to recently propose for_each_child_of_node_scoped() this new
> version of the loop macro instantiates a new local struct fwnode_handle *
> that uses the __free(fwnode_handle) auto cleanup handling so that if a
> reference to a node is held on early exit from the loop the reference will
> be released. If the loop runs to completion, the child pointer will be NULL
> and no action will be taken.
> 
> The reason this is useful is that it removes the need for
> fwnode_handle_put() on early loop exits. If there is a need to retain the
> reference, then return_ptr(child) or no_free_ptr(child) may be used to
> safely disable the auto cleanup.
> 
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Guoniu Zhou <guoniu.zhou@oss.nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Nice idea.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
> change in v2
> - collect Andy and Guoniu's reviewed-by tags
> - fix indention
> - remove extra space in commit message
> ---
>  include/linux/property.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/linux/property.h b/include/linux/property.h
> index 14c304db46648..d51824c13d2cc 100644
> --- a/include/linux/property.h
> +++ b/include/linux/property.h
> @@ -545,6 +545,11 @@ unsigned int fwnode_graph_get_endpoint_count(const struct fwnode_handle *fwnode,
>  	for (child = fwnode_graph_get_next_endpoint(fwnode, NULL); child;	\
>  	     child = fwnode_graph_get_next_endpoint(fwnode, child))
>  
> +#define fwnode_graph_for_each_endpoint_scoped(fwnode, child)			\
> +	for (struct fwnode_handle *child __free(fwnode_handle) =		\
> +		fwnode_graph_get_next_endpoint(fwnode, NULL);		\
> +	     child; child = fwnode_graph_get_next_endpoint(fwnode, child))
> +
>  int fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
>  				struct fwnode_endpoint *endpoint);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

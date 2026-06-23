Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FB4FCDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 10:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMuOpCK8U3i5ZQ/QhghNxc1DoK1Xw6MYAJzUbzyISgg=; b=l85GHGllEdY5WA
	X/ciPyG7iu05TqGRFac96hPehpkh2DbO0kbZJYVJHv3AXPpSgIaUADh1cgYd737r6Wa90qmat+Jfn
	D6MEEemqElXZYbrh9Lhn1CrSjWQCwS7MubBk8lHT590Q8ltm01P3jptcioLvtw1W8EkcmxfFvguCS
	S8B0R6pf8u9yAWu2G8zlzhH9Rb88m/j9f7kaXl6qRuxH8HLpnR1/ouhuV4pA404mpJBEp8ulk9BEu
	YDe0Jo9oNpBhG4nnKoHIAZbU8Nj3ktJJU86nz/aCvkZoa5lvY0CF7gFN4lMRCdesNZzhvx0nOJ9eZ
	xyNUgN2uFwZtlTD3qidg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyCY-000000064w6-4ALL;
	Tue, 23 Jun 2026 10:17:54 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbyCX-000000064vR-0Ceu;
	Tue, 23 Jun 2026 10:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782209873; x=1813745873;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yKxWuSxIg6MtigXJlkd4YV7IcsGj0BsCefuviCtPryY=;
  b=oB/zFcsiVkhcS/JdhdscQBgbm81wfKHdSFp2BjrgSx4566gyhvGh2p1d
   S/lON7UD5uoaXtSCukfS6n7tVwuLyDMFz19CNUCOBl9vwxj2IRuwyVro3
   iw4rP5vVtvEMIyDdDBj5Yl41B9BHtoynGiw9hrK9ZhUV7YWfcr27DFoyl
   Jsoi7s7UByBswMtPGDwcZ9Cl4aGoz0OtxDDEaff1yMRm/liXYrRYV6wow
   xcQt7cuaVypP09KnKBIazy9kUftgl002lVQ6CGYQ5PL5NoKRu3i4wBwTH
   wTwCjayjp6NmtopTGSzf0ZrbylZCaX5XWm3Vu6frnf1/8nnsLVkNhGCK7
   g==;
X-CSE-ConnectionGUID: nrKWecBESrCj4q0hy7i0EQ==
X-CSE-MsgGUID: tFNu8JNQTv6WlehCZ0QUDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="105741660"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="105741660"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 03:17:49 -0700
X-CSE-ConnectionGUID: G7sg3GILRvyFR4uiszCSKg==
X-CSE-MsgGUID: QsrhBqDFTai4ya99CyYq3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="249341451"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 03:17:44 -0700
Date: Tue, 23 Jun 2026 13:17:41 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Frank.Li@oss.nxp.com
Cc: Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	driver-core@lists.linux.dev, linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	imx@lists.linux.dev, Guoniu Zhou <guoniu.zhou@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 0/4] media: add and use
 fwnode_graph_for_each_endpoint_scoped()
Message-ID: <ajpdRUZhmn1fDXDx@ashevche-desk.local>
References: <20260622-fw_scoped-v1-0-a37d0aac0a68@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260622-fw_scoped-v1-0-a37d0aac0a68@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_031753_130356_17DDE551 
X-CRM114-Status: UNSURE (   8.54  )
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

On Mon, Jun 22, 2026 at 10:30:10AM -0400, Frank.Li@oss.nxp.com wrote:
> Add new helper macro fwnode_graph_for_each_endpoint_scoped() and use it
> simplify media code.
> 
> Typical example should qualcomm's driver (camss.c), the v4l2_mc.c and
> rkisp1-dev.c only silience improvement.
> 
> Anyways, *_for_each_*_scoped() already use widely and make code clean.

LGTM,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
for patches 2, 3, and 4.
Patch 1 has individual comments.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

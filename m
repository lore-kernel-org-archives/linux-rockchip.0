Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43DEC79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 13:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wk5XTkmnn5eavVT7MyeTtHzMRycCzuOHI2tMagS9Obs=; b=gE7dpGCEufXknM
	MwflKsKaRxiiDXF5OtSPv8Ui/GbnFm+xEnz+Xh8w+S8JKVAbWaQUjSabOU3PB35ID7fDFTTppFKYa
	rtf8LxhZK2o+qD4FJp17BdXQHni86tSVP0oZ2ooQFfE+haunuah51XnDm0Dm1k/PpdtlT+XWQsk0s
	DLnDw/q0y61kb2YGRxFeabHfIqy/PythhHQyLftm3EO35m/Hm1bU80Eqj06ZpJKWN1w8QYYDSh45U
	GP4TwGKNKDU1eaxZK5bNc5p+dV3DgilS46GakgNuZpZY6i8DzsLrVZWIhtafEDfhpKiirOZzeZD2b
	2p4YrGU7tNwoPaNTf0JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vaI-00000009799-0A6q;
	Tue, 08 Sep 2026 13:09:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vaG-0000000978Z-0B5q;
	Tue, 08 Sep 2026 13:09:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C80374051F;
	Tue,  8 Sep 2026 13:09:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 216B61F00A3A;
	Tue,  8 Sep 2026 13:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788872995;
	bh=eUDMcPSoF0QyiP6nRBMpLO4WB79ZsvZTYEGyBpkZOvA=;
	h=Date:Cc:To:From:Subject:References:In-Reply-To;
	b=NtIiol68EIaaNlvtORap8SHuv6KdlniFk5y6+IKt988ZFugmJV5yGj1AvVhbhgRn2
	 faluOrWzmZNcJV4+GssQCxjU+deRGN4yScn0dmN17R9O3gMYbbP5KHtVIbMpGtXa0A
	 jTF9f2YNBXhEVOxLWq1KwpYA69WLq7/qWTiMNFznff8prOXRLND2iFJcSPe9PAnNdZ
	 rp8Ok6W0dfYrS/p2okeMqmO1iyubPYF235y590mLmq5U4jzuNZKW2hK43wViSifA82
	 Ssn3oEkcPzqgJxWJG7wTbxu7bLq5jzLlSdgrGpV05BYTrBO1DFKZz6MhbJrB1wiWAT
	 kNpzrY6vW3xuA==
Mime-Version: 1.0
Date: Tue, 08 Sep 2026 15:09:49 +0200
Message-Id: <DL9YJUGAROR8.29QE1H5OO6KKB@kernel.org>
Cc: <Frank.Li@oss.nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Andy
 Shevchenko" <andriy.shevchenko@linux.intel.com>, "Daniel Scally"
 <djrscally@gmail.com>, "Heikki Krogerus" <heikki.krogerus@linux.intel.com>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Dafna Hirschfeld" <dafna@fastmail.com>, "Laurent
 Pinchart" <laurent.pinchart@ideasonboard.com>, "Heiko Stuebner"
 <heiko@sntech.de>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
 "Vladimir Zapolskiy" <vladimir.zapolskiy@linaro.org>, "Loic Poulain"
 <loic.poulain@oss.qualcomm.com>, <driver-core@lists.linux.dev>,
 <linux-acpi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <imx@lists.linux.dev>, "Guoniu Zhou" <guoniu.zhou@nxp.com>, "Frank Li"
 <Frank.Li@nxp.com>, "Guoniu Zhou" <guoniu.zhou@oss.nxp.com>, "Laurent
 Pinchart" <laurent.pinchart+renesas@ideasonboard.com>
To: "Sakari Ailus" <sakari.ailus@linux.intel.com>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH v3 1/4] device property: Introduce
 fwnode_graph_for_each_endpoint_scoped()
References: <20260625-fw_scoped-v3-0-ffd0868e498d@nxp.com>
 <20260625-fw_scoped-v3-1-ffd0868e498d@nxp.com>
 <amhL1BkIG0uTPceL@kekkonen.localdomain>
In-Reply-To: <amhL1BkIG0uTPceL@kekkonen.localdomain>
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

On Tue Jul 28, 2026 at 8:27 AM CEST, Sakari Ailus wrote:
> Hi Rafael, Danilo,
>
> Can we merge this via the media tree (assuming you're fine with the
> change)?

Acked-by: Danilo Krummrich <dakr@kernel.org>

> On Thu, Jun 25, 2026 at 10:17:21AM -0400, Frank.Li@oss.nxp.com wrote:
>> From: Frank Li <Frank.Li@nxp.com>
>> 
>> Similar to recently propose for_each_child_of_node_scoped() this new
>> version of the loop macro instantiates a new local struct fwnode_handle *
>> that uses the __free(fwnode_handle) auto cleanup handling so that if a
>> reference to a node is held on early exit from the loop the reference will
>> be released. If the loop runs to completion, the child pointer will be NULL
>> and no action will be taken.
>> 
>> The reason this is useful is that it removes the need for
>> fwnode_handle_put() on early loop exits. If there is a need to retain the
>> reference, then return_ptr(child) or no_free_ptr(child) may be used to
>> safely disable the auto cleanup.
>> 
>> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>> Reviewed-by: Guoniu Zhou <guoniu.zhou@oss.nxp.com>
>> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08921C25B08
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 02:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NWEvR0+ZUeDk7j0nyplJZjbB1YT2NAiFKuQ7W2S2jeQ=; b=A8uM1q9oqF+QZ398lxn0jo72wm
	0LKoqVH+os5MBgipzPcZhgnoL9GzAWmcBuOFeyiNsN5lmg4dIL2I+4zqPzwWdX8I42XzmdxE7u53K
	MK7Y74HcGtL1QJBHoqBRXQFQTn7ge3AHNG6CWXb/YLqjXomshPGh3lUnZxoEqVtlH5sHJvHeuoZKP
	iHnDmUyF1EYWUV6C0IWGHjib+Tt66f2D0HSsgsGh+JQeP8vIdPY4v5Bq2G0bjr0bBKjjARe/lKDw4
	dVn41X68OfIq/G9Oc8KBHMgBeDCPo7EMMnELiUMxzsd5NvTiNXhUX7wLPvgdtnqzHcXfZm9ap8yLG
	ul+LHlxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVPh-00BgYj-J3; Thu, 18 Aug 2022 02:37:41 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVPf-00BgSb-6P
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 02:37:40 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 7E3665C00F5;
	Wed, 17 Aug 2022 22:37:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 17 Aug 2022 22:37:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1660790258; x=1660876658; bh=t5Rzaz15jp
	glikWBzI02LvyTuUI73bPLr6vZnISKQc0=; b=hDYY0m9AciIworQQSenNWSRrme
	RO55Uo8J9K/AzNf8Pbo+0aXvdFXGgO1fpq57sTqRfLASI8BGFXk1/ZTeTOqnE+xS
	uQV2X2WUtDFg3HeIW48eXa/aIQCEedjc45w/FPzBQb67Qm/D/UnAa55MKFgiXuEi
	qSm1+D83bcPW1INumuZ8wXMr6KXlEw1o1FU4Cg48eARM08ddO6G1Ak/NK3RanHQA
	XSRpX/05qL3hUilK/rdqCUNx6sx2p8YxU1JBFq8bWXM82+bW9TexxgZd3wt0CJtR
	xPKcBC4e9slUaHKapL7Uf6oKVij5oOFidOC2GZrwj8SgwjCuglGxfuOtF1Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660790258; x=1660876658; bh=t5Rzaz15jpglikWBzI02LvyTuUI7
	3bPLr6vZnISKQc0=; b=a59CbuiyA4oQwQZ8NEU7l3rwVB9f05yJc2jL8j63EKP0
	iwjV/DF7FnkFSs39QXCCScD8tCxK+qeZENAE+dxqYWJDwEZVdjtDC2kU6Qgm4QhN
	n+QvkomT7oj8FmnOmVD6Q92g3f3JP/k0MSnkAQxKJGcQ1bBieZqahIMn/pmyzpPp
	wgP86nBw6KA9Jum2Kf62OPQqukiM6W/bt/r6iXF4BD+qDtCpZd/tvxWDoUEA3/mm
	0vnL5K44hJ4XKSj0RQ+OKdMv2VmkV7sA2ZM+YGM5VaVLzPsyKKa7PVAFd3jUschZ
	3MNVsWhgemyYVrcXGVMl3fioZIdy+gboFVFHSNnLlg==
X-ME-Sender: <xms:8qX9YgHtxYD0RePznBgT2dtQaQ-OYzjFxgwTnXCcD1j0ExH8DENvBw>
    <xme:8qX9YpXrFkq_KcgKbiIlcp07LRrKAUP6N3GvB2Eurgk_woT_h4vg3hygZF-8_m9pM
    knWnflOIRYDgGSIuHE>
X-ME-Received: <xmr:8qX9YqKEJn55-3PgghDswJmmsza8-Ijz9VPgo7WDjDff0uR_5oJI7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehjedgiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:8qX9YiFxy1c-1QhclyPVhzPQUNaWgZSmeSxmEIj0tcGkrM7Ifpij2w>
    <xmx:8qX9YmWV8k12t2k9XAplEm77Dqy_hzZKxf58M8R4Z5H6vjB3pTm2nA>
    <xmx:8qX9YlP2hPJKEf_2jWNuiNGYMYk9W0kir7I_FzusxWHlg1YybuK2Uw>
    <xmx:8qX9YkxylbypGsjvg2Hg7f1YWSmSllVBWvC3kw2ihUGuiZZ85KCySA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Aug 2022 22:37:36 -0400 (EDT)
Date: Thu, 18 Aug 2022 05:37:33 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 2/5] media: rkisp1: Store LSC register values in u32
 variables
Message-ID: <20220818023733.yckej5xyfsbc4btb@guri>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220817021850.20460-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817021850.20460-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_193739_346854_B7C37A38 
X-CRM114-Status: UNSURE (   8.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 17.08.2022 05:18, Laurent Pinchart wrote:
>Use the u32 type instead of unsigned int to store register values in the
>LSC configuration code, to make the variables' size more explicit. No
>functional change intended.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 ++++++----
> 1 file changed, 6 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index fbbaf5505291..dbe826fd02d2 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -199,7 +199,8 @@ rkisp1_lsc_matrix_config_v10(struct rkisp1_params *params,
> 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
> {
> 	struct rkisp1_device *rkisp1 = params->rkisp1;
>-	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
>+	u32 lsc_status, sram_addr, lsc_table_sel;
>+	unsigned int i, j;
>
> 	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
>
>@@ -258,7 +259,8 @@ rkisp1_lsc_matrix_config_v12(struct rkisp1_params *params,
> 			     const struct rkisp1_cif_isp_lsc_config *pconfig)
> {
> 	struct rkisp1_device *rkisp1 = params->rkisp1;
>-	unsigned int lsc_status, sram_addr, lsc_table_sel, i, j;
>+	u32 lsc_status, sram_addr, lsc_table_sel;
>+	unsigned int i, j;
>
> 	lsc_status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_STATUS);
>
>@@ -316,8 +318,8 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
> 			      const struct rkisp1_cif_isp_lsc_config *arg)
> {
> 	struct rkisp1_device *rkisp1 = params->rkisp1;
>-	unsigned int i, data;
>-	u32 lsc_ctrl;
>+	u32 lsc_ctrl, data;
>+	unsigned int i;
>
> 	/* To config must be off , store the current status firstly */
> 	lsc_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

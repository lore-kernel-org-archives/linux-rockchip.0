Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FBA3C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 14:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wMa4MXwBpiaRfxvO/xlMI+wU4O3tSR2xuKAkX/xwtBs=; b=UWShJUJ3rFVIKc8hI5op2V0Dmi
	9KNMhd2hO024DKFSKU73s8vsl8APLRhWqTuxb2lG08vwoZJ4RDmPqlF/Ok2NTPD6MJwwKPYwvGSKY
	fcDB4xnb37Kjx62GsurlxH3FYLeaBopOe2fcBoqqyy85LvxH3C3ipxOx6TTmD6oq8v4vfmQflSsB9
	2nk0acwHjAnhqcCf7jtenRrbz0KquHhsNMw6wD4uYh53C/9lxCfR3v79slXbvi6SJ9E3egR496KSZ
	k9kXZAa+hirxz+7LMgk+n5Du9xx/5uzkwZQLvG1qAuz77Vut8do3iXPvyN1EzTPoRzDaJo/Id4kJQ
	tvzVsPWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kJr-002czw-UV; Fri, 24 Jun 2022 14:29:59 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kJp-002czW-97
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 14:29:58 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id E7795320085B;
	Fri, 24 Jun 2022 10:29:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 24 Jun 2022 10:29:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656080995; x=1656167395; bh=r6us2ddgzT
	QDWr+S0Y6Dq63sK81RbLLdtWxyEFlbbag=; b=dq0D6P5FtLgLhaWdSUYDMAuhlM
	s2mTohj6Sus/l/d7qnQfAM5VDK8k+J2sLTQ3eZsVItCcAdsYbi7p5yY5Xc1Vbwwg
	IiAvvkQl8oeMjJIPVFHcLSoPkevdpncvqyQfNJ9STD+HHgr4vT1qhZZup+AkWq2v
	Q+o49OweLkKEsvgcMl38IOEnj2FD+N3MJlIWRXmFRlyZBEPrmLLG47kB7Pff6x3e
	vOarU5oOKGKDSYcIWPnOupUoJ1AxUAwP5xlq+NtyuactiuWw5wAr535/oYWJG3Ly
	u+mrjdhXlxIrkh3QCOeO2cVe6mTmdal41IToCjWA7JNLZR8cWTJZRJahOS9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656080995; x=1656167395; bh=r6us2ddgzTQDWr+S0Y6Dq63sK81R
	bLLdtWxyEFlbbag=; b=mKy7Klnm+0l3BtruhLdyKws/oSc8KeqkGNOUsCAoWWIf
	oJ/ecK5bN5LKi/WjxsEtQ5SJrTV7GqTRQ8ZtZWF9FPvk7GhnfJ0dnHWX4PbiuZk/
	U23uoMEq6IRSrVq4IIaX4Vbhn+hMGO9uX5pl+3ClcKIx6+/+AFp2s15n3gQCPLCI
	JbOXWqtcQ/y7VRlUBshD3289hqXSsBLxS/cUgjMUCYYCRSHr1zBpGj2J+ACixHzH
	t942g0rUdnkOI0rv/V1nnmjFhTfVA7O+a+qqNtcRMLhJnoAcH3RwYgy5XujIkpja
	kbgAhL1m2nbYGr3XoN+udFJj/mwi3dtDEUjOInUKYg==
X-ME-Sender: <xms:Y8q1YtHGnow1d2L6dV-oW6qpEtGilJWqKt_Vt0b1w2QfDIcNLsndSg>
    <xme:Y8q1YiWJ3FQ-n6JIynoAMum6GzFOO8dIZS14OHYAwLKB5wn4-yizYMCxfMT3zNTbH
    bVIn0hnJYWe9c90ZrM>
X-ME-Received: <xmr:Y8q1YvL6mcAASY2OrGwaObJlN_Uw8hKWSE74XzdweDC9Jwm1Jd2XQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:Y8q1YjGxANGpeMzLfQcrJbhnd987pAZApDBCC_q2oVP5kise7Wj4fA>
    <xmx:Y8q1YjU87a_z_RuY1t30KwRP181wWzNyVxV85xS9iL9k2CvQ1YVXAg>
    <xmx:Y8q1YuPc3ANny9lP6rj88N0fCAQJAcryDYF3nK5_wSr1ixicpAC74A>
    <xmx:Y8q1YqGmPjw42i_OxJ8ld6ITYTgydbaswadslWQ9mw-lx8YdUPxjwg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 10:29:52 -0400 (EDT)
Date: Fri, 24 Jun 2022 17:29:49 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 06/55] media: rkisp1: Rename rkisp1_match_data to
 rkisp1_info
Message-ID: <20220624142949.fx5z2tdcpjx2rrou@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-7-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-7-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_072957_391329_74276343 
X-CRM114-Status: GOOD (  12.40  )
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

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>The rkisp1_match_data structure contains device model-specific
>information. It it referenced from OF match data, but that's an
>implementation detail. Rename it to rkisp1_info to reflect its main
>purpose.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-dev.c     | 34 +++++++++----------
> 1 file changed, 17 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index ba773c0784fb..258980ef4783 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -105,7 +105,7 @@ struct rkisp1_isr_data {
> 	irqreturn_t (*isr)(int irq, void *ctx);
> };
>
>-struct rkisp1_match_data {
>+struct rkisp1_info {
> 	const char * const *clks;
> 	unsigned int clk_size;
> 	const struct rkisp1_isr_data *isrs;
>@@ -420,7 +420,7 @@ static const struct rkisp1_isr_data px30_isp_isrs[] = {
> 	{ "mipi", rkisp1_mipi_isr },
> };
>
>-static const struct rkisp1_match_data px30_isp_match_data = {
>+static const struct rkisp1_info px30_isp_info = {
> 	.clks = px30_isp_clks,
> 	.clk_size = ARRAY_SIZE(px30_isp_clks),
> 	.isrs = px30_isp_isrs,
>@@ -438,7 +438,7 @@ static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
> 	{ NULL, rkisp1_isr },
> };
>
>-static const struct rkisp1_match_data rk3399_isp_match_data = {
>+static const struct rkisp1_info rk3399_isp_info = {
> 	.clks = rk3399_isp_clks,
> 	.clk_size = ARRAY_SIZE(rk3399_isp_clks),
> 	.isrs = rk3399_isp_isrs,
>@@ -449,11 +449,11 @@ static const struct rkisp1_match_data rk3399_isp_match_data = {
> static const struct of_device_id rkisp1_of_match[] = {
> 	{
> 		.compatible = "rockchip,px30-cif-isp",
>-		.data = &px30_isp_match_data,
>+		.data = &px30_isp_info,
> 	},
> 	{
> 		.compatible = "rockchip,rk3399-cif-isp",
>-		.data = &rk3399_isp_match_data,
>+		.data = &rk3399_isp_info,
> 	},
> 	{},
> };
>@@ -461,7 +461,7 @@ MODULE_DEVICE_TABLE(of, rkisp1_of_match);
>
> static int rkisp1_probe(struct platform_device *pdev)
> {
>-	const struct rkisp1_match_data *match_data;
>+	const struct rkisp1_info *info;
> 	struct device *dev = &pdev->dev;
> 	struct rkisp1_device *rkisp1;
> 	struct v4l2_device *v4l2_dev;
>@@ -469,8 +469,8 @@ static int rkisp1_probe(struct platform_device *pdev)
> 	int ret, irq;
> 	u32 cif_id;
>
>-	match_data = of_device_get_match_data(&pdev->dev);
>-	if (!match_data)
>+	info = of_device_get_match_data(&pdev->dev);
>+	if (!info)
> 		return -ENODEV;
>
> 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
>@@ -486,14 +486,14 @@ static int rkisp1_probe(struct platform_device *pdev)
> 	if (IS_ERR(rkisp1->base_addr))
> 		return PTR_ERR(rkisp1->base_addr);
>
>-	for (i = 0; i < match_data->isr_size; i++) {
>-		irq = match_data->isrs[i].name
>-		    ? platform_get_irq_byname(pdev, match_data->isrs[i].name)
>+	for (i = 0; i < info->isr_size; i++) {
>+		irq = info->isrs[i].name
>+		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
> 		    : platform_get_irq(pdev, i);
> 		if (irq < 0)
> 			return irq;
>
>-		ret = devm_request_irq(dev, irq, match_data->isrs[i].isr, IRQF_SHARED,
>+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
> 				       dev_driver_string(dev), dev);
> 		if (ret) {
> 			dev_err(dev, "request irq failed: %d\n", ret);
>@@ -501,12 +501,12 @@ static int rkisp1_probe(struct platform_device *pdev)
> 		}
> 	}
>
>-	for (i = 0; i < match_data->clk_size; i++)
>-		rkisp1->clks[i].id = match_data->clks[i];
>-	ret = devm_clk_bulk_get(dev, match_data->clk_size, rkisp1->clks);
>+	for (i = 0; i < info->clk_size; i++)
>+		rkisp1->clks[i].id = info->clks[i];
>+	ret = devm_clk_bulk_get(dev, info->clk_size, rkisp1->clks);
> 	if (ret)
> 		return ret;
>-	rkisp1->clk_size = match_data->clk_size;
>+	rkisp1->clk_size = info->clk_size;
>
> 	pm_runtime_enable(&pdev->dev);
>
>@@ -519,7 +519,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>
> 	pm_runtime_put(&pdev->dev);
>
>-	rkisp1->media_dev.hw_revision = match_data->isp_ver;
>+	rkisp1->media_dev.hw_revision = info->isp_ver;
> 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
> 		sizeof(rkisp1->media_dev.model));
> 	rkisp1->media_dev.dev = &pdev->dev;
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

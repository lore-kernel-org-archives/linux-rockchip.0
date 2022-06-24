Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B028C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 14:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IugHYQ55bpS68SD2eHKhx28r+Rcgik/6PvYjTOjidNw=; b=q12IyAJLCfa1A+jJ4YEJwLYK6n
	DAbGQqcjHqBleVS7Imt2nf6x0n+X8GsJBSj4rywDPuMriYzgSYOj/rkfB+O/ivPZNZxB99SiuNrhU
	ECa5A53PrnHM9D6EgECxcWFOejcLuQRr/Lhg3f6AXjP3KzYMPcx9+21x6rL/YFV6CmUJOewUBzgZL
	SfX5yQRu4gI8Kl38HpeXDpwKTz3lHyCUc/LFILwLiYNHGtkWN3zY7Ph44BsR8p0taqYLCs1oxOUFd
	0e7Zze2Xw/dwCa16tS6/LlVk/34Lm1GBRUcOrqIcFkKN2ewryxseHbj0dBqZiylGNciXO3U2DY0Pc
	8nvqyTeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kBP-002bBB-Qt; Fri, 24 Jun 2022 14:21:15 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kBM-002bAA-Nw
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 14:21:14 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 62E663200392;
	Fri, 24 Jun 2022 10:21:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 24 Jun 2022 10:21:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656080470; x=1656166870; bh=06ugER3/EV
	ur2CjgczapAghiL8yo30yXUocyiOMNz/E=; b=gMYaaq60CzbIB8dKg9UxPySlpE
	68kUFjkPqYLE25KVh1bPWSFwP9RDulCs+G1VRuQkq3QXSkhy0P5+qtSDFAGm2wfS
	PoqZnMr+Xki0L9LVxOdK3kZ9SjBZoIQ0xpy/1H/6iuAzPgtAfkcX3qrYkz1lW1Ni
	Vz9FxSxyMJ7fUfwhU2bCiL4EOxcsC3jyWrb4AiDuUFFjaw0nOIjx0/q04Y43DGWj
	KXOTDm8osA3VwlgmUhpdXlyYyOL73oK5gGSE4KlSHezIbOx5IEJTAb8c+3wQCF4g
	JQHuplcQg1vFFVHypOh90kFvMCiAG2IGMANOSAbRMDgxexOLMIC+bH5USLQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656080470; x=1656166870; bh=06ugER3/EVur2CjgczapAghiL8yo
	30yXUocyiOMNz/E=; b=FlOA7Ww36x/lLYKm3NJrtxZ5Q6wwkl1m7POnqCTUVp6G
	aYYMIbaVq9zVJadmMAweG7U2rSq0GWUVjxtej02Z2TK8J6U9gGG58xOL16gSOQvD
	NvFU9hMUeBCwaluALoySZq/f36aiCjK5QOyMLYjtJWtS4KgBEczTg8qtzzB8T1Fc
	D5tjmYsIzkirsbDZYrvZhulRySVpSLlqZ66yPm+mIpcwdXdeJk7El4Gdl13d5xOk
	M/vWi10xK+3M7mQ0KmGXLsUfp4fdCLsUDP0C5vUms4qPqXMJ5DZr7qJgn9T02PAL
	4o0HPs8l5ckXHKLszJBDDTtdD9kSg326NZhYBhjexg==
X-ME-Sender: <xms:Vsi1YksiFvKYVvlO3uGMaA61jFnxwhVyshK13-NzVOBSexYULX-tkQ>
    <xme:Vsi1YhcYVuXFEMqbt0NQRxg7gSMbFSAdKWdtLhd8pPo2uOsZYaqc64iH6MFq0fijE
    pffFGu7bQ5rsqX8lX0>
X-ME-Received: <xmr:Vsi1YvxD4R1e1v6qT2YC0RZrNFoVAwbR39PYJPVIBLYuF-3rO4eguw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:Vsi1YnPGMZU8N04HpEORvMdtcD3OUsemUZ7Pq6e0CrizvnRqoIQUiw>
    <xmx:Vsi1Yk-VxCZwCSePxpjtiqucGy1o4UFEWxEGgaoRZYxqNjRWmg8g4Q>
    <xmx:Vsi1YvUok8eb14UgQlOXqomHyH-UQxUzLKsSADQD0E7UJhjtVh3McQ>
    <xmx:Vsi1YhPW4WPRTsMWlyhL3u7rc4irIzBdhAZb0uJ7RvK3Qk8VpIgY1A>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 10:21:07 -0400 (EDT)
Date: Fri, 24 Jun 2022 17:21:04 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 04/55] media: rkisp1: Disable runtime PM in probe error
 path
Message-ID: <20220624142104.zdrcwbyhlb436tru@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-5-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-5-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_072112_867450_49A2C5D6 
X-CRM114-Status: UNSURE (   7.66  )
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

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>If the v4l2_device_register() call fails, runtime PM is left enabled.
>Fix it.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 97d569968285..248f0172ca62 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -523,7 +523,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>
> 	ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
> 	if (ret)
>-		return ret;
>+		goto err_pm_runtime_disable;
>
> 	ret = media_device_register(&rkisp1->media_dev);
> 	if (ret) {
>@@ -543,6 +543,7 @@ static int rkisp1_probe(struct platform_device *pdev)
> 	media_device_unregister(&rkisp1->media_dev);
> err_unreg_v4l2_dev:
> 	v4l2_device_unregister(&rkisp1->v4l2_dev);
>+err_pm_runtime_disable:
> 	pm_runtime_disable(&pdev->dev);
> 	return ret;
> }
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

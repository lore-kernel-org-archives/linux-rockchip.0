Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D41B6C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 02:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zAEcZej34YGaPDTMrAqMA5T9DHLk1cX40xiw/MhWdsU=; b=tYWpxeFAX9xgyXx0+Kkc6D8WQr
	obawUMhCyF4K1+/v6Ss/e9EWpjSyoIiITnZU1nyYTCSuE1hgeAn1rXs3UqYpH/9OCsP0YIb+XkiYc
	yfRWY53yhyp2YkIwZGTkRWh7+zAy4xkAP3G6wSBMqtP+OBVYvmy/alhuSmjrwSDeqHl+sMYcOeMLZ
	1GQqS149miBaWIO1fm+fqNAnOpT41pZX4tiYQI7PhYw/Ds6eAFejOAf4MMN+HEwoje+D2+PDJ410R
	S+EJ41c2dUzBBqkXv/jHzWJBPqGT4r4rvhVptX2sivXikfEizZ7NgDsQBy0GdiML8hUMZu1nPpduk
	Hntvcuhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjB5-00FFmx-Up; Mon, 11 Jul 2022 02:29:39 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjB3-00FFkn-3Z
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 02:29:38 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 37AF6320029B;
	Sun, 10 Jul 2022 22:29:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 10 Jul 2022 22:29:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657506565; x=1657592965; bh=CCBY9d9Um0
	Hx5Dv0S6QBP9R5oXD6ecN3f+4ds/Nn9eo=; b=VZyG1eJHfMrzi6a1LVxodT6pOU
	8JIsvB4Z176b8DBHR2RLPDnWNYE7usLoTa+RTQ6qhiJ80lwau1OgGmH2ib6YfwN2
	9DNjRo4e7J6ORwkluzH4duUY4WciNUcTSTO0//DxA8e+pVSXN3aFoLWr54j4bS9T
	LeGF6FwkL4GtjGFcKKlf//dAg2tgLIU9CxF00/P8wEhK4df9NiR2fX0T4awtIrmM
	+6RERVwV+rXsE/0yFsqFddDEZspwsubHOipuWyBJVOBksXh69xK751clvIMwah4B
	s7acsGPW4DP1+lELFxz7F/EdDDnVo0VoWrtPFNyH1L/WbVG0RO6xzRJOmhZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657506565; x=1657592965; bh=CCBY9d9Um0Hx5Dv0S6QBP9R5oXD6
	ecN3f+4ds/Nn9eo=; b=tvvldkt4bWDMxIkUqSpylJYIekNMAhSLG0K4OwO3RKCV
	fwkhY951C/58gBCH3Y+f+fFp7o9aXrBcAtkjqtOmtwUh1ae3knL8iuISohhIjfM5
	DHeAUg76AfuspZgl5/gp+u+6CVJhCNC57gaYgioZPd6N7SuYw7/EL0I85Z9RwidP
	a2HqDrL3/MuuFSafKBXthbUbZ/wZ/qjPKrz1CQd21fZXguyjWzhtl8Cr3Cz/PJYY
	WP7E7JtlrgquCYOYWzwHzXAB8KB8DkCtJhdIkxOxK28jsZtI8scn55v4wvE3XFvc
	uEhRNQkgbaZVIGt8nfKM823wfzQRrQ7iSwUQ2gUYdg==
X-ME-Sender: <xms:BYvLYuJkFJbX_aldDJLmpkF62GVfQ8pJjgVeX2G7b8eyJbKZcshmpA>
    <xme:BYvLYmIcoH33nzj88-OR1GFNskc7rxyWwpKHpoUGfg8CmJWihhYjizWBfjjAoqMIG
    1NNgkkzSGGjYWP4-E0>
X-ME-Received: <xmr:BYvLYut5ZHStFvS8oTSSjKzjHPVZSmKvPYX2mjoZxxSL5AhBWD4KMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:BYvLYjZ32EcYeR7Kv-lpvuVjxU1wEILyxpY8afVVf0En_9spXlGUWg>
    <xmx:BYvLYlYKUQiV7BvhtZdo3fx9fz1IZAXkk5mvvg4LZGtBcy82bHwzVg>
    <xmx:BYvLYvBG-fXDd_gGCbLALqR9aps9wqig91gO87RcGIh_rkKJQuGEiA>
    <xmx:BYvLYkW1tNX67_28j9RJf-UXoBVuIuNpo27KvAKZwhCrtTmnJTPPww>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 22:29:22 -0400 (EDT)
Date: Mon, 11 Jul 2022 05:29:19 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 44/55] media: rkisp1: Add infrastructure to support
 ISP features
Message-ID: <20220711022919.hh3yvmlkioefgdrd@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-45-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-45-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_192937_222487_E25D348A 
X-CRM114-Status: GOOD (  15.59  )
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

On 01.07.2022 02:07, Laurent Pinchart wrote:
>Different ISP versions implement different sets of features. The driver
>already takes the version into account in several places, but this
>approach won't scale well for features that are found in different
>versions. Introduce a new mechanism using a features bitmask in the
>rkisp1_info structure to indicate which features the ISP support.
>
>The first feature bit tells if the ISP has an internal CSI-2 receiver,
>which is not available in all ISP versions.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-common.h      | 15 +++++++++++++++
> .../media/platform/rockchip/rkisp1/rkisp1-dev.c   |  2 ++
> 2 files changed, 17 insertions(+)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index e436f1572566..dedfcf3466c8 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -98,6 +98,19 @@ enum rkisp1_isp_pad {
> 	RKISP1_ISP_PAD_MAX
> };
>
>+/*
>+ * enum rkisp1_feature - ISP features
>+ *
>+ * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
>+ *
>+ * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
>+ * the driver to implement support for features present in some ISP versions
>+ * only.
>+ */
>+enum rkisp1_feature {
>+	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
>+};
>+
> /*
>  * struct rkisp1_info - Model-specific ISP Information
>  *
>@@ -106,6 +119,7 @@ enum rkisp1_isp_pad {
>  * @isrs: array of ISP interrupt descriptors
>  * @isr_size: number of entries in the @isrs array
>  * @isp_ver: ISP version
>+ * @features: bitmatk of rkisp1_feature features implemented by the ISP
>  *
>  * This structure contains information about the ISP specific to a particular
>  * ISP model, version, or integration in a particular SoC.
>@@ -116,6 +130,7 @@ struct rkisp1_info {
> 	const struct rkisp1_isr_data *isrs;
> 	unsigned int isr_size;
> 	enum rkisp1_cif_isp_version isp_ver;
>+	unsigned int features;
> };
>
> /*
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 1dcade2fd2a7..bc278b49fefc 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -460,6 +460,7 @@ static const struct rkisp1_info px30_isp_info = {
> 	.isrs = px30_isp_isrs,
> 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
> 	.isp_ver = RKISP1_V12,
>+	.features = RKISP1_FEATURE_MIPI_CSI2,
> };
>
> static const char * const rk3399_isp_clks[] = {
>@@ -478,6 +479,7 @@ static const struct rkisp1_info rk3399_isp_info = {
> 	.isrs = rk3399_isp_isrs,
> 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
> 	.isp_ver = RKISP1_V10,
>+	.features = RKISP1_FEATURE_MIPI_CSI2,
> };
>
> static const struct of_device_id rkisp1_of_match[] = {
>-- 
>Regards,
>
>Laurent Pinchart
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3959C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 18:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rFTb6S0G+uAl8Ldu23gNUyKh5yA64M2296TV72pMpQs=; b=QClTOjYZhDW7ZYbWAKpT01e0h3
	FU+Cn1/GyrEpA59eZcDHHUeK8aXLAXcC5kuB9er8ua/KUvD85aSK3YNM8BPH0kp2i1ygSDrbQnaEL
	aaQrOkzcx2n06FqdI82oRj3bm+nbN9PM3azgeNiptqXBm8uIhLYqnPgPnrX+eolNmusAr3Tt1HD9p
	VOW82DWOk7CqMBPXV0K4ZTBuy1bYaAXJu3itiVxM8SVKuSdvF+bvYN/9kGwtjWdr5E+sfWLABLwRL
	1mg927MeriaivjGAEuEnqldV72CUoEo0xXy2K4V5JPn3XHhIMwY3NlNEIetp4MCK+bTDljw7LEazH
	N6IZ2X8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oIg-003Voq-TP; Fri, 24 Jun 2022 18:45:02 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oId-003Vny-Jn
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 18:45:00 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id EC7BF5C01DA;
	Fri, 24 Jun 2022 14:44:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 24 Jun 2022 14:44:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656096298; x=1656182698; bh=ypiwYBpIpe
	JpmzTJkBEfHBVu1ODaA8p0oTtzCYaBwp0=; b=czVY3c1pu0vF38D/Cncd1MXLH/
	ncTTMWceqhcYr1tiU+KkNwFWfe/c1jYC9KwN8VoEmSaTrBJfSndJPRrpR69LiZHr
	FwVtiWgjQfolsgMd4HazAnIUBlKrnHlFmUoQQU0T7QdDvULErNUOWRPsEEqRz9Qn
	VztH30fMM3Py17WyXCZJ18fSON+BptZO7xpCnOpoqNLjfHzZ1uzj681Gk/cemDdn
	Q6R/iz20znnLLvVPTjJ2hkoFTz1jaifoyFnFAaNXQG7gHJfRn6rDn1Q7yRwpII5m
	+SywD2pXqPbKKqsviISepBRS3ech0CvhM8GSipUnhS1ILqIlR9J4bxUEzVKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656096298; x=1656182698; bh=ypiwYBpIpeJpmzTJkBEfHBVu1ODa
	A8p0oTtzCYaBwp0=; b=LbIqJ89UYoO/QLAPAlKU2FNHJHGMpSyNi7/UwB+uWjvb
	5v//RS6t66B+vFg22MHp88FJ0QikJE+PaqMLpK3sUWcQrIXfPZi9gZmWkVlZSynj
	0kMVFoyCRDYTiVcl7edG2yjvMBY7o3n+BtkEU7TqYaMLaZQnJfa8C5w83qo/KVS9
	j8qzcREx4B1DZ/nJxH+LZu0YK3HFXq4n1Y+xiRmWUeCcjMT6oZXDupqV0M8yTalU
	8xjiZmt/H0gsHOoivwhbGgIlxICXgcCaB6JGTQhvfJwgMEmPctCeDBsnrtb/nGr+
	qK45ZTptEHmEtcPdE6gsy9i6fGIrXvkpcHWEQ374TQ==
X-ME-Sender: <xms:Kga2YmzQaxZ4I3LMukMjytB1pegtY1SfX-vikWi5FBzt9z9k3fUc2g>
    <xme:Kga2YiTirnzUALycghIfVw2hY8Lz1uGIBo8ztaCUUzA_zLwxw46bwmPt9kwc6WPe1
    hOTDRRr6BFRJECXIi8>
X-ME-Received: <xmr:Kga2YoX5Mt7AW91lVV6YvZ1HD3AdY1gt0O6ymiFXi-R4UAO5Y49ZSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:Kga2YsgnYQmcaCs-YeQs6hkzeMTWEZeAhZNR0CpyTEKst_A04vGQ6Q>
    <xmx:Kga2YoBkv6DtV2NCxB-DJWukbGVEbtbaUkfWgge6gm08IZMJ5oN-PA>
    <xmx:Kga2YtJmr4zq0f3JiwJ36U_2r19mZKyyZ9HaFO6aHz4UfUA8LMk-GQ>
    <xmx:Kga2YmA95fDNTAuHXBtcuDcwC01txgYsqgZGjE1-2HOPsewUFNqqHQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 14:44:55 -0400 (EDT)
Date: Fri, 24 Jun 2022 21:44:53 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 15/55] media: rkisp1: Rename rkisp1_subdev_notifier() to
 rkisp1_subdev_notifier_register()
Message-ID: <20220624184453.oct5t3zzrfisavns@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-16-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-16-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_114459_764031_5B5E1AE3 
X-CRM114-Status: UNSURE (   8.96  )
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
>The function name isn't very clear, rename it to
>rkisp1_subdev_notifier_register().
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 7bb1235cddea..386c1c17aec2 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -176,7 +176,7 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
> 	.complete = rkisp1_subdev_notifier_complete,
> };
>
>-static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
>+static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> {
> 	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
> 	unsigned int next_id = 0;
>@@ -358,7 +358,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> 	if (ret)
> 		goto error;
>
>-	ret = rkisp1_subdev_notifier(rkisp1);
>+	ret = rkisp1_subdev_notifier_register(rkisp1);
> 	if (ret) {
> 		dev_err(rkisp1->dev,
> 			"Failed to register subdev notifier(%d)\n", ret);
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

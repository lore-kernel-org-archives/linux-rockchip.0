Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91EB2C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 05:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UaBQ3Km9FRuxc1PM2SFHRHfanjTGTFBvO3jEOmRcMjA=; b=1bMfGgsOqa77DZLiIbx5V/21hd
	N56DcI22tJ8Iwp0uaAbYZp/N8267yhp7TY71dzNGxGemTthXLTS+8AjvaEp+9hvgXl2hMhNcjn5wA
	lFoaSkN0zjQ6VZQHZ0tr6Jq5kkHPHBDuA9JuSIBH1VucGNGWceBBCpuC3ZTiBEp0fzRlY5iqfItuQ
	k1ZM5axMzk9tm0DXDEFSrbV7WvYJKzYq1YmkMevfQFJZeaUXG2HGp+u72JNSX16efevX5C2NPcP6d
	p8A3MziA1y4odmXxyxjK6/fp4UAPjBcTOMpBMajn7kjR/L/TtpaeM/JwQjgHUrziL7+CmlGqVGl1q
	qJvOglPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4y1d-004fhy-Hs; Sat, 25 Jun 2022 05:08:05 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4y1b-004fhQ-B1
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 05:08:04 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id CEEC33200901;
	Sat, 25 Jun 2022 01:08:01 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 25 Jun 2022 01:08:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656133681; x=1656220081; bh=83jX/0SUdl
	BTs/bpK1P0fOYDaEMH4ylrRkscDmeNOGo=; b=MlJ0YkV0WBtoTSXOWmjtl0aJDa
	jtZ750LcuBJc5ukQKA5XdgpxqUC9xLErM+xeZgte9LYxt58YPJ8U3eQhkK2qMVX/
	0SQjcBG2jR+OmQOrZ4+kPo9fcrwLeYAU2X9dzN/r5VqLiqznx9JTX9HU7mcAT7da
	CaWDotK6a1V3X1g76/+pImsc260/9Jc1mMQrZUsFI9B4eMTv20R3ovyVaZfIeVgb
	oc7UMb0yZLNXWfFq9h4JvFmMt2GiuWRC30sNt8iZe6ZUnN4exc8Ez4cOoZEGEEAN
	wbdJ+waDo8YY8LOaK8EDJQK/DgXoYH9n2ocvoup7cDyluv258WNxwckgU6hQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656133681; x=1656220081; bh=83jX/0SUdlBTs/bpK1P0fOYDaEMH
	4ylrRkscDmeNOGo=; b=XwFd0gCXyiEOqISlG40F2d2bhivkqS7uOaddURqVWZgh
	TgdtMaZZbO++DAsla99XAfNSrbxGetuLIQAh8hj8XDkPQTSR1gpllclDNDMQHLTb
	3C+90uYijzTDugzr6nwfM5HdtX+aJ3hqOruEjOFrBRrn2Bt9S9DWrb3XkLlhKK16
	fgCm3dxBpVvLIF7AzwL9DfEhJbtDYQxKWjILTF+CIxvFAEC/HhLQe7ZoUlsGKcLf
	ffNqzPlWo885p/0zCekA5R7n4Ku0UFRCC2Q/vFcHmAF4fdrC1p/aXtOCpzrKVnza
	E+96nNzg+a4+4OO/20ZMmVvUva4Xeya983fBAa2ckA==
X-ME-Sender: <xms:MZi2Ym7dJUjBfxROJ3LrWJPELa_KcD_Vnfz3CKv8j3hM_QkhdX1-nw>
    <xme:MZi2Yv43boqhPAHf6HfKaRUqTpAA5hOLnL_Mnll2GFWsalYXD4MD6h7UvByuhdA81
    kBXdx2oa1B-gavtBtI>
X-ME-Received: <xmr:MZi2YldjxNAbBdwfCkx-FSooZOwnTXp7XLGOsIplzmKAADtt9HOGPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:MZi2YjLi9Z_CI3p7Bp-1frOj727xzn3xdryT5ROuQTqqb6ek1X4z-w>
    <xmx:MZi2YqL_RSMvljQoinaUG3yB0iFAPkbMfkXx-w_VhuMdk14T8BSijw>
    <xmx:MZi2YkwAuI4FLGL8lbLRBX0ib5wIG8SRyxtclNaW2vca_e0JOl_hZg>
    <xmx:MZi2Yrq97ZN5xBtdpkp1jTfZ65OoVG5coif2pNfyI7_3GEcHLMU0fg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 01:07:58 -0400 (EDT)
Date: Sat, 25 Jun 2022 08:07:55 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 35/55] media: rkisp1: isp: Constify various local
 variables
Message-ID: <20220625050755.evtlhxypb75cdd35@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-36-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-36-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_220803_430012_F0C8B285 
X-CRM114-Status: UNSURE (   9.78  )
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

On 15.06.2022 04:11, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>A set of local variables point to structure that are not meant to be
>modified. Constify them.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 10 +++++-----
> 1 file changed, 5 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 86d496855374..91b37f2dca91 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -113,7 +113,7 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
>  */
> static void rkisp1_config_ism(struct rkisp1_isp *isp)
> {
>-	struct v4l2_rect *src_crop =
>+	const struct v4l2_rect *src_crop =
> 		rkisp1_isp_get_pad_crop(isp, NULL,
> 					RKISP1_ISP_PAD_SOURCE_VIDEO,
> 					V4L2_SUBDEV_FORMAT_ACTIVE);
>@@ -146,8 +146,8 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
> 	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
> 	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
>-	struct v4l2_mbus_framefmt *sink_frm;
>-	struct v4l2_rect *sink_crop;
>+	const struct v4l2_mbus_framefmt *sink_frm;
>+	const struct v4l2_rect *sink_crop;
>
> 	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
> 					  RKISP1_ISP_PAD_SINK_VIDEO,
>@@ -557,7 +557,7 @@ static void rkisp1_isp_set_sink_crop(struct rkisp1_isp *isp,
> 				     struct v4l2_rect *r, unsigned int which)
> {
> 	struct v4l2_rect *sink_crop, *src_crop;
>-	struct v4l2_mbus_framefmt *sink_fmt;
>+	const struct v4l2_mbus_framefmt *sink_fmt;
>
> 	sink_crop = rkisp1_isp_get_pad_crop(isp, sd_state,
> 					    RKISP1_ISP_PAD_SINK_VIDEO,
>@@ -742,7 +742,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> {
> 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> 	struct rkisp1_device *rkisp1 = isp->rkisp1;
>-	struct rkisp1_sensor_async *asd;
>+	const struct rkisp1_sensor_async *asd;
> 	int ret;
>
> 	if (!enable) {
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

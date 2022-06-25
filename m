Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6140FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dAgf3qpyjPHCbNVX43Ev//MHkuQb68CufwhSHIe0hEM=; b=MkQh4gK+iAQj/VCBaOl8nDmnRu
	sAtbObhYlEeu8i4wcEUcVKAuYe0F4cc27nkk7D5tlCd0uOIz84qJg2PG6IbGqvDxvcqakFK+eJuu9
	KSmH+EI9t8OooHUm/UB6bumPVuK16s6/Dur9pqJRVaUQ1S7W3zxNYg6eGg1AYp/RKGyz797VlpX5A
	Ljx//k/iwcB3BdNKLPYARHeZNGuMaGTh7Ty3rFzW35kV2jL0kH1TEdQrAD2abCGGMIvbug94HtDqL
	p0PLO7pRf+g49CgvD+cr2w3E7uiL3qkT3MH5KWwuwSaClxJ+Q6nme38MdQRykpsWs5yMaf7eo7jAy
	BdMQ0hLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xgZ-004cij-Bz; Sat, 25 Jun 2022 04:46:19 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xgX-004ciK-LP
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:46:18 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id CF1DC32008FF;
	Sat, 25 Jun 2022 00:46:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 25 Jun 2022 00:46:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656132375; x=1656218775; bh=7xgGYhQDLU
	aHcj6mdM4bGA06Ngk/eMtjV5vooypOLxQ=; b=eiHuyKQL7X9fapRFeOZNlUh3g1
	G3pbbIhpXoD4fvjp16SI1RgaJi9gzqCOfwtLaw3Hb3C4ySRHaQyF3Aw7AqzHPLAL
	L/WsFgOlE4YoLVy5aKyrXj2lTDN9JxzbgC4KHUHwtucnSoiGRrbFF/fWUXMRqF18
	8cAV79CwEFG+enTSMCZ3x4yk5zOFZt/85nb/pqVbcpGY07Kk1+0EzqjvZWfA2IID
	a9k1EUWXiJ2oH6IkYd55RjvUTOf2Z/kq4OKzjwl7aMbe8+8Yk7MK04oCusiICTii
	eIa6KUfgWUCP9wp75/KYE5DdtBeJ2Z7D0ERhiIw7it18I2kEw8s+CiVq9x+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656132375; x=1656218775; bh=7xgGYhQDLUaHcj6mdM4bGA06Ngk/
	eMtjV5vooypOLxQ=; b=gs/RX36y8YDmRcTSfaT+IrxaIwZn2lwjU0Gfa1CurmOo
	CfjmbI/2VXTtL33Y2EFTQILjbMgZxW13SZSTxks+d2JxjoHKPi39ZOYj0nMu40ce
	xH4sYQN3VkBnsTP4kLg96kaCb4iLo8Dt74zYjt4E6G1use6jVOR2cXgOgcD+pmXQ
	R3h7j6r3TjPXjAL8HaDdE21qvRiHpQB5hJyj4yzLrE6a7kLdmYMDqS60sZyKwxdP
	UMHl1PdpGCocCUTfV3iNAvWIjjpCxFFEKVYsY5Eta4WWXi7ux89vV/a2bv5Li35X
	aquf5z0K5OlJ17vP6eHDwqUXPTmY5Cl19nxhghWd+A==
X-ME-Sender: <xms:F5O2YmWRuT7EpRNOANCOVzsjbqYiANAqd01EALV4DoNkwsNife44PQ>
    <xme:F5O2YinCtVRfOc0kgCO-cZXlM6uROkh3P5u3sU2qBQEFI-BNxq_zMXm6aw8OZqep_
    VuQYiEISrupLRRVRd4>
X-ME-Received: <xmr:F5O2YqbZAOHeAsnypnZzU30Iv7D2K88d3OH6IgpBF6RcbhMVhnCCNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgkeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:F5O2YtU7027QCah4nuFXdvhvciRyvyqCxCAzrzlvPOAD5HXMhBk1mQ>
    <xmx:F5O2YgmcURIvs9pBiGo6L-kh_hFcwdf5qoyBIlehvuwhcMwEX2qUUQ>
    <xmx:F5O2YiciIkbsvwjjP6EiShuiihiW6WsyvSvvxMF3wo0tPZ0quICHXg>
    <xmx:F5O2YqUoqDpDOt9kK_Ji022nw-gV8A-TiqtKfmCngKsF1US7H3lKoA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:46:12 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:46:09 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 25/55] media: rkisp1: isp: Don't initialize ret to 0 in
 rkisp1_isp_s_stream()
Message-ID: <20220625044609.vwlzkuqods4oxucu@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-26-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-26-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_214617_771833_09169F6B 
X-CRM114-Status: UNSURE (   8.29  )
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
>The ret variable doesn't need to be initialized in
>rkisp1_isp_s_stream().
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 3ea0deb6b792..a234cf29ec67 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -751,7 +751,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
> 	struct rkisp1_isp *isp = &rkisp1->isp;
> 	struct v4l2_subdev *sensor_sd;
>-	int ret = 0;
>+	int ret;
>
> 	if (!enable) {
> 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B880DC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 15:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OnMZcUeZbi9Bn/MvnHCxbO64vRsGzP+Yx6i8IwXAim4=; b=pQLvMBOT/2n9O2P0idsp0Uopb6
	phlY74TlJiJoQgzGfbjsmogK/EvIEqLtgpMixdr8J/PRBtsfOpKO61VNJtJmA7mqL/CqW8F2Rcdvy
	D7nDTnE0rN4xrIetd6/pCxLYtOXFJWfb2QXapNAAdm1J8rk/CzD0DjP+we5wn7YgHB5htDa8bzVVm
	Q+hKDa90u07Im6sVxPO9Ii+2bTlMX1rZZKVIYGqEQ/Zk4BnwU1nbiudbqDTGRQPBsjpPBHimTHoGN
	/7DJOiNYVhuXRRGsuKbr2Aw6cCbSczsTW9tuV904s+QNWG3WGDyjSciSPbj9adKyG0NkzpvevINMd
	dbDHStpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4knJ-002hgc-JD; Fri, 24 Jun 2022 15:00:25 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4knE-002hfk-V7
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 15:00:24 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 700CF32007CF;
	Fri, 24 Jun 2022 11:00:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Fri, 24 Jun 2022 11:00:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656082818; x=1656169218; bh=ok59EyrdOe
	6NOklkpZq9hJkZk5ts4QHMi8DcFvp/gDI=; b=RetDgWfVZI93d8kT18a04Q0Pp/
	YFLgbbze58S8CTgZ6Yd+R1r9KTjvvTm8OXA2uCQ/bi4ULoV/Il2yv4YzpNckpgda
	dDRBeqoz2rskzTxME0pz1G+JD7PW2EyjK4S+FnXxnbPdV+eFipSILuhKjcWsh6iz
	+YH3djBE6ejCVb/2ooe4x0E1t93dQ9nrhAWh30EaHgW2tp+6VOG2cgKmtvY1EN/s
	i5EINLNV3+daNnMuEAPMrvXGViCga6w6kpYSOr9l2YrhPZKKwoYZGu+WgF15HtT6
	rbK34P2ruYzWHZBNIlTIG22f8XHrSA/8tBIQD6/xBk6GEyPa74b0h+M+xLew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656082818; x=1656169218; bh=ok59EyrdOe6NOklkpZq9hJkZk5ts
	4QHMi8DcFvp/gDI=; b=QKaepsAw5g2AuaKgqv1c3sbVx9YFY2DD/kzHbZ/0KPur
	/TXYWUuYfjKiuBd5P47nAOe4axLmsidyzvxMX4i8vNAatvBu09vaIqQB49pRMOpK
	yzWJlTA/VJzR0VB9d8qdxRJCrcT+rnJm/zd2LTFVTQhpbBmFGtKIXwFxT+7RchPb
	FUIpv62hHqBNySgca1cIhjpZJkpRPFcCCoaeyTLZ0584sv3xQuhaOMAhn+C/SAv3
	FAk39mXE1wCW2e1iiw5AbAIHsy7CR9E+r0lXEACoYmRxQ2y5YwCm+snHe3SYaQRp
	GE6sdsMpBQJsGdPUtU26aOyzEketLn2JwfiF9R+Cww==
X-ME-Sender: <xms:gtG1YivFlT1YvrLS4ISfrSBq7K6n2pyu2ZkW_FMsgLbeHKMFtqadlw>
    <xme:gtG1Ynexgx1eVrdw0MqBG4R50oQBFbZ31-F-Ks3SQDF45HceA9FKgWpEdrvCg4lM4
    ERKuWmegasI3lEag5w>
X-ME-Received: <xmr:gtG1YtzRl6UGnV7lKt718pRlVOP8ElG6obmDgEstBIz_w_lONsHU9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:gtG1YtNu42uXIzGaWa55x9oCOq8gdYU8K0Nd9RzEbVOGqjG5JaIHFw>
    <xmx:gtG1Yi-GL6Y936Bx2c73Y2YK9JSfl9HruSlTL4oYFeh69RQMkcsjww>
    <xmx:gtG1YlX4BGu4x6f8EyPQJGpgVSYiOjPSVnfjsRjfdPAydWlyCvoA9A>
    <xmx:gtG1YnOHKIKptb22sJAR4DY3y7yxjcNbz4mI3v5PPej8h4YnCwDamQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 11:00:15 -0400 (EDT)
Date: Fri, 24 Jun 2022 18:00:12 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 10/55] media: rkisp1: cap: Print debug message on failed
 link validation
Message-ID: <20220624150012.atzih4monjb3sjwf@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-11-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-11-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_080021_071807_3EC1275D 
X-CRM114-Status: UNSURE (   7.11  )
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
>When a link validation failure occurs, print a debug message to help
>diagnosing the cause.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index 94819e6c23e2..94a0d787a312 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>
> 	if (sd_fmt.format.height != cap->pix.fmt.height ||
> 	    sd_fmt.format.width != cap->pix.fmt.width ||
>-	    sd_fmt.format.code != fmt->mbus)
>+	    sd_fmt.format.code != fmt->mbus) {
>+		dev_dbg(cap->rkisp1->dev,
>+			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u",

missing '\n'

thanks,
Dafna

>+			link->source->entity->name, link->source->index,
>+			link->sink->entity->name, link->sink->index,
>+			sd_fmt.format.code, sd_fmt.format.width,
>+			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
>+			cap->pix.fmt.height);
> 		return -EPIPE;
>+	}
>
> 	return 0;
> }
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

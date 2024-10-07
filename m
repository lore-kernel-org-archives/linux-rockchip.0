Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4F7CFB444
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WQKWaJiKVkIKb0/Z4EFi+35nN3xkPXkHahrwsC4Zd8E=; b=ELytEyZO9mlkKsTBIIo3VQhWUW
	/NB6PW/pIGcdVhzHpgf4JUcjpLK9A8XS0Cd2lGXDJhg7ZGbMxqYjlQiDAmeqOI+hMr6qi3GF3GT9E
	ldh1LidVf6jvui5bhtwPtdr6ozxwofkootT0Zg7FWTrzqeUzcngsDP0ArWvPffBW0GrTJpHD78VLb
	hYusk/Fs3rl2b2M+cXLn1vt/HXc9sKIMp/vV0Bsw0XjuF+gER31T/Ll3tSotN0H9E/hkjMrE/RMmo
	rZgO2GjwL8hKgrN1AK/wcfrYzkWoC2qAWoeWRSyUj2scu6UsVZz51OgQPj6FnHXaF/wwy5q/S8BDV
	tff4b24w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoRN-00000002dtH-39h7;
	Mon, 07 Oct 2024 14:10:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoMd-00000002chc-3B2y
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 14:05:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1728309907; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ilbbshoMy+1pZ4GL2es3TZVe/bTCm8uKb0YwDsgzsnX6WQkQHYtcPgsh7QQ879pTJTOCefJJS+e1YUKaLpNQVyrPhpkqqZ3J2jBeskKXJiRWVg0GexMXpoplUpcfSe8Igs0SJJcZAcYu/th3FubIxd4HO2a46+41IqdRH6ocL6c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1728309907; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=eRLsfohf6jSgmVECfvktx7L0NuwkREX1Jxsu8Uf3Jrs=; 
	b=jBdlwgzcI27CL3l6y+SexVr4sfoghbC/Jrv8M4UewkBy76Dfi5YtsWbgPeBMS6oGH8opNQeyMqMM+NMoyChIcV5P1dzH9+M1hVEVOXvO2xY/uKCoQFYdjpOvJhwLRaC/Wu1+7dWKLOc0BpHu5otQOQ0pK/ji2rLPzXtJNtRdbTU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1728309907;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=eRLsfohf6jSgmVECfvktx7L0NuwkREX1Jxsu8Uf3Jrs=;
	b=OxOK/lTgpG88cHB+2CMlYtvXRKI9tnxFo6AVJ3qNic+wF180yPS3MqYJ3/FO/pyB
	NdkxwaLp5MY9/heiP0c2G6dK4DC+AM2C7ZDO8cSskbIbJv+kjIHlRkfAQzEGyHQIooL
	w5H+7Z7gbVUE5Zak4pjLr4EpoTXWYUhkz/1U9Hng=
Received: by mx.zohomail.com with SMTPS id 1728309904966143.24930637994294;
	Mon, 7 Oct 2024 07:05:04 -0700 (PDT)
Date: Mon, 7 Oct 2024 16:05:01 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH] media: rkisp1: Reduce min_queued_buffers to 1
Message-ID: <20241007140501.2rvqu6rrgy26uwl5@basti-XPS-13-9310>
References: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
 <20241007125730.yn6xinehhm73yqob@basti-XPS-13-9310>
 <20241007134734.GA7439@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007134734.GA7439@pendragon.ideasonboard.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_070531_882796_858D9FEA 
X-CRM114-Status: GOOD (  24.31  )
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

On 07.10.2024 16:47, Laurent Pinchart wrote:
>On Mon, Oct 07, 2024 at 02:57:30PM +0200, Sebastian Fricke wrote:
>> Hey Jacopo,
>>
>> On 07.10.2024 14:42, Jacopo Mondi wrote:
>> > There apparently is no reason to require 3 queued buffers to call
>> > streamon() for the RkISP1 as the driver operates with a scratch buffer
>> > where frames can be directed to if there's no available buffer provided
>> > by userspace.
>> >
>> > Reduce the number of required buffers to 1 to allow applications to
>> > operate with a single queued buffer.
>> >
>> > Tested with libcamera, by operating with a single capture a request. The
>> > same request (and associated capture buffer) gets recycled once
>> > completed. This of course causes a frame rate drop but doesn't hinder
>> > operations.
>> >
>> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>> > ---
>> >
>> > Adam,
>> >    a few months ago you were exercizing your pinhole app with a single capture
>> > request for StillCapture operations and you got the video device to hang because
>> > no enough buffers where provided.
>> >
>> > This small change should be enough to unblock you. Could you maybe give it a
>> > spin if you're still working on this ?
>> >
>> > Thanks
>> >    j
>> > ---
>> >
>> >  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
>> >  1 file changed, 1 insertion(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>> > index 2bddb4fa8a5c..34adaecdee54 100644
>> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>> > @@ -35,8 +35,6 @@
>> >  #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
>> >  #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"
>> >
>> > -#define RKISP1_MIN_BUFFERS_NEEDED 3
>> > -
>> >  enum rkisp1_plane {
>> >  	RKISP1_PLANE_Y	= 0,
>> >  	RKISP1_PLANE_CB	= 1,
>> > @@ -1563,7 +1561,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>> >  	q->ops = &rkisp1_vb2_ops;
>> >  	q->mem_ops = &vb2_dma_contig_memops;
>> >  	q->buf_struct_size = sizeof(struct rkisp1_buffer);
>> > -	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
>>
>> It looks like RKISP1_MIN_BUFFERS_NEEDED is used only here, so can you
>> remove the define as well?
>
>Isn't that exactly what this patch is doing ?

Oh *facepalm* ... I missed that please disregard ...

but my question below remains whether to not just change the value.

Sorry,
Sebastian

>
>> rg 'RKISP1_MIN_BUFFERS_NEEDED'
>> drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>> 38:#define RKISP1_MIN_BUFFERS_NEEDED 3
>> 1566:	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
>>
>> Or maybe just change the value, but I am not sure whether this can be
>> considered a magic value.
>>
>> > +	q->min_queued_buffers = 1;
>> >  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>> >  	q->lock = &node->vlock;
>> >  	q->dev = cap->rkisp1->dev;
>
>-- 
>Regards,
>
>Laurent Pinchart
Sebastian Fricke
Consultant Software Engineer

Collabora Ltd
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales no 5513718.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

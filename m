Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB382C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 23:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JA5IC0kh1YsaUPVGoRJVCWAtMu5IFuCRqzl0BKmanbw=; b=EXiscH2YGwRgjT
	dfAOUmuMX9ykRbahpn07D6/LN4+G0mcjLhQxx08eywNBa0miav9w+ZOQcdjsYPYQTw7KnLhJ/Fzx4
	D5UlyVtEYq6zLXHRCszKp/otgrB3GnrkLAsIgQFTCqfdJQTrLLjx+FYybFU820xDZrF+eDNncO8lh
	P4sz9W0Y+1J6+gTjZwLU5ZdZLuXrcpwZ3Mmi3B0hyU/xZDcc5TVHmH2ENN8IZh5xK00o+WyJyl03C
	o+1vWMqW/4X+mtX7hbKnQ6ux0fDy/tqu9lQDOpCWpP8tfFhF0SG1Wcxg0ustqh6E2TAEnFut67Gtr
	U1lGKVLUg/1zIE8oK8Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbrPH-008J2S-Px; Mon, 13 Mar 2023 23:16:43 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbrPE-008J0H-GH
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 23:16:42 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-180-8ouOqbSxPl2e6lYMDXaiTw-1; Mon, 13 Mar 2023 23:16:33 +0000
X-MC-Unique: 8ouOqbSxPl2e6lYMDXaiTw-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.47; Mon, 13 Mar
 2023 23:16:31 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.047; Mon, 13 Mar 2023 23:16:31 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Laurent Pinchart' <laurent.pinchart@ideasonboard.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>
CC: "tfiga@chromium.org" <tfiga@chromium.org>, "m.szyprowski@samsung.com"
	<m.szyprowski@samsung.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
	"ming.qian@nxp.com" <ming.qian@nxp.com>, "shijie.qin@nxp.com"
	<shijie.qin@nxp.com>, "eagle.zhou@nxp.com" <eagle.zhou@nxp.com>,
	"bin.liu@mediatek.com" <bin.liu@mediatek.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "tiffany.lin@mediatek.com"
	<tiffany.lin@mediatek.com>, "andrew-ct.chen@mediatek.com"
	<andrew-ct.chen@mediatek.com>, "yunfei.dong@mediatek.com"
	<yunfei.dong@mediatek.com>, "stanimir.k.varbanov@gmail.com"
	<stanimir.k.varbanov@gmail.com>, "quic_vgarodia@quicinc.com"
	<quic_vgarodia@quicinc.com>, "agross@kernel.org" <agross@kernel.org>,
	"andersson@kernel.org" <andersson@kernel.org>, "konrad.dybcio@linaro.org"
	<konrad.dybcio@linaro.org>, "ezequiel@vanguardiasur.com.ar"
	<ezequiel@vanguardiasur.com.ar>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "daniel.almeida@collabora.com"
	<daniel.almeida@collabora.com>, "hverkuil-cisco@xs4all.nl"
	<hverkuil-cisco@xs4all.nl>, "jerbel@kernel.org" <jerbel@kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-arm-msm@vger.kernel.org"
	<linux-arm-msm@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "kernel@collabora.com"
	<kernel@collabora.com>
Subject: RE: [RFC 2/4] media: videobuf2: Replace bufs array by a list
Thread-Topic: [RFC 2/4] media: videobuf2: Replace bufs array by a list
Thread-Index: AQHZVddlMXgQQm2s8UOyg8hXE6z+xq75Vx6A
Date: Mon, 13 Mar 2023 23:16:31 +0000
Message-ID: <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
 <20230313181155.GC22646@pendragon.ideasonboard.com>
In-Reply-To: <20230313181155.GC22646@pendragon.ideasonboard.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_161640_843538_687DBFAE 
X-CRM114-Status: GOOD (  11.34  )
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

From: Laurent Pinchart
> Sent: 13 March 2023 18:12
> 
> Hi Benjamin,
> 
> Thank you for the patch.
> 
> On Mon, Mar 13, 2023 at 02:59:14PM +0100, Benjamin Gaignard wrote:
> > Replacing bufs array by a list allows to remove the 32 buffers
> > limit per queue.

Is the limit actually a problem?
Arrays of pointers have locking and caching advantages over
linked lists.

...
> > @@ -1239,8 +1242,12 @@ static inline void vb2_clear_last_buffer_dequeued(struct vb2_queue *q)
> >  static inline struct vb2_buffer *vb2_get_buffer(struct vb2_queue *q,
> >  						unsigned int index)
> >  {
> > -	if (index < q->num_buffers)
> > -		return q->bufs[index];
> > +	struct vb2_buffer *vb;
> > +
> > +	list_for_each_entry(vb, &q->allocated_bufs, allocated_entry)
> > +		if (vb->index == index)
> > +			return vb;
> > +
> >  	return NULL;

You really don't want to be doing that....

There are schemes for unbounded arrays.
Scanning a linked list isn't a very good one.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

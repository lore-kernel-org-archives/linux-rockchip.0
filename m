Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C2DEB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 12:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXr96XR49/+m1qb90bRoXPVXwcjKw2XdrjG/u8mnCzQ=; b=rRxkJ1lwerZdiQ
	RCSobE8JwYQqztmYQkRfl8jLc050yhunRk5i3XatEWz2UWe+s5z4U5Hga2ADT43DMLduA9S5m34K0
	5Jq/7lhUuDnzYXBZqGY3hiNOu51xSYm+v5b4GSNj1S8Qp6JrHcac5TeoyV+fpFbqTXh2VeiAhlA7f
	21cIXBNokXfH9MucGdoQSMANGD29ogOYpxGjOKzWbLO9mi5pnp9xk0AQ24AqPgCBZRVdbCdTxOCTI
	NMvM2gYVVgiOWMpdLHD8WXT4QzF7PDYDUyVLUHsBZGQX83XtRUiFhY/CkwwTC89nRUxc2FEBaANzh
	xIXCSEcUZxfywMwsBBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBx32-00EYru-0l;
	Wed, 21 Jun 2023 12:34:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBx30-00EYqx-0P
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 12:34:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4A08161553;
	Wed, 21 Jun 2023 12:34:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34D08C433C8;
	Wed, 21 Jun 2023 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1687350892;
	bh=HUK+2Pf/1vVdz2BpYCSLWgvpypSBQV0pJcvu0NwNaBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IefTF8yyUuBk68bb6/aMl2PZgESWD+7uHcHW86L04b1lA1NSNnPZ/VvrZEpBD62o+
	 YulJV/OjhYm7qlccjPorHdC3ZFUPvOwyBfGdcQYaonY+uVIBSqYIY48zgPGdLHezNx
	 XYHrLEt+aGeeyFO6KANpHhVwT+JN5FxtK0fCvXxU=
Date: Wed, 21 Jun 2023 14:34:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: emma <emma.t.christy@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Subject: [PATCH] media: rkvdec: removed redundant blank
 line
Message-ID: <2023062124-goldsmith-matcher-edbf@gregkh>
References: <20230621092223.10805-1-emma.t.christy@gmail.com>
 <2023062136-drench-pasty-79a2@gregkh>
 <20230621151806.6b56f121@emma-rogzephyrusg14ga401iv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621151806.6b56f121@emma-rogzephyrusg14ga401iv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_053454_198733_39850BF8 
X-CRM114-Status: GOOD (  14.72  )
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

On Wed, Jun 21, 2023 at 03:18:06PM +0300, emma wrote:
> On Wed, 21 Jun 2023 12:51:11 +0200
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Wed, Jun 21, 2023 at 12:22:23PM +0300, emma christy wrote:
> > > Adhere to Linux kernel coding style. Removed redundant blank line.
> > > Issue found by checkpatch.
> > > 
> > > Signed-off-by: emma christy <emma.t.christy@gmail.com>  
> > 
> > You might need to write this as "Emma Christy", right?
> > 
> > Also, your "Subject" line has an additional [PATCH] and "Subject:" in
> > it somehow.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I am sorry for the errors, I am still new at this.
> 
> I did mean to sign as "Emma Christy". Should I resubmit the patch,
> because of this?

We can't accept it because of this issue, and the "Subject:" issue, so
yes, you will need to send a v2 of this.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

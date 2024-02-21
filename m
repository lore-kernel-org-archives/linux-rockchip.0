Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2745FC48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 10:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3z9bFfhEE/PAfJpnp3mzELCqpEKY+Zi/VfY2gwp/l5s=; b=bedkMCi0pmGhWm
	HfXq4eYTG92nmVyLHN5IrOUk+PX9M7nMeia+NPeegGqoF5XU7+UpBy3XRw+oWThQOIoaqkfWK/egS
	bQFNuE8D9xTHKQoylomjCmGCGlvx7gO7xRznMElJ47y51zeWG/ZOyG9hz1jxTgqaRcX6vjH0Nu8dx
	Ya2xwpaVlJlE8pTaOa+XHb2ubl48MPuNuoXb2n5d5e9dYzhWMP9AXqiaJCtcs7iPrR8OxHxMJHBYR
	rW91iYxAmZxS+y6lwbbRbGVGTcsfD08x/wpNWTtUuSGslIR/EyyTjxS4OdNDz+oy6VCkRiyiHgax0
	ETqrzUu4xMfPMorOwuiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd5sk-00000004Of5-0pNg;
	Thu, 22 Feb 2024 10:00:46 +0000
Received: from mail.thrivehub.pl ([164.132.48.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd5sg-00000004Od0-2giW
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 10:00:43 +0000
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
	id 936F025802; Wed, 21 Feb 2024 08:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thrivehub.pl; s=mail;
	t=1708505211; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
	h=Date:From:To:Subject:From;
	b=q+wts4W+kh3mzQcDFYrCt7GkfYWfGtvjAkVTGQ5eZihm6gY+wuHFlnkx5JKlkvvRP
	 cMfTLq6S269tg3K0n2ZsbZinqcByIZJh13MKWv9oCc/qhRichHKRJWWZQM3Lw5wKw1
	 tJdSRoYLsBSOGM0FS28kLbeijbJFYfuJpAHLPPUR2s/lMbGLrB0dtYRIpp5kg7Tx0Y
	 rg8V/4gn03QZyhWnUhx2nwYbGoxHWIvjFbkcW16sf4EG6CerRJmhqH3tegabo8OrgW
	 EAkO8t4rSQvC84mUf5AiZEpjMyCVK/H+gpQAvauLnh0T0pB5Mps3WI3SX3e3Kq/tkg
	 amnRCKAZZoDWw==
Received: by mail.thrivehub.pl for <linux-rockchip@lists.infradead.org>; Wed, 21 Feb 2024 08:45:49 GMT
Message-ID: <20240221074500-0.1.4r.233r4.0.pej0jg6qaa@thrivehub.pl>
Date: Wed, 21 Feb 2024 08:45:49 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_020042_841025_21989F6D 
X-CRM114-Status: UNSURE (   1.62  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpTenlt
b24gSmFua293c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

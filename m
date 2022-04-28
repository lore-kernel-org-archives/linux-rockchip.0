Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B771C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 08:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y3AKDc7WUPAmeNkUzJZsAv/8rQpiPMqTKhBWNv05guA=; b=KoBYIo3yNuLu43
	qotcLL0VkznNEDCjbrfkeDA3kDO/nZ8nDP7nC18qrlwsad3Ab5bTw5I4vgaCsPwz+QZEMLM06h8NW
	rvZDt55xpLqi/3akh7MGT04tUEPZ1rvJL+bxmWvqHI92FZam2SQSm6LfMaZpoQhlAGevgZdzjOHso
	E5fWrQMWOlpdm8S2IrZfJ/u6GL0/Zrlb0SbXOPOoTEnbdz40A+ibKt9o+5qABYxZizpyFjk7/XdF0
	x8pl3EjcmooQLbG1P3KuyDOTSXWE024/XBbPGeT2mraYS/7IO0XZtYChL70DQhSiL0EB6D6EE5gsl
	Q7fNzP2KP/ZGEM3u930Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njzMR-005Sv4-IW; Thu, 28 Apr 2022 08:18:51 +0000
Received: from mail.profitbizdesign.com.pl ([94.177.252.218])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njzM5-005SkB-9z
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 08:18:35 +0000
Received: by mail.profitbizdesign.com.pl (Postfix, from userid 1001)
 id 00DB4A2C08; Thu, 28 Apr 2022 09:12:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=profitbizdesign.com.pl; s=mail; t=1651133579;
 bh=Rfzvu4C+yJ1wyuJ4V+t/udh6cgYEQVnY6S5ltO4wdNg=;
 h=Date:From:To:Subject:From;
 b=PcCG1Va+Im5YLZ2d9xui7hDptoq21+hQid9d7XqxMjCTDJhJSHd56kAqGpRPM+Njx
 rDWHzbaEk9bMZJPo1qwK2IFKZEpf73MltYRtnBwBLwFO0IBHvn4J2nNEyFZYWlP34Q
 6V72Vj2TxSXODCiJhBVZ//IdaM2NiKBZ0EyLknmVsJIJ8pF5EpbhbiXIGpcUaNYsob
 Qdk1jKyIhrkZH6LBNz31gYQMQDzyCqX/CHFw63VTFAx5klA/mXn/YeyHaCNBeWcCa/
 vloHv/KPd9ypG9qR/ReRSIY6VV9DNSAJcQC3U5gvvyDXB1FBk5UuZmRDOR66YOdSRt
 eaWPngV3G6qxg==
Received: by mail.profitbizdesign.com.pl for
 <linux-rockchip@lists.infradead.org>; Thu, 28 Apr 2022 08:10:19 GMT
Message-ID: <20220428074503-0.1.1z.607w.0.pf3i7ib5k7@profitbizdesign.com.pl>
Date: Thu, 28 Apr 2022 08:10:19 GMT
From: =?UTF-8?Q?"Arkadiusz_Soko=C5=82owski"?=
 <arkadiusz.sokolowski@profitbizdesign.com.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Koszty instalacji fotowoltaicznej
X-Mailer: mail.profitbizdesign.com.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_011829_604330_15324BA8 
X-CRM114-Status: UNSURE (   0.64  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RHppZcWEIGRvYnJ5LAoKc3R3b3J6eWxpxZtteSBzcGVjamFsbsSFIG9mZXJ0xJkgZGxhIGZpcm0s
IG5hIGtvbXBsZWtzb3fEhSBvYnPFgnVnxJkgaW53ZXN0eWNqaSB3IGZvdG93b2x0YWlrxJkuICAK
ClNwZWNqYWxpenVqZW15IHNpxJkgdyB6YWtyZXNpZSBkb2JvcnUsIG1vbnRhxbx1IGkgc2Vyd2lz
aWUgaW5zdGFsYWNqaSBmb3Rvd29sdGFpY3pueWNoLCBkeXNwb251amVteSBuYWpub3dvY3plxZtu
aWVqc3p5bWkgcm96d2nEhXphbmlhLCBrdMOzcmUgemFwZXduacSFIFBhxYRzdHd1IG9jemVraXdh
bmUgcmV6dWx0YXR5LgoKTW/FvGVteSBwcnp5Z290b3dhxIcgZGxhIFBhxYRzdHdhIHdzdMSZcG7E
hSBrYWxrdWxhY2rEmSBpIHByemVhbmFsaXpvd2HEhyBlZmVrdHkgbW/FvGxpd2UgZG8gb3NpxIVn
bmnEmWNpYS4KCkN6eSBzxIUgUGHFhHN0d28gb3R3YXJjaSBuYSB3c3TEmXBuxIUgcm96bW93xJkg
dyB0eW0gdGVtYWNpZT8KClBvemRyYXdpYW0KQXJrYWRpdXN6IFNva2/Fgm93c2tpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

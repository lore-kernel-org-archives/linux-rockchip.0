Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AD9BC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 12:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsKa9HyNhPeX6McB25LVg2GPY2NYwkjdW6kJp9Pdp+8=; b=XtFDUVKACKm5ol
	xkXrPCGHhIyWmYUQFUk817RNKHpANzsv0ahvpVWAw0jiCgPR5Fr7Za/t8PCLCTr02o8pBiCf1PMH8
	gj8yC2L6AU34mqVGIhXCDmTgee8yiTM436hja6dI281HxJb7geNfDpjB42oWUt6cOhb/7MCtvWvrj
	azL2LaiBFwIv1NVDpgM6JmTMy0GYmF+7TqmUitbLXlJ20bUSFkZqeSPlWhAR6+ZKp8X4tc5UTRbPd
	Z5yCD2WK+p/bxD6F/H96MJMAZT7kFu6unqeUV+3Rj0d/bTVky2R9rVEVQGzFr/Q21wtkMsgIuk+FQ
	JpY9sHOjq+/1U0qe/Uog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxzY-00000008Ai8-0HUs;
	Thu, 25 Apr 2024 12:14:20 +0000
Received: from mail.haughton.pl ([195.231.81.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxzU-00000008Ag8-17E2
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Apr 2024 12:14:18 +0000
Received: by mail.haughton.pl (Postfix, from userid 1002)
	id 3488585F39; Thu, 25 Apr 2024 09:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haughton.pl; s=mail;
	t=1714030344; bh=+oYP7ZwnEeonL1pLtE73TJ85xaesKIG0Ys99vCW5hiU=;
	h=Date:From:To:Subject:From;
	b=LaLMGn4vvCx2JqbC2bGJxW8BMMgOU8orF8dRplPXM7IuvrYpjRi7V4GJrkbnpumO4
	 +EvHmUj8QF6v5xU1kudzGi4TudMtifatxWgPJxSE3hUX9U2AXY4QVX1d3uGGqNKvEc
	 0iBB9uNMdrF6/PpjGzFLYd0/G0o1PI26Mywcae04MbmAcGXw6FnpXoW8+mKhnKJtmH
	 VsOsPIQvMwz0iFIbqFxrNq6DI1Zu8P67r6sJKIbIeDG63s80f2DnfRFwg4T7hOwMP/
	 C+IQ9wlGWEboh+VRQqajsIv3xM83faPUeARBDoEu7AZiw3yVJwDf/qlTFLfb2zM7Uy
	 goo70K5XJyi3A==
Received: by mail.haughton.pl for <linux-rockchip@lists.infradead.org>; Thu, 25 Apr 2024 07:30:42 GMT
Message-ID: <20240425084500-0.1.1u.quho.0.lb5me598fk@haughton.pl>
Date: Thu, 25 Apr 2024 07:30:42 GMT
From: "Patryk Wysocki" <patryk.wysocki@haughton.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.haughton.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051417_006764_F87D4B1E 
X-CRM114-Status: UNSURE (   0.16  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpQYXRy
eWsgV3lzb2NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C014AC021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 08:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsKa9HyNhPeX6McB25LVg2GPY2NYwkjdW6kJp9Pdp+8=; b=rc+YXxCdqpAqCE
	QPjCV0jK+qLTgpHKONxdOPAxBtJrUwXMTbH6/5nrmXPDNSSF75G+njPSgUAvZNgxaG5NoxOSQ4gui
	dZVeFHr7fbkAEPJ7wveFLttFo5IjBegmPT/xCgBqAQL8+PfaZxv5F2iMolozR/a9DENZ+zXK+N6Gr
	2m+o0pNXVgWKN3n00sxEobGBhfHp+hpOovqAD4Xps1xMvR+DHNsBq5/qr36JtOpUanOq4BTlLpWnc
	DMUGxgmXZU3C3mtSvR9J8GOU74y0zGXa1pwlE0hr0o5DduE14JnMVEy02izE1Vlwud8IyNJlCxnRy
	Mkr8sI9mTC9oPE2MHuJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2MQ-0000000HUFF-2HSI;
	Thu, 20 Feb 2025 08:56:46 +0000
Received: from mail.corporix.pl ([151.80.59.204])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2MM-0000000HUDk-3PEV
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 08:56:45 +0000
Received: by mail.corporix.pl (Postfix, from userid 1002)
	id 85DDD24525; Thu, 20 Feb 2025 08:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=corporix.pl; s=mail;
	t=1740041772; bh=+oYP7ZwnEeonL1pLtE73TJ85xaesKIG0Ys99vCW5hiU=;
	h=Date:From:To:Subject:From;
	b=VJhV/yAKA5+Zdwm/jAC2hBzUdZIyK01fIewPKWjjqh2LjykeYi705jRZVUoXOdnsH
	 BEILU+nyLF4SGsdICQelluiRIu5XPicx5AV6ul84U1ecPRrypJRag7m46mv/hRa0Wg
	 eSZjaSgv6J3ty5qHRf6mce8ZPlfwi/zFplDqjfN5es9I7h34sSrOrhR2tXjubdVt6l
	 eBLwHJh9qAydyYTTyI+Dg1xVbCtIUcfqnAjzAj1FIQwJQBXlGbS/YCos/JDPo6Nodc
	 IxcyFaGGQ/lLXKgM0G8pa85a1aYTSPPmyV1OZTYEIKoXUvOMnREVMlDYscgT5Uidww
	 Gz5ugEC9bFabQ==
Received: by mail.corporix.pl for <linux-rockchip@lists.infradead.org>; Thu, 20 Feb 2025 08:55:51 GMT
Message-ID: <20250220074500-0.1.i.4nzu.0.j0w0b4qu4x@corporix.pl>
Date: Thu, 20 Feb 2025 08:55:51 GMT
From: "Patryk Wysocki" <patryk.wysocki@corporix.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.corporix.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_005643_569975_A0BC80D7 
X-CRM114-Status: UNSURE (   1.34  )
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

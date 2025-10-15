Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85DA0CCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 07:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAhuQD9KVYGvR9VmWCQDVjixn+RIgve1wg7C7ZRiNok=; b=ZON0TRvmDN2hvE
	qQJc8tu//w/QMOitf6ZD7g2pGzhhzrko9RYfCLLeyUk1hqb8ee5n5lhLZXuzPLESnW5Yr9jN4PETN
	adr5moTdWeFJZoAzYsAvErJnLmp+0aR4hD1MaJNEjxWXueJt/frHTejPJvAvLT6p5q/ohArfOQ22z
	arYqQ52eOnXTkk5smj1K8PZOq8LBGxOVpfzEUIMoLDckX/ClIuRuS+T8/8g4Yj+sLHwXqh33YxE8k
	6gKLqjXehH32DUxTKv0VJxGkxHx4G0wLkqkSkhd2wlj5m4JcQB1RH5LbjlUy48cWyr/LY/M9su0qw
	ZtzEX8B3zmjzZcT8BuwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w5w-00000000mbz-0SEc;
	Wed, 15 Oct 2025 07:38:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w5u-00000000mb8-3kWw
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Oct 2025 07:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=C6L3HHo29AD7EhEgKSzsEghpyqJqAdv8Rupc8YaUwX0=; b=mNxhZM4oTVzlfeHM46QiYv9p96
	sBoOsBZtCFTYgpx9AaOguv/VkCYqZ5KaogspCeislqtQg4LL7v3rUQ5GL7lBVa3tFvlsy83yMB6MS
	qO6JL0bv/Csauo+bWs9lAZZMw2T3RLQpmso/AwFBrmHMg65mCLHiHkFTGp7HQ6Jq2OSj7RaLH9r/F
	lNxVJSbdC3FFyq7bwUZ2CJpRpXrZYzdBlk7NFgUvqr7giYRX/xtZTvr6eeD/qO/n6mhkLEWkxnCPS
	Sf30Xx/sipvCDhmKGgPS2Koouo/eW5eynDN4yxYi23tSJCrx/+FeB7mSmTldqZ4Pz7PpcPqqSJ3ej
	475xDY+w==;
Received: from mail.ventrazo.pl ([162.19.155.125])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w5q-00000005mHw-3LiJ
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 07:38:45 +0000
Received: by mail.ventrazo.pl (Postfix, from userid 1002)
	id 6E9D324A71; Wed, 15 Oct 2025 09:36:21 +0200 (CEST)
Received: by mail.ventrazo.pl for <linux-rockchip@lists.infradead.org>; Wed, 15 Oct 2025 07:35:35 GMT
Message-ID: <20251015084500-0.1.lm.5ti15.0.53bsk99l7l@OriginatePro.pl>
Date: Wed, 15 Oct 2025 07:35:35 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@ventrazo.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.OriginatePro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_083843_278320_557D46E8 
X-CRM114-Status: UNSURE (   0.68  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCiAKClBvemRyYXdpYW0gc2Vy
ZGVjem5pZQpNYXJjaW4gV29qY2llY2hvd3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

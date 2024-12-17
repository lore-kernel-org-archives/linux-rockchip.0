Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD5CE7716A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 09:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsKa9HyNhPeX6McB25LVg2GPY2NYwkjdW6kJp9Pdp+8=; b=gOaSCsZvzToPDc
	T5GQkkcv2AnAyQgV7i0C4Jeb7b2Uf0yvU4CYyKD9GeF99NHWX3FdvxO+E9m69YObCynjJtu0ODLNn
	0tlaw4KKksYr67Okjgz8bGs920UqF0DrkFAQ07XF8sz0QuteTjyqI2YjhIsXVspbPQIfIaRHUZ7ZH
	CNWvfMEUBofUj51/ru4fdMAwuMnM7SKA8VBcE5/mcZF0Nv98/LpUyFaucpPR3If3UKBHVp+77eGG8
	hlE8cAdckKDQCneCin0Yy/5BER8tDp+WnGa8eUE/3SHIy+DRGb2P0rYyidxVwrebqYrT2cehry+Ao
	4lqnsWYURqWPTBx11Ovw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNThA-0000000Cs3H-0BYd;
	Tue, 17 Dec 2024 09:16:48 +0000
Received: from mail.analyticsservices.pl ([217.61.0.186])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNTS8-0000000CojE-09L0
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 09:01:18 +0000
Received: by mail.analyticsservices.pl (Postfix, from userid 1002)
	id 7871A84273; Tue, 17 Dec 2024 10:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=analyticsservices.pl;
	s=mail; t=1734426065;
	bh=+oYP7ZwnEeonL1pLtE73TJ85xaesKIG0Ys99vCW5hiU=;
	h=Date:From:To:Subject:From;
	b=ARBA/WIJWQuJMh2nQt61qIv7Dnsz8T87wR0liyjbBjSFAMmTGK9EktyfNSKP0ILRy
	 ZG3D33ZgbVfYiSGkRdCHPwd6wAoVYdl5hBvGua2WnPeiqoHnuJ6XcnbOsMqOBIeBny
	 Ivsq5d9Qlcf6AUQvKluqdfgLYWP5EHSOYiqHJ2MSW++i//SCAqIuPM8NcO7Fms4SE0
	 2TIvPBGj6c0fBskEhyiwCi+dMhzaw9O+DBiY753JzKWsYUz26pM6sVz8eFswYQYdaA
	 TqcoSP9Kwbt4hyQA72MkyNYxBYH61NezVSE3kqigungkiI9TuQeLQa6eCGdAUTj0x5
	 LZ+8AMZV5fYKw==
Received: by mail.analyticsservices.pl for <linux-rockchip@lists.infradead.org>; Tue, 17 Dec 2024 09:00:19 GMT
Message-ID: <20241217084501-0.1.j.41cs.0.0772jcrv3m@analyticsservices.pl>
Date: Tue, 17 Dec 2024 09:00:19 GMT
From: "Patryk Wysocki" <patryk.wysocki@analyticsservices.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.analyticsservices.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_010116_760347_763836EE 
X-CRM114-Status: UNSURE (   1.39  )
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

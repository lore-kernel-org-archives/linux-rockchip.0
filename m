Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B004DC54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 08:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsKa9HyNhPeX6McB25LVg2GPY2NYwkjdW6kJp9Pdp+8=; b=1/tvDoC+GEeAdk
	zT4qf2MdgLEEShBXmsot6axeJS9yCAed3tqAlY/UnUgHHNhlJw7VrjPyQ5ks/X2VD8bNfsutoDeIY
	3ntO2e47UWe10Yohdu0xVXmtT8pci5shGWAhfbpu0d2eHDOXrtKZ3va4+J+LqQC2WpM6bOT3aWAyb
	P7stkTizwXGn+Jh3/KPWn0GLa6/bpl0QSB2DtyHi8naM957h3knv34j0XiATlqYt96/CgyNWiECze
	wETMN1+WKlY5bXUhOt7Qzl3hP2Li2T84qzUdOWbKjZQystg6JRo0byxl98BoQIgFMoSV2iatFo0M9
	5mA6cmqEwZthjgFHMXdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnahs-00000006RvP-2JVS;
	Fri, 22 Mar 2024 08:56:56 +0000
Received: from mail.haughton.pl ([195.231.81.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnahn-00000006Rrw-3Vqn
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 08:56:54 +0000
Received: by mail.haughton.pl (Postfix, from userid 1002)
	id 0596E84993; Fri, 22 Mar 2024 09:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haughton.pl; s=mail;
	t=1711097806; bh=+oYP7ZwnEeonL1pLtE73TJ85xaesKIG0Ys99vCW5hiU=;
	h=Date:From:To:Subject:From;
	b=XhR6VTup7Bk3Z2i3YejSpcE8v8wkxkoPHTpBMXBhw7CiZC5G+OchQi1bIaNXzZvEh
	 teJ0iOe58i1918eZxT68OAsd9WfD71CsprCSTMTBZG98lOXsm/kChve3+v1PBqJ1qW
	 kzFopGtmfzLFcNBXZNukCwPO/4mGA7te5d5lNTmlcX3zA9wZwigzbYdRU1FyCdDByh
	 axuauPo8tVoPlUmnZXoYCJpra4H8/qG5rO+BU48wrFrU50AUsB7tXETCh90+E+/1Ow
	 wn7UkqMNB0Re+WXuiNHVb4Orm98G4HxZSi1g1gwJJvU4DBTUa7AFVsiEZCwgxRaqNA
	 5PZ97wulMVKWA==
Received: by mail.haughton.pl for <linux-rockchip@lists.infradead.org>; Fri, 22 Mar 2024 08:55:52 GMT
Message-ID: <20240322084500-0.1.17.ceri.0.0cx76iwzt6@haughton.pl>
Date: Fri, 22 Mar 2024 08:55:52 GMT
From: "Patryk Wysocki" <patryk.wysocki@haughton.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.haughton.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_015652_586892_24000B5E 
X-CRM114-Status: UNSURE (   1.81  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE11C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9bK/j5vr8XQ3TRw7RFc5iwP1pZgOMqg8dJdRiZbe1U=; b=gxV7dxpRaYjdid
	pPwIuPiCQGYlRMrmu6h3xiNypY48GEomissU5498m8ylwUcrK3/lWFOTLvSkEH+GeDl1uQGU6M7ZP
	32nZFDWEApa6QRMaE3DkcdFkF95TjxsOPAmNpEzjPG2+QWnIlyYivWwGQBBZ6z/BQp8SjoYJ4zZE5
	gksfaxky7jNNGiiTsM5w3WOjXHM0hwM2m++Q+ltpIJZQBDOpeuUcaYIQShHfO88aCo14rvRPThBOa
	8YPNAnnb3qFPW4GQ0sO/5SNzEI6s91GHqVZbFvLfOMxkEcVI9eP3/DVYMAaE9NIrhrqWbbCK62Du9
	x3s+cOTtZN7HoVln0GTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7KA-00Fagd-Bd; Thu, 23 Feb 2023 08:51:34 +0000
Received: from mail.corrib.pl ([185.58.226.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7K7-00Faf0-AE
	for linux-rockchip@lists.infradead.org; Thu, 23 Feb 2023 08:51:32 +0000
Received: by mail.corrib.pl (Postfix, from userid 1001)
	id 74660A269C; Thu, 23 Feb 2023 08:51:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=corrib.pl; s=mail;
	t=1677142291; bh=X6IEpSISwJiYlJ3uA866lskXve3r+4o2hf4z7VM6m5o=;
	h=Date:From:To:Subject:From;
	b=KjLfKX0bQ5zmRtcw7baOIIbfVW7CRSacWOOaiHPLEwy2biTovhrWSsf8JndoxIliq
	 4M2ErzgbfNFXhMPqlvV1QPDQNeLZrbf0VlZ5v6K8brpu5GuD7nmfbbISBkX73Ahnn6
	 8rjLs1rrax2LTnY+YP+VytjJMG+RkVpiAeMYx3w5YCrM/jgZpDfC0bsBp/2ZmYsbeC
	 QM8ctXVrUnhHiQptfA0n9+dZQeBJvI1qFKfMkBagBjqXeC9f9tZeZzhpbvyb/one2y
	 3eenNPZAnYV09dX+2iR/wPTcTK9qT/RQrcssAuqwQ4XNgPsuaitfM54/Ly/cG51GWJ
	 J+5c31koE3ZPw==
Received: by mail.corrib.pl for <linux-rockchip@lists.infradead.org>; Thu, 23 Feb 2023 08:51:03 GMT
Message-ID: <20230223074501-0.1.5o.fihp.0.aquqofo8e2@corrib.pl>
Date: Thu, 23 Feb 2023 08:51:03 GMT
From: =?UTF-8?Q?"Szczepan_Kie=C5=82basa"?= <szczepan.kielbasa@corrib.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Faktoring
X-Mailer: mail.corrib.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_005131_516072_5A2845A2 
X-CRM114-Status: UNSURE (   0.93  )
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

RHppZcWEIGRvYnJ5LAoKcm96d2HFvGFsaSBQYcWEc3R3byB3eWLDs3IgZmluYW5zb3dhbmlhLCBr
dMOzcmUgc3BlxYJuaSBwb3RyemVieSBmaXJteSwgemFwZXduaWFqxIVjIG5hdHljaG1pYXN0b3d5
IGRvc3TEmXAgZG8gZ290w7N3a2ksIGJleiB6YsSZZG55Y2ggcHJ6ZXN0b2rDs3c/IAoKUHJ6eWdv
dG93YWxpxZtteSByb3p3acSFemFuaWEgZmFrdG9yaW5nb3dlIGRvcGFzb3dhbmUgZG8gUGHFhHN0
d2EgYnJhbsW8eSBpIHdpZWxrb8WbY2kgZmlybXksIGR6acSZa2kga3TDs3J5bSwgbmllIG11c3rE
hSBQYcWEc3R3byBtYXJ0d2nEhyBzacSZIG8gbmlld3lwxYJhY2Fsbm/Fm8SHIGtvbnRyYWhlbnTD
s3csIHBvbmlld2HFvCB0cmFuc2FrY2plIHPEhSB6YWJlenBpZWN6b25lIGkgcG9zaWFkYWrEhSBn
d2FyYW5jasSZIHNwxYJhdHkuIApDaGPEhSBQYcWEc3R3byBwcnplYW5hbGl6b3dhxIcgZG9zdMSZ
cG5lIG9wY2plPwoKClBvemRyYXdpYW0KU3pjemVwYW4gS2llxYJiYXNhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

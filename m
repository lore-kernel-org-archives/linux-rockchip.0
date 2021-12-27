Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41857C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Dec 2021 08:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O67HaWuY37vMfzwyjuup9yngpukBlSEIeu7e3OXvbew=; b=au9YoRP1boir4G
	RcmS+Ny8gk1MkfhIBHJRu6+Kma0PvuLsG412g0yqtJ7hrrf0kwLN510eud0jY6Ff5RKQZIaQG85ly
	EK+V/6vPW5hdIJKpiE/o7Ym5Uwey7YWscGQe+5OkTJMU9wnFSC6avOZhUUvocXMBZOUkjAnOIWXIG
	QT8VzNEDbxBJoeJNt1fpgpn7jy+Qg6kP9rzwspSmLG06ivns995VzXGydBEDa8I3H2HKpeuluQhlM
	oeOlYFnbZ9b3dQg4CX5yeXgkcdb29tl3B4uquqxcCNBr2iNXIDbSpYVe8axQIhOV/IBvT8eSxt+2e
	qvNhDl0DMAiSfZcr30Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1liH-00GP19-F2; Mon, 27 Dec 2021 08:50:37 +0000
Received: from mail.portyid.pl ([192.36.61.58])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1liF-00GP0h-9w
 for linux-rockchip@lists.infradead.org; Mon, 27 Dec 2021 08:50:36 +0000
Received: by mail.portyid.pl (Postfix, from userid 1001)
 id 6C26040E25; Mon, 27 Dec 2021 09:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=portyid.pl; s=mail;
 t=1640595033; bh=RZjfFpT9KGSFHXuIOzTjcb+Gwkun4EXriv7y2I0PG0A=;
 h=Date:From:To:Subject:From;
 b=OdggGZwhlicifibbpeezdPIoTByGQu98QBx4EI/OvQj/cZDvCqpX2qDZ91hSaY661
 Y5GAMJcWkeToSd4DAatFyybW33ac4a7Ayegx5kgdcmfxSVEVrNohgjKt23lqGhN9E5
 eIfvSrDGBKFD/Qb317iXATXmQJ1n59VEZqX1ZvuZKS6QUGC7Xd2DhALVhF2vMAuCJD
 AMx6UOZKiLKpYPeUUk6WYGT8WKoXEEL2GOmYqGegXFr9bGx1FlzR2Yte3kmiQpNG7C
 9v0KruWRCk3PgmB1lMobPSpqIxUGLhi8LJrT3VzljYrvaXFQYjZQnoEqQC8RoIpXUN
 2RF1aOkfykFww==
Received: by mail.portyid.pl for <linux-rockchip@lists.infradead.org>;
 Mon, 27 Dec 2021 08:50:05 GMT
Message-ID: <20211227084500-0.1.u.2icj.0.5c1vsage0v@portyid.pl>
Date: Mon, 27 Dec 2021 08:50:05 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Jasi=C5=84ski"?= <pawel.jasinski@portyid.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.portyid.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_005035_528767_C541E6EE 
X-CRM114-Status: UNSURE (   1.32  )
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

RHppZcWEIGRvYnJ5LAoKZG9zdHJ6ZWdhbSBtb8W8bGl3b8WbxIcgd3Nww7PFgnByYWN5IHogUGHF
hHN0d2EgZmlybcSFLgoKxZp3aWFkY3p5bXkga29tcGxla3Nvd8SFIG9ic8WCdWfEmSBpbndlc3R5
Y2ppIHcgZm90b3dvbHRhaWvEmSwga3TDs3JhIG9ibmnFvGEga29zenR5IGVuZXJnaWkgZWxla3Ry
eWN6bmVqIG5hd2V0IG8gOTAlLgoKQ3p5IHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSB3ZXJ5
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0KUGF3ZcWCIEphc2nF
hHNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

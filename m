Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6563BC87FD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 09:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGCjQztw0W69RQuunnx9Er90/zkjNTtoMJon1Jfn99Y=; b=ofQd1ddbf0CRlH
	fVnlvLclNh+6qG7cQI+TzGRNyB42QQ9UEW5qQ0eSVjO18z9e/wLxzL7egQ19t3AFzDcrjamX5NoJa
	eTl1JAl+gL8FSH5z14mtEJHWMaoli9ap2GymGV+TGQZPvyqG7D/eZtGBrtBQaZ1AZa6jySRr918lf
	uh8/G4sC+pH7RTL9vA/m7kY6tWzUv/DIYfPDmYOGcXanGxs+HS7eVbiu4nYI+W7cFfLblOPbtOG61
	hZFMkaXQueXhnPXcAljYw9yx5RoY1ALKqIjvKSupbLiJhv1GoDpYzD5P4p37Z+PTQ3akVrRot+vnp
	f4xFfQZ1c71qhTJp+cBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdJ-0000000CJ4V-16mB;
	Tue, 05 Aug 2025 09:06:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDDM-0000000CDG8-42Sv;
	Tue, 05 Aug 2025 08:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XoPxFNcgJAdEsyWsliRUUMh2F6p8LJA74DV0vc4jgz0=; b=0AJXyO8ipdWn0DQG5vvehlul4J
	rT6iw99nglWoNXDFrqsorX1kPXe7qSddRSeNwmcwkbnDBIWFS1+F5bNXR3/EjdHvXOOI5pbllTwJF
	ENDybyQu5HAY/qfFgl9x8LIPgUwlyIMWIR3yA92I7HrxhIFA4i77bZz80XUlnqWo+cIIpULtJKah1
	H9Xe8mGj4v6+GLoo9i9Rnlp8WAge23Me5DBLTFw97KbLdgUd9PgZvp4ji4Sc/G9idpMH0AKObcEsC
	QLw/ONECJyeoYcuiFbatVCJFb4lxSjV+/lKhbmV4W82WuoGgO8dQFXtfaUoNQ10/APkKP6cl7F9qX
	07tsTzMg==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ujDDH-0004kH-KH; Tue, 05 Aug 2025 10:40:03 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Miaoqian Lin <linmq006@gmail.com>
Cc: linmq006@gmail.com
Subject: Re: [PATCH] media: rkvdec: Fix incorrect NULL check for
 iommu_paging_domain_alloc
Date: Tue, 05 Aug 2025 10:40:02 +0200
Message-ID: <2196043.OBFZWjSADL@diego>
In-Reply-To: <20250805061833.3670085-1-linmq006@gmail.com>
References: <20250805061833.3670085-1-linmq006@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_014009_033067_EABE6B81 
X-CRM114-Status: UNSURE (   8.47  )
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

QW0gRGllbnN0YWcsIDUuIEF1Z3VzdCAyMDI1LCAwODoxODozMyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIE1pYW9xaWFuIExpbjoKPiBpb21tdV9wYWdpbmdfZG9tYWluX2Fs
bG9jIHJldHVybnMgZXJyb3IgcG9pbnRlcnMgb24gZmFpbHVyZS4KPiBSZXBsYWNlIHRoZSBOVUxM
IGNoZWNrIHdpdGggSVNfRVJSIHRvIGNvcnJlY3RseSBoYW5kbGUgZXJyb3IgY2FzZXMKPiBhbmQg
YXZvaWQgaW52YWxpZCBwb2ludGVyIGRlcmVmZXJlbmNlLgo+IAo+IEZpeGVzOiBmZjhjNTYyMmY5
ZjcgKCJtZWRpYTogcmt2ZGVjOiBSZXN0b3JlIGlvbW11IGFkZHJlc3NlcyBvbiBlcnJvcnMiKQo+
IFNpZ25lZC1vZmYtYnk6IE1pYW9xaWFuIExpbiA8bGlubXEwMDZAZ21haWwuY29tPgoKR29pbmcg
ZnJvbSB0aGUgKHN0YXRpYyBpbmxpbmUpIGZ1bmN0aW9uIGRlZmluaXRpb24gWzBdIHRvIHRoZQpp
b21tdV9wYWdpbmdfZG9tYWluX2FsbG9jX2ZsYWdzKCkgZnVuY3Rpb24gWzFdIGl0IHVzZXMsIHRo
ZSBkb2Mgc3RhdGVzCgkiUmV0dXJuIFsuLi5dICBvciBhbiBFUlIgcG9pbnRlciBmb3IgZmFpbHVy
ZS4iCgpTbyB0aGlzIGlzIHRoZSBjb3JyZWN0IGZpeCwKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKClswXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92Ni4xNi9zb3VyY2UvaW5jbHVkZS9saW51eC9pb21tdS5oI0w4NTgKWzFdIGh0dHBzOi8v
ZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE2L3NvdXJjZS9kcml2ZXJzL2lvbW11L2lvbW11
LmMjTDIwNDYKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

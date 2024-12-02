Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3215D10DCF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 09:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YkRhlNlzK2qxHP5U+FaZ8ERbd+qeLdOMQ8YQpBLsC9g=; b=d3syh8Uji/IU3i
	700dThxOVrR2gro1Xuw0vkx+8PTZ+35j1ElbGVWRvjxYITQUd9sVoXwbwRHaFVPJtIQzd+NkOXg5B
	SJUgQad5AXj3jVbf2JXO0k/EpnxmEycMixTOf1oVO0umG80DJgEFNhcNxTjHET+q2oUpi6/4Lr/Lc
	BLsHccr2hszK9oA0ke1vxBCOF5+pzMRvcHhWfmqCq/xAxTi1uUc74mIlgBZMIWGg4Ab08Dt0WDKmd
	FORkzuWY5BjLYMWSMUQ17pF8+RGe+tehWm+ENc4uhCC5kQCNg1MrVTCWDj9eAS6s5z/IdaqkDBx19
	PUfnoiywUJmIuVbdBOAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2We-00000005Wlv-149I;
	Mon, 02 Dec 2024 09:15:28 +0000
Received: from mail.finteras.pl ([5.249.155.118])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2Wb-00000005Wkw-1AS2
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 09:15:26 +0000
Received: by mail.finteras.pl (Postfix, from userid 1002)
	id 032BB83162; Mon,  2 Dec 2024 10:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finteras.pl; s=mail;
	t=1733130924; bh=4SsVKfavNtEL8KiAyuhM0WdCxWV7dwsn0eOpgkwr5fY=;
	h=Date:From:To:Subject:From;
	b=5Xs1DHzGswJdZNj7SpQT3jYknMkVIvQxLQVlcZFFfRSWQz4hozsrNXXEvl8sf9Ewx
	 FxuO7WBmEdN/HFZx17khdtV8eHlOGU5kz6PlxaYPG4lhqrjbSkNtQ8r7EqHR1PCT4B
	 qMA+zNQBVf/oiTBelXOpJspX3zTT89HTV0h00dKBExuMNZCczHnow++CkQ7X2C2sRl
	 8S9e+GBBHBmcvvc1+elgx3IFZlFmO8m1i0M8gTCTunAONAgwdKltkBZNE3BacHBCXb
	 /FwbE0OqoaN5fwZLqgichs4mojKpHmFMtntWHVQjwNpoStJqTG4tDEkZzq90ljXjoM
	 xhZNwfQSTzA/w==
Received: by mail.finteras.pl for <linux-rockchip@lists.infradead.org>; Mon,  2 Dec 2024 09:15:10 GMT
Message-ID: <20241202084500-0.1.57.6s0m.0.lga9tl824d@finteras.pl>
Date: Mon,  2 Dec 2024 09:15:10 GMT
From: "Urszula Kurach" <urszula.kurach@finteras.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pakiety_telemedyczne_dla_pracownik=C3=B3w?=
X-Mailer: mail.finteras.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_011525_458474_6C6FDF8D 
X-CRM114-Status: UNSURE (   1.47  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjaGNpYcWCYWJ5bSB6YXB5dGHEhywgY3p5IGJ5bGlieSBQYcWE
c3R3byB6YWludGVyZXNvd2FuaSBkb3N0xJlwZW0gZG8gbmllbGltaXRvd2FuZWogb3BpZWtpIHRl
bGVtZWR5Y3puZWogcGVkaWF0cnksIG9ydG9wZWR5LCBuZXVyb2xvZ2Egb3JheiBsZWthcnp5IHdp
ZWx1IGlubnljaCBzcGVjamFsaXphY2ppPwoKT2ZlcnVqZW15IDMgcsOzxbxuZSBwYWtpZXR5LCBr
dMOzcmUgemFwZXduaWFqxIUgZG9zdMSZcCBkbyB1c8WCdWcgZG9wYXNvd2FueWNoIGRvIHBvdHJ6
ZWIgUGHFhHN0d2EgZmlybXkuIFBha2lldCBwb2RzdGF3b3d5IGRhamUgbW/FvGxpd2/Fm8SHIGtv
cnp5c3RhbmlhIHoga29uc3VsdGFjamkgaW50ZXJuaXN0eSBuYXdldCB3IHdlZWtlbmR5IGkgxZt3
acSZdGEsIG5hdG9taWFzdCBwYWtpZXQgcGXFgm55IG9iZWptdWplIGRvc3TEmXAgZG8gbGVrYXJ6
eSA0MiBzcGVjamFsaXphY2ppLCBhIHRha8W8ZSBhdHJha2N5am5lIHJhYmF0eSBuYSBiYWRhbmlh
IGxhYm9yYXRvcnlqbmUgaSBkaWFnbm9zdHlrxJkgb2JyYXpvd8SFLgoKRHppxJlraSB0YWtpbSBy
b3p3acSFemFuaW9tLCBQYcWEc3R3YSBwcmFjb3duaWN5IHp5c2thasSFIHdhcnRvxZtjaW93eSBi
ZW5lZml0IHBvemFwxYJhY293eSwgYSBmaXJtYSB6eXNrYSB6bW90eXdvd2FueSB6ZXNww7PFgiwg
bW5pZWogYWJzZW5jamkgY2hvcm9ib3d5Y2ggaSBkb2RhdGtvd2Ugb3N6Y3rEmWRub8WbY2kuCgpD
enkgbW9nxJkgcHJ6ZWRzdGF3acSHIHdpxJljZWogc3pjemVnw7PFgsOzdyBuYSB0ZW1hdCBkb3N0
xJlwbnljaCBwYWtpZXTDs3c/CgoKUG96ZHJhd2lhbQpVcnN6dWxhIEt1cmFjaAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

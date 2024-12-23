Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 326F9E7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 08:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6uFZ74nskGqz2R/EditvN4Kcm4Pn0a2cyZ5Tu8KgSow=; b=Q55ruNJVvO6uOt
	TRoK4Unnm+zxugWVXKo/VHFiDDcztYJ5caknJFXtU0D6hA9/xhV1eJjJeq0O/JAWiFW+udP40udPg
	Ew28FqSCECpmFUsPk6moiMHhpJQ7hcPJXxiyMxuQcmkS+/kmy2cQb/ILx8E9hKBgX3m+M2Xkp0fD5
	CtgzGEYWN2y+vm7ij10BuXUG4Elp35uniufEyYSomPgxW8MZJVE9CDWD8folgedBOammIeSrVDqBH
	WgETnRoyke1qJeNU2WlK2PAFNS/e0z4helY7Fya8mqr9srmPyF1XxKu7ObRhNOy0/DTYS10pp43zU
	zmsw7h1La7OIBuoQm41g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPduo-00000009azv-2HGV;
	Mon, 23 Dec 2024 08:35:50 +0000
Received: from mail.thrivecreator.com ([5.196.14.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPdul-00000009azX-1B48
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 08:35:49 +0000
Received: by mail.thrivecreator.com (Postfix, from userid 1002)
	id 5291A49952; Mon, 23 Dec 2024 09:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thrivecreator.com;
	s=mail; t=1734942941;
	bh=wHe8Z2CRkd+23Wgu4wFeb9QUWOB3kx1YQJoPcO3cm8M=;
	h=Date:From:To:Subject:From;
	b=KJGOycObRyxUqqvL+WaGUel56q005ok48dX9F9REoSBi3Ma/izgsAbi7ZifJPwi0C
	 wt/DHX+CsNYvByCj+YE0o5nc90XKOEBvJFOVxnNtejIri72prE+HF3FiGhIF0+O8/D
	 8RcXwBzyl63Ya3KHrMBZWNW0BfA1CGxprEZ0bL4Yex6HnLKt3wAp2mgtKp87MC9Ti3
	 xUKbYSOLMfRqU321WKCIM7Xv/jzVZKNK+jyhAAaAiCT0K7aBFwoWFNzNGyveDo3WFS
	 a21gw7vMayyt8riWkkm+0C7jngJBp0zFFGmg1Mwtf3VRTlylaTmqAH5JVVYtnXCSiL
	 lFqBfo6+FTyYg==
Received: by mail.thrivecreator.com for <linux-rockchip@lists.infradead.org>; Mon, 23 Dec 2024 08:35:34 GMT
Message-ID: <20241223084501-0.1.6m.x87o.0.eram4crkd9@thrivecreator.com>
Date: Mon, 23 Dec 2024 08:35:34 GMT
From: "Daniel Zawadzki" <daniel.zawadzki@thrivecreator.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Wsp=C3=B3=C5=82praca?=
X-Mailer: mail.thrivecreator.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_003548_043104_F7267CA1 
X-CRM114-Status: UNSURE (   1.35  )
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

RHppZcWEIGRvYnJ5LCAKCkN6eSBpbnRlcmVzdWplIFBhxYRzdHdhIHBvenlza2FuaWUgbm93eWNo
IGtsaWVudMOzdz8KClpham11amVteSBzacSZIHByb2Zlc2pvbmFsbmllIHdzcGFyY2llbSBmaXJt
IHcgdHltIHpha3Jlc2llLiAKCk5hc2kgcGFydG5lcnp5IHp5c2t1asSFIHN0YcWCeSBuYXDFgnl3
IG5vd3ljaCB6bGVjZcWEIG9yYXogemFtw7N3aWXFhCwgYSB0eW0gc2FteW0gendpxJlrc3phasSF
IHN3b2plIHd5bmlraSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcHJ6ZWRzdGF3acSHIHN6Y3pl
Z8OzxYJ5IGRvdHljesSFY2UgemFzYWQgaSBtb8W8bGl3b8WbY2kgd3Nww7PFgnByYWN5PwoKClBv
emRyYXdpYW0KRGFuaWVsIFphd2FkemtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

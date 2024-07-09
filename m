Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7483CC2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 08:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OR9Uef7gOMuPuPNoe7WW7mZ14vBOjTyQao6gkPhGSZY=; b=232SfFii1YZ310
	BXU5vsT2QBkicI2H3r0HJ9+Qx09DNx7md7u7Ctbwm5slWqXEQIH6xwKbzraPx7oj2cDofmic1uoh+
	ySm+4AT8NEtugWIUKM6tuNMYl83Aqu3+q2gt3Zzw65MPCwZI7Pul240+AU418ch/7HwcqUX3CUdeu
	Uou3HV8eqyQ5JqfOLuSR7xheuCZrF2nZ8tTubyC7/Rk9eRxi9Was8Ue4Yv50iNYjRnX6gWTK6QW6l
	I0LvnmPi2kNnZwMLNYLKckYrypKqxzxEXnder0Ub9u1yE86OJzLdxnmjYHHiR1kvHHWYhfZaJQZKj
	KcMgUzJ56YzAqRp21Eiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR64R-00000006Mmw-4BG7;
	Tue, 09 Jul 2024 08:19:32 +0000
Received: from mail.creationavenue.pl ([217.61.16.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR64O-00000006Mln-0VmV
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jul 2024 08:19:30 +0000
Received: by mail.creationavenue.pl (Postfix, from userid 1002)
	id 6DA3483F62; Tue,  9 Jul 2024 10:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=creationavenue.pl;
	s=mail; t=1720512989;
	bh=ChscJKp3Om3FoG8SjFzTAmp7diEPSUZN/W3lUPFw6JM=;
	h=Date:From:To:Subject:From;
	b=Jxbn7wCipeO/w2j7Ka6WC42xFTMWkHj5Yxa+zWDvaKnY4lqgYa0nCM58KkJi6mlXP
	 7n183QUfcNKbQe7ZaBUvbC7kpwH8LJlaqeTJlG74ZaRmshow5nJ256TPIuJHgZC985
	 QaI2BYDRFXB8H/U41igdJzPQqpON60rYrXW+YzCy2JfFFNcsFrwxPDg2cM+bF12Eur
	 OT+qJB9/p/bhymbY5+aqYxW6vKTqglFAqVAqxCezcivWtKqKoDmgFunWSIWNTaTfcZ
	 m0KIGpeJg0Q/WNjh6Y1KBH5bFWw/Q9mOYpMtLiggYtTtD0TulYes58PiLtBSieQmzd
	 gqgKQJ5crOWlQ==
Received: by mail.creationavenue.pl for <linux-rockchip@lists.infradead.org>; Tue,  9 Jul 2024 08:15:57 GMT
Message-ID: <20240709084501-0.1.4o.mhfg.0.ad6t6oznkl@creationavenue.pl>
Date: Tue,  9 Jul 2024 08:15:57 GMT
From: "Karol Winiarski" <karol.winiarski@creationavenue.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.creationavenue.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_011928_844004_1981E118 
X-CRM114-Status: UNSURE (   0.25  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KS2Fyb2wgV2luaWFyc2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

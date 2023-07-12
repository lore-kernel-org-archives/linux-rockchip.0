Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF7FEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 08:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=Q/cTLDiBLHv5Nl
	wONbxklOGhnXY5JwU1v85QBZts76cmP6Jp51602PoIoGxYSmn8WbpP3ndNduTjE/alvq+lIt+HFV1
	0PtNwMeYQv0ka9GaK/k4VuFyH0UhZSlBzoJRrnTqmm1ZyEY/bGUTEXctl6sFiMe7YBOm2Hvj3UZbU
	g3WsTfrCO4ZfXs6f9MQx8uZWHo4k9NdI/nb3Gpm2TppxBGyXgystp51xZ9TCYb6zEjHW4TCBfm91X
	GC1LqMR69UBz/elMxDoHWs9eDoV+C2yTjvcShfNHXM+D/czA5BcNV6hZXYZb3MFvKS9BltSIwamK2
	C/UJCVVvKQpwDv7g7Zjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJUuy-00Grxg-0H;
	Wed, 12 Jul 2023 08:09:48 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJUuv-00Grx9-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jul 2023 08:09:47 +0000
Received: by mail.lokoho.com (Postfix, from userid 1002)
	id 350C7887F6; Wed, 12 Jul 2023 10:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1689149212; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=Fr/pZwyUYZTK6NI6c0em9zvkCOxWPwTHb9mrX93GbyiWu2rnX/19qgjXMZ1DGCF2j
	 k7D02tnj1xqhvD6pn26zmHwI+oftF8uqWfFyp/K4QXdi2bHAsBVuSMmheH/ir/Ukf1
	 eWoqX5C8/QpnG8g5odgleuiE7Y4cnXspgv+tmU90MWMAWJbwod4ZT08tccBXmy9y4l
	 /MRnrh1rGYtST3JCyNikp/tGJhqMvyx/SiQWu0vlJxVDxPep1YpEv/p1b7oDTIuS8r
	 4hDnV7VntDgLeeLwGNqCuPMb3OPmE845VofLQpT2drPdP6R/l5ZjBJLnJUJ7iq2B84
	 Fnv5XsFDjLeag==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Wed, 12 Jul 2023 08:05:10 GMT
Message-ID: <20230712084501-0.1.9.2jki.0.hbm30gnhj0@lokoho.com>
Date: Wed, 12 Jul 2023 08:05:10 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_010946_072870_C949D053 
X-CRM114-Status: UNSURE (   0.67  )
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
YXdpYW0KQWRhbSBDaGFyYWNodXRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

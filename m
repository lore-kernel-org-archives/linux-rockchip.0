Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D656AEB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 09:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=h5KtPKgib3uvCF
	PvRIYqoLO2/sE7qm/1av84mGZZByL/U4fLz004KzxI2OponZyV4SkHYnBaGFdHvpwBP1IllaLqftI
	0ndOxgQC7cXgfdrfWkV5di53hoRai9SbVB3H1v5RLXsNI3JSQqXwRpITQTTESEzej2r4+yEOWOtz6
	U1R0J6OfaWZ7N8KQbJ26NB36KXnpqjny4sUH92WTrDb2MjwQ5PwIZDo7TdEvgIl33nQgSqcR00WKg
	4p+NjGbqA/6L6WfnIekgSaMgsRJhXcbtJOkW3BmDkdrlUAaghU1OlbSN6tYNG05c6+/hRkbv8cxQG
	7FV7gxrd+LtM4N4wE8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9jHk-00EIW2-0s;
	Thu, 15 Jun 2023 09:28:56 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9jHh-00EITZ-1a
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 09:28:54 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 9A3F8878D0; Thu, 15 Jun 2023 10:26:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1686821226; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=fM/QC9BNWy6NSJO96M07ckrkNz1dAcvIet+eLdFaUm2Li1cBDeXAeO3aOWGs5TY69
	 vJGYoSrG9nRm5fLf4PLDKx8+CE/8G2DYP08pA9uGuopzncXcwCHD76SN7NxiZJ8iFi
	 v+6xeFL3YzMUp7Q9jDoO56BiZqMrcc7PLR47pXDD52GX7g6wN2eKPBXb8+b5FoIrVY
	 Ir8WOC0POLwCzy2De4g47GnmhGBRleu2GodybOPikSb9/li4wbKbxgkCS4H8Hq+HzS
	 9zzeWJ7dTPn6iVsbzkOTdiLmh5XASGUMoUaP170qtRGLTVqbde051Bye63Orei3rkf
	 g14HJ2IBFehyA==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Thu, 15 Jun 2023 09:26:02 GMT
Message-ID: <20230615094301-0.1.6n.2mdpc.0.0ugflp4ch7@lokoho.com>
Date: Thu, 15 Jun 2023 09:26:02 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_022853_667670_0FCE1FE2 
X-CRM114-Status: UNSURE (   1.43  )
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

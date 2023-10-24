Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED7F9C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KqtQwC0Xg53DftDbgXxqol4TmBnYWRRi2M+hq/gwK6w=; b=GS/ZpOW/KeG91p
	KuMsbzWQRkTkt1M8zMh+diI0K566T9eMqo1SLFc5wRlaLTCoFZAMFOqD+j7jzMeUSVkIDFwKhJWUA
	3HDW2b1t9g9zZ1/EjyBxMr2qN8k7KK0unJr/yp/0L3rYjTmKLfEWIuvfTpYOoGLwFTZ1OmMJwQK1C
	myEtk4Zp2RVCT5YtUtUpruAXrXphZqqFlc2jZ5isg3vIhW4ml0kOmk227FUIYt46eo0BGk2nX2oEy
	tb36PySZQ4Hwpu4PiF0t3F7RDOLZ3J+Ej9A3IoToBeYLC/EWFyblC+0MRJltMOWX5r8z4VFfTnvHr
	q7e45zF9aAfdeAv3acTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvCQa-0098pf-3D;
	Tue, 24 Oct 2023 08:06:17 +0000
Received: from mail.citycodes.pl ([158.255.215.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvCQX-0098oW-3B
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Oct 2023 08:06:15 +0000
Received: by mail.citycodes.pl (Postfix, from userid 1001)
	id EBBFF1F62D; Tue, 24 Oct 2023 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=citycodes.pl; s=mail;
	t=1698134765; bh=fClkhHu/p6gIm8tbpvFwCqGX3kXIMdqjiuDdSiYGEkk=;
	h=Date:From:To:Subject:From;
	b=Nj/QUn2NsgM643O0ubGZLxhDMEYh+hV5Yju75fCdiw/DsaK3Wd4YOSMjcoCkq67gA
	 4RttRG3Bh0btYqBFoPEzca9Xyfmh6nUwyHobDDWjgD8eG7gt3yCGudKGP76mCcUO7k
	 jTnKBi10zP58I2y88TZ8J3qS60xGqSR7w5mxFibSUAkekxLPNuZ8gs89Ej6uaUbDpF
	 2fSkzLtjZhWfSEH6V0D7nNIQjCxRuzzQwmuGRAJdAhr9yC8XSVQ6f+y1TOcp8i0eJR
	 8SPzNZtypzXnDDLIr8MpWfzOJyaGRznKDCj+szS+iu4nVwXoVD0PADQEPzdbFAIbw1
	 Kc3dJegkXxmbg==
Received: by mail.citycodes.pl for <linux-rockchip@lists.infradead.org>; Tue, 24 Oct 2023 08:05:40 GMT
Message-ID: <20231024084500-0.1.8a.l7sw.0.3nv0jpoz5l@citycodes.pl>
Date: Tue, 24 Oct 2023 08:05:40 GMT
From: "Kamil Lasek" <kamil.lasek@citycodes.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.citycodes.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_010614_179522_A5D3E79E 
X-CRM114-Status: UNSURE (   0.75  )
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

RHppZcWEIGRvYnJ5LAoKZG9zdHJ6ZWdhbSBtb8W8bGl3b8WbxIcgd3Nww7PFgnByYWN5IHogUGHF
hHN0d2EgZmlybcSFLgoKxZp3aWFkY3p5bXkga29tcGxla3Nvd8SFIG9ic8WCdWfEmSBpbndlc3R5
Y2ppIHcgZm90b3dvbHRhaWvEmSwga3TDs3JhIG9ibmnFvGEga29zenR5IGVuZXJnaWkgZWxla3Ry
eWN6bmVqLgoKQ3p5IHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSB3ZXJ5ZmlrYWNqxIUgd3N0
xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0sCkthbWlsIExhc2VrCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

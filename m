Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372CDC5475B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Mar 2024 08:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62vz7B/x81CK097hikhKZcfdaVRNcMR09HiHViMy9g0=; b=TYJTOQmrHllCXR
	cStlV8O5Z1TCSUsE4LF1PwCISCFtTsF/0gl0GL1wiurWNVJaDXeyJ2Kv9gbNsCETklwIHRNse+FZF
	FZfKfcROmVriGE6D1L/RHAJD0wDYoMiykwh9W45gMflGu5jGVOPq2VE6MvdLjtgTW0KPCU8TwzATI
	K5y1RZCNvbfvFgFU94IJecfDCK1chcLgElPXQzMrr7xPcriFjYy9IPVd+4SMT2CcDfqdaBEMoEgZA
	9LYRrFhMMqpRDkZ075flCQvWKDTi4g6lJfHMdAEZjG7hGykjT/ISbZXwcDBm1N+SERp/+S7qOwO+4
	xIzgUAa71pWaj/maSWOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhml3-0000000Gvc6-2PVy;
	Wed, 06 Mar 2024 08:36:13 +0000
Received: from mail.tradeharmony.pl ([5.196.29.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhmky-0000000GvaK-33HK
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Mar 2024 08:36:11 +0000
Received: by mail.tradeharmony.pl (Postfix, from userid 1002)
	id 71C1623900; Wed,  6 Mar 2024 08:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tradeharmony.pl;
	s=mail; t=1709714158;
	bh=niuXEqqR8RnV+jmqddfR0pqtgAFtRJIUEsYODsA2d0w=;
	h=Date:From:To:Subject:From;
	b=U3YmWbw05zqiIhlDGavd0tJcrnresX1/xWZLiw+DxFom9V0lg9Ii7bc6cQ5B+QAQ7
	 zVUEhdgxEfc+bcghAw7unrZdORUBX0RH8aVNAsMFVedwULwg2WKukzxKBZY83G9vHB
	 vypOHA2AqbGefjYbQdgRFVmXDpc2lf7BXKsoqCad5bAm13CPgVG4V8mmfckpLc+bfv
	 AmslM8b5yz1Qp3fUa+i0KeAkJOcVTDYqW9kinw80AcqT4M7wmZw5wWBwq/1tWZAsbV
	 I15R56Lll7d6fLzafIHvgPaGot1QcgxbuFB3h4f/Jse1253VsU1gV53Se9xXYqdFz/
	 go6Z9bz+QS2eg==
Received: by mail.tradeharmony.pl for <linux-rockchip@lists.infradead.org>; Wed,  6 Mar 2024 08:35:40 GMT
Message-ID: <20240306074500-0.1.4y.1vg3i.0.limcdtp5jf@tradeharmony.pl>
Date: Wed,  6 Mar 2024 08:35:40 GMT
From: "Karol Michun" <karol.michun@tradeharmony.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu 
X-Mailer: mail.tradeharmony.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_003609_503544_5750770D 
X-CRM114-Status: UNSURE (   0.95  )
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

RHppZcWEIGRvYnJ5LAoKY2hjaWVsaWJ5xZtteSB6YXBld25pxIcgUGHFhHN0d3Uga29tcGxla3Nv
d2Ugcm96d2nEhXphbmlhLCBqZcWbbGkgY2hvZHppIG8gc3lzdGVtIG1vbml0b3Jpbmd1IEdQUy4K
ClByZWN5enlqbmUgbW9uaXRvcm93YW5pZSBwb2phemTDs3cgbmEgbWFwYWNoIGN5ZnJvd3ljaCwg
xZtsZWR6ZW5pZSBpY2ggcGFyYW1ldHLDs3cgZWtzcGxvYXRhY3lqbnljaCB3IGN6YXNpZSByemVj
enl3aXN0eW0gb3JheiBrb250cm9sYSBwYWxpd2EgdG8ga2x1Y3pvd2UgZnVua2Nqb25hbG5vxZtj
aSBuYXN6ZWdvIHN5c3RlbXUuIAoKT3JnYW5pem93YW5pZSBwcmFjeSBwcmFjb3duaWvDs3cgamVz
dCBkemnEmWtpIHRlbXUgcHJvc3RzemUgaSBiYXJkemllaiBlZmVrdHl3bmUsIGEgb3N6Y3rEmWRu
b8WbY2kgaSBvcHR5bWFsaXphY2phIHcgemFrcmVzaWUgcG9ub3N6b255Y2gga29zenTDs3csIG1h
asSFIGRsYSBrYcW8ZGVnbyBwcnplZHNpxJliaW9yY3kgb2dyb21uZSB6bmFjemVuaWUuCgpEb3Bh
c3VqZW15IG5hc3rEhSBvZmVydMSZIGRvIFBhxYRzdHdhIG9jemVraXdhxYQgaSBwb3RyemViIG9y
Z2FuaXphY2ppLiBDenkgbW9nbGliecWbbXkgcG9yb3ptYXdpYcSHIG8gbmFzemVqIHByb3Bvenlj
amk/IAoKClBvemRyYXdpYW0KS2Fyb2wgTWljaHVuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

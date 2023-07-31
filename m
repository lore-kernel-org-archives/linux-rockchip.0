Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53523C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 08:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3bQDHVXw6Pzw8PhStZEUgP+p8oUYoauj9T6yNxdVu4A=; b=Qn9H0DfsZGG8Ij
	UJYzBE579zxZyoCXNGXHXoylZsOcdwFaxDDXtmPaFmyFKpZbb8LGzPsxjzGtulpi1WJAcuSFhmJ7y
	xR2KITKl13ylu4yYGW/MWeDEOTYAoNgb4UcBZMICWPk41rO57OfdMNU464JE9gPDRo09xmuyLRht7
	2ix2TknlKIqs8C+T8yYRgni8xY7trlaT+hBOMur903KGklECB0uTZ3dnpYDDUFvmm1mEMaFiB6z42
	hBF2YM39iTUBB4eYcVXR8tuO9pKIiALW76QwM6vkdJmwIBEt9xDstT3fVRN4BNNgqP2E4fqCrE9NK
	r5dPljhfY5FOpPCE/K7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQORS-00EZVl-0D;
	Mon, 31 Jul 2023 08:39:50 +0000
Received: from mail.cothiafon.pl ([217.61.106.23])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQORP-00EZUV-19
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 08:39:48 +0000
Received: by mail.cothiafon.pl (Postfix, from userid 1002)
	id 4CDD983C7D; Mon, 31 Jul 2023 10:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cothiafon.pl; s=mail;
	t=1690792665; bh=dwoca0X6C9VXklO/zRgFQCPapTk5LFz4tKaENdvy6Po=;
	h=Date:From:To:Subject:From;
	b=tm36D7tBkPIWrc/vwjjrNbcxqTrW8bj1DaFp59FzsnXcfzgkeDvRJTwrDpYTiHWi5
	 hz39cSWSPdxl2oloy7t0hIwn/3e/KWTtWjq+3cwSmlESexfT+GgDaKF+x8nBNqwITF
	 SL2w3nEgGiwf9pD0FW1KVXI2m6SgK78buk7fwCXxkjCiBM9WCpxNs06AO7yFrSHsjM
	 inP23yTE+v6z/Rz56hY2rWIkO8MhcWlLNzlp/EE7R/9ToTadlirza35vzt5HdTTsT5
	 tRq6jA4lEiZDeCspK6W4zRHbXXq4Vn/VokWtjWRlnvalQQM+ZucSHeAKQFbLnenxQo
	 ABvhQtqI6om+A==
Received: by mail.cothiafon.pl for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 08:35:48 GMT
Message-ID: <20230731095940-0.1.28.onp5.0.jh9i6zqlkd@cothiafon.pl>
Date: Mon, 31 Jul 2023 08:35:48 GMT
From: =?UTF-8?Q?"Rados=C5=82aw_Grabowski"?= <radoslaw.grabowski@cothiafon.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu
X-Mailer: mail.cothiafon.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_013947_544415_1E54AFB9 
X-CRM114-Status: UNSURE (   0.52  )
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
amk/CgoKUG96ZHJhd2lhbQpSYWRvc8WCYXcgR3JhYm93c2tpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

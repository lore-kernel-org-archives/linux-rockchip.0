Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E8BC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 08:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNMy8OrvNBq1OfxNTlfxdFhI4xOPRYK3/+Wff7tvxjY=; b=JnFmpFFVIlNF4D
	IbgFx9Zc2fBqlLkh6iQ3Ue0gThLFGpoY/1Nuf70MWMa7UYPcngXQWP30CnDG0/t/JBE0eG59/izb4
	4Lb6/NCOmXlDsDOEvzgWw1+sgZmtnmsrxRge4gcvWoFEoDPPGrcwVQkXddHA/d6xwyZGm/u30mSN4
	KNTJV5lNa+5r8RnCCU7UoVtxIlhPJ9XUeAsLNTyro6y6z3aDTh7GQuOVcxtzoYRUFeO3NjEwSvMFI
	MdF85BtG5hKIp/S83QZG2zvvBnrUVtcVmngGhDKoWPAi5LoRYHM/7Fj4qhIy7pt3MGULNv79A3Ss7
	bndNnSzLEAE2bJBgGi9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqCJ-00000002lSg-0uCD;
	Fri, 16 May 2025 08:13:39 +0000
Received: from mail.genbiz.pl ([94.177.225.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFq9E-00000002ko2-1e4f
	for linux-rockchip@lists.infradead.org;
	Fri, 16 May 2025 08:10:29 +0000
Received: by mail.genbiz.pl (Postfix, from userid 1002)
	id 043F383377; Fri, 16 May 2025 10:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=genbiz.pl; s=mail;
	t=1747383027; bh=LcirBK93cQ+85aSOiW37iCYU65joqNAj97HHfwOn6nA=;
	h=Date:From:To:Subject:From;
	b=xUnQfpFtgXvRADGQmHsqToxsmvlvvsyCykWK1H6hSd9t7rgtNsypozLhZMY23KuT3
	 hIzkG1vOdCzbcgSZCuihGqYNKo6krbwF359xjMIooox4y1+zoeyEkVp2rjfEGrd8A0
	 PR5MeBdbPAGMxNK22svRYXd55SVGFC5ivm9aUwAV4vW5h+91jomTqOIbNNKVhI7mhQ
	 EYZ05nNRIER0E0nLKxJfDqmp0TtuYvel9uCd9pybfe0sUY792LeIJxZ4vCAAN3QSls
	 Z8Wru6M3Kma+E7MhYVM3KTsDIgVd+kvQOQuo3d52/ug+JWxNkZJ+NikcgRp1I1VbpC
	 Rh6f7/O7mpWYw==
Received: by mail.genbiz.pl for <linux-rockchip@lists.infradead.org>; Fri, 16 May 2025 08:10:26 GMT
Message-ID: <20250516084500-0.1.1e.1x50.0.g3q19esfky@genbiz.pl>
Date: Fri, 16 May 2025 08:10:26 GMT
From: =?UTF-8?Q?"Rados=C5=82aw_Grabowski"?= <radoslaw.grabowski@genbiz.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu 
X-Mailer: mail.genbiz.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_011028_564687_0477B41F 
X-CRM114-Status: UNSURE (  -0.07  )
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
amk/IAoKClBvemRyYXdpYW0KUmFkb3PFgmF3IEdyYWJvd3NraQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

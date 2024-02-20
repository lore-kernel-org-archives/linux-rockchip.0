Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAF7C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 08:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62vz7B/x81CK097hikhKZcfdaVRNcMR09HiHViMy9g0=; b=FbwX4sfks8Grhh
	AsVMLig0utuExJit+JHreb6g2kQEgyjHuViX1ZHCJfFaJxi39w856OdrQY1QV7m+zfu2aojLJvM3k
	Ggi/BsnYLNOKAsn5JXFKAJpROGxvleGW5W0cNq2CnNIZIe9ALorwCdBj8uJCqHduLfRAsiRbHaYJk
	44b+cuU1jjMqXr+ZHb1lbZjTTMV0jtDiceoRGkYYh/J9y9eu2uHTORQg5Xjb6No4QIe9BEJSxtQ86
	JcnuJuhEh9MTCLpuz+Up8JwQDOOwzG9Y4CyMs9rSUD2pK3N/qfQZFjp5Fy05mPRaOMdwuD6f4aMLX
	g5+zEX2Lf8OMYIgsZLvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLX0-0000000Dit5-3o3G;
	Tue, 20 Feb 2024 08:31:14 +0000
Received: from mail.tradeharmony.pl ([5.196.29.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLWx-0000000DiqY-3TeQ
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Feb 2024 08:31:14 +0000
Received: by mail.tradeharmony.pl (Postfix, from userid 1002)
	id 373322385A; Tue, 20 Feb 2024 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tradeharmony.pl;
	s=mail; t=1708417863;
	bh=niuXEqqR8RnV+jmqddfR0pqtgAFtRJIUEsYODsA2d0w=;
	h=Date:From:To:Subject:From;
	b=UMEKBakl+OP61YAzCwr+3fHYq9kMXS/zA96wGCVnWzpTFLTvkZFH7EJENRSYMqn1F
	 z6oOgkpBv31kkFLANhkj8UKY0FVqQANXZIrqHomfPeYS5rcNimwxnAcC79/vBXty4i
	 Lz7wzzaL5rdnlFuRonAojXSpG3qi75tBthjWwYMJAkOL/nKrWoJaGNmqA3w17N4+Ge
	 dah46WjhiNQhj+48b0JS1+Ke8aGKIeCm/5L2oWTWfVR7D4YgFZpL9vHFFuL7sJQ5HN
	 mlj3WkrvWlW4fVLGJWAp7YjE/rAhtfgmTGHFjPy8xwiNII1fVMh6SM8Hpw3zrQwBGN
	 nC7twb/+ugJqQ==
Received: by mail.tradeharmony.pl for <linux-rockchip@lists.infradead.org>; Tue, 20 Feb 2024 08:30:44 GMT
Message-ID: <20240220074500-0.1.4n.1rdho.0.fplhgy6ba7@tradeharmony.pl>
Date: Tue, 20 Feb 2024 08:30:44 GMT
From: "Karol Michun" <karol.michun@tradeharmony.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu 
X-Mailer: mail.tradeharmony.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_003112_617601_FCC89596 
X-CRM114-Status: UNSURE (   1.17  )
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

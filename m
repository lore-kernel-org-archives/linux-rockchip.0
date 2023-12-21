Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC97DC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 08:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/RzxVwGKKg8K3h2OXUGecDq7FQr+r5tU2p0y6fDHKbY=; b=W4dcdrLX7Ltl4k
	9gupArl+x+K8cfuNH5+i9UzIa397b+BzfB2WzxPNDD3sAfZRwEgFw5PBcE/l9e2hKjKGYu7y5EmEN
	7wKPrSzZkjnd3d0SNT6xJrKcY0XghB9YzqmtlVyx5JdaD750T0ssfXNg+PwAi0Hqb2Y8PeNptLrJp
	lBpXszExGZspa3GF56tbDqXMtyddXAo26n2IWogYvC75EGEmnb7j5SziHdRJjOn3rIUKZCkYJO0VH
	Nmb2Od+XFlEEspmuN6iIOg6RKmNdjNhsRzOPuLw46jX4I/viDDGcTaM+/5wyjYAXszqiAW3klAknS
	WxWjglJLbH5Ca/HyHQbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGEcH-0023nz-0P;
	Thu, 21 Dec 2023 08:41:17 +0000
Received: from mail.craftorigin.pl ([89.116.26.210])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGEcE-0023nb-0z
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 08:41:15 +0000
Received: by mail.craftorigin.pl (Postfix, from userid 1001)
	id 1EBA5BA11B5; Thu, 21 Dec 2023 09:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=craftorigin.pl;
	s=mail; t=1703147453;
	bh=d3JfdnKF+yqPM7qDR3vXc1t2su7fofRjcLVI2iyz1Vs=;
	h=Date:From:To:Subject:From;
	b=FTcozQs4QLN2MJu/Faw0cQenxnyN8l5hZ/OqyfQzesVZaSP1M0pTeWFQzlfhilWY9
	 WT9lhvdO/K9rlwWzJ8GVpvIQb/nB/asANsgfJJy7cclFpCO+NhD1Svg29yG+Ue85MA
	 4S5QXDN7jICacbshsmLJh3ZLbDZpBkzEx6TtyZqDelOkXQspljdIAVGCXz09uqFRPK
	 CFiKyQdkCFBJWZDkQHp6irMy7XHcHCAsfpG20tLZnGbOTu5BWRi96F9zkx+XBCvwTV
	 E1Som3zL86rz4VApCFw5IsTIjOgOO/1bkwVRduuFnx366wbUB9V56RFqWT5QIrMvsI
	 wMTynHbijCKqQ==
Received: by mail.craftorigin.pl for <linux-rockchip@lists.infradead.org>; Thu, 21 Dec 2023 08:30:48 GMT
Message-ID: <20231221084500-0.1.5d.gukr.0.rod449q92r@craftorigin.pl>
Date: Thu, 21 Dec 2023 08:30:48 GMT
From: "Filip Talaga" <filip.talaga@craftorigin.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Organizacja wycieczek biznesowych
X-Mailer: mail.craftorigin.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_004114_490141_58EB78E0 
X-CRM114-Status: UNSURE (   1.09  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjenkgbWFjaWUgdyBwbGFuYWNoIHpvcmdhbml6b3dhbmllIHd5
amF6ZHUgaW50ZWdyYWN5am5lZ28gbHViIGJpem5lc293ZWdvIHcgMjAyNCByb2t1PwoKUmVhbGl6
dWplbXkgdW5pa2FsbmUsIG5pZXphcG9tbmlhbmUsIHBlxYJuZSBhdHJha2NqaSB3eWphemR5IHcg
bmllend5a8WCZSBtaWVqc2NlIG5hIMWbd2llY2llLiBEemnEmWtpIG5pZXN6dGFtcG93eW0ga2ll
cnVua29tIGkgb3JnYW5pemFjamkgYW5nYcW8dWrEhWN5Y2ggYXRyYWtjamkgZ3dhcmFudHVqZW15
IG5hamxlcHN6ZSBuYSByeW5rdSBwcm9qZWt0eSB3eXByYXcuCgpDaMSZdG5pZSBwcnplZHN0YXdp
bXkgcG9teXPFgnkgbmEgd3lrb3J6eXN0YW5pZSByZWFsaXpvd2FueWNoIHByemV6IG5hcyB3eWph
emTDs3cgZG8gbW90eXdhY2ppIFBhxYRzdHdhIHBhcnRuZXLDs3cgY3p5IHByYWNvd25pa8Ozdy4g
TW9nxJkgcHJ6ZWRzdGF3acSHIFBhxYRzdHd1IG5hc3plIG1vxbxsaXdvxZtjaSB3IHR5bSB6YWty
ZXNpZT8KCgpQb3pkcmF3aWFtCkZpbGlwIFRhbGFnYQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

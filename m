Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F7EC55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 22:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hmd4g7t5xBy/j+YbDkZ1CqdWyOYW253g/aZG2i6EjQ4=; b=Pk/xeGobpDLGpg
	CzMdsMsnf57iK450/q93+de7w8yz2h58ka80rGMpCQkdIoZtT68wd4bZJ/iir8LDMMaN1kfQxHX1V
	QtaSVNXZtps2GlYgH3uO4Muup2H4S/GKGyjgJTfeFIJ+V4M8tuxDkixFkZJUB8vkWTD3pSWfJTSrc
	fTFsFxtV6nwu2i0/7SEkhjQXx9juIj9KpVaVthxymqvqOZT7onHS65YnS/YfKmLixHAm0AIdgWOJH
	31Xp+PmelFjN6Zs8Wc9lkrxfO2O8lNiHXY0hE5IgqZ1rz7kBlN342rxR9A4HPpw3UUxhKTkSIYEfv
	JQYcj4IPnP5AGlnPsnag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpZh5-0000000BSZy-2VkM;
	Thu, 30 Jul 2026 22:57:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpZh3-0000000BSZZ-1hei
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 22:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rq6DhXoJSfP2dTmR2uAW9IXm4yZ2ZNBtw1Qq8dDX+to=; b=2ttGjQq6wv/PFdL46LUIruGsJs
	x0IWZtDuHz4T2vVpzCJwdPaGOmT1vJq1THzn7zLG1w0FgQ4VTYnM5r2sltBEKYG7oAiESZNMrXbhR
	8S9xvDph4SY2dxBB9BbZ63PFbwEIE322ZVZGF1caxXAq9F5LvG2RQ22kOfUNjD7BEVn5dVpaLkrHY
	6GRkUGfw9S9Vk3kvpNjuPXd15a3DYfxTQ8qi/rC7oV3P9d1urDQiYZjX7STv/n74BnrRvSI6uMpS6
	YZunVSm3ECSbT83vL+TqGT9SV0fUar5VkJ6ON20mrD5ZKsB67JchJYXuLpI5wp5+DQDobRjenxdA7
	mTKIqsbg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [RFC PATCH v2 2/8] pmdomain/rockchip: add optional per-domain power-on
 settle delay
Date: Fri, 31 Jul 2026 00:57:33 +0200
Message-ID: <10568528.L8ug28u51p@diego>
In-Reply-To: <20260730113239.1417912-1-gahing@gahingwoo.com>
References: <20260718031146.3368811-3-gahing@gahingwoo.com> <3322194.D8ZAKjAxdT@diego>
 <20260730113239.1417912-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_155737_505810_050E70A6 
X-CRM114-Status: GOOD (  10.10  )
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

QW0gRG9ubmVyc3RhZywgMzAuIEp1bGkgMjAyNiwgMTM6MzI6MzggTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IEhpIEhlaWtvLAo+IAo+IFRoYW5rcyBm
b3IgbG9va2luZy4KPiAKPiBVbmRlcnN0b29kIG9uIHRoZSBuYW1pbmcuIFRoZSBzdWZmaXhlcyBk
ZXNjcmliZSB0aGUgZmllbGRzIHRoZSBtYWNybwo+IHNldHMsIHNvIGEgdmFyaWFudCB0aGF0IGFs
c28gY2FycmllcyBhIHdha2V1cCBkZWxheSBzaG91bGQgc2F5IHNvLiBJbiB2Mwo+IEkgd2lsbCBh
ZGQKPiAKPiAgIERPTUFJTl9NX09fUl9HX1coLi4uLCBnX21hc2ssIGRlbGF5LCB3YWtldXApCj4g
Cj4gYW5kIGxlYXZlIERPTUFJTl9NX09fUl9HIHdpdGggaXRzIGN1cnJlbnQgc2lnbmF0dXJlLCB3
aXRoIERPTUFJTl9SSzM1NzYKPiBzd2l0Y2hlZCBvdmVyIHRvIHRoZSBfVyBmb3JtLiBUaGF0IGFs
c28ga2VlcHMgdGhlIGRpZmYgb2ZmIHRoZSBtYWNybwo+IGV2ZXJ5IG90aGVyIFNvQyBnb2VzIHRo
cm91Z2gsIHdoaWNoIGlzIG5pY2VyIHRoYW4gd2hhdCBJIHNlbnQuCj4gCj4gT25lIG5vdGUgd2hp
bGUgSSBhbSB0aGVyZTogRE9NQUlOX1JLMzU3NiBpcyBET01BSU5fTV9PX1JfRydzIG9ubHkKPiBp
bi10cmVlIHVzZXIsIHNvIGFmdGVyIHRoaXMgdGhlIHBsYWluIGZvcm0gaGFzIG5vIGNhbGxlcnMg
bGVmdC4gSSB3aWxsCj4ga2VlcCBpdCBhcyB5b3UgYXNrZWQ7IHNheSB0aGUgd29yZCBpZiB5b3Ug
d291bGQgcmF0aGVyIGl0IGp1c3QgZ2FpbmVkCj4gdGhlIHBhcmFtZXRlciBhZnRlciBhbGwuCgpQ
bGVhc2UgdGhpcyAuLi4gaS5lLiBub3Qga2VlcCB0aGUgdGhlbiB1bnVzZWQgdmFyaWFudCBhcm91
bmQuCkFzIHlvdSBzYWlkIFJLMzU3NiBpcyB0aGUgb25seSB1c2VyLCBzbyBqdXN0IHJlbmFtZSB0
aGF0IERPTUFJTl8qCm1hY3JvIHBsZWFzZS4KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3DA9EA7942
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 19:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUzv3TUHeQX5r0doJ6TVAGPw+ntmuRDALly/93PzeoQ=; b=dRt8wyDyEuPlvu
	9bI22+BYWFmydJ0oe8WPMHyhkH8CGr9Zv0O5oLvwlbUoJOsUV3pfMNkkblIpmgx5wSXv9n7FFaxEz
	QhUceBX7RAwR29yM6Eegm7egslm0c8fjmfqpKIqVoHS4oy7lz62t0kbdQV+6fBfTHHIG63HXfRMY5
	7Phqv9xgkW2w1NVspKUSCIqovO/vyNI94h1AZYgsz9UpUN7IGkyjmaWYGpRn21yRFNwV39ZHDUMn3
	gsUnmoAW/cupz+2TKK7/9fnPnBvKzVaBX9DSjtwfu5JbQKACHft99cqZeV7GNnUUCTiy5LB4/+9QG
	DK443ZjvuHMVB4oX+MbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vniHz-00000008xyK-3QxI;
	Wed, 04 Feb 2026 19:11:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vniHx-00000008xxv-2lwv
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 19:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AvlxKk6Z+fPD7oiPLY3B1Ad44sS1fK31c2Y+vd7naBk=; b=1SXD6hwNUMxn9KdjHPciZR6/op
	cRYRrftmbNUgUpbJ7tCn5xaLuFK1xPKF9JCUvSBfLX7LFgOIT4/YJDOtALUUClCx/3DIW54pkdDlp
	W2UwLF/YLG0FjybCfqT1+jNe1HPULGukyT8kFuI10t0/Km1Og+u4qu1RO6oZZhZF4Y5IJiGRjWrEc
	BBasQXeX1LoH0KyxLbWROYxIXtAHfspJNYZzpNGM11CW3tVe26EAx0cwqXmdym7y0cFHct3duPY2R
	Tg8jnqvl66CPzbzhaz1o/T3mvUGZKjvG+WFlt11OGyOKFNr4k+tjFWQF1B4u15+862eToYmH0bvwg
	//aSfjIA==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vniHr-0070hf-7x; Wed, 04 Feb 2026 20:11:39 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Andrew Powers-Holmes <aholmes@omnom.net>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix rk356x PCIe range mappings
Date: Wed, 04 Feb 2026 20:11:38 +0100
Message-ID: <4208259.Y6S9NjorxK@diego>
In-Reply-To: <1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com>
References: <1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_111145_724490_9F909BCD 
X-CRM114-Status: GOOD (  10.51  )
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

QW0gTW9udGFnLCA1LiBKYW51YXIgMjAyNiwgMDk6MTU6MjggTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4gVGhlIHBjaWUgYnVzIGFkZHJlc3Mgc2hvdWxk
IGJlIG1hcHBlZCAxOjEgdG8gdGhlIGNwdSBzaWRlIE1NSU8gYWRkcmVzcywgc28KPiB0aGF0IHRo
ZXJlIGlzIG5vIHNhbWUgYWRkcmVzcyBhbGxvY2F0ZWQgZnJvbSBub3JtYWwgc3lzdGVtIG1lbW9y
eS4gT3RoZXJ3aXNlCj4gaXQncyBicm9rZW4gaWYgdGhlIHNhbWUgYWRkcmVzcyBhc3NpZ25lZCB0
byB0aGUgRVAgZm9yIERNQSBwdXJwb3NlLkZpeCBpdCB0bwo+IHN5bmMgd2l0aCB0aGUgdmVuZG9y
IEJTUC4KPiAKPiBGaXhlczogNTY4YTY3ZTc0MmRmICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEZp
eCByazM1NnggUENJZSByZWdpc3RlciBhbmQgcmFuZ2UgbWFwcGluZ3MiKQo+IEZpeGVzOiA2NmI1
MWVhN2Q3MGYgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHJrMzU2OCBQQ0llMngxIGNvbnRy
b2xsZXIiKQo+IENjOiBBbmRyZXcgUG93ZXJzLUhvbG1lcyA8YWhvbG1lc0BvbW5vbS5uZXQ+Cj4g
U2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgpzb21l
aG93IEkgc2VlbSB0byBoYXZlIGZvcmdvdHRlbiB0byBzZW5kIHRoZSAiYXBwbGllZCIgbWFpbC4K
CkFueXdheSwgYm90aCBwYXRjaGVzIHdlcmUgYXBwbGllZCAyIHdlZWtzIGFnbywgYW5kIGFyZSBv
biB0aGVpciB3YXkKdG8gdGhlIG5leHQgbWVyZ2Utd2luZG93LgoKV2l0aCB0aGVpciBzdGFibGUt
dGFncywgdGhleSB0aGVuIHNob3VsZCBhbHNvIG1pZ3JhdGUgdG8gb2xkZXIga2VybmVscy4KCgpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44AC6D2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCY1YjhX/eWedv2wlMEszRQCZ3iOdSKbRh6x15IA4s8=; b=Yq/cuQ8KZJGoB+
	NXoOdctOzA5Sz5FrbN1+s7iAc8/6d8p/1Cda09PDqwuip4zUQMNyznyUPhXt7dxtI1lrIaa3MVoYZ
	Eb4QjjsDCiV1zvHawictl54bwIwYRX7ecgvbCeoroQz6yYHPi+dJZ+DL1H9NJCwpU0g8HZttl2BT8
	62QTYkbTTWcZh6js788w/EB1HOgl/9ZMjj4hkbTdL3etkrkFZXKfVweu83b5yAxkNEZulEX3YUKC9
	BtJW6BvGuId6q3HCXSmBc+wNGL5NiJpHe2BSLedsZkoJZgjw5q7FGZ7M9qLrvFYdUlsewdurKYKCh
	bvh/GblohYLOOH599X+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9DM-00000003drp-0alW;
	Tue, 20 Jan 2026 10:44:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9DK-00000003drM-1ThA;
	Tue, 20 Jan 2026 10:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=O2FhviPnC5jz5ZsBAwO6tzGpttxJxSsq9OxCi424fEk=; b=pi4h7G/RQR+F19rHk0ijTGxoVj
	qPB1Nop1AyfZJQbdjdJerJslw5wLJfvX+hr37AvIZmrmbwL3vOOINovFmkElnxI8vyekel45F9bTZ
	fIj7NJsOdjek1zlav7otxy9c3V9zRPGiecgTCOjSYVEL5EpBOtJrcpE7HXFlk5s0DeKivhh6ycK3v
	CH6PKEleudQCtjsiSzAhM0jNGN84pI7jSyOP0LgJtOMrGoX/nFlYYJbEo404ZYfrBOH6/x99rjsRH
	ipvUbvz3Im4c4h9GRlZqUJPeHWnukGpL/ZdSfAu4wENI1+fbAhKVuaFZxKBu2D6v9XdkExed/h330
	CsEvoOCA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9DH-0000000Dpo3-25Ar;
	Tue, 20 Jan 2026 10:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=O2FhviPnC5jz5ZsBAwO6tzGpttxJxSsq9OxCi424fEk=; b=lxZMgDnA7WGotJ0c12IMFqkU7a
	rwtU+DoqMrphu1iorjPcGFxsr1p0/WtuZXWjU9WIWLzaIIDwgRAjmFpdOQr72wpzlEwBRKSxY1jUA
	zpKgaOK1KezXk/bc0zdRwF7YZmrCBgt3CfDv/jmR5HEsJVlsQXdkH02mqs4lak3nNBx/pU6YyXQdL
	W1t7Y+39lfIc1Tmxok2lYKPNC1R9UPgCAimMDW9NEIo2H/i1hxwJBdr+RUtsyVUVsJwuwCeaPrHVM
	9QUlDYrhBFOrjOYNZHJM4IMdbqwJz7kzu0vi+vdAwxQXChIf+0jbUeOWnPBcIZNAi5VLurg7Qy9Tg
	Oqh96xGg==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi9D4-003N5V-46; Tue, 20 Jan 2026 11:43:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
Date: Tue, 20 Jan 2026 11:43:41 +0100
Message-ID: <4083071.q0ZmV6gNhb@phil>
In-Reply-To: <20260109080054.228671-3-andyshrk@163.com>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-3-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_104355_651726_4837EB4D 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgOS4gSmFudWFyIDIwMjYsIDA5OjAwOjQ1IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgQW5keSBZYW46Cj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJv
Y2stY2hpcHMuY29tPgo+IAo+IFRoZSBEVyBEaXNwbGF5UG9ydCBoYXJkd2FyZSBibG9jayBjYW4g
YmUgY29uZmlndXJlZCB0byB3b3JrIGluIHNpbmdsZSwKPiBkdWFsLHF1YWQgcGl4ZWwgbW9kZSBv
biBkaWZmZXJudCBwbGF0Zm9ybXMsIHNvIG1ha2UgdGhlIHBpeGVsIG1vZGUgc2V0Cj4gYnkgcGxh
dF9kYXRhIHRvIHN1cHBvcnQgdGhlIHVwY29taW5nIHJrMzU3NiB2YXJpYW50Lgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KCldoaWxlIERtaXRy
eSBoZWxwZWQgYSBsb3Qgd2l0aCBsb29raW5nIGF0IGJyaWRnZSBkcml2ZXJzIHJlY2VudGx5LApJ
IHRoaW5rIHlvdXIgcmVjaXBpZW50IGxpc3QgZG9lcyBtaXNzIGEgbnVtYmVyIG9mIG90aGVyIHBl
b3BsZQpsaXN0ZWQgYXMgYnJpZGdlIHJldmlld2Vycy9tYWludGFpbmVycy4KCiQgc2NyaXB0cy9n
ZXRfbWFpbnRhaW5lci5wbCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlCkFuZHJ6ZWogSGFqZGEgPGFu
ZHJ6ZWouaGFqZGFAaW50ZWwuY29tPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUyBGT1IgQlJJREdF
IENISVBTKQpOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gKG1haW50
YWluZXI6RFJNIERSSVZFUlMgRk9SIEJSSURHRSBDSElQUykKUm9iZXJ0IEZvc3MgPHJmb3NzQGtl
cm5lbC5vcmc+IChtYWludGFpbmVyOkRSTSBEUklWRVJTIEZPUiBCUklER0UgQ0hJUFMpCkxhdXJl
bnQgUGluY2hhcnQgPExhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gKHJldmlld2Vy
OkRSTSBEUklWRVJTIEZPUiBCUklER0UgQ0hJUFMpCkpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJv
by5zZT4gKHJldmlld2VyOkRSTSBEUklWRVJTIEZPUiBCUklER0UgQ0hJUFMpCkplcm5laiBTa3Jh
YmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+IChyZXZpZXdlcjpEUk0gRFJJVkVSUyBGT1Ig
QlJJREdFIENISVBTKQoKQXMgeW91J2xsIG5lZWQgdG8gZG8gYSB2MiBmb3IgdGhlIGJpbmRpbmcs
IHBsZWFzZSBhZGQgdGhlIG1pc3NpbmcgcGVvcGxlCnRvIHRoZSByZWNpcGllbnRzLgoKCkZvciB0
aGUgY2hhbmdlIGl0c2VsZiwgY2FuIHlvdSBpbXByb3ZlIHRoZSBjb21taXQgbWVzc2FnZSBhIGJp
dC4KCkkgYXNzdW1lIHRoZSBTaW5nbGUvRHVhbC9RdWFkLVBpeGVsIGNvbmZpZyBpcyBhIHJlYWwg
aGFyZHdhcmUtZmVhdHVyZQp0aGF0IGlzIHNldCB3aGVuIHRoZSBJUCBpcyBpbnRlZ3JhdGVkIGlu
dG8gdGhlIHNvYz8gT3IgdGhpcyBhIHJ1bnRpbWUKc2V0dGluZyBhbmQgYSBzb2MgY2FuIHN1cHBv
cnQgbXVsdGlwbGUgb3V0cHV0IHZhcmlhbnRzPwoKClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

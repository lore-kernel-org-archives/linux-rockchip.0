Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88416C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlBZ5HjSH2mZBtq4dk1ZnsXi/Zu6uWwjnF43L2+21cs=; b=e7ofzdrDrepHuK
	hIf9LM/g1+Xo9rea5NEMAfUAd0XAil1BpHrXoOgxlsX5Eov7B2Zc547yqGnRXouaATewyCnUxf/hX
	Rs4WEFZ6725X9K0zbBJ30DH+EsNArASAU2sJfTzdjiz5qujmcesWkqUXyV/mM91rNYP7fXALbM2lt
	IaBOGN6A718MpbsaioV3JmYBpWWPrpV77ryCcaGvB1yctjdEaJ8onTJFh6I7jwoHRkcJftYS7JwxR
	lfJxpI+ucmRg4EZIpvBf5TF4WcAn8q05wwXgJhJXpRuwd2RRzu3wOcu4Xb55QObQ3h3zCbWhmrKBt
	L/VBlEKq6PiVOjS7J6dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7Us-0000000AU7l-1PmL;
	Thu, 06 Mar 2025 09:26:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7Uq-0000000AU7D-1G9P
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 09:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=i03ZXI+7609AAGbV95Aop1hWrPoWoth/Ke5U6QVdYNo=; b=t33nFIPnkd+ZsGPfSAax83vcuK
	yRvYE8KeWFPLsLOG9s059CaYk2lNnlVKO82ARaVr7jvgD2QOiYhf72h1/UWswpkIxewsM3+LQ6DH0
	RGEUDqsQIcGOxwHtsVVZgbu659VQTG4L7PRCWGsDhxxY2s5IloBkwDPCjRe2CW0UST+aPP9oR/tpK
	iXECCMrImzkqkHXJQQ/UYavW5NUKD2BA+OY9EjxVc1ZypOH6P8ythIU1FLrsV6KvNMMtUGY5j2LDk
	h6K2RmpKE19tOhyOTsZq0M41IcoWW0QspVpMW61TghH8b6HB06IGT6BYRK5vj3TrnecozDAdxdPWa
	/nj2qnzA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tq7Ub-0001kw-KD; Thu, 06 Mar 2025 10:26:13 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v14 0/3] Enable HDMI RX controller on RK3588
Date: Thu, 06 Mar 2025 10:26:07 +0100
Message-ID: <2906773.tdWV9SEqCh@diego>
In-Reply-To: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_012628_357655_4F9D461D 
X-CRM114-Status: GOOD (  15.99  )
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

SGkgRG1pdHJ5LAoKQW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMDg6Mjg6MzkgTUVaIHNj
aHJpZWIgRG1pdHJ5IE9zaXBlbmtvOgo+IFRoaXMgaXMgYSBmb2xsb3cgdXAgdG8gdGhlIHYxMyBv
ZiBIRE1JIFJYIHBhdGNoZXMgWzFdLiBIYW5zIHF1ZXVlZCB0aGUKPiBkcml2ZXIgaW50byB0aGUg
bWVkaWEgdHJlZS4gTm93IHRoZSBEVCBwYXRjaGVzIGFyZSBsZWZ0IHRvIGFwcGx5LCBjb3VsZAo+
IHlvdSBwbGVhc2UgdGFrZSBjYXJlIG9mIHRoaXMgc2VyaWVzIGlmIGl0J3MgZ29vZCB0byB5b3U/
IFRoYW5rcwo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDI1
MDMwNDA4NTgxOS4xMDgwNjctMS1kbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbS8KCkxpbnV4
LU1lZGlhLCBoYXMgdGhpcyBzdHJhbmdlICJhcHBsaWVkIiByZXBvcnRpbmcgdGhpbmcgZ29pbmcs
IHNvIG5laXRoZXIKdGhlIHRocmVhZCByZXBvcnRzIHRoYXQgbm9yIGRvZXMgaHR0cHM6Ly9naXQu
bGludXh0di5vcmcvIHNob3cgdGhlIGNvbW1pdHMKeWV0LgoKSWYgeW91IHNlZSB0aGUgZHJpdmVy
IHBhdGNoZXMgYXBwZWFyIG9uIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnLyBiZWZvcmUgSSBkbywK
cGxlYXNlIHBpbmcgdGhpcyB0aHJlYWQgOi0pCgoKVGhhbmtzIGEgbG90CkhlaWtvCgoKPiAKPiBD
aGFuZ2Vsb2c6Cj4gCj4gdjE0OiAtIFJlLWVuYWJsZWQgTE9BRF9ERUZBVUxUX0VESUQ9eSBvcHRp
b24gaW4gdGhlIGRlZmNvbmZpZyBhbmQKPiAgICAgICAgYWRkZWQgYWNrIGZyb20gSGFucyBWZXJr
dWlsIGZvdCB0aGF0IHBhdGNoLgo+IAo+IFNlYmFzdGlhbiBSZWljaGVsICgyKToKPiAgIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgSERNSSByZWNlaXZlciBvbiByb2NrLTViCj4gICBhcm02
NDogZGVmY29uZmlnOiBFbmFibGUgU3lub3BzeXMgSERNSSByZWNlaXZlcgo+IAo+IFNocmVleWEg
UGF0ZWwgKDEpOgo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBkZXZpY2UgdHJlZSBzdXBw
b3J0IGZvciBIRE1JIFJYIENvbnRyb2xsZXIKPiAKPiAgLi4uL2R0cy9yb2NrY2hpcC9yazM1ODgt
YmFzZS1waW5jdHJsLmR0c2kgICAgIHwgMTQgKysrKysKPiAgLi4uL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpIHwgNTcgKysrKysrKysrKysrKysrKysrKwo+ICAuLi4v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzICAgICAgfCAxOCArKysrKysKPiAg
YXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDIgKwo+ICA0
IGZpbGVzIGNoYW5nZWQsIDkxIGluc2VydGlvbnMoKykKPiAKPiAKCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

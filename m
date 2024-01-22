Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2241C46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 21:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pRheBtQ6H5qMuMJ1Gi40jfWNMxUmNj5+o1SQnmHSJ88=; b=txH1b3X04QCVnG
	j5oFLQtcZM5G48gu5LQNZZONlHv8WUvPQD5+8Lk2WYKjEHAS49x72bGpsnqJ3MmRntoq4qmlDwTCV
	kc9nFOSgonoQLI4KmqYvIGQCuZUP4BjDH1knvBGSmcZc6dD3PTILTsiKNNvK0339l9R1/T46R3fYu
	nlhsQw5V6JOtdPGgZ88Aa1B4whA8MOn3OPQW6y8PzlnfVOvuT6NSQVe6NUewljqGZJytAoO5jGDmD
	ZcIm/pzERVoJE5br+90WE6af16cSHgArAvk13Wt4OvlYDk5TyhR42TzBA2slp3pwJz6+9hER2W579
	3edVVAqQVrUjRLyD3zBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1iU-00E9ud-16;
	Mon, 22 Jan 2024 21:20:26 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1iQ-00E9sc-20;
	Mon, 22 Jan 2024 21:20:23 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 79E38DDADBF; Mon, 22 Jan 2024 21:35:14 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	John Clark <inindev@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Andy Yan <andy.yan@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH 0/2] Add the thermal zones of the rk3588 to its dts
Date: Mon, 22 Jan 2024 21:34:56 +0100
Message-ID: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_132022_797301_6AE54FAA 
X-CRM114-Status: GOOD (  13.37  )
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

VGhlIGRyaXZlciBnb3QgYWRkZWQgYmFjayBpbiA0NWQ3YjM4NjdhNWNhYmI5N2ZjMzFmMTYxMjJj
ZGE4NTQwYzNhMzBjLApidXQgdGhlIGR0cyBuZXZlciBnb3QgdXBkYXRlZCwgc28gaGVyZSBpdCBp
cyEKCknigJl2ZSBhZGRlZCBpdCB0byB0aGUgcmszNTg4cyBiZWNhdXNlIHRoYXTigJlzIHdoZXJl
IG1vc3Qgb2YgdGhlCmRlZmluaXRpb25zIGFyZSwgYnV0IEnigJl2ZSBvbmx5IHRlc3RlZCBvbiBh
IHJrMzU4OCBzbyBtYXliZSB0aGVyZSBhcmUKc3VidGxlIGNoYW5nZXMuCgpUaGUgcmszNTg4IFRS
TSBhbHNvIGRvY3VtZW50cyBzbGlnaHRseSBkaWZmZXJlbnQgdmFsdWVzIChpbiBwYXJ0IDEKc2Vj
dGlvbiAxNC41LjMpIHRoYW4gdGhlIGRyaXZlciwgYnV0IEnigJl2ZSBsZWZ0IHRoZSB2YWx1ZXMg
YWxvbmUgc2luY2UgSQpoYXZlIG5vIHdheSB0byBkZXRlcm1pbmUgd2hpY2ggb25lIGlzIChtb3Jl
KSBjb3JyZWN0LgoKT25seSB0aGUgQ1BVIGlzIHByb3Blcmx5IG1hcHBlZCwgYXMgbmVpdGhlciB0
aGUgR1BVIG5vciB0aGUgTlBVIGhhdmUKYmVlbiBhZGRlZCB0byB0aGUgZHRzIGZvciBub3csIEni
gJl2ZSBsZWZ0IHNvbWUgVE9ET3MgdGhlcmUuCgpBbGwgb2YgdGhlIHRoZXJtYWwgem9uZXMgcmVw
b3J0IGFsbW9zdCB0aGUgc2FtZSB2YWx1ZSBvbiBteSByb2NrLTViCmJvYXJkLCBJ4oCZbSBub3Qg
c3VyZSBpZiB0aGlzIGlzIGR1ZSB0byBhIHByb2dyYW1taW5nIGVycm9yIG9yIGlmIHRoaXMgaXMK
dG8gYmUgZXhwZWN0ZWQuICBGb3IgaW5zdGFuY2UsIGFmdGVyIHJ1bm5pbmcgZm9yIGEgd2hpbGUs
IGFsbCBvZiB0aGUKem9uZXMgcmVwb3J0IDQ0Mzg0wqBt4oSDLCBkZXNwaXRlIGhhdmluZyB1c2Vk
IG5laXRoZXIgdGhlIEdQVSBub3IgdGhlIE5QVS4KCkFkZGl0aW9uYWxseSwgdGhlIGFsZXJ0IGFu
ZCBjcml0IHRlbXBlcmF0dXJlcyBoYXZlIGJlZW4gYXJiaXRyYXJpbHkKY2hvc2VuIGJhc2VkIG9u
IG90aGVyIGR0cyBmaWxlcywgbm90IGJhc2VkIG9uIGFueSBrbm93bGVkZ2Ugb2YgdGhlCnRoZXJt
YWwgYmVoYXZpb3VycyBvZiB0aGlzIHNwZWNpZmljIFNvQy4KCkVtbWFudWVsIEdpbCBQZXlyb3Qg
KDIpOgogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgdGhlIHJrMzU4OCB0aGVybWFsIHpvbmVz
CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSB0aGUgdHNhZGMgb24gUm9jay01QgoKIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8ICAgNCArCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSAgICAgfCAxODEgKysrKysrKysr
KysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE4NSBpbnNlcnRpb25zKCspCgotLSAKMi40My4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

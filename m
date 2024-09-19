Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8E1FCE8D63
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sqd7Bel5pNcmuCFPnkH9MdtgnVW8OZ7obvp4g2RziPw=; b=UwWAjH+8nl4thn
	G03dtMparcRQkrwOwFX4VIqw27Y+73ESXKP6LilnlSRUQOzQ9bPi8HnI2dW69edww3UHap25ZqsZi
	3FDFV9Zk+Tp8UYF0cL14AwDa8WZHq37TlEFMNRVpn7IPH8ELHTVeDa9KaWrAHNYhnMm2RpESXjonJ
	H8S7SLL7KglhE44lcrimioLXt445j8gfMbAaLt8d489PXw5QuhfU2beKMizZzN0pCM+r+89cLHvIA
	0BZBHBgHNNK8O3XScjRPPBANv286+IoKqbqWIZv9VMjoQoMREZC0Xht/xI12KSSXpurKOUvCinjhc
	ipZVttrzstkFUNX3RRXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srDJD-00000009twl-3acR;
	Thu, 19 Sep 2024 09:18:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srDJ8-00000009tt3-2B0m
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 09:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726737516;
	bh=AskcAs/7IGdGwwichZGEUf19/IkDbJsPg1sXinT/vnQ=;
	h=From:To:Cc:Subject:Date:From;
	b=Uj+yZL48c+2/7dlNfodatrWifsQHci+kVXeEswOFafkbW1gaiSB3vmQRydJ4ky8UV
	 SufYL/CT+xxHuwgiUygHAW12uyeAcMnmEQEJaaeWdht12cJ0YVV3TaLeUUkinG2M82
	 wNiJxjxhZEJ0QOGzA+xv24t/A0dcrKxkzAs5cbGO10JiQph3alHjrXVz33qcxt8M+/
	 UD8JeWsH1pGJWTGzobirC0ZDYGEk/5/hO1Pmm2cgnHXfSxaQslv5nSE9xGg/lxS7j8
	 ayrMKfnwXupOupdeCz7EJ6Gvgw0NRLFS+uZEr1drc07kKDQzYzUAt8ZOjVrZ3NXcP1
	 rVLbl/YwrMAUw==
Received: from jupiter.universe (dyndsl-091-248-208-160.ewe-ip-backbone.de [91.248.208.160])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7B50117E107A;
	Thu, 19 Sep 2024 11:18:36 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 57159480076; Thu, 19 Sep 2024 11:18:36 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 0/6] Fix RK3588 GPU domain
Date: Thu, 19 Sep 2024 11:12:41 +0200
Message-ID: <20240919091834.83572-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_021838_930933_E0844CB7 
X-CRM114-Status: GOOD (  17.38  )
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

SGksCgpJIGdvdCBhIHJlcG9ydCwgdGhhdCB0aGUgTGludXgga2VybmVsIGNyYXNoZXMgb24gUm9j
ayA1QiB3aGVuIHRoZSBwYW50aG9yCmRyaXZlciBpcyBsb2FkZWQgbGF0ZSBhZnRlciBib290aW5n
LiBUaGUgY3Jhc2ggc3RhcnRzIHdpdGggdGhlIGZvbGxvd2luZwpzaG9ydGVuZWQgZXJyb3IgcHJp
bnQ6Cgpyb2NrY2hpcC1wbS1kb21haW4gZmQ4ZDgwMDAucG93ZXItbWFuYWdlbWVudDpwb3dlci1j
b250cm9sbGVyOiBmYWlsZWQgdG8gc2V0IGRvbWFpbiAnZ3B1JywgdmFsPTAKcm9ja2NoaXAtcG0t
ZG9tYWluIGZkOGQ4MDAwLnBvd2VyLW1hbmFnZW1lbnQ6cG93ZXItY29udHJvbGxlcjogZmFpbGVk
IHRvIGdldCBhY2sgb24gZG9tYWluICdncHUnLCB2YWw9MHhhOWZmZgpTRXJyb3IgSW50ZXJydXB0
IG9uIENQVTQsIGNvZGUgMHgwMDAwMDAwMGJlMDAwNDExIC0tIFNFcnJvcgoKVGhpcyBzZXJpZXMg
Zmlyc3QgZG9lcyBzb21lIGNsZWFudXBzIGluIHRoZSBSb2NrY2hpcCBwb3dlciBkb21haW4KZHJp
dmVyIGFuZCBjaGFuZ2VzIHRoZSBkcml2ZXIsIHNvIHRoYXQgaXQgbm8gbG9uZ2VyIHRyaWVzIHRv
IGNvbnRpbnVlCndoZW4gaXQgZmFpbHMgdG8gZW5hYmxlIGEgZG9tYWluLiBUaGlzIGdldHMgcmlk
IG9mIHRoZSBTRXJyb3IgaW50ZXJydXB0CmFuZCBsb25nIGJhY2t0cmFjZXMuIEJ1dCB0aGUga2Vy
bmVsIHN0aWxsIGhhbmdzIHdoZW4gaXQgZmFpbHMgdG8gZW5hYmxlCmEgcG93ZXIgZG9tYWluLiBJ
IGhhdmUgbm90IGRvbmUgZnVydGhlciBhbmFseXNpcyB0byBjaGVjayBpZiB0aGF0IGNhbgpiZSBh
dm9pZGVkLgoKTGFzdCBidXQgbm90IGxlYXN0IHRoaXMgcHJvdmlkZXMgYSBmaXggZm9yIHRoZSBH
UFUgcG93ZXIgZG9tYWluIGZhaWxpbmcKdG8gZ2V0IGVuYWJsZWQgLSBhZnRlciBzb21lIHRlc3Rp
bmcgZnJvbSBteSBzaWRlIGl0IHNlZW1zIHRvIHJlcXVpcmUgdGhlCkdQVSB2b2x0YWdlIHN1cHBs
eSB0byBiZSBlbmFibGVkLgoKSSdtIG5vdCByZWFsbHkgaGFwcHkgYWJvdXQgdGhlIGhhY2sgdG8g
Z2V0IGEgcmVndWxhdG9yIGZvciBhIHN1Yi1ub2RlLAp3aGljaCBJIHRvb2sgb3ZlciBmcm9tIHRo
ZSBNZWRpYXRlayBkcml2ZXIuIEkgZGlzY3Vzc2VkIHRoaXMgd2l0aApDaGVuLVl1IFRzYWkgYW5k
IEhlaWtvIFN0w7xibmVyIGF0IE9TUyBFVSBhbmQgdGhlIHBsYW4gaXM6CgoxLiBNZXJnZSBSb2Nr
Y2hpcCBQTSBkb21haW4gZHJpdmVyIHdpdGggdGhpcyBoYWNrIGZvciBub3csIHNpbmNlIERSTSBD
SQogICBwZW9wbGUgbmVlZCBpdAoyLiBDaGVuLVl1IHdpbGwgd29yayBvbiBhIHNlcmllcywgd2hp
Y2ggZml4ZXMgdGhlIGhhY2sgaW4gTWVkaWF0ZWsgYnkKICAgaW50cm9kdWNpbmcgYSBuZXcgZGV2
bV9yZWd1bGF0b3JfZ2V0IGZ1bmN0aW9uIHRha2luZyBhbiBEVCBub2RlIGFzCiAgIGFkZGl0aW9u
YWwgYXJndW1lbnQKMy4gUm9ja2NoaXAgUE0gZG9tYWluIGxhdGVyIHdpbGwgc3dpdGNoIHRvIHRo
YXQgb25jZSBpdCBoYXMgbGFuZGVkCgpDaGFuZ2VzIHNpbmNlIFBBVENIdjE6CiAqIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDkxMDE4MDUzMC40NzE5NC0xLXNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20vCiAqIENvbGxlY3QgUmV2aWV3ZWQtYnkvQWNrZWQtYnkvVGVzdGVk
LWJ5CiAqIHN3YXAgZmlyc3QgYW5kIHNlY29uZCBwYXRjaCB0byBhdm9pZCBpbnRyb2R1Y2luZyBh
bmQgZGlyZWN0bHkgcmVtb3ZpbmcgYSBtdXRleF91bmxvY2sKICogZml4IHNwZWxsaW5nIG9mIGlu
ZGVudGF0aW9uCiAqIGZpeCBkb3VibGUgZW1wdHkgbGluZSBhZnRlciByb2NrY2hpcF9wZF9yZWd1
bGF0b3JfZGlzYWJsZSgpCgpHcmVldGluZ3MsCgotLSBTZWJhc3RpYW4KClNlYmFzdGlhbiBSZWlj
aGVsICg2KToKICBwbWRvbWFpbjogcm9ja2NoaXA6IGNsZWFudXAgbXV0ZXggaGFuZGxpbmcgaW4g
cm9ja2NoaXBfcGRfcG93ZXIKICBwbWRvbWFpbjogcm9ja2NoaXA6IGZvcndhcmQgcm9ja2NoaXBf
ZG9fcG11X3NldF9wb3dlcl9kb21haW4gZXJyb3JzCiAgcG1kb21haW46IHJvY2tjaGlwOiByZWR1
Y2UgaW5kZW50YXRpb24gaW4gcm9ja2NoaXBfcGRfcG93ZXIKICBkdC1iaW5kaW5nczogcG93ZXI6
IHJvY2tjaGlwOiBhZGQgcmVndWxhdG9yIHN1cHBvcnQKICBwbWRvbWFpbjogcm9ja2NoaXA6IGFk
ZCByZWd1bGF0b3Igc3VwcG9ydAogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgR1BVIHBvd2Vy
IGRvbWFpbiByZWd1bGF0b3IgZGVwZW5kZW5jeSBmb3IKICAgIFJLMzU4OAoKIC4uLi9wb3dlci9y
b2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwgICAgICB8ICAgMyArCiAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWFybXNvbS1zaWdlNy5kdHMgfCAgIDQgKwogYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgICAyICstCiAuLi4vYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWNvb2xwaS1jbTUuZHRzaSAgfCAgIDQgKwogLi4uL3JvY2tjaGlwL3JrMzU4
OC1mcmllbmRseWVsZWMtY20zNTg4LmR0c2kgIHwgICA0ICsKIC4uLi9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtamFndWFyLmR0cyB8ICAgNCArCiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LW9rMzU4OC1jLmR0cyAgICAgfCAgIDQgKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTUtaXR4LmR0cyAgIHwgICA0ICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMgICAgICB8ICAgNCArCiAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXRpZ2VyLmR0c2kgfCAgIDQgKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMt
Y29vbHBpLTRiLmR0cyAgIHwgICA0ICsKIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMt
ZWRnZTIuZHRzICAgICB8ICAgNCArCiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFu
Z2VwaS01LmR0cyAgfCAgIDQgKwogZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5z
LmMgICAgICAgIHwgMTI5ICsrKysrKysrKysrKystLS0tLQogMTQgZmlsZXMgY2hhbmdlZCwgMTQz
IGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQoKLS0gCjIuNDUuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

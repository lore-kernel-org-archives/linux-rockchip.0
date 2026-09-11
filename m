Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B028DC88E4C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 10:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3DF6SAD9fNexV685O8AymN2sVjiQk5Z+IYTFTvStFQ=; b=SZ/SkBmbLmLqe+
	PTfaq4EjpqcOLPIiu9tuXEcsfdO4IP9X0//FpQnxiYWxpbCTPkOGsrDL3I6j+pUVrN28XzLjuLWmw
	aSzKF5DS589QX2QeSzmtr5rDSOlAfapwtbyBiva+woep+qVWSRIs5urWD6RBdraqPKYtYFjlsJLA6
	kq65AAeEoQ+3XWO0v3tMnoz05ckQD4VW+Mf3MJSIEY2IkppYg3GCBdgZBhau+bWDGe6SjtXm5zllm
	wqBf7tbBR+//URBHIDpwsXVsI6t63LR7IShizVYD35IhUEGk16vwTMxebfUZduXzxiOXxBrp8F/LH
	eVoxKvdZ0EXT1KEY3rDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4y6A-0000000GJzQ-3CJ1;
	Fri, 11 Sep 2026 10:03:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4y60-0000000GJsg-03Jw;
	Fri, 11 Sep 2026 10:03:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1B61460252;
	Fri, 11 Sep 2026 10:02:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAB0C2BCF5;
	Fri, 11 Sep 2026 10:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789120978;
	bh=P0YPesrumASY2chPhCTF+pggK8fjgG4J+tY6vpB+8us=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Zh/OEkdJzRJnTqAU21VfvbSCdAxW4U8GCvkTtBPhh0oVmaot+5VgzGg+RHgxD7tX0
	 PN7qJRzsQbgoLEVKTo/69KPwsYWidvevdk6kiHxm8Sd08Eqv9gJNxTQYmMckuC1xPT
	 JAYkrrgXhgV4w/RypwmlVojzkRRh4X11ZSqYqr4SxSfTwvGdpMCyIkNVvHUEtwKzQk
	 HYWfSpWZR6jIch/NwQ9rfuVJqIMLe8wNPP1BMbIFhqaAnU7d1YHlHkQPsAQij63Hn7
	 fpjb1DhOTF94LfPiPMMarreS9dSg8dOP1WPBqv6A+RAnJlxJgHa+54QlL+YwQA+uNG
	 b0br4btkWF0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C7C88E4C;
	Fri, 11 Sep 2026 10:02:58 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Fri, 11 Sep 2026 18:02:44 +0800
Subject: [PATCH v4 1/4] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260911-r28s-upstream-v4-1-fb6c85f226d4@proton.me>
References: <20260911-r28s-upstream-v4-0-fb6c85f226d4@proton.me>
In-Reply-To: <20260911-r28s-upstream-v4-0-fb6c85f226d4@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, 
 jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=973;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=Al+UNS9q6dX1IoEkQ1GzieWtXOTRL+F7n2qKNKypKz8=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzFFy/2aSt11DMdW9JYU80onHpu8j6Jr5K2PzhMbQ3/R
 y5z85rYUcrCIMbFICumyCK7qTpSaFX0zCIWqeMwc1iZQIYwcHEKwER0oxj+F7Ct0Fp0vkz+3x+f
 Ky0CjTYmk/weFHHXrZ/0KMD/bEGtAVDFftGNdfkLVBZnH1Ut3JbzInWZ8uKYtZNKPfy3Hsq6qc0
 AAA==
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgTmFub1BpIFIy
OFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRoZQpS
b2NrY2hpcCBSSzM1MjggU29DLgoKQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5
QG1pY3JvY2hpcC5jb20+ClNpZ25lZC1vZmYtYnk6IOWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNA
cHJvdG9uLm1lPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwKaW5kZXggODE3NDRmYmVlOS4uNzA5ZTJjYzQ0ZCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCisrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbApAQCAtMzQ3LDYgKzM0Nywx
MSBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9waS1yMnMt
cGx1cwogICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzMyOAogCisgICAgICAtIGRlc2Ny
aXB0aW9uOiBGcmllbmRseUVsZWMgTmFub1BpIFIyOFMKKyAgICAgICAgaXRlbXM6CisgICAgICAg
ICAgLSBjb25zdDogZnJpZW5kbHlhcm0sbmFub3BpLXIyOHMKKyAgICAgICAgICAtIGNvbnN0OiBy
b2NrY2hpcCxyazM1MjgKKwogICAgICAgLSBkZXNjcmlwdGlvbjogRnJpZW5kbHlFbGVjIE5hbm9Q
aSBSM1MKICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgLSBjb25zdDogZnJpZW5kbHlhcm0sbmFu
b3BpLXIzcwoKLS0gCjIuNTUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C07C88E42
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 14:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3DF6SAD9fNexV685O8AymN2sVjiQk5Z+IYTFTvStFQ=; b=qt+oGOJOK9n8/A
	sgL0pcIghjkaRp98Jwkw8WSBCi643vlqvMzAsV7TZSWunxhLMIbaFAQOwUFvs0beEK/EhDJyya12C
	XaTxNzzbU8gvdeyVtq0pzLEq8ZOKG2Rh2uFOHbWu6E0mPND8p8Oy7UODmrB7mgvWD/DIlRtWa91Od
	sYVIZiNYHK8Zw5JJrw/F+syIXPtAJb6y61enkocX4KqwunE04a+9XV/IHwz/iACmLh32yqxYMpx1M
	r6OBjRaBBqx42/pzf1b8i6ElrSKPb+DO15thnvbJXyt/vbhZOs0vc3/tQG9iO44NrCt0A6HA/vWze
	/2c3pBYdPtQ+x1TEU5HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN7-0000000BzIs-3ci9;
	Wed, 09 Sep 2026 14:33:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN6-0000000BzHW-0WxP;
	Wed, 09 Sep 2026 14:33:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ADCE643C39;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B167C2BCF4;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788964435;
	bh=P0YPesrumASY2chPhCTF+pggK8fjgG4J+tY6vpB+8us=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MIexx9cVy7xGow76/SZeKfZHD0bZaN92Lz8u260VU6kk5oGWWDNAQnZhgm6zCFj0U
	 KKcSy/HzsepwFMAPe2quls+aFTsqYUCvQ3pk2MPezEdIsc0Kn7ZFzXSR5yBPDtwlnn
	 4bDowvWTrzDLypaHuKE4Gbmb/yyLnrxNHXB9zk6n+fIM/ex56taQFs+1cd40pm3Qq0
	 R9rV8B2U/GrwkoxPaQibv0W2X8akOUWnaY+WDNMwtJIjDM/To3YS65QZ9+53YEuW7Z
	 3INbK1cFqr59EvzY2Mk7CT/lr/bGORH2oGtiPGaCGYZjxep6oOuHJNumFruWYtaDB/
	 Vtg1jVLXSrRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65563C79FBF;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Wed, 09 Sep 2026 22:33:23 +0800
Subject: [PATCH v3 2/5] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260909-r28s-upstream-v3-2-ee3e1a34a353@proton.me>
References: <20260909-r28s-upstream-v3-0-ee3e1a34a353@proton.me>
In-Reply-To: <20260909-r28s-upstream-v3-0-ee3e1a34a353@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=973;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=Al+UNS9q6dX1IoEkQ1GzieWtXOTRL+F7n2qKNKypKz8=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqyFeYE5T7cwyzTMcrwvk2Sezah6Lip800b/L6Kr+bnf3
 7nNLSPSUcrCIMbFICumyCK7qTpSaFX0zCIWqeMwc1iZQIYwcHEKwEROnWP4H6twYqnoMdddQmfv
 aKlp969MMC13FGA5qhoUGNr0ZcZeI4Z/ljdSjjY0PS35WK54XC3eoqmv7vEj5pd3DlyVENrkc30
 5DwA=
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

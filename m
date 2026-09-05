Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74688C624D6
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 11:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCt5pBQg6FHFiYdflkNL6Vww2kEYQzmz//xpPKU7yEY=; b=m6nMDUfwztV78M
	NmYlR39Z8VXn1oB1WFJ82FAFG58hqIY6tRx+phMdQEPXe0clFPvJxQ+CA6iCOSe1AjeRYa4wqv6w7
	2fVpOjsmUC6XhZMfghXrHwnROzIiFY8p5Y2trD46ifpyPc0Y6AFAF8E2CkwcRlwsET6kZYDt2qI7v
	9M0pi67b3Rl0CfSCC0lLIgUZtTZZ0BZnQyOAL1Ovt/tqMGpges+r1sRDmo6+Qf2Ai5OTwb9sc9ZxN
	Az/2gyZSmwFhHUfjgnvcCzv/SJSxngDDScmuVcT+5J70qaDevmhgvlDKudV5Clvyvn6+05mfmsHwO
	KX145O8u0gxfMO0kKpiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2oT3-000000040qN-07sH;
	Sat, 05 Sep 2026 11:21:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2oT0-000000040oL-1ojP;
	Sat, 05 Sep 2026 11:21:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E5612447AE;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2D7C4AF0B;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788607308;
	bh=8Gwxp5aoWJUfNbbLdYN5LWeAcCfH1LcXcRH62cWgIps=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=t69NQKl8k+lWcDnTDuUnHOqqJXZg04FcbATtudZZVNqhxRbhdM4PVMB7+wyMxkH9I
	 Xjulm1Fx4DlZpjN053CKoBgE22YnTT3ZR96P/AP+Sa0SGFqEZJ9dW0LRuYKo1kCuny
	 g6GlDWGCUdR5hsCg8reHlqXg6/SCH6fNPE6qxLeXpfZHaH+z2s1xR+xloz++M1Lwmz
	 g4YWkgraAoG6v4ZAZy6pSvkjUCJI21V1A7CLGcYv5J6VU3dfEaVat5jI9V035luY+i
	 1WWobptxzrLZ8f36AtAmpTbIxF+QjZpmrXv7naX8DZOqcl0AKBk/R0ohwI3i55I5Xh
	 Nh5e5WtXex1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69B6C624DB;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Sat, 05 Sep 2026 19:17:26 +0800
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260905-r28s-upstream-v1-1-f68d5389269a@proton.me>
References: <20260905-r28s-upstream-v1-0-f68d5389269a@proton.me>
In-Reply-To: <20260905-r28s-upstream-v1-0-f68d5389269a@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 jensen <jensenhuang@friendlyarm.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=920;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=LDAlcJQezbRbao3W92BQlWiQhp4bd/SQs/nEjmwyH1U=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzZv72lDpnbH9m8ciW/mOvuDut/lW3aCyt0ImRn7+Wdr
 Cu5cPKGjlIWBjEuBlkxRRbZTdWRQquiZxaxSB2HmcPKBDKEgYtTACaSlM3wv9RQhMF56/8C16Oz
 TXUWLV32+ebdL8W93jNnzxFczySq9Y6R4fvdcqEjj15HS0zQ5ozqFRdNNkh1mB0pISU03zZIYf8
 CZgA=
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
b2NrY2hpcCBSSzM1MjggU29DLgoKU2lnbmVkLW9mZi1ieTog5a6J5a65IDxIeXN0ZXJpY2FsRHJh
Z29uc0Bwcm90b24ubWU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbAppbmRleCA4MTc0NGZiZWU5Li43MDllMmNjNDRkIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCkBAIC0zNDcsNiAr
MzQ3LDExIEBAIHByb3BlcnRpZXM6CiAgICAgICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3Bp
LXIycy1wbHVzCiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzI4CiAKKyAgICAgIC0g
ZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjI4UworICAgICAgICBpdGVtczoKKyAg
ICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFybSxuYW5vcGktcjI4cworICAgICAgICAgIC0gY29u
c3Q6IHJvY2tjaGlwLHJrMzUyOAorCiAgICAgICAtIGRlc2NyaXB0aW9uOiBGcmllbmRseUVsZWMg
TmFub1BpIFIzUwogICAgICAgICBpdGVtczoKICAgICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFy
bSxuYW5vcGktcjNzCgotLSAKMi41NS4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

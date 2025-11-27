Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E872CD116F3
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymEYa8iu0WIEn6fga/hKiW58u+wiaO22GrnE3WAhH/k=; b=OPKjUOrOVg+Mcy
	3yj/ltIbzV2AMo12l0H+Qf9PLVG91HRaMymIvxtaeg0ch2wNhh6AW+gp/q0+UrpNd1LnJc/6yrRif
	QNVFqlApT0mAuZo88WiLSwJ7Q0rbdkThgrvxYQopPcVtMgWen9pMFow/XQgdNTyMFor2PNWxeY0sn
	4NkriRBhiYNLL+zbZzLaB2oJnDWfmikLvS1qffDD3gcZdF+YFJn7DZIPzYfuLoCgLPoatsAmPQjkd
	gjMHIrmGB5Zh70KKlcphObVS97vT6tk7dcpkcPUdAj5O5oShHDOuRGz+X9Lr7zMFyL983MUrIVgHo
	vfVTSO63O4k76KBosDUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZCu-0000000GNHk-31gX;
	Thu, 27 Nov 2025 10:26:36 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZCq-0000000GNFx-2zqE;
	Thu, 27 Nov 2025 10:26:34 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id DAE1B4E4191E;
	Thu, 27 Nov 2025 10:26:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AE8666068C;
	Thu, 27 Nov 2025 10:26:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F2509102F08C5;
	Thu, 27 Nov 2025 11:26:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764239189; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=7l63rVxiRGiq7jCcyfTKLymE10grTK2AkGEoW3SZhHA=;
	b=rSpNp9b19kpjD7XE6qxhu1DWOp8N/32yB8SHXNyQAl6gZc/TuusDfoaZoU9z48ntFHryXV
	mYxnVm37fkMFQRz1BcyNBpRd2iGa+wdDKbKNJ2o++RJ080Qd9t8ZAW2sOQe0jIJZQNphV+
	i7+9WVvNROgbOEXrPhx+vl45lcoioyxwNIPiaGk/Q1Doztz7TpsYf/mAAmmuu8rY89LxYW
	KGaXfZ487B7fLe+tJuxHnXo009d+pXv8PutZ8FW7Dk1RhiMsqKV+5QzgDBN425vJCdb+BB
	OEtS9zaqrDQH7lgHSvZx9rON2oZuSbQycSuedMIKZ2faYOUCdTqpB3gwPtEJng==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH v2 0/2] phy: rockchip: inno-usb2: fix gadget mode
 disconnection after 6 seconds
Date: Thu, 27 Nov 2025 11:26:15 +0100
Message-Id: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEcnKGkC/43NTQ6CMBCG4auQrh3TDpKiK+9hWNA/mKgtaSuRE
 O5uJR7A5TvJfM/Kko1kE7tUK4t2pkTBl8BDxfTY+8ECmdIMOTZcihbiva55C47e8EoKht4MNsM
 0LmAo6eC91RmMNFYKp7BVJ1ampmjLw87cutIjpRzisquz+F5/AOJ/wCyAA9bnVqLjjRPyqkLID
 /JHHZ6s27btAwt0iRLaAAAA
X-Change-ID: 20250718-rk3308-fix-usb-gadget-phy-disconnect-d7de71fb28b4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, William Wu <wulf@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_022633_125643_D59A8D3D 
X-CRM114-Status: GOOD (  11.13  )
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

VGhlIFVTQiBPVEcgcG9ydCBvZiB0aGUgUkszMzA4IGV4aWJpdHMgYSBidWcgd2hlbjoKCiAtIGNv
bmZpZ3VyZWQgYXMgcGVyaXBoZXJhbCwgYW5kCiAtIHVzZWQgaW4gZ2FkZ2V0IG1vZGUsIGFuZAog
LSB0aGUgVVNCIGNhYmxlIGlzIGNvbm5lY3RlZCBzaW5jZSBiZWZvcmUgYm9vdGluZwoKVGhlIHN5
bXB0b20gaXM6IGFib3V0IDYgc2Vjb25kcyBhZnRlciBjb25maWd1cmluZyBnYWRnZXQgbW9kZSB0
aGUgZGV2aWNlIGlzCmRpc2Nvbm5lY3RlZCBhbmQgdGhlbiByZS1lbnVtZXJhdGVkLiBUaGlzIGhh
cHBlbnMgb25seSBvbmNlIHBlciBib290LgoKSW52ZXN0aWdhdGlvbiBzaG93ZWQgdGhhdCBpbiB0
aGlzIGNvbmZpZ3VyYXRpb24gdGhlIGNoYXJnZXIgZGV0ZWN0aW9uIGNvZGUKdHVybnMgb2ZmIHRo
ZSBQSFkgYWZ0ZXIgNiBzZWNvbmRzLiBQYXRjaCAxIGF2b2lkcyB0aGlzIHdoZW4gYSBjYWJsZSBp
cwpjb25uZWN0ZWQgKFZCVVMgcHJlc2VudCkuCgpBZnRlciBwYXRjaCAxIHRoZSBjb25uZWN0aW9u
IGlzIHN0YWJsZSBidXQgY29tbXVuaWNhdGlvbiBzdG9wcyBhZnRlciA2CnNlY29uZHMuIHRoaXMg
aXMgYWRkcmVzc2VkIGJ5IHBhdGNoIDIuCgpUaGUgdG9waWMgaGFkIGJlZW4gZGlzY3Vzc2VkIGlu
IFswXS4gVGhhbmtzIEFsYW4gYW5kIE1pbmFzIGZvciB0aGUKZGlzY3Vzc2lvbiBhbmQgTG91aXMg
Zm9yIGhhdmluZyBmb3VuZCB0aGUgMXN0IGlzc3VlLCBsZWFkaW5nIHRvIHBhdGNoIDEuCgpbMF0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI1MDQxNDE4NTQ1OC43NzY3YWFiY0Bib290
eS8KCkx1Y2EKClNpZ25lZC1vZmYtYnk6IEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2VyZXNvbGlAYm9v
dGxpbi5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIFBhdGNoIDE6IEZpeGVkIENvLWRldmVsb3Bl
ZC1ieTogYW5kIFNvQiBsaW5lIG9yZGVyCi0gQWRkZWQgbWlzc2luZyBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwotIEFkZGVkIFRow6lvJ3MgUmV2aWV3ZWQtYnkKLSBJbXByb3ZlZCBjb21taXQg
bWVzc2FnZQotIFBhdGNoIDI6IHRyaW1tZWQgZGlzY3Vzc2lvbiBhYm91dCAidGhlcmUgaXMgbm8g
ZGlzY29ubmVjdGlvbiIgZnJvbQogIGNvbW1pdCBtZXNzYWdlIHRvIG5vdCBkaXN0cmFjdCBmcm9t
IHRoZSBhY3R1YWwgaXNzdWUgKHdyaXRlcyB0bwogIGNoZ19kZXQub3Btb2RlKQotIExpbmsgdG8g
djE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA3MjItcmszMzA4LWZpeC11c2ItZ2Fk
Z2V0LXBoeS1kaXNjb25uZWN0LXYxLTAtMjM5ODcyZjA1ZjE3QGJvb3RsaW4uY29tCgotLS0KTG91
aXMgQ2hhdXZldCAoMSk6CiAgICAgIHBoeTogcm9ja2NoaXA6IGlubm8tdXNiMjogZml4IGRpc2Nv
bm5lY3Rpb24gaW4gZ2FkZ2V0IG1vZGUKCkx1Y2EgQ2VyZXNvbGkgKDEpOgogICAgICBwaHk6IHJv
Y2tjaGlwOiBpbm5vLXVzYjI6IGZpeCBjb21tdW5pY2F0aW9uIGRpc3J1cHRpb24gaW4gZ2FkZ2V0
IG1vZGUKCiBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgfCAx
MiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCi0tLQpiYXNlLWNvbW1pdDogY2FiYjc0OGM0Yjk4ZWY2N2JiYjA4OGJlNjFhMmUwYzg1
MGViZjcwZApjaGFuZ2UtaWQ6IDIwMjUwNzE4LXJrMzMwOC1maXgtdXNiLWdhZGdldC1waHktZGlz
Y29ubmVjdC1kN2RlNzFmYjI4YjQKCkJlc3QgcmVnYXJkcywKLS0gCkx1Y2EgQ2VyZXNvbGkgPGx1
Y2EuY2VyZXNvbGlAYm9vdGxpbi5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

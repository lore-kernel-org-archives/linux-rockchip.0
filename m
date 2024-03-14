Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D950C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 12:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=levxlQa8HygTlKLG4/aoYEHU7JMuGQPXKrPOmtvKZwo=; b=RQvTUCWv0brn2B
	dYcSojRMa6QzXg0/D+eGEyB2nZ0fhguGQiZ0rchq+ePEU8xEX1NBUKr5fy4DVWaghuJQIVTm5wuN8
	bXJfnzo1wRCi0yHgrGZzEbqp1XuVJ+21KgBylL6Ebg6tnf1bO5tboZTv1uLl3iti/wI6ZeNPF5pzP
	5CQMOpU4Lp2U3D2r+Y/wEhii+Y+qz3GWPokAYc7sRSkFh4IxdK44Eg9GSnTrPWkA/XYOvJepuKCyL
	M+uTLjRjZlrP03xYD6vZigJgtlG4C7ilm6SJYLTq4y3UCzDq84BNoIqqGc8PSmtwW5lkGBGXUVbBS
	MPfWvvJDoKWwYI8KEp/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkk8o-0000000EEXa-06HE;
	Thu, 14 Mar 2024 12:24:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkk8k-0000000EEWf-1zVg;
	Thu, 14 Mar 2024 12:24:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B2BB1CE1CE1;
	Thu, 14 Mar 2024 12:24:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7605C433F1;
	Thu, 14 Mar 2024 12:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710419092;
	bh=hqAXK1pmw/COewu+0V9Imcw6HfS/0tOeytlhniyTUrI=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=pWz7g6q4asNXGaO/hJfhmq5cYTtFWTh7wUrpvKElY0R1qqxroABcgtXJVWCivNQSh
	 BYhVAmv1zo8AnllKyM4N/4GCRsDtktJXNsENDL2v8SpQUI0L1B9iVlh1vAUOLrOqjY
	 L1W0iEPYemZS3/zAIJbF0iKepcC/FrUbtn1yPlk0kCADRzaZ2SrZlM629CGDNaHuB0
	 EQZFk59Jg2OHMmyufkXCUf9vW4GSE8VmC4AZP1U09jaV8Bk9MbL5w8NHCsC7Mp7uaF
	 M2bVSK46E4ju1PH95ToE5MbRAcP6LAp5kctFykTSDiKPG2a4Ci327pj7DNfQCGFZ6x
	 YC7Ra+UE0Qbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D283BC54E68;
	Thu, 14 Mar 2024 12:24:51 +0000 (UTC)
From: =?utf-8?b?QXLEsW7DpyDDnE5BTA==?= via B4 Relay
 <devnull+arinc.unal.arinc9.com@kernel.org>
Date: Thu, 14 Mar 2024 15:24:35 +0300
Subject: [PATCH] arm64: dts: rockchip: set PHY address of MT7531 switch to
 0x1f
MIME-Version: 1.0
Message-Id: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
X-B4-Tracking: v=1; b=H4sIAILs8mUC/x3NwQrCMAyA4VcZORtYu07FVxEPtU1sENeSDFHG3
 t3i8bv8/wZGKmRwGTZQeotJXTrcYYBU4vIglNwNfvRhnFxAropa0zMVafhaT/PksJUvxpyVzPA
 ej8kzczjPDL3SlFg+/8P1tu8/dVn8KXEAAAA=
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: mithat.guner@xeront.com, erkin.bozoglu@xeront.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710419077; l=1281;
 i=arinc.unal@arinc9.com; s=arinc9-patatt; h=from:subject:message-id;
 bh=M6V6hLjoM7rYDNZJdf1WFKDQWTTCt8rVO23htitTxhE=;
 b=2C08ammmunglRmpdQwiQIKW95QKlBhYoQev+0BRPUVhkzTQFI6N+micHOVYOIUijFf9m8Nq5H
 HOqI2PamNGKAh9GUhP/ia6vPJ89x+92kMEyCixwO2Hq4svAgbQeGko7
X-Developer-Key: i=arinc.unal@arinc9.com; a=ed25519;
 pk=VmvgMWwm73yVIrlyJYvGtnXkQJy9CvbaeEqPQO9Z4kA=
X-Endpoint-Received: by B4 Relay for arinc.unal@arinc9.com/arinc9-patatt with auth_id=115
X-Original-From: =?utf-8?b?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_052454_718644_AACC6BBE 
X-CRM114-Status: GOOD (  11.76  )
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
Reply-To: arinc.unal@arinc9.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogQXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPgoKVGhlIE1UNzUzMSBz
d2l0Y2ggbGlzdGVucyBvbiBQSFkgYWRkcmVzcyAweDFmIG9uIGFuIE1ESU8gYnVzLiBJJ3ZlIGdv
dCB0d28KZmluZGluZ3MgdGhhdCBzdXBwb3J0IHRoaXMuIFRoZXJlJ3Mgbm8gYm9vdHN0cmFwcGlu
ZyBvcHRpb24gdG8gY2hhbmdlIHRoZQpQSFkgYWRkcmVzcyBvZiB0aGUgc3dpdGNoLiBUaGUgTGlu
dXggZHJpdmVyIGhhcmRjb2RlcyAweDFmIGFzIHRoZSBQSFkKYWRkcmVzcyBvZiB0aGUgc3dpdGNo
LiBTbyB0aGUgcmVnIHByb3BlcnR5IG9uIHRoZSBkZXZpY2UgdHJlZSBpcyBjdXJyZW50bHkKaWdu
b3JlZCBieSB0aGUgTGludXggZHJpdmVyLgoKVGhlcmVmb3JlLCBkZXNjcmliZSB0aGUgY29ycmVj
dCBQSFkgYWRkcmVzcyBvbiBCYW5hbmEgUGkgQlBJLVIyIFBybyB0aGF0CmhhcyB0aGlzIHN3aXRj
aC4KClNpZ25lZC1vZmYtYnk6IEFyxLFuw6cgw5xOQUwgPGFyaW5jLnVuYWxAYXJpbmM5LmNvbT4K
LS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjIt
cHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWJwaS1yMi1wcm8u
ZHRzCmluZGV4IDdiNWYzOTA0ZWY2MS4uMDNkNmQ5MjA0NDZhIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cworKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cwpAQCAtNTI1LDkgKzUy
NSw5IEBAICZtZGlvMCB7CiAJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJI3NpemUtY2VsbHMgPSA8
MD47CiAKLQlzd2l0Y2hAMCB7CisJc3dpdGNoQDFmIHsKIAkJY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDc1MzEiOwotCQlyZWcgPSA8MD47CisJCXJlZyA9IDwweDFmPjsKIAogCQlwb3J0cyB7CiAJ
CQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKCi0tLQpiYXNlLWNvbW1pdDogMDI3NmQ3OTc1MzFlYTJk
MTg2NWEwNGZiZTU0YzY1OTYwOGY1Nzg4ZgpjaGFuZ2UtaWQ6IDIwMjQwMzE0LWZvci1yb2NrY2hp
cC1tdDc1MzEtcGh5LWFkZHJlc3MtYmE2YzJmZmY0ODVmCgpCZXN0IHJlZ2FyZHMsCi0tIApBcsSx
bsOnIMOcTkFMIDxhcmluYy51bmFsQGFyaW5jOS5jb20+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

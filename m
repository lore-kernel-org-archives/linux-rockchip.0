Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41BB0C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 14:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OL7VwMTdxwKGO8wr0sqQrgBiwhebNkHaej2DnpPJ9zc=; b=XBz/l3UbjsTUzz
	1QMo4dahIY1qSwDnzfehOiw/j58t5DiDrk0ynL0t1ITIgvb3sTCtixpRnQMnUyb34qQrSFvBwu7oC
	95PWU3M4lWzWF3cegS6hn7Py9/ji2r7ujr33MPavritai4IpvPV9iBQo7lQa7wTZdTAm+sMVXfW2s
	XF9rhUDGFQ+Jp0roX8q9ZJHBXN2j6zWXet9wkLqcA5KORdM19inSYSDSyMUTFhpIguJgOvF6qEzyh
	g2jqujuooLvM8anmWayJUmi2NAoTyoM7iW9hjFK+z9INuNUJEY7c/xZJ8Zja8IE2Nc25+UP7WpidX
	aXvlvmvR/rFkLQDC7gnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd7jn-0000000BU2W-33lk;
	Fri, 26 Jun 2026 14:40:59 +0000
Received: from smtp-bc0e.mail.infomaniak.ch ([45.157.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd7jk-0000000BU10-0ejp
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 14:40:58 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246c])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4gmyyq3s5XzX3S;
	Fri, 26 Jun 2026 16:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1782484851;
	bh=0HPhwFtkXvquAUDYvZqrHytOvvPkaGYk3vsC80cW3dk=;
	h=From:Date:Subject:To:Cc:From;
	b=kbfEwjZs5NrTcHkqTfsl8NYqNIp7n77UhG5v9cIkEvGqsLft0Cy/9flMNyDAEbeCV
	 ruUSAHxJKTe3Cfs/6aHMrY877vtXzB4++d4g/JN3m4/YvwrxUqb1c1kDUlyUbrF/bl
	 IpFUGfvdDkqbDQn+7oeavtf2TdN1X49hdfxJSkfvrxI0bEFCrmbznKRGE/BOmuwbOy
	 aEcECZ4kyL5AovQ9i805jDSu9z0JqoX4Z++YdElO24NLTIv/oSPa7cYOgiKITJKJjt
	 SIrbR3wtKq97A42IfdwULZdR8sZPbKBDx20zRgOJ4quVoO/dIB2F6abLf5OsqtlLIx
	 r9Iav44fT9Vsw==
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4gmyyp1m8tz3Fy;
	Fri, 26 Jun 2026 16:40:50 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 26 Jun 2026 16:40:38 +0200
Subject: [PATCH] arm64: dts: rockchip: fix eMMC reset polarity on PX30
 Ringneck
MIME-Version: 1.0
Message-Id: <20260626-ringneck-emmc-polarity-v1-1-90cefe57b316@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAyA4VchPdukG8kwvorxAKXOqgzSoYEQ3
 t2px+/w/xtkMZUMp2oDk7dmHVOBO1TAtzZFQe2LwZMPFHxA0xST8ANlGBin8dmazis2riGqOXR
 H8lDiyeSqy298vvydX91deP7eYN8/sFCo3HoAAAA=
X-Change-ID: 20260626-ringneck-emmc-polarity-717003c6b802
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_074056_627648_38B96F60 
X-CRM114-Status: GOOD (  11.59  )
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

RnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KCkFjY29yZGlu
ZyB0byB0aGUgSmVkZWMgNS4xIHNwZWNpZmljYXRpb24sIHRoZSBkZXZpY2UgaXMgaGVsZCBpbiBy
ZXNldAp3aGVuIFJTVF9uIGlzIGxvdywgdGhlcmVmb3JlIHRoZSBwb2xhcml0eSBvZiB0aGUgbGlu
ZSBtdXN0IGJlIHRoYXQsIGFzCnNwZWNpZmllZCBpbiB0aGUgRGV2aWNlIFRyZWUgYmluZGluZyAo
bW1jL21tYy1wd3JzZXEtZW1tYy55YW1sKS4KCkR1ZSB0byB0aGUgd3JvbmcgcG9sYXJpdHksIGVN
TUMgZGV2aWNlcyB3aXRoIFJTVF9uX0ZVTkNUSU9OWzE2Ml0KYml0ZmllbGQgWzE6MF0gc2V0IHRv
IDB4MSAodGhlIGRlZmF1bHQgaXMgMHgwKSB3aWxsIGJlIGhlbGQgaW4gcmVzZXQKZm9yZXZlci4K
CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDog
ZHRzOiByb2NrY2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBi
YXNlYm9hcmQiKQpTaWduZWQtb2ZmLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpA
Y2hlcnJ5LmRlPgotLS0KUFgzMCBSaW5nbmVjayBpcyBhZmZlY3RlZCBieSB0aGUgc2FtZSBpc3N1
ZSB0aGF0IENvYnJhIGFuZCBQUC0xNTE2IGhhdmUKYW5kIGZvciB3aGljaCBwYXRjaGVzWzFdWzJd
IGhhdmUgYWxyZWFkeSBiZWVuIHNlbnQuCgpPdXQgb2YgdGhlIG90aGVyIGJvYXJkcyBJIG93biwg
UkszNTg4IFRpZ2VyIGFuZCBKYWd1YXIgYWxzbyBoYXZlIGFuCmludmVydGVkIHBvbGFyaXR5IGJ1
dCBJIHRyaWVkIG1ha2luZyB0aGUgZU1NQyBjaGlwIGNhcmUgYWJvdXQgdGhlIHJlc2V0CmxpbmUg
cG9sYXJpdHkgdG8gbm8gYXZhaWwsIHRoZXJlZm9yZSBJJ20gbm90IGNoYW5naW5nIHRoZW0gdW50
aWwgd2UKZmlndXJlIG91dCBhIHNldHVwIGluIHdoaWNoIHdlIGNhbiByZXByb2R1Y2UgdGhlIGlz
c3VlLgoKVGhlcmUgYXJlIGEgaGFuZGZ1bCBvZiBvdGhlciBSb2NrY2hpcCBib2FyZHMgd2l0aCBh
biBpbnZlcnRlZCBwb2xhcml0eQpidXQgSSBkb24ndCBvd24gYW55IG9mIHRoZW0gc28gSSB3aWxs
IG5vdCBjaGFuZ2UgdGhlbSBlaXRoZXIuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvMjAyNjA2MDkwODE3MjguMzA2MTYtMi1qYWtvYnVudEBnbWFpbC5jb20vClsy
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDYxMi1wcDE1MTYt
ZW1tYy1wb2xhcml0eS12MS0xLTQ4MTZjMWM5MDlmN0BjaGVycnkuZGUvCi0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCmluZGV4IDk3M2I0YzU4ODBlMjQuLjI5
Nzk0MjE2NTkyZDggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgz
MC1yaW5nbmVjay5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1y
aW5nbmVjay5kdHNpCkBAIC0yNiw3ICsyNiw3IEBAIGVtbWNfcHdyc2VxOiBlbW1jLXB3cnNlcSB7
CiAJCWNvbXBhdGlibGUgPSAibW1jLXB3cnNlcS1lbW1jIjsKIAkJcGluY3RybC0wID0gPCZlbW1j
X3Jlc2V0PjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKLQkJcmVzZXQtZ3Bpb3MgPSA8
JmdwaW8xIFJLX1BCMyBHUElPX0FDVElWRV9ISUdIPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8x
IFJLX1BCMyBHUElPX0FDVElWRV9MT1c+OwogCX07CiAKIAlsZWRzIHsKCi0tLQpiYXNlLWNvbW1p
dDogNGVkY2RlZmQ0MDgzYWUwNGIxYTU2NTZmNGJlNmNkODNhZTkxOWVmNApjaGFuZ2UtaWQ6IDIw
MjYwNjI2LXJpbmduZWNrLWVtbWMtcG9sYXJpdHktNzE3MDAzYzZiODAyCgpCZXN0IHJlZ2FyZHMs
Ci0tICAKUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

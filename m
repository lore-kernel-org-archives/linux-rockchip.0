Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3078E606A331
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 13:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ByrcBkGP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=OTAiH7yl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ww4i3vdX+DdU5Ttpvf4Kbladb/SiloUTsf/gbdrnjTI=; b=ByrcBkGPXlD/wf1Dk+gfOTF550
	Mr06onzD9jRjb3pjkTxyAhJB8SdTwHFDehKwV95aqNRMCEsjY6cqb3/zX694qvpHJdTXme2ByGC1W
	CI4FialituEi0sbOcxWTahmYcjd/t5sCp32iARRQ4yXrBzvwM//nhQ446x9YPJn4S7AkVt9N7pEHT
	PX9pyzAb5r+hwqp5C8/LQATUwENLKzjr01/c9NxOJ4gNGSG5IyFklA7iPABvGOuDYSbamxLBb+pLE
	1nhYnva5ZuWatJKnFw5nSbtvwjChG25JTmE4jSkE6GY5p1eF8QZ4/Ea8gTC4u5LJARnFmnDBv4W6g
	MeLMyFig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV7lZ-000000019C9-29AY;
	Sun, 22 Nov 2026 13:38:01 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV7lW-000000019BN-16A2
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 13:38:00 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 91A95C6223D;
	Sun, 22 Nov 2026 13:38:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D86E560512;
	Sun, 22 Nov 2026 13:37:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 834F5102F0DBA;
	Sun, 22 Nov 2026 14:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795354673; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=MaLZ/5e/yperaGiOGWV6z+zK2FhbvcWBhbuuohCNTlQ=;
	b=OTAiH7ylWvXXaSMCBYUk3oXEHf74GJpwwQtyHazm4tDKGVHo10dbTK5TvQus76lRYafMRS
	a2CW0F4Hk+WGDNNPjzGCf4l6fPWDDAEtFP0xHap3JrwoAFKXO2qXBPkqzKZbvOE1IrbilP
	uAbIgAKtSG7MO3IuzvMNePc/WdPBsPVbWnQQ1ikX5WwApjEVd1mdHdlr6cjPfJVhhcUIJX
	xhTbJaP/kmapXYZaS54LbyZXn4/ZuMl1GuNn6puJc8q4WpY8w8taX7DCkMrurdqWbRKxO3
	wtkxjnaw2udj1NFl1H5YUfKfBjDZjaVu2P6HKrBkvJx7xXnUjTOvqiZjjzTLmg==
From: =?utf-8?q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Date: Sun, 22 Nov 2026 14:37:40 +0100
Subject: [PATCH] pmdomain: rockchip: fix warning when deferring probe
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-rockchip-pm-defer-v1-1-5b41635e3410@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0auEWXfAScCFV5EuTDLRUaph0kpBv
 HtTXb7F/wcUVuECnTlAeZci21pBDwNhGtaRUWI12Ma2RNaibmEJk2TML4ycWHGI3jlHLhE1ULu
 snOR7Pfvn7fLxM4f3fwTn+QP6EtXCdQAAAA==
X-Change-ID: 20261122-rockchip-pm-defer-adb33313f110
To: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_053758_471896_B4927AB9 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

V2hlbiB0aGUgUE1VIHByb2JlIGZhaWxzIGJlY2F1c2UgYSBjbG9jayBjYW4ndCBiZSBhY3F1aXJl
ZCwgdGhlCnBtLWRvbWFpbnMgZHJpdmVyIHJhaXNlcyBhIHdhcm5pbmcgaW4ga2VybmVsIGxvZ3M6
CgogIFsuLi5dIHBvd2VyLWRvbWFpbjogZmFpbGVkIHRvIGdldCBjbGsgYXQgaW5kZXggMDogLTUx
NwogIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQogIFdBUk5JTkc6IGRyaXZl
cnMvY2xrL2Nsay5jOjQ4MzEgYXQgX19jbGtfcHV0KzB4ZjgvMHgxMzAsIENQVSMwOiBzd2FwcGVy
LzAvMQogIE1vZHVsZXMgbGlua2VkIGluOgogIENQVTogMCBVSUQ6IDAgUElEOiAxIENvbW06IHN3
YXBwZXIvMCBOb3QgdGFpbnRlZCA3LjMuNS0wMDAwNC1nNTUyZDBkMWUwOWYyICMxMDMgUFJFRU1Q
VAogIEhhcmR3YXJlIG5hbWU6IEZyaWVuZGx5RWxlYyBOYW5vUGkgWmVybzIgKERUKQogIHBzdGF0
ZTogMjAwMDAwMDUgKG56Q3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0t
KQogIHBjIDogX19jbGtfcHV0KzB4ZjgvMHgxMzAKICBsciA6IGNsa19wdXQrMHgxMC8weDIwCiAg
c3AgOiBmZmZmODAwMDgxOTJiNzUwCiAgeDI5OiBmZmZmODAwMDgxOTJiNzUwIHgyODogZmZmZjgw
MDA4MTQ3YWVlMCB4Mjc6IGZmZmY4MDAwODEzNDAwYmMKICB4MjY6IDAwMDAwMDAwMDAwMDAwMDAg
eDI1OiBmZmZmODAwMDgwZTVkNWMwIHgyNDogZmZmZjAwMDAwMDc0ZjI4MAogIHgyMzogZmZmZjAw
MDA3ZmJlNmJjOCB4MjI6IDAwMDAwMDAwMDAwMDAwMDAgeDIxOiAwMDAwMDAwMDAwMDAwMDAwCiAg
eDIwOiBmZmZmMDAwMDAwNGY3OGIwIHgxOTogZmZmZmZmZmZmZmZmZmRmYiB4MTg6IDAwMDAwMDAw
MDAwMDAwMDYKICB4MTc6IDcwMjAzYTcyNjU2YzZjNmYgeDE2OiA3Mjc0NmU2ZjYzMmQ3MjY1IHgx
NTogMDcyMDA3NTIwNzQ1MDc0NgogIHgxNDogMDc0NTA3NDQwNzVmMDc0NSB4MTM6IDA3MjAwNzUy
MDc0NTA3NDYgeDEyOiBmZmZmODAwMDgxNmVlODMwCiAgeDExOiAwMDAwMDAwMDAwMDAwMDU4IHgx
MDogMDAwMDAwMDAwMDAwMDAxOCB4OSA6IGZmZmY4MDAwODE2ZWU4MzAKICB4OCA6IDAwMDAwMDAw
MDAwMDAwNWQgeDcgOiAzZmZmZmZmZmZmZmZmMDAwIHg2IDogZmZmZjgwMDA4MTc0NjgzMAogIHg1
IDogMDAwMDAwMDAwMDAxN2ZlOCB4NCA6IDAwMDAwMDAwMDAwMDAwMDAgeDMgOiBmZmZmMDAwMDAw
NGY3OGIwCiAgeDIgOiAwMDAwMDAwMDAwMDAwMDEwIHgxIDogZmZmZjAwMDAwMDRmNzhjMCB4MCA6
IGZmZmZmZmZmZmZmZmZkZmIKICBDYWxsIHRyYWNlOgogICBfX2Nsa19wdXQrMHhmOC8weDEzMCAo
UCkKICAgY2xrX3B1dCsweDEwLzB4MjAKICAgY2xrX2J1bGtfcHV0KzB4M2MvMHg2MAogICByb2Nr
Y2hpcF9wbV9hZGRfb25lX2RvbWFpbisweDI5OC8weDRhMAogICByb2NrY2hpcF9wbV9kb21haW5f
cHJvYmUrMHhkNC8weDMxMAogICBwbGF0Zm9ybV9wcm9iZSsweDVjLzB4YjAKICAgcmVhbGx5X3By
b2JlKzB4YzAvMHgzZTAKICAgX19kcml2ZXJfcHJvYmVfZGV2aWNlKzB4MTY0LzB4MWQwCiAgIGRy
aXZlcl9wcm9iZV9kZXZpY2UrMHhiNC8weDEyMAogICBfX2RldmljZV9hdHRhY2hfZHJpdmVyKzB4
YmMvMHgxOTAKICAgYnVzX2Zvcl9lYWNoX2RydisweDg4LzB4ZjAKICAgX19kZXZpY2VfYXR0YWNo
KzB4YTAvMHgxZTAKICAgZGV2aWNlX2luaXRpYWxfcHJvYmUrMHg1MC8weDcwCiAgIF9fYnVzX3By
b2JlX2RldmljZSsweDM4LzB4YjAKICAgYnVzX3Byb2JlX2RldmljZSsweDEwLzB4MjAKICAgZGV2
aWNlX2FkZCsweDYwNC8weDg1MAogICBvZl9kZXZpY2VfYWRkKzB4NDQvMHg2MAogICBvZl9wbGF0
Zm9ybV9kZXZpY2VfY3JlYXRlX3BkYXRhKzB4OTQvMHgxNjAKICAgb2ZfcGxhdGZvcm1fYnVzX2Ny
ZWF0ZSsweDE5OC8weDUyMAogICBvZl9wbGF0Zm9ybV9idXNfY3JlYXRlKzB4MWY4LzB4NTIwCiAg
IG9mX3BsYXRmb3JtX2J1c19jcmVhdGUrMHgxZjgvMHg1MjAKICAgb2ZfcGxhdGZvcm1fcG9wdWxh
dGUrMHg1OC8weDE3MAogICBvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlX2luaXQrMHhlOC8w
eDEwMAogICBkb19vbmVfaW5pdGNhbGwrMHg2MC8weDFkMAogICBrZXJuZWxfaW5pdF9mcmVlYWJs
ZSsweDIwNC8weDI4OAogICBrZXJuZWxfaW5pdCsweDJjLzB4MTMwCiAgIHJldF9mcm9tX2Zvcmsr
MHgxMC8weDIwCiAgLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tCgpUaGUgd2Fy
bmluZyBpcyBkdWUgdG8gcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4gcGFzc2luZyBwZC0+bnVt
X2Nsa3MgdG8KY2xrX2J1bGtfcHV0LCBidXQgcGQtPm51bV9jbGtzIGRvZXMgbm90IHJlZmxlY3Qg
Y29ycmVjdGx5IGhvdyBtYW55CmNsb2NrcyBhcmUgY29ycmVjdGx5IGFjcXVpcmVkIChpdCBpcyBz
eXN0ZW1hdGljYWxseSBzZXQgdG8gdGhlIF9rbm93bl8KbnVtYmVyIG9mIGNsb2NrcywgYmVmb3Jl
IGF0dGVtcHRpbmcgdG8gZ2V0IHRoZW0pLgoKT25seSBwYXNzIHRoZSBudW1iZXIgb2YgcmV0cmll
dmVkIGNsb2NrcyB0byBjbGtfYnVsa19wdXQgYnkgc2V0dGluZwpwZC0+bnVtX2Nsa3MgdG8gdGhl
IG51bWJlciBvZiBjb3JyZWN0bHkgcHJvY2Vzc2VkIGNsb2Nrcy4gVGhlIHZhbHVlIHdpbGwKYmUg
ZHJvcHBlZCBhbnl3YXkgaW4gY2FzZSBvZiBmYWlsZWQgcHJvYmUuCgpGaXhlczogZDhiMzg0Nzc3
MDY2ICgicG1kb21haW46IHJvY2tjaGlwOiBmaXggY2xvY2sgbGVhayBvbiBkb21haW4gcHJvYmUg
ZmFpbHVyZSIpClNpZ25lZC1vZmYtYnk6IEFsZXhpcyBMb3Rob3LDqSA8YWxleGlzLmxvdGhvcmVA
Ym9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIGIvZHJpdmVycy9wbWRvbWFpbi9yb2Nr
Y2hpcC9wbS1kb21haW5zLmMKaW5kZXggZTE5M2Y5NzhkNWYzLi5hZGMzYmViY2Q5MjggMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCisrKyBiL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCkBAIC04NTQsNiArODU0LDcgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG11ICpw
bXUsCiAJCQlkZXZfZXJyKHBtdS0+ZGV2LAogCQkJCSIlcE9GbjogZmFpbGVkIHRvIGdldCBjbGsg
YXQgaW5kZXggJWQ6ICVkXG4iLAogCQkJCW5vZGUsIGksIGVycm9yKTsKKwkJCXBkLT5udW1fY2xr
cyA9IGk7CiAJCQlnb3RvIGVycl9wdXRfY2xvY2tzOwogCQl9CiAJfQoKLS0tCmJhc2UtY29tbWl0
OiA5ODgxMTdjYzFiYjE3MzM4YzU4NmE0ZTIxYWRlODhiNTM5N2VhYzMzCmNoYW5nZS1pZDogMjAy
NjExMjItcm9ja2NoaXAtcG0tZGVmZXItYWRiMzMzMTNmMTEwCgpCZXN0IHJlZ2FyZHMsCi0tICAK
QWxleGlzIExvdGhvcsOpIDxhbGV4aXMubG90aG9yZUBib290bGluLmNvbT4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DBAACD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/TXNXOoTz/LafMWtssJ8drmgRxOMgqvAfPEQcFrjnhI=; b=XTlfSdBEnHiB5x
	f9YZN70yPf+KGhUPV/VYdQuIyuEx9aQFufYoM7pkDmWtDeyFYXoZBkfwC8CNK7uPEihywPh10hM2h
	7zrREbC5ze/ElhhJ9C8p8yXdlnopXomeM5cclQGSnVeLNPmZq7jA0iWikK83sNdKHF0x7kQjhwUIT
	ash0N332+SbxxPypZor6QGNQ2AogoKT10dS2TwZ5ZfHAP9g7Pe4XSKgFVxpxqKX+EcMdbqJEhsmsZ
	R+ZnF20X5myXMmhgXFHGVzw8799+A52V8V6rgQ+ide6Eib7Z0TtZGjnKRM4uAIYTAfKSAOtEu4kLc
	91IeqEl5kMMyc3ZZZcGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5HJ-0000000BS4W-1tlj;
	Mon, 01 Jun 2026 16:14:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5HG-0000000BS1g-357m;
	Mon, 01 Jun 2026 16:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780330443;
	bh=aaEpI9GXRz3EZr4yshfNJTwzGYvwXpQNt8splWEouIY=;
	h=From:Subject:Date:To:Cc:From;
	b=h95Ovt9vxHfhP69JU5VlaXfKvtrXpGwFxoAa8Vw127ZPodNDTXGRZj0GsmTFroLT+
	 zjHXPtnm/VDLWYM6vr3R9awCwZm4gulwulHl02nrt84lDPQEnkIEP6uW9PC2RrgLTH
	 sHAi+kA259VUJP2x78xF63bLtj6XXDmzCrWPS6XoCB2kFg9M2M2pI+swqoexCoq2jp
	 QWScb3SY6SuPinuXN721ZQ1AZXK2iQ/O8+t7MsmHOwXijMg13QRDNsnRsJINEqNmFu
	 ajSWOj2lHuJPuxUFhwF4SNfrCcVo4E6Gwccz4eShtexHodUGVvA8sz+fz8cSJzuRKx
	 k/kS8KrZVwKvQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E7E2417E045E;
	Mon,  1 Jun 2026 18:14:02 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v4 0/3] Rockchip DRM use-after-free & null-ptr-deref fixes
Date: Mon, 01 Jun 2026 19:13:43 +0300
Message-Id: <20260601-drm-rk-fixes-v4-0-c3f3f123e1da@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XMTQ6CMBCG4auYrq1pp3/gynsYF1Cm0gjUtIZoC
 He3sNEQXb4z+Z6JJIweEznuJhJx9MmHIYfc74htq+GK1De5CTDQjAPQJvY03qjzT0y0MhrAGq6
 UQJIn94jrIy/Ol9ytT48QX6s+8uX6Bxo5ZVSUEhwvlFEMTzZ0XVWHWB1s6MmCjfABBGcbADKgp
 ULraimcLH8B4gsAswFEBlwDqEvGLCvsFpjn+Q2k/8Z4LgEAAA==
X-Change-ID: 20260122-drm-rk-fixes-a7622c71553e
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_091411_039707_46FE339C 
X-CRM114-Status: GOOD (  10.39  )
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

VGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgaW4gdGhlIHNlcmllcyBhcmUgZml4ZXMgZm9yIHVzZS1h
ZnRlci1mcmVlICYKbnVsbC1wdHItZGVyZWYgcmVsYXRlZCBpc3N1ZXMgZm91bmQgaW4gZHdfZHAg
YW5kIGlubm8taGRtaSBSb2NrY2hpcCBEUk0KZHJpdmVycy4KClRoZSBmb2xsb3dpbmcgdGhyZWUg
cGF0Y2hlcyBwcm92aWRlIGEgZmV3IG1pbm9yIGltcHJvdmVtZW50cyB0byBkd19kcAphbmQgZHdf
aGRtaV9xcCwgd2hpbGUgdGhlIHJlbWFpbmluZyB0d28gYWRkcmVzcyB1c2UtYWZ0ZXItZnJlZSBh
bmQKbWVtb3J5IGFsbG9jYXRpb24gaW4gRFcgRFAgY29yZSBsaWJyYXJ5LgoKU2lnbmVkLW9mZi1i
eTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4K
LS0tCkNoYW5nZXMgaW4gdjQ6Ci0gQ29sbGVjdGVkIFItYiBmcm9tIEFuZHkKLSBGaXhlZCBhIGNv
bmZsaWN0IHdoaWxlIHJlYmFzaW5nIG9udG8gbGF0ZXN0IGRybS1taXNjLW5leHQKLSBBZGRlZCBu
ZXcgcGF0Y2g6IGRybS9yb2NrY2hpcDogZHdfZHA6IEFkZCBtaXNzaW5nIG5ld2xpbmUgaW4KICBk
ZXZfZXJyX3Byb2JlKCkgbWVzc2FnZQotIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNjAzMjctZHJtLXJrLWZpeGVzLXYzLTAtZmQyZTY5MDBjMDhjQGNvbGxhYm9yYS5j
b20KCkNoYW5nZXMgaW4gdjM6Ci0gRHJvcHBlZCBwYXRjaGVzIDEuLjYsOCBhbHJlYWR5IGFwcGxp
ZWQgYnkgSGVpa28KLSBSZXdvcmtlZCByZW1haW5pbmcgcGF0Y2ggImRybS9icmlkZ2U6IHN5bm9w
c3lzOiBkdy1kcDogVW5yZWdpc3RlciBBVVgKICBjaGFubmVsIG9uIGJyaWRnZSBkZXRhY2giIGlu
dG86CiAgKiBkcm0vYnJpZGdlOiBzeW5vcHN5czogZHctZHA6IFN1cHBvcnQgdW5yZWdpc3Rlcmlu
ZyB0aGUgQVVYIGNoYW5uZWwKICAqIGRybS9yb2NrY2hpcDogZHdfZHA6IFJlbGVhc2UgY29yZSBy
ZXNvdXJjZXMKLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMzEw
LWRybS1yay1maXhlcy12Mi0wLTY0NWVjZmI0M2Y0OUBjb2xsYWJvcmEuY29tCgpDaGFuZ2VzIGlu
IHYyOgotIEZpeGVkIGNvbmZsaWN0cyB3aGlsZSByZWJhc2luZyBvbnRvIGxhdGVzdCBkcm0tbWlz
Yy1uZXh0Ci0gQWRkZWQgdHdvIG1vcmUgcGF0Y2hlczoKICAqIGRybS9icmlkZ2U6IHN5bm9wc3lz
OiBkdy1kcDogVW5yZWdpc3RlciBBVVggY2hhbm5lbCBvbiBicmlkZ2UgZGV0YWNoCiAgKiBkcm0v
YnJpZGdlOiBzeW5vcHN5czogZHctZHA6IERyb3AgdXNlbGVzcyBtZW1vcnkgYWxsb2NhdGlvbgot
IExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMjItZHJtLXJrLWZp
eGVzLXYxLTAtMzk0MmYxODU3NTBlQGNvbGxhYm9yYS5jb20KClRvOiBBbmR5IFlhbiA8YW5keS55
YW5Acm9jay1jaGlwcy5jb20+ClRvOiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVs
LmNvbT4KVG86IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgpUbzog
Um9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5lbC5vcmc+ClRvOiBMYXVyZW50IFBpbmNoYXJ0IDxMYXVy
ZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+ClRvOiBKb25hcyBLYXJsbWFuIDxqb25hc0Br
d2lib28uc2U+ClRvOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgpU
bzogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KVG86IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClRvOiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+ClRvOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4KVG86IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+ClRvOiBT
aW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+ClRvOiBEbWl0cnkgQmFyeXNoa292IDxkbWl0
cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+ClRvOiBTYW5keSBIdWFuZyA8aGpjQHJvY2st
Y2hpcHMuY29tPgpUbzogSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4KVG86IERtaXRy
eSBCYXJ5c2hrb3YgPGx1bWFnQGtlcm5lbC5vcmc+ClRvOiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNy
aXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgpDYzoga2VybmVsQGNvbGxhYm9yYS5jb20K
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzog
bGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwoKLS0tCkNyaXN0aWFuIENpb2NhbHRl
YSAoMyk6CiAgICAgIGRybS9icmlkZ2U6IHN5bm9wc3lzOiBkdy1kcDogU3VwcG9ydCB1bnJlZ2lz
dGVyaW5nIHRoZSBBVVggY2hhbm5lbAogICAgICBkcm0vcm9ja2NoaXA6IGR3X2RwOiBBZGQgbWlz
c2luZyBuZXdsaW5lIGluIGRldl9lcnJfcHJvYmUoKSBtZXNzYWdlCiAgICAgIGRybS9yb2NrY2hp
cDogZHdfZHA6IFJlbGVhc2UgY29yZSByZXNvdXJjZXMKCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L3N5bm9wc3lzL2R3LWRwLmMgICB8ICA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3X2RwLXJvY2tjaGlwLmMgfCAxNSArKysrKysrKysrKysrLS0KIGluY2x1ZGUvZHJtL2JyaWRn
ZS9kd19kcC5oICAgICAgICAgICAgICAgIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IGU4NGIwN2UwYTMwYjM3
MTExN2Y5YTExMjBhNDY0NWMyMTNmMzljZDkKY2hhbmdlLWlkOiAyMDI2MDEyMi1kcm0tcmstZml4
ZXMtYTc2MjJjNzE1NTNlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

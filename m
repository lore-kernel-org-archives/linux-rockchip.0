Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 031AACEFC56
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+bQtZPPu88Bf7wM1zCjt4D8+/5p7Avp5GKnUn35yBI=; b=biuqX0gFOI9Rqv
	zem2rpvLjWMfNCViciEwW4X2R8tM3fc4dUrv5GcEaFfGXCnu7xnJbJFP6RNKLL1VUWKO4zn3XnJAj
	VLlw5K6+bMNPiQijEZMpc01D8EaElxWKoc9PCLeB5lD1AqsxdyokhsDfcDOlLqeWDoqVHO5TNNWFE
	8UGocr0toczaVthEcbT36edT6FafQVjRj6IPQrYSt1routjlzch77xFxCh6kSlY/OOZMwfZlQYL8O
	sy9kop+rb46m+s9Y/KhaQlSa9HhrGoDLJc20TXYiS3Zv06lXLUdym4R9iUMfBWZMIxTrVSpWJEMvb
	zQIIx7Ty6JlBM2YMFlrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH50-0000000762E-3QEZ;
	Tue, 08 Oct 2024 20:45:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGzz-000000075Cv-1m0J;
	Tue, 08 Oct 2024 20:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Yf04+QXT03J/TjvEQgDGnbMwpR73yd5cNPeoOtdIFnk=; b=gx5ShjBNYIrZSk4OMsyqJE52fQ
	q/5S+Z/47L4AfMrv4gQePKJrCmjdLlyA2T/4Aa23YZxjFLYY81yOlWLvnUIL4h0AWR2iZE7QNum7X
	iikekfZtptftfTv4Cr0TuwKO0+uOJWv9PIYWYzalHaIMuIvFFJW8Uf5wqANODACIUxhFkUpsRNfXe
	t7/LSZtkfHkKTM9Z6MSCMtfDEQTRpA+YK1sEppjpUKTdwHvihfi9mGyvXyKPTCxVAsRdSZcajtmuM
	KbgJKzlhIJP74te5EVl3clRhSEbeyDPegeavLzsL1bjOTC+oWP5RPJz07TXTMISlJqarpiLGOwfyz
	/FweGeFg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzx-0007ua-TZ; Tue, 08 Oct 2024 22:40:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Klaus Goger <klaus.goger@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma boards
Date: Tue,  8 Oct 2024 22:39:32 +0200
Message-ID: <20241008203940.2573684-7-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_134003_511107_6DD0EFD3 
X-CRM114-Status: GOOD (  12.65  )
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

QWxsIFRoZW9icm9tYSBib2FyZHMgdXNlIGEgdGksYW1jNjgyMSBhcyBmYW4gY29udHJvbGxlci4K
SXQgbm9ybWFsbHkgcnVucyBpbiBhbiBhdXRvbWF0aWNhbGx5IGNvbnRyb2xsZWQgd2F5IGFuZCB3
aGlsZSBpdCBtYXkgYmUKcG9zc2libGUgdG8gdXNlIGl0IGFzIHBhcnQgb2YgYSBkdC1iYXNlZCB0
aGVybWFsIG1hbmFnZW1lbnQsIHRoaXMgaXMKbm90IHlldCBzcGVjaWZpZWQgaW4gdGhlIGJpbmRp
bmcsIG5vciBpbXBsZW1lbnRlZCBpbiBhbnkga2VybmVsLgoKTmV3ZXIgYm9hcmRzIGFscmVhZHkg
ZG9uJ3QgY29udGFpbiB0aGF0ICNjb29saW5nLWNlbGxzIHByb3BlcnR5LCBidXQKb2xkZXIgb25l
cyBkby4gU28gcmVtb3ZlIHRoZW0gZm9yIG5vdywgdGhleSBjYW4gYmUgcmUtYWRkZWQgaWYgdGhl
cm1hbAppbnRlZ3JhdGlvbiBnZXRzIGltcGxlbWVudGVkIGluIHRoZSBmdXR1cmUuCgpGaXhlczog
YzQ4NGNmOTNmNjFiICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBQWDMwLcK1UTcgKFJpbmdu
ZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikKRml4ZXM6IGQ5OWEwMmJjZmE4MSAoImFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUkszMzY4LXVRNyAoTGlvbikgU29NIikKRml4ZXM6IDJj
NjZmYzM0ZTk0NSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUkszMzk5LVE3IChQdW1hKSBT
b00iKQpDYzogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1z
LmNvbT4KQ2M6IEtsYXVzIEdvZ2VyIDxrbGF1cy5nb2dlckB0aGVvYnJvbWEtc3lzdGVtcy5jb20+
ClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClJldmlld2Vk
LWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpIHwgMSAtCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1saW9uLmR0c2kgICB8IDEgLQogYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNpICAgfCAxIC0KIDMgZmlsZXMgY2hh
bmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cHgzMC1yaW5nbmVjay5kdHNpCmluZGV4IGI3MTYzZWQ3NDIzMi4uYTZlYTlkOGM3ODVjIDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQpAQCAt
MjkzLDcgKzI5Myw2IEBAICZpMmMxIHsKIAlmYW46IGZhbkAxOCB7CiAJCWNvbXBhdGlibGUgPSAi
dGksYW1jNjgyMSI7CiAJCXJlZyA9IDwweDE4PjsKLQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJ
fTsKIAogCXJ0Y190d2k6IHJ0Y0A2ZiB7CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM2OC1saW9uLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM2OC1saW9uLmR0c2kKaW5kZXggOGFjOGFjZjQwODJkLi5hYjNmZGE2OWExZmIgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWxpb24uZHRzaQorKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1saW9uLmR0c2kKQEAgLTYxLDcg
KzYxLDYgQEAgaTJjX2x2ZHNfYmxjOiBpMmNAMCB7CiAJCQlmYW46IGZhbkAxOCB7CiAJCQkJY29t
cGF0aWJsZSA9ICJ0aSxhbWM2ODIxIjsKIAkJCQlyZWcgPSA8MHgxOD47Ci0JCQkJI2Nvb2xpbmct
Y2VsbHMgPSA8Mj47CiAJCQl9OwogCiAJCQlydGNfdHdpOiBydGNANmYgewpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNpCmluZGV4IDY1MGIxYmE5YzE5Mi4u
NmRlMzEyODU1NmI3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1wdW1hLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cHVtYS5kdHNpCkBAIC0zOTUsNyArMzk1LDYgQEAgJmkyYzcgewogCWZhbjogZmFuQDE4IHsKIAkJ
Y29tcGF0aWJsZSA9ICJ0aSxhbWM2ODIxIjsKIAkJcmVnID0gPDB4MTg+OwotCQkjY29vbGluZy1j
ZWxscyA9IDwyPjsKIAl9OwogCiAJcnRjX3R3aTogcnRjQDZmIHsKLS0gCjIuNDMuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

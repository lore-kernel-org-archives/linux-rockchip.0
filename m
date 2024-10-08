Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB69FCF0421
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fn+TE3lDePaUbK9EHwbeOvf55oGmv9dpPbU3g57ZMXk=; b=qOkb46Lvk8IMht
	/dZ4l3iC+6axDNVVAA2WqReQd8IqdMouOqQr6SfAo+bTmKy1QC/R1twAuvdA0uSmciibCqN/Rzji4
	+PvSJFNUb334CSLIJ2HlyLJFf4FE2HlesELDeEd4eb4fQuh/DLE77B4PtZHkRckaLsxOT3eYhuNZD
	WCt9WwqTQ71ErVqf4MRDrs8+6utmGOSlaGiDDu04NYPgfqDMVQmOX1oHUdvL7gyKHsl2hQ1LyZNa1
	Oy+7AwSfC7pBWsFKNAJ1ZDvVBrwzur7QPkxPEIx3r37PKTRENFqGv7bUR7YS82VNYBobI4dgD+MsE
	Izm54nwBxkvraLxz3qWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHA6-000000076YG-29dE;
	Tue, 08 Oct 2024 20:50:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0H-000000075IZ-0GRT;
	Tue, 08 Oct 2024 20:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=fMY3Hx2YxzWWEFZLZHGJcI0fZev4CYGwKOUcWpqRbzI=; b=X9Ib9pCri1RVikiNl2SRQO3Bnj
	hHnRmUsFUQI6VMwtC7ySowyda6EeH2GXeSib5CPJpF9dq/fXje/1As8KIOQK3xe72y6Fkg39/GA0j
	RCfjpaWiyWUkLtgXek4VhPj2c8Sj9IrMrOlEwiGfym7foPzUkdFjMYgBi5CzwjBTlKmGzxGIxlgR2
	Wl1CAVFx9TCPxD/ns38Vb6eIFqD0OxuFLkoQEcC6ph+emtqlLRST/1OqlvDL//fbK+p9MhujHFOVW
	7iKu/PsSE+kucos3DOJ+woLknl+bKICG6xvJvuCiKfgQdCHZAuP3JHWrhLRsUROYhburfbWhM9BFb
	X1p8cYQQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH06-00000004gen-3LrC;
	Tue, 08 Oct 2024 20:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fMY3Hx2YxzWWEFZLZHGJcI0fZev4CYGwKOUcWpqRbzI=; b=gr5OUt9OETpicas45k1+5dGprA
	K6+y+lKFC/aShZr7VJC+ty2lnMUW+vVKmm+JQMb7qq5H5ReWLAebTp3iOdmxz2LWYwi6BJKQi3u/t
	wB8QrfUcmI4eOHgBS3vlb6CGPt1QrGHNM+V2ABkW+SERNz9DwTaZrnvGpu1e0tkJ0MrQAB2ffCcjf
	lWhjcSfjLmMs9GnjihLLxmwNg17tuGmEuLV7rDjL3gW7M4pAtnS1UuUQUrqKbsvJFSTIJ0g7Yrf4o
	xSXO3BBY4kpjlSbAgIQRq2V6ZD1g501bCwVcPcBsDP5hTpDRqqUlXCB3dv0RAYNovsoFxOLVLTFNa
	BIHKTD1g==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzx-0007ua-Hi; Tue, 08 Oct 2024 22:40:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Sergey Bostandzhyan <jin@mediatomb.cc>,
	Wenhao Cui <lasstp5011@gmail.com>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 05/14] arm64: dts: rockchip: Remove undocumented supports-emmc property
Date: Tue,  8 Oct 2024 22:39:31 +0200
Message-ID: <20241008203940.2573684-6-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_214015_064859_2334423C 
X-CRM114-Status: GOOD (  10.69  )
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

c3VwcG9ydHMtZW1tYyBpcyBhbiB1bmRvY3VtZW50ZWQgcHJvcGVydHkgdGhhdCBzbGlwcGVkIGlu
dG8gdGhlIG1haW5saW5lCmtlcm5lbCBkZXZpY2V0cmVlIGZvciBzb21lIGJvYXJkcy4gRHJvcCBp
dC4KCkZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFBYMzAt
wrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBiYXNlYm9hcmQiKQpDYzogUXVlbnRpbiBT
Y2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KRml4ZXM6IGI4YzAy
ODc4MjkyMiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgRFRTIGZvciBGcmllbmRseUFSTSBO
YW5vUGkgUjJTIFBsdXMiKQpDYzogU2VyZ2V5IEJvc3RhbmR6aHlhbiA8amluQG1lZGlhdG9tYi5j
Yz4KRml4ZXM6IDhkOTRkYTU4ZGU1MyAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgRW1iZWRG
aXJlIEx1YmFuQ2F0IDEiKQpDYzogV2VuaGFvIEN1aSA8bGFzc3RwNTAxMUBnbWFpbC5jb20+CkZp
eGVzOiBjZGY0NmNkYmFiZmMgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGR0cyBmb3IgRW1i
ZWRGaXJlIHJrMzU2OCBMdWJhbkNhdCAyIikKQ2M6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgotLS0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpICAgICAgICAgfCAx
IC0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5k
dHMgfCAxIC0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWx1YmFuY2F0LTEu
ZHRzICAgICAgfCAxIC0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWx1YmFu
Y2F0LTIuZHRzICAgICAgfCAxIC0KIDQgZmlsZXMgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCmluZGV4
IGJiMWFlYTgyZTY2Ni4uYjcxNjNlZDc0MjMyIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQpAQCAtNjYsNyArNjYsNiBAQCAmZW1tYyB7CiAJ
YnVzLXdpZHRoID0gPDg+OwogCWNhcC1tbWMtaGlnaHNwZWVkOwogCW1tYy1oczIwMC0xXzh2Owot
CXN1cHBvcnRzLWVtbWM7CiAJbW1jLXB3cnNlcSA9IDwmZW1tY19wd3JzZXE+OwogCW5vbi1yZW1v
dmFibGU7CiAJdm1tYy1zdXBwbHkgPSA8JnZjY18zdjM+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKaW5kZXggY2I4
MWJhM2YyM2ZmLi4zMDkzZjYwN2YyODIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cwpAQCAtMjcsNiArMjcsNSBA
QCAmZW1tYyB7CiAJbnVtLXNsb3RzID0gPDE+OwogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
CiAJcGluY3RybC0wID0gPCZlbW1jX2NsayAmZW1tY19jbWQgJmVtbWNfYnVzOD47Ci0Jc3VwcG9y
dHMtZW1tYzsKIAlzdGF0dXMgPSAib2theSI7CiB9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjYtbHViYW5jYXQtMS5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2Ni1sdWJhbmNhdC0xLmR0cwppbmRleCBjMTE5NGQxZTQzOGQuLjlh
MmY1OWEzNTFkZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjYtbHViYW5jYXQtMS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjYtbHViYW5jYXQtMS5kdHMKQEAgLTUwNyw3ICs1MDcsNiBAQCAmc2RoY2kgewogCW5vbi1yZW1v
dmFibGU7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JmVtbWNf
YnVzOCAmZW1tY19jbGsgJmVtbWNfY21kPjsKLQlzdXBwb3J0cy1lbW1jOwogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LWx1YmFuY2F0LTIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
bHViYW5jYXQtMi5kdHMKaW5kZXggYTMxMTJkNWRmMjAwLi5iNTA1YTQ1MzdlZTggMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWx1YmFuY2F0LTIuZHRzCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWx1YmFuY2F0LTIuZHRzCkBA
IC01ODksNyArNTg5LDYgQEAgJnNkaGNpIHsKIAlub24tcmVtb3ZhYmxlOwogCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZlbW1jX2J1czggJmVtbWNfY2xrICZlbW1j
X2NtZD47Ci0Jc3VwcG9ydHMtZW1tYzsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjQz
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

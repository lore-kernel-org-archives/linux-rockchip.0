Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1585CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8ry1YlemzGccvxJeKfDcQGneaJq6FlFNmUe3hvATBM=; b=DiZ+xFTJKmBRb4
	QHcKu3vLcn5WTVGitP40F13ONwfY1WUkVwoJ8pkYbxww4kczsdEqG+sG+cDtfZeHh17OXmWsRkSQC
	18oQn43Nigt0qGJPpB8mpP/8TybRJ8kWuAxLAKptPY66E7McE9U1m4QTTtBk2PKJ0Zhu/m0z8SdL/
	Dbxgiv9yLfuQCSCZ9Dib/d0zj4F9fnl+y2K8bxmzifGiLSC71dSi851eGGq7emKcfR32AuI45usTX
	MM36H3R4kV6jjg4XoTwHYs/9dkQirROAVSvZ7CMxq4i5yDjmoOmVYN7rvJK7074qRmHoHIXormdhd
	Mitys3aA7Pfzq2ooiEIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNdK-00000000rOl-2wkR;
	Mon, 30 Sep 2024 21:08:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWN-00000000qNg-0uIX;
	Mon, 30 Sep 2024 21:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KI77oPBb6QLN5CmWLuxE94hiAUT6qB7QZWAGLaXAElk=; b=HHjQNwgkI7t9KGVhUktnpY0Xc5
	Y5aobYZzHD/f0BmqyOCnaVcmSoStfEdMyXjZvSJjFfnnC/1Xi3xIvThR/i9LoiouVCZuNqlpl69mx
	+ej++oik6wBPU+tPF2T3fuVuSEOm1UlT5BU14FkeLQJExYh6i8y3UVzuF+Ao1+3u3HLCbb26kS0sM
	mnGS3n3kBhwiWKOPcYfaRwe2Td+IAGSCmptjI2RK+xsAgZgFvnQjAnUCRF3MRC/hPxhQKKu2216NM
	XgKkvolofJqC2E/HBPSmjXibGRZiTyeiFH6lh5NXtguEHCNaLl2VHTm1F/4HrVV2gCV+4K0UoHieN
	ZLC+EqOQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWH-00000002vCe-1nfy;
	Mon, 30 Sep 2024 21:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KI77oPBb6QLN5CmWLuxE94hiAUT6qB7QZWAGLaXAElk=; b=PsDGKypSib9zkgheSenwGgktq3
	vd6AXGChaz9AA6pdijAgyUzgKzbb+6pi3PxqwtYeVBSngzKurK9k4q+djMkwQaDfnQn0R90yQeSG4
	4RTS0/a2+WDcKGt52QOnj/Lstg+kqJXWfQt2HwvuN2q2Yeq+Gj9iZBUCLZCO+r9BRm6CYozJ3pDGn
	YIKP8p23Mm9q6A4SIxqEh9swOWMSZRg5dd5pWj1eNq6GoPkFkUXn+AdOc91EL5i+OdjwtoAZDbkif
	g+Ldh1ZI/1cwXt7AJxR5OiEKuFVAvVF+358HOu54JNxszURBzddIb5EoAGUq8b/PmaptQaM5aJwxn
	csTf/bcg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWD-00087h-MV; Mon, 30 Sep 2024 23:01:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 7/8] arm64: dts: rockchip: Remove undocumented emmc property from PX30-Ringneck
Date: Mon, 30 Sep 2024 23:01:11 +0200
Message-ID: <20240930210112.1993625-8-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_220125_816901_93EC7B80 
X-CRM114-Status: GOOD (  11.65  )
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
dG8gdGhlIG1haW5saW5lCmtlcm5lbCBkZXZpY2V0cmVlIGZvciB0aGUgYm9hcmQuIERyb3AgaXQu
CgpGaXhlczogYzQ4NGNmOTNmNjFiICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBQWDMwLcK1
UTcgKFJpbmduZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikKQ2M6IFF1ZW50aW4gU2No
dWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+ClNpZ25lZC1vZmYtYnk6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMw
LXJpbmduZWNrLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25l
Y2suZHRzaQppbmRleCBiYjFhZWE4MmU2NjYuLmI3MTYzZWQ3NDIzMiAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kKQEAgLTY2LDcgKzY2LDYg
QEAgJmVtbWMgewogCWJ1cy13aWR0aCA9IDw4PjsKIAljYXAtbW1jLWhpZ2hzcGVlZDsKIAltbWMt
aHMyMDAtMV84djsKLQlzdXBwb3J0cy1lbW1jOwogCW1tYy1wd3JzZXEgPSA8JmVtbWNfcHdyc2Vx
PjsKIAlub24tcmVtb3ZhYmxlOwogCXZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzPjsKLS0gCjIuNDMu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

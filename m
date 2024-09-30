Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A131CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtSj5MKMOUoIwC4z5uBfyubN4mZzCTfUA4XWHuA5OY8=; b=Orb4ek3Qk/fKFn
	9RMzlE85c5D3rEPiE4NfOnS8YfaQm4KtEpPEavqv0yhcWS2qXSpB9a1PwguqHOAtvoL9qM+y7CnkS
	ZHQSQg06Io2eqShnEgSZR6yHlYPFKmaLIe3PaRgKEU+UbEwV/aSjT/MSexlLKCTyGoWRiu4X7kBRq
	IQy8MWjJDfghlFLjIKlP0hU/hN0bx9mttwdV/5g4rXjAe5ul989LlTxt3vXxvxf8vOtBM5jX3dypO
	NsszBnXPRersBBVwDBgrQ77teOgOQkKmkjXxNY53DROvzD/LTQ/hzyQ20jox3Ton6kuroF3iOjLMt
	/Sg1/gBKIKKvqSeph1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNdV-00000000rRI-1Yvu;
	Mon, 30 Sep 2024 21:08:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWN-00000000qNd-1jb1;
	Mon, 30 Sep 2024 21:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2Qd8cUrd68LMMhtCYDpDVdYUtkKDeWIKPRQxYiYHgCc=; b=rIbv1/eYJh1Ta+/el379IdgN36
	FIM/GTAQZiH9h2GTFH4xdRg091l66R5Do8IgEXJIOyPt4Uu/sf8CTG0eIProqyne6A5fNwoxP5IYP
	mDBy7edwHlwyb+lU+he2nlZirgnHl5qluf3/SUv4S2taFukhloxNdTCzM3TT57TkVJegFLPOSk4F9
	xDq0aE6pS/SiS9ftdCvA7c4V37ncqq3bc/AdqJS2LLlE+Yyklc8rc2PWkag+ZYVNHZhZO0ZAKFNCT
	yxocvrMnrOc93cbg7I41JA/7di39aSdYXfG+9tdI8yyKI3pktGIL0jDdmKJZFaFSqd3NT2QIxNcbX
	51Bm0osA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWH-00000002vCf-1oE3;
	Mon, 30 Sep 2024 21:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2Qd8cUrd68LMMhtCYDpDVdYUtkKDeWIKPRQxYiYHgCc=; b=AM/njkCd0qdq30BG3UnQk3yjF2
	qfg0ajASqqxwc5YvnjmDoibEERX2zrGdDToZRiVYLZ+j3yw6D9oTfAVy8pgtl/mSMCWRcxqT8qUe5
	nyzaooFAsE9c9p1H/sGsU4l1OrlRGtlmiO4ghf2PmWpqFvvpB2e6MV2RZ/KvimbwPvvp/3nrHcsY5
	ued7Q/QqFDT1vGYY3itF0/JdxO8+a/fErErp85LePpRCQq9gOedHAj9oAj2cbHxzE2omP81AOnkfq
	6HGThsK5Du7ejRTIYjj4iYinohrS+pfYpP4szdz+TLJpBTOHMxqDPjQBWPF7uDGYoH+TYroqgaaS9
	ijudYc8w==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWE-00087h-0a; Mon, 30 Sep 2024 23:01:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Klaus Goger <klaus.goger@theobroma-systems.com>
Subject: [PATCH 8/8] arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma boards
Date: Mon, 30 Sep 2024 23:01:12 +0200
Message-ID: <20240930210112.1993625-9-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_220125_810731_DA2CEC4E 
X-CRM114-Status: GOOD (  13.49  )
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
ClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kgfCAxIC0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWxpb24uZHRzaSAgIHwgMSAtCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kgICB8IDEgLQogMyBmaWxlcyBj
aGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9weDMwLXJpbmduZWNrLmR0c2kKaW5kZXggYjcxNjNlZDc0MjMyLi5hNmVhOWQ4Yzc4NWMgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNp
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCkBA
IC0yOTMsNyArMjkzLDYgQEAgJmkyYzEgewogCWZhbjogZmFuQDE4IHsKIAkJY29tcGF0aWJsZSA9
ICJ0aSxhbWM2ODIxIjsKIAkJcmVnID0gPDB4MTg+OwotCQkjY29vbGluZy1jZWxscyA9IDwyPjsK
IAl9OwogCiAJcnRjX3R3aTogcnRjQDZmIHsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzY4LWxpb24uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzY4LWxpb24uZHRzaQppbmRleCA4YWM4YWNmNDA4MmQuLmFiM2ZkYTY5YTFmYiAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgtbGlvbi5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWxpb24uZHRzaQpAQCAtNjEs
NyArNjEsNiBAQCBpMmNfbHZkc19ibGM6IGkyY0AwIHsKIAkJCWZhbjogZmFuQDE4IHsKIAkJCQlj
b21wYXRpYmxlID0gInRpLGFtYzY4MjEiOwogCQkJCXJlZyA9IDwweDE4PjsKLQkJCQkjY29vbGlu
Zy1jZWxscyA9IDwyPjsKIAkJCX07CiAKIAkJCXJ0Y190d2k6IHJ0Y0A2ZiB7CmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kKaW5kZXggNjUwYjFiYTljMTky
Li42ZGUzMTI4NTU2YjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXB1bWEuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1wdW1hLmR0c2kKQEAgLTM5NSw3ICszOTUsNiBAQCAmaTJjNyB7CiAJZmFuOiBmYW5AMTggewog
CQljb21wYXRpYmxlID0gInRpLGFtYzY4MjEiOwogCQlyZWcgPSA8MHgxOD47Ci0JCSNjb29saW5n
LWNlbGxzID0gPDI+OwogCX07CiAKIAlydGNfdHdpOiBydGNANmYgewotLSAKMi40My4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 520ECC6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 10:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2dJnaO6o8vJp9gda9vfHqCNdrJkOYhaevkGBdAgGtmk=; b=uVn0iGizSu54Pz
	JLTX2V/b31K+B9zasLJvCIXO3zrGmkA9/vd0nakxaZnjf5mHpHNWIuNoV3lCrMWbfraG/AMwzIdgc
	cq0xJO90u7/BP7Il/JvFiH8Xg1md5T95xOHDed9RMOYqXT05O5jN/1KKF5Ni4+JuagPBhDhLqcrpv
	076RB318xdcA9frocN+XcmUB8nWv0uWnhlEZT9p67bPKRn/9VPkohJUUGLdhNnccGc3XBkKBaQCnm
	X6x+JdeX1LcDfAyggxZ74iac9s5xkhrxpVcY7JNkR7A+LkzQflbHt8C6QFlJCgQv6ku3tq2bTYnHt
	mX2q+6F730aY0vEztYaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJDF-00Er4L-R9; Thu, 22 Sep 2022 10:13:45 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJCL-00EqYB-Qp; Thu, 22 Sep 2022 10:12:51 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 3B4D64000C;
	Thu, 22 Sep 2022 10:12:37 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	dmitry.torokhov@gmail.com,
	klaus.goger@theobroma-systems.com,
	foss+kernel@0leil.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 0/3] add support for Theobroma Systems PX30-µQ7 (Ringneck) with Haikou devkit
Date: Thu, 22 Sep 2022 12:12:08 +0200
Message-Id: <20220922101211.3215888-1-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_031250_073626_3DAD696E 
X-CRM114-Status: GOOD (  13.01  )
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

RnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNv
bT4KClRoZSBQWDMwLXVRNyAoUmluZ25lY2spIFNvTSBpcyBhIMK1UXNldmVuLWNvbXBhdGlibGUg
KDQwbW14NzBtbSwgTVhNLTIzMApjb25uZWN0b3IpIHN5c3RlbS1vbi1tb2R1bGUgZnJvbSBUaGVv
YnJvbWEgU3lzdGVtc1sxXSwgZmVhdHVyaW5nIHRoZQpSb2NrY2hpcCBQWDMwLgoKSXQgcHJvdmlk
ZXMgdGhlIGZvbGxvd2luZyBmZWF0dXJlIHNldDoKKiB1cCB0byA0R0IgRERSNAoqIHVwIHRvIDEy
OEdCIG9uLW1vZHVsZSBlTU1DICh3aXRoIDgtYml0IDEuOFYgaW50ZXJmYWNlKQoqIFNEIGNhcmQg
KG9uIGEgYmFzZWJvYXJkKSB2aWEgZWRnZSBjb25uZWN0b3IKKiBGYXN0IEV0aGVybmV0IHdpdGgg
b24tbW9kdWxlIFRJIERQODM4MjVJIFBIWQoqIE1JUEktRFNJL0xWRFMKKiBNSVBJLUNTSQoqIFVT
QgotIDF4IFVTQiAyLjAgZHVhbC1yb2xlCi0gM3ggVVNCIDIuMCBob3N0Ciogb24tbW9kdWxlIFNU
TTMyIENvcnRleC1NMCBjb21wYW5pb24gY29udHJvbGxlciwgaW1wbGVtZW50aW5nOgotIGxvdy1w
b3dlciBSVEMgZnVuY3Rpb25hbGl0eSAoSVNMMTIwOCBlbXVsYXRpb24pCi0gZmFuIGNvbnRyb2xs
ZXIgKEFNQzY4MjEgZW11bGF0aW9uKQotIFVTQjwtPkNBTiBicmlkZ2UgY29udHJvbGxlcgoqIG9u
LW1vZHVsZSBFc3ByZXNzaWYgRVNQMzIgZm9yIEJsdWV0b290aCArIDIuNEdIeiBXaUZpCiogb24t
bW9kdWxlIE5YUCBTRTA1eCBTZWN1cmUgRWxlbWVudAoKWzFdIGh0dHBzOi8vd3d3LnRoZW9icm9t
YS1zeXN0ZW1zLmNvbS9zb20tcHJvZHVjdC9weDMwLSVDMiVCNXE3LwoKVGhlIEhhaWtvdSBkZXZr
aXQgaGFzIGEgc3dpdGNoICJidXR0b24iIHdoaWNoIGFsbG93cyB0byBmb3JjZSB0aGUKQk9PVFJP
TSB0byBsb2FkIHRoZSBib290bG9hZGVyIGZyb20gU0QgY2FyZCBpbnN0ZWFkIG9mIHRyeWluZyBm
aXJzdCBmcm9tIGVNTUMuClRoZSBzdGF0ZSBvZiB0aGUgc3dpdGNoIGlzIGV4cG9zZWQgdG8gdXNl
cnNwYWNlIHZpYSBhIEdQSU8gYnV0IHRoZXJlJ3MgY3VycmVudGx5Cm5vIHN1cHBvcnQgZm9yIHN1
Y2ggYW4gZXZlbnQsIHRodXMgaXQgaXMgYWRkZWQgaW4gdGhlIGZpcnN0IHBhdGNoIG9mCnRoaXMg
c2VyaWVzLgoKVGhlIEVzcHJlc3NpZiBFU1AzMiBzdXBwb3J0IGlzIG5vdCBhZGRlZCBpbiB0aGlz
IHBhdGNoIHNlcmllcyBhcwp0aGVyZSdsbCBiZSBzb21lIGNoYWxsZW5nZXMgYXJvdW5kIHRoZSBE
ZXZpY2UgVHJlZSBiaW5kaW5ncyB0aGF0IHdpbGwKcmVxdWlyZSBpdHMgb3duIHBhdGNoIHNlcmll
cyBhbmQgZGlzY3Vzc2lvbi4KCk1JUEktRFNJL0NTSSAiY29uc3VtZXJzIiB3aWxsIGNvbWUgbGF0
ZXIgd2l0aCBhbiBhZGFwdGVyIGJvYXJkIG9uY2UgaXQKaXMgZGVzaWduZWQuCgpDaGVlcnMsClF1
ZW50aW4KClF1ZW50aW4gU2NodWx6ICgzKToKICBJbnB1dDogYWRkIGBTV19CT09UX0FMVGAKICBh
cm02NDogZHRzOiByb2NrY2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhh
aWtvdQogICAgYmFzZWJvYXJkCiAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IGFkZCBUaGVv
YnJvbWEgU3lzdGVtcyBQWDMwLcK1UTcgKFJpbmduZWNrKQogICAgd2l0aCBIYWlrb3UKCiAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAgIDUgKwogYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKIC4uLi9kdHMv
cm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRzICAgICB8IDIzOSArKysrKysrKysrKysK
IC4uLi9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kgICAgICB8IDM0NyArKysr
KysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmggICAgICAgICAg
ICAgICB8ICAgMiArLQogaW5jbHVkZS91YXBpL2xpbnV4L2lucHV0LWV2ZW50LWNvZGVzLmggICAg
ICAgIHwgICAzICstCiA2IGZpbGVzIGNoYW5nZWQsIDU5NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cHgzMC1yaW5nbmVjay1oYWlrb3UuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kKCi0tIAoyLjM3LjMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

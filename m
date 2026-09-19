Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80232C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 10:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWMmI7k2SxUGdUNHkXKI6BpZYIWBZyYM9bPG7vXR0ko=; b=KI5vKSYaeX7m1D
	eFwnQMX5rrm6ipkR1BdJhE9IpBNLZPCDXlTGiuB/7Tvdy0Yf1nvLCsnlYiRZ1aRyhk1EKXAZ7j8AZ
	qZKoQp30SIwYx1MkH3T8iWbv6Vr1mCJpFXQps3392UqH+njS4P8dSZZMIfZJVMIFKuU1GIleq74rj
	0VpNRfvdjqGFH2QfTjwfuanQYuVwu/RQDN8eP/5jEtWCg9/zGb6CdPWZtbXlEw8vmdYnAzaNEDWw2
	QEJA3FCdWheZbCJUs8qSGchUQaRkhvx5edTOsYXM7q3XN/dYvnUN2ssRuphxQMZ3G7VgjOoXQntst
	GBKz/NZ34l1PDrfmJZ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7sJ3-0000000GAex-0Upq;
	Sat, 19 Sep 2026 10:28:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7sJ1-0000000GAdj-2liu;
	Sat, 19 Sep 2026 10:28:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B2C7447A5;
	Sat, 19 Sep 2026 10:28:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5951DC2BCF7;
	Sat, 19 Sep 2026 10:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789813705;
	bh=tuo9FTC9trpH9PTGtyXsmxAlQQNcjXaX7nP/LygpwVE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=jwFvZTGRmUC+k+oN6aF/64mcm5/dTwrKKBO4BmG2zNjSHm1VvKoi2Vd2yB2wwvhWJ
	 fBAA6YDspa84ZI8iy7uM9uwtxcLziZh21sK7o6+eNm8l5MLRPnUiuehzwnJdP1JNyz
	 cyEl+CSxfrCLYARIJUeFExL9HZpSIR+oZ7EVOdNQ7ttEjQQrrGME86neXXaKd1VFZ5
	 N+lZNfKNlyryi8LIo6uesEQeRI3pIyKs9pX+gnGPqJ8eywT/hEp/1IGTxef/MSDtNI
	 ui+LOUSdfy66yhx15sA9dJ0Kw+NOURIrOpA46LY7/LRzsBJDFsPtkbcxxMwysTDIw/
	 U8ylbA4LqWHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36CCEC982CC;
	Sat, 19 Sep 2026 10:28:25 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Sat, 19 Sep 2026 18:28:17 +0800
Subject: [PATCH v7 1/3] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260919-r28s-upstream-v7-1-e80a6f8ef521@proton.me>
References: <20260919-r28s-upstream-v7-0-e80a6f8ef521@proton.me>
In-Reply-To: <20260919-r28s-upstream-v7-0-e80a6f8ef521@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, 
 jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1622;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=GjgiG/CwrGYA6nG9hPXid2MYCUCClI7qpstAQn8fUNs=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqx1ycdlp/poMgdu33paPfj0iRvdTS61+64sX2JaLHfRf
 7qgVW9rRykLgxgXg6yYIovspupIoVXRM4tYpI7DzGFlAhnCwMUpABM5Uc/wT/lQ1nMphfCFHz/z
 G5yNNl24NULE+t3uKE+JlFqpjthpfxgZfl6zswvNaqm3W872/J/n4y2q7z8Kb4l453N7C6fu/+Y
 adgA=
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgTmFub1BpIFIy
OFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRoZQpS
b2NrY2hpcCBSSzM1MjggU29DLiBJdCBzaGFyZXMgaXRzIGJhc2UgZGV2aWNldHJlZSB3aXRoIHRo
ZSBOYW5vUGkKWmVybzIsIHNvIGZvbGQgYm90aCBib2FyZHMgaW50byBhIHNpbmdsZSBSSzM1Mjgg
c2VyaWVzIGVudHJ5LCB3aGljaApmdXJ0aGVyIFJLMzUyOCBiYXNlZCBOYW5vUGkgYm9hcmRzIGNh
biBqb2luIHdpdGhvdXQgcmVuYW1pbmcgaXQuCgpBY2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25v
ci5kb29sZXlAbWljcm9jaGlwLmNvbT4KU2lnbmVkLW9mZi1ieTog5a6J5a65IDxIeXN0ZXJpY2Fs
RHJhZ29uc0Bwcm90b24ubWU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9yb2NrY2hpcC55YW1sIHwgMTIgKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAppbmRleCA4MTc0NGZiZWU5Li5kYzY5
OTk5ODYyIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sCkBAIC0zNDcsNiArMzQ3LDEzIEBAIHByb3BlcnRpZXM6CiAgICAgICAg
ICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXIycy1wbHVzCiAgICAgICAgICAgLSBjb25zdDog
cm9ja2NoaXAscmszMzI4CiAKKyAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5v
UGkgUkszNTI4IHNlcmllcyBib2FyZHMKKyAgICAgICAgaXRlbXM6CisgICAgICAgICAgLSBlbnVt
OgorICAgICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9waS1yMjhzCisgICAgICAgICAgICAg
IC0gZnJpZW5kbHlhcm0sbmFub3BpLXplcm8yCisgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAs
cmszNTI4CisKICAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjNTCiAg
ICAgICAgIGl0ZW1zOgogICAgICAgICAgIC0gY29uc3Q6IGZyaWVuZGx5YXJtLG5hbm9waS1yM3MK
QEAgLTM4OCwxMSArMzk1LDYgQEAgcHJvcGVydGllczoKICAgICAgICAgICAtIGNvbnN0OiBmcmll
bmRseWFybSxuYW5vcGktcjc2cwogICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU3Ngog
Ci0gICAgICAtIGRlc2NyaXB0aW9uOiBGcmllbmRseUVsZWMgTmFub1BpIFplcm8yCi0gICAgICAg
IGl0ZW1zOgotICAgICAgICAgIC0gY29uc3Q6IGZyaWVuZGx5YXJtLG5hbm9waS16ZXJvMgotICAg
ICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzUyOAotCiAgICAgICAtIGRlc2NyaXB0aW9uOiBG
cmllbmRseUVsZWMgTmFub1BDIFQ2IHNlcmllcyBib2FyZHMKICAgICAgICAgaXRlbXM6CiAgICAg
ICAgICAgLSBlbnVtOgoKLS0gCjIuNTUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

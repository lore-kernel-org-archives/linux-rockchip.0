Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AB2E77183
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 16:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xzyUa/sqoFCH7u3R/1K2G/LvP0JblEOvIxQ68MVBqBA=; b=cD/NlXx4HafVIt
	VepbfserToB+mcqioSBASwalGpGNieSo06ISa7prRR8oxIIwdJd1vZKecwj1Tf0I7yqsVp3g3PZix
	AujAy7fYXqSrDvcce+XOiFHtnp7GL5VZQ9RkypiA3q2kOPKADCX0wtxKTnHkvrJPb3XCw6qOe53rT
	ONKPKmlCUTFcXuU7s14MBxPiFC+oeeKYFBUcJYFQF5Fsz7k0+2Rw24CjKA8EoGQfNTREa9Ezt+Lsj
	se/1Jijlh5sLUiYJSLr55OV3EG5MRXQ0pgJF41BTBR+zeVyemQrJkpRtstLpw2EguhHU8Z1JJLgEi
	SxyesSQDbwZow4TulYoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3Kn-0000000C8Yb-17Uu;
	Tue, 10 Dec 2024 16:43:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3Kk-0000000C8XW-3DOW
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 16:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733849017;
	bh=ZvD8OXAxS0yJUidLsVdKZA2YjRg0YV+PscUgOu6Lb0o=;
	h=From:To:Cc:Subject:Date:From;
	b=P2f+7EHdLGnKfNttoyErGAHVKOkcbZYdTUqhR94eUUmgoSubDuhoWi8sw+pvIHTMi
	 79wczl8rZgzbO+eqoS+wMfGx+nepQ3YSlURpIFQvu3M8SmthMFrhCzjY1EgtmLFUQP
	 A4Eqm309guTngUUWjbtN4jUzvDWPCOIsVWbJF3qOKRKQi8czMfmkwDkOr8DCPDdIQC
	 yfQJIWhqpsk82JENzFd1MaAFcBOns1jRW+ghnExJ57jlphvqNsrz5fTc+6S9Mgcodt
	 1I/3tjxZypiRLPuB8wimrjGsi0lEfiZwxOMvlmEhHZN8C3EbXbrWKFB1e+rR3wGqiW
	 OhXRu9RG3tTng==
Received: from jupiter.universe (dyndsl-091-248-190-127.ewe-ip-backbone.de [91.248.190.127])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0407D17E37AF;
	Tue, 10 Dec 2024 17:43:37 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 68DCA48CC8A; Tue, 10 Dec 2024 17:43:36 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/2] Rockchip W552793DBA-V10 panel support
Date: Tue, 10 Dec 2024 17:41:29 +0100
Message-ID: <20241210164333.121253-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_084338_979253_07B9EF1E 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

SGksCgpUaGlzIGhhcyBiZWVuIHRlc3RlZCBpbiBjb21iaW5hdGlvbiB3aXRoIHRoZSBzZXJpZXMg
ZnJvbSBIZWlrbyBTdMO8Ym5lcgplbmFibGluZyBEU0kgc3VwcG9ydCBmb3IgdGhlIFJLMzU4OCBb
MF0gWzFdIG9uIHRoZSBSSzM1ODggRVZCMS4KClswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1yb2NrY2hpcC8yMDI0MTIwOTIzMTAyMS4yMTgwNTgyLTEtaGVpa29Ac250ZWNoLmRlLwpb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDEyMDMxNjQ5MzQu
MTUwMDYxNi0xLWhlaWtvQHNudGVjaC5kZS8KClRoYW5rcyBmb3IgaGF2aW5nIGEgbG9vay4KCkdy
ZWV0aW5ncywKCi0tIFNlYmFzdGlhbgoKU2ViYXN0aWFuIFJlaWNoZWwgKDIpOgogIGR0LWJpbmRp
bmdzOiBkaXNwbGF5OiBwYW5lbDogQWRkIFJheWRpdW0gUk02NzIwMAogIGRybS9wYW5lbDogYWRk
IFJheWRpdW0gUk02NzIwMCBwYW5lbCBkcml2ZXIKCiAuLi4vZGlzcGxheS9wYW5lbC9yYXlkaXVt
LHJtNjcyMDAueWFtbCAgICAgICAgfCAgNzIgKysrCiBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvS2Nv
bmZpZyAgICAgICAgICAgICAgICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL3BhbmVsL01ha2Vm
aWxlICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1y
YXlkaXVtLXJtNjcyMDAuYyB8IDUwMyArKysrKysrKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdl
ZCwgNTg0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9yYXlkaXVtLHJtNjcyMDAueWFtbAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1yYXlkaXVtLXJtNjcy
MDAuYwoKLS0gCjIuNDUuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

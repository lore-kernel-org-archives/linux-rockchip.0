Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868B606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H9uM1gBF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=K1dX8zWL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KqhmH0LgBhuarYheOqCa6MuX5T5tynC944au+I8jUzE=; b=H9uM1gBF8BVBRXUk3+GiYWT2af
	gMZYfmi0ogs6WZDU38wTktIIYPXFwU/gFiyxRflzkrtwVHZRXHfsvv/u//vIpA1Dfu4+u3PEPEyAs
	1cHTaV0zFLMHxqXXqgnwd86NUV+ym2v2JmllWTADxOIIG8rJpDf7lgiNgJXu0QjVGk43BGbd9wKdw
	Ea1envw72BG+IdW+MtMI05OAhBCsdn6jabaTN2bUzeVPefKlO8F1jKl4AI+JL0OX/FEP321seun4/
	TJ0F5pEmm232SKBG63SZYB1whEzB3nMMj3yQJFUvwgSHQPiL0inBB4oxZGNDto5D96QAwaf22qd98
	2/ZUqMIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJUi-0000000BGHG-1Hpf;
	Wed, 25 Nov 2026 20:21:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJUQ-0000000BGBV-4AEs;
	Wed, 25 Nov 2026 20:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Q1f0lb7RWc9Q15urz+o+3HMy+hoargnMfYFL2uvHrRU=; b=K1dX8zWLZlhzTMNu8QgVojp258
	Xaij/I2WT0cmw1TY1uFV6UetbqGiDcNe9lw9rIDc8bUw3kL9HgM8Jat8lQ7lcw4V/Zesi6cFqDFBA
	yoxp/Hi8WlHIbi3CrmVaTRipAfA5GKpZLE8EbEMLfrMaJWV7VJdBaoFejUnFn0thM5s7WsjLajJed
	/rWkqmv3XAPW+bo8CiN3IrVKHIv3dt8a3wAizh/SbdoThi6CxgObO1bhDQXyE8nK08G79cHEvTQ17
	/QVXOmGdcT/M14LgBi+wBQN44heHaNqD2Bz/Aeo3EyOCm2azRE3F1PpliM0JmVTlayCwDo56zqOZ/
	4WMdHF5g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Jan=20Sch=C3=A4r?= <jan@jschaer.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI RX for Orange Pi 5 Ultra
Date: Wed, 25 Nov 2026 21:20:59 +0100
Message-ID: <179563805244.3885553.95572502382355679.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120090712.68178-1-jan@jschaer.ch>
References: <20261120090712.68178-1-jan@jschaer.ch>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_122115_028710_20A0D68C 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIEZyaSwgMjAgTm92IDIwMjYgMTA6MDc6MTIgKzAxMDAsIEphbiBTY2jDpHIgd3JvdGU6Cj4g
VGhlIE9yYW5nZSBQaSA1IFVsdHJhIGhhcyBhbiBIRE1JIGlucHV0LCBlbmFibGUgaXQuIEl0IHdh
cyBtaXNzaW5nCj4gYmVjYXVzZSB0aGUgc25wc19oZG1pcnggZHJpdmVyIHdhcyBpbnRyb2R1Y2Vk
IGFmdGVyIHRoZSBPcmFuZ2UgUGkgNQo+IFVsdHJhIERUUy4KPiAKPiBUaGUgcGluIGRlZmluaXRp
b25zIGhlcmUgbWF0Y2ggdGhlIHNjaGVtYXRpYyBhbmQgdGhlIERUUyBpbiB0aGUgT3JhbmdlCj4g
UGkgdmVuZG9yIGtlcm5lbC4gSW4gdGhlIHNjaGVtYXRpYywgdGhlIGhvdC1wbHVnIGRldGVjdCBw
aW4gaXMgbmFtZWQKPiBIRE1JX1JYX0RFVF9MLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3Mh
CgpbMS8xXSBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEhETUkgUlggZm9yIE9yYW5nZSBQ
aSA1IFVsdHJhCiAgICAgIGNvbW1pdDogNzRlZDlkZTIyOTdkM2I3ZTE1NDJhMjYzOTY2YWE4YWFk
ODYxNzU3OQoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EDFFC9EC90
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 13:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZrE1JO3ukbMSAtTKX2nucTZaeRcNKVzWzXKBmetqGbc=; b=Q+N5LBPPpEpQk8
	Wxps1+PtnnNfmWHpjX/5/52y/KQIwJCDmFUic+lfHEkKp5PU2rXp5Rb2gOK0DMrmM+e2ciDECFYIe
	RkWTVPeMU7kIRGoCm05xN9fnnX5sajjCyNiAD/KN/n93L+YuWaPW2FQCGuL74t4igLO/pcXZYB0i8
	DXEzYfT+EAlB+rg89ATGlMpfdmwYwfkpZW2DSqUM3AnIc4/81/lOlnQxI0Sb3XS0DmNdorF1JCNfy
	PFfPmdyM7zOFXw8Y8iAkmRGQH+Gqp4uljwJtbjhCygZGperFVLp89f4pCxP79ucO3vVejOtzlb+dZ
	rzyX2S9oSsG5UlaG+REQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIIK-00000005RaB-0zUb;
	Mon, 12 Jan 2026 13:49:20 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIID-00000005RSM-3WUR;
	Mon, 12 Jan 2026 13:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768225754; x=1799761754;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=stoeaFvLKGGn0uhn85r/nzgAeuADmULIQT05Vn4VYoE=;
  b=guLjQhOU5dKu5hsPlXtmc+uWQ0vXhsnF8XGUa5khIKK0bE+je+hBN2z2
   D7m+OV7Rj33FYk0ravHfKF1ePQ2OoHLhfk5bXsOC+jT0HOt5ji10Bv6ad
   P7K4sUETgqmapHMdQVJLlYk1F0X9b7ffy+16L2PGv0c5stQLTi8pUV60t
   T24UEYRP7iTXQBZsPreLvTC1GrKJyWaUbnLmsxDquYX2/pT3F8uVDuARY
   OEgL2O+duelWOCgixikQ8D31SzfFz39Mj976xlEGfOenwyfMKy5WcPzP2
   +GewUwm+PnlpUmRdrUKE30CmHj18fOcKVX7Fo9YqrSqFp/uMu3kGZcljs
   g==;
X-CSE-ConnectionGUID: 2B06Ky5aTsO9vj/0RcDRRA==
X-CSE-MsgGUID: KeHKX5K7S0KTttlv1DESGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="57048281"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; 
   d="scan'208";a="57048281"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2026 05:49:12 -0800
X-CSE-ConnectionGUID: 3psanrVbTtGgoavkyMUQUw==
X-CSE-MsgGUID: g0E+JuNQRYarjdD7ueGt/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; 
   d="scan'208";a="208618611"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa004.jf.intel.com with ESMTP; 12 Jan 2026 05:49:08 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id B08B598; Mon, 12 Jan 2026 14:49:06 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andi Shyti <andi@smida.it>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Qianfeng Rong <rongqianfeng@vivo.com>,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Khalil Blaiech <kblaiech@nvidia.com>,
	Asmaa Mnebhi <asmaa@nvidia.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Qii Wang <qii.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Linus Walleij <linusw@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH v1 0/7] i2c: busses: Introduce and use HZ_PER_GHZ
Date: Mon, 12 Jan 2026 14:46:08 +0100
Message-ID: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_054913_891574_089FDF8C 
X-CRM114-Status: UNSURE (   8.42  )
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

QSBmZXcgZHJpdmVycyBmb3IgScKyQyBob3N0IGNvbnRyb2xsZXJzIHVzZSBIWl9QRVJfR0haIGlu
IG51bWVyaWMgZm9ybS4KVGhpcyBpcyBsZXNzIHJlYWRhYmxlIGFuZCBwcm9uZSB0byBzdWJ0bGUg
bWlzdGFrZXMuIEluc3RlYWQsIGludHJvZHVjZQphIHdlbGwgZGVmaW5lZCBjb25zdGFudCBhbmQg
dXNlIGl0IGluIHRoZSBkcml2ZXJzLiBObyBmdW5jdGlvbmFsIGNoYW5nZQppbXBsaWVkIGV4Y2Vw
dCBvbmUgY2FzZSB3aGVyZSA2NC1iaXQgZGl2aXNpb24gcmVwbGFjZWQgd2l0aCAzMi1iaXQgb25l
LgoKQW5keSBTaGV2Y2hlbmtvICg3KToKICB1bml0czogQWRkIEhaX1BFUl9HSFoKICBpMmM6IG1s
eGJmOiBVc2UgSFpfUEVSX0dIWiBjb25zdGFudCBpbnN0ZWFkIG9mIGN1c3RvbSBvbmUKICBpMmM6
IG10NjV4eDogVXNlIEhaX1BFUl9HSFogY29uc3RhbnQgaW5zdGVhZCBvZiBwbGFpbiBudW1iZXIK
ICBpMmM6IG5vbWFkaWs6IFVzZSBIWl9QRVJfR0haIGNvbnN0YW50IGluc3RlYWQgb2YgcGxhaW4g
bnVtYmVyCiAgaTJjOiByazN4OiBVc2UgSFpfUEVSX0dIWiBjb25zdGFudCBpbnN0ZWFkIG9mIHBs
YWluIG51bWJlcgogIGkyYzogc3Q6IFVzZSBIWl9QRVJfR0haIGNvbnN0YW50IGluc3RlYWQgb2Yg
cGxhaW4gbnVtYmVyCiAgaTJjOiBzeW5xdWFjZXI6IFVzZSBIWl9QRVJfR0haIGNvbnN0YW50IGlu
c3RlYWQgb2YgcGxhaW4gbnVtYmVyCgogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1tbHhiZi5jICAg
ICB8ICA1ICsrLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW10NjV4eC5jICAgIHwgMTEgKysr
KysrLS0tLS0KIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtbm9tYWRpay5jICAgfCAgNyArKysrLS0t
CiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyAgICAgIHwgMTIgKysrKysrLS0tLS0tCiBk
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0LmMgICAgICAgIHwgIDMgKystCiBkcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLXN5bnF1YWNlci5jIHwgIDMgKystCiBpbmNsdWRlL2xpbnV4L3VuaXRzLmggICAg
ICAgICAgICAgIHwgIDMgKysrCiA3IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDE5
IGRlbGV0aW9ucygtKQoKLS0gCjIuNTAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA6FCA9EBD
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Oct 2026 03:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxY3hXRHwK/vgdlLjIKKEsl+wUBdYcBk/QWyNz8eCk4=; b=y5wLm/O32c8qwv
	TVYk4n7eJZbdaAwDW8KsH/KvnnAfJT8B0FJA0oZlwKiI8ueKRIzTk78kQ79iroHkb5LVrmqQ2AowT
	w45fA2tKpSQfPwM/zeXz4HW1K79oylrkz8ww2whL2lbgJsDVCbBUbosoa5h9a0gZ8cGZu9QbYOuSQ
	NTw8wrK/HM4nK9+jkT6yYooy/kKcgYcCLwhG1WO3gkznsXd5SFEbnWWFaqE/GFllAdisM2PgrQw96
	EvpeQ27+XRcDL680QowPSuo1IHwo4p6PuviXztSlFpSGXoWMG/RvkwspO1+m0gwbTyzq4mK2ZEhhD
	0p0NdSfQGz2tv3X0PQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFkHw-00000008gSe-3gP5;
	Sun, 11 Oct 2026 03:31:52 +0000
Received: from mail-m9318.xmail.ntesmail.com ([103.126.93.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFkHs-00000008gRo-0LyN;
	Sun, 11 Oct 2026 03:31:51 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5098b255b;
	Sun, 11 Oct 2026 11:31:43 +0800 (GMT+08:00)
Message-ID: <9a8c6a76-8972-4b1e-8384-842668621fce@rock-chips.com>
Date: Sun, 11 Oct 2026 11:31:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Andrew Lunn <andrew@lunn.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 sashiko-bot <sashiko-bot@kernel.org>
Subject: Re: [PATCH v8 2/2] arm64: dts: rockchip: Add ALIENTEK QuarkPi-CA2
To: Bob Hui <bg9oxa@163.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261007-quarkpi-ca2-v8-0-b83192bed07b@163.com>
 <20261007-quarkpi-ca2-v8-2-b83192bed07b@163.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261007-quarkpi-ca2-v8-2-b83192bed07b@163.com>
X-HM-Tid: 0aa1290431dd03a4kunmba7fbebefd914
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ01MGlZNTh4YTk8dSx
	pMT0pWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JLDjmmg9o/8Q7fsHV8WerOkHOQUPDsyvEAY2gbZWMRzcj3vXOEmlcrFuksiFJFLnnS4u4x6+qZ14dWnHXOG6S32X8B/R6lwVM2PbK8QxGEgkofJF3YXBXCmgmzvzq0SdLx2vT9GYHjRdij3uSLz1Oc/TQhwPihFjKeSl6l9zx8c=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=yCpg2ESHQC0kLKSunXHQ5tFhB92LVhJUQ3PXxAQdGmo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_203148_648201_9F9BBFFA 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQm9iCgrlnKggMjAyNi8xMC8wNyDmmJ/mnJ/kuIkgMTM6MTgsIEJvYiBIdWkg5YaZ6YGTOgo+
IEFkZCBhIGRldmljZSB0cmVlIGZvciB0aGUgQUxJRU5URUsgUXVhcmtQaS1DQTIsIGFuIFJLMzU4
OFMgYmFzZWQgY2FyZAo+IGNvbXB1dGVyLiBUaGUgYm9hcmQgY29tZXMgaW4gNCwgOCBhbmQgMTYg
R2lCIExQRERSNFggdmFyaWFudHMgd2l0aAo+IDMyIEdCLCA2NCBHQiBvciAxMjggR0Igb2YgZU1N
QzsgdGhpcyB3YXMgdGVzdGVkIG9uIHRoZSAxNiBHaUIvMTI4IEdCCj4gb25lLgo+IAoKLi4uCgo+
ICsKPiArCXZjYzN2M19wY2llOiByZWd1bGF0b3ItdmNjM3YzLXBjaWUgewo+ICsJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjNfcGNp
ZSI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAr
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47
Cj4gKwl9Owo+ICt9OwoKSXMgdGhlcmUgYW55IHJlYXNvbiB0aGF0IHlvdSBtYXJrZWQgaXQgYXMg
YWx3YXlzLW9uPwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93300C1B087
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+b64QW0Ago3ZRNuX+2EbB9+Tkhc7AOrLucsdR7K4Eo=; b=flnyONUITq8oOF
	e8EBk4NxtUflMVzKIgXDEAgTVEXdLD17TjcMGHFnW4aQBJ+CIMXKZxHRpBdP6iKu0D6JXEoRS5Mza
	Zcoe9uCNOB3kcvPk/SP9MmRLnITXIMD3zzdZqqhtAkxgp6w8HMg+Xt9wmi0jdbYRzUIh/I2it8hLJ
	GB/WAoZk3eKk05vuGgT18EDH2kgvQEH1rFUc9tp9KHAzlZNaviGAX5BR2VZMkL+sH6TD7hnFqFbPA
	MZ2lscvBSwrOCuYAhPCtoNR/lRBmalfv/z1haxGSl/73h0X8YT8aBxJzUYb9/ainnrVyP7vV/UkgI
	j8nZUsDRJIktOgP0b6uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncNG-00000007Egs-3rJF;
	Thu, 27 Feb 2025 11:48:18 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbvX-000000079HD-04VQ;
	Thu, 27 Feb 2025 11:19:40 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97ec;
	Thu, 27 Feb 2025 19:19:35 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	linux-pwm@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 10/15] dt-bindings: pwm: rockchip: Add rockchip,rk3562-pwm
Date: Thu, 27 Feb 2025 19:19:08 +0800
Message-Id: <20250227111913.2344207-11-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0lIT1ZIH0JIGR9IGE1IGRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a95472227a603afkunmc65f97ec
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PQw6Ajo6PDIWMw0ZEkMSHgMK
	NjJPCxFVSlVKTE9LTU5OSkxNQ0JLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0JKNwY+
DKIM-Signature: a=rsa-sha256;
	b=GcN2ERCc1IPbG8jdSQtA8+gejnae2Ic80W8H0f/M/9NoS9RfXof+K3bYWjyMhKuOedDw/XI6BQEYsQufopuwN507GTjp7A1azj/7+xjM6iQKEkxbVMc8XAkrXttbNAKs6X1Cle31sEbkhBko7R/8JulWU3/OED3FqwSUk1M8N00=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FneYXAuOME8Df99lzvc4w6XCpUDG98t55L9UJ4vYqBQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031939_213749_D2E9F02A 
X-CRM114-Status: UNSURE (   8.12  )
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

VGhlIFBXTSBjb3JlIG9uIFJvY2tjaGlwJ3MgUkszNTYyIGlzIHRoZSBzYW1lIGFzIHRoZSBvbmUg
YWxyZWFkeQppbmNsdWRlZCBpbiBSSzMzMjguIEV4dGVuZCB0aGUgYmluZGluZyBhY2NvcmRpbmds
eSB0byBhbGxvdwoKCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTYyLXB3bSIsICJyb2NrY2hp
cCxyazMzMjgtcHdtIjsKClNpZ25lZC1vZmYtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAa2VybmVs
Lm9yZz4KLS0tCgpDaGFuZ2VzIGluIHYzOgotIFVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgYW5k
IGNvbGxlY3QgdGhlIEFja2VkLWJ5IHRhZy4KCkNoYW5nZXMgaW4gdjI6IE5vbmUKCiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1yb2NrY2hpcC55YW1sIHwgMSArCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbAppbmRleCA2NWJmYjQ5
MmIzYTQuLmU0ZTE5NzZjNTQyZCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3B3bS9wd20tcm9ja2NoaXAueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcHdtL3B3bS1yb2NrY2hpcC55YW1sCkBAIC0zMCw2ICszMCw3IEBAIHBy
b3BlcnRpZXM6CiAgICAgICAgICAgLSBlbnVtOgogICAgICAgICAgICAgICAtIHJvY2tjaGlwLHB4
MzAtcHdtCiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMzA4LXB3bQorICAgICAgICAgICAg
ICAtIHJvY2tjaGlwLHJrMzU2Mi1wd20KICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1Njgt
cHdtCiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LXB3bQogICAgICAgICAgICAgICAt
IHJvY2tjaGlwLHJ2MTEyNi1wd20KLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

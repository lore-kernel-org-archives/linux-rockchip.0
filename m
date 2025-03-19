Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA7DC35FFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 11:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ioh0932LtI9lNty594hmtUx69R704yd+aBGGfoS0+UY=; b=L4AH+XVIRMrUFa
	GZgTcEJTyMSe1X+/gr8c3Z+xAXX/yZNo38Q73qXd1Y0LtkECXgdPCAl1xrcljVxM0u7e5oF85eeAK
	r3s0YCsqasK2OCq/VqaiuuRVy2hUzMdVE9m1QohGRkjdYCiwtHSAX+/Jb/4bWYpqFo5bnkmfRzUN2
	+b6Lov/PowpWDtUwEmoHuo7EvJrE5gyE5tUeqUL1Genco3XblrN1ZqypfoaM6z17pF9VrTDIbIuWC
	RYV7JekAdVOl8C8rb2q3Udzc4sOf5jq2wzSJ/7NQw5Rd/h78vlDv+3T9o9x8PdvNSnxzmo3XW2yxc
	IEm46jiRHMFUBE/1RoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turfx-00000008qB3-3vzK;
	Wed, 19 Mar 2025 11:33:33 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tureF-00000008pqz-3UXK;
	Wed, 19 Mar 2025 11:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742383905;
	bh=NgXaeGxC+7uR4MnVpvvGzey4eIPptRADjwnVsguAexg=;
	h=From:To:Cc:Subject:Date:From;
	b=a2fVprjV7HZl/rdZBRYqMEklnoDMRuuospdq03wo8rIcGcKryCvCKfSauGTqsmQac
	 OZJaXS/sV+aiqyNaDyx0PHX83ONqIK2bBL1ZXpUyI/kfPNFEHCBV9uLorl6Qx6p0yE
	 txcgf7LR4V5o2k7of/EjlNinSRzdxGfFY0iXxYvQ4V2imXAvrh/IDN3Iv/KCoW9+8s
	 haVmVVRpfA0HypuhDI7r6AviIIYIH73aojSRWmCCnjxNcwyV/Utm62ntvVKsdS74iI
	 NuZjsNAT3FiVCiV7nMUYzEVjyRH7erpsR1SlRp9dJReSqY7wH6S6YNy6h1CWCRrqsq
	 Hxa1zcLYgeZCg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id BBA5EFC6421; Wed, 19 Mar 2025 12:31:45 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: ts433: Add pinmuxing for eMMC
Date: Wed, 19 Mar 2025 12:31:38 +0100
Message-ID: <20250319113138.125192-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154; i=uwe@kleine-koenig.org; h=from:subject; bh=NgXaeGxC+7uR4MnVpvvGzey4eIPptRADjwnVsguAexg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2qsbJHYdXM0d0aQbA1FFZuw1eiLFwFe3Y+sBO daSrDnrgMOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9qrGwAKCRCPgPtYfRL+ TuF6CACOXo7X4VMq5bPJ8hv6L9zADnu8GRCVAFmCIxijRN4ZEK6QfrTwWje3UQ/xWQvvHYAnXOO BU/NtN2e2CuF3G8gN6hOywwCQRzDuSoEbUUH5dAocJjSXQa/LXlfG0G7JAvr+rsldwrCf/TmGmn Xmf4XfPtZz9svXybEFlGK0nz47QbmZg32eFyVe9S6JljfNs00iPRs1nVS04C9uKFnAxK/eg/cm6 CU84nfDG+3P2x5wMQaHw/nGF/r4xBQecGY8xvRyon3ZJa7955n8feRWHCUYHOtA0eBd39PgI8ak lVljq39W3SOuFoewfzepk+R+IRAxJe0qH96OJ9Ay4LMNQ4Vh
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_043148_013436_A6F37F40 
X-CRM114-Status: GOOD (  10.93  )
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

V2l0aCB0aGlzIGFkZGVkIGJhcmVib3ggaXMgYWJsZSB0byBhY2Nlc3MgdGhlIGVNTUMgZXZlbiB3
aGVuIGJvb3RlZCB2aWEKVVNCLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3
ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCkhlbGxvLAoKSSB0ZXN0ZWQgdGhhdCBvbiB0b3Agb2Yg
djYuMTQtcmMxICsKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC9jb3Zl
ci4xNzQyMzMxNjY3LmdpdC51a2xlaW5la0BrZXJuZWwub3JnLwpidXQgSSBndWVzcyBnaXQgY2Fu
IGFwcGx5IGl0IGp1c3QgZmluZSBvbiBhIGRpZmZlcmVudCB0cmVlLgoKQmVzdCByZWdhcmRzClV3
ZQoKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggNDExZjhhYzc5
OTRiLi42YWU0MzE2NzYxYzQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC02MzAsNiArNjMwLDggQEAgJnNkaGNpIHsKIAli
dXMtd2lkdGggPSA8OD47CiAJbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+OwogCW5vbi1yZW1v
dmFibGU7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAgPSA8JmVtbWNf
YnVzOCAmZW1tY19jbGsgJmVtbWNfY21kICZlbW1jX2RhdGFzdHJvYmU+OwogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CiAKCmJhc2UtY29tbWl0OiAyMDE0Yzk1YWZlY2VlM2U3NmNhNGE1Njk1NmE5MzZl
MjMyODNmMDViCnByZXJlcXVpc2l0ZS1wYXRjaC1pZDogODI3Y2EwODg4Y2ZmZTdjYzgyYTkzODk2
OWNiZTE0NWQzMzk2NzE1NwpwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDdkMjkxNzJmNzI2OWRjZGRj
MjZiMGM2ZjA4YzRmMTM2MWExZmUwYjMKLS0gCjIuNDcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

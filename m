Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A56C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C8C761073
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C8C761073
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zEsoZknBJi1xA1YjHmSv/tb+ZOfNHpR2l8A/Wm9Gh04=; b=U4gNXmw7VJx0FpG+HQvYPyRaR
	xL5jHn2YiaccK8bguVHW3zQfAHGGp2DiMUFEkdqrA19wqW+ejyUraL8t1ui/MPkX/lVLzp/0eAqqe
	ASnmHIDs3JVw8pENzP1cyN8CUhlFuU8eaJgcZxl/ZpMSQKU/nqXi+YZz9XS1kQiix9Zvuhkb7DzDp
	OhGnmUPgIM55h7aNGCwOieWEL3kim53hGbRrQbcvdmnFxwdvqvMJOmKrdJDx9F8ZMf86bSQU9AVke
	DvNJGR28tjKyNuuKC5ehHxZMlPA69ZEa6eZHqvWvVgeQTiLJE+Hns9rbYltM7u5VFZAImLb+LKbAt
	ri6O1LlFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPsh-00D8ky-AX; Sun, 16 May 2021 23:09:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq8-00D7oR-J4; Sun, 16 May 2021 23:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=WQx1Oa1O3JtHSEcF1yaSjpRPxL48ZQOEiymgFVcdGf8=; b=CpT6RAJgWo3NCM79mXHqicuWbZ
 6TFDG2Xla1t+Z3kYfUHFXeQDVeC1cGVpTrBs0q3JDHzh3269DTuLfEWARLgd/eBFz/bHBqPZ5L46l
 Q5W78FohbEZsxfQq2ilrDBCXJxtO8bnNpguf+BzespQCbCx/zL2HwjP/qfrIm/Mdsa5vbvWmrcCfc
 nfVFwvSfWVO2Qy2/GXgb1CT4K1t1STRmkGUg2DJScFLFQQW6Vl1bXUpl//kG2D/R5Ajeo7ZzVsIm0
 7VzTvrEPeH7Bj6OSb4/yG/yjfYEL064tuEJLqQobpn3BVjDEmRmZP3NveRn9kTALON5TS9MZXEO/X
 Fk+ySDCw==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00DKeD-2R; Sun, 16 May 2021 23:06:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B014DB1F0;
 Sun, 16 May 2021 23:06:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH 8/9] arm64: dts: rockchip: rk1808k-toybrick-m0: Enable eMMC
Date: Mon, 17 May 2021 01:05:50 +0200
Message-Id: <20210516230551.12469-9-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160626_277258_CB7361BF 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

QWRkIGZha2UgY2xvY2tzIChiYXNlZCBvbiBkb3duc3RyZWFtIGtlcm5lbCdzIGRlYnVnZnMgY2xr
X3N1bW1hcnkpCmFuZCBlbmFibGUgZU1NQy4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmsxODA4ay10
b3licmljay1tMC5kdHMgfCAzOCArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MzggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmsxODA4ay10b3licmljay1tMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMTgwOGstdG95YnJpY2stbTAuZHRzCmluZGV4IDE1MjkzYTg1NzZjNi4uYWFiZTdhNzAzNGIy
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOGstdG95YnJp
Y2stbTAuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsxODA4ay10b3li
cmljay1tMC5kdHMKQEAgLTM4LDYgKzM4LDM0IEBAIHZkZF9jcHU6IHZkZC1jcHUgewogCQlyZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw4NTAwMDA+OwogCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNf
cGNpZT47CiAJfTsKKworCWhjbGtfZW1tYzogaGNsay1lbW1jIHsKKwkJY29tcGF0aWJsZSA9ICJm
aXhlZC1jbG9jayI7CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwxOTgwMDAwMDA+OworCQkjY2xvY2st
Y2VsbHMgPSA8MD47CisJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJoY2xrX2VtbWMiOworCX07CisK
KwlzY2xrX2VtbWM6IHNjbGstZW1tYyB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwor
CQljbG9jay1mcmVxdWVuY3kgPSA8Mjk3MDAwMDAwPjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owor
CQljbG9jay1vdXRwdXQtbmFtZXMgPSAic2Nsa19lbW1jIjsKKwl9OworCisJc2Nsa19lbW1jX2Ry
djogc2Nsay1lbW1jLWRydiB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOworCQljbG9j
ay1mcmVxdWVuY3kgPSA8MTQ4NTAwMDAwPjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCQljbG9j
ay1vdXRwdXQtbmFtZXMgPSAic2Nsa19lbW1jX2RydiI7CisJfTsKKworCXNjbGtfZW1tY19zYW1w
bGU6IHNjbGstZW1tYy1zYW1wbGUgeworCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJ
Y2xvY2stZnJlcXVlbmN5ID0gPDE0ODUwMDAwMD47CisJCSNjbG9jay1jZWxscyA9IDwwPjsKKwkJ
Y2xvY2stb3V0cHV0LW5hbWVzID0gInNjbGtfZW1tY19zYW1wbGUiOworCX07CiB9OwogCiAmY3B1
MCB7CkBAIC00OCw2ICs3NiwxNiBAQCAmY3B1MSB7CiAJY3B1LXN1cHBseSA9IDwmdmRkX2NwdT47
CiB9OwogCismZW1tYyB7CisJc3RhdHVzID0gIm9rYXkiOworCWNsb2NrcyA9IDwmaGNsa19lbW1j
PiwgPCZzY2xrX2VtbWM+LCA8JnNjbGtfZW1tY19kcnY+LCA8JnNjbGtfZW1tY19zYW1wbGU+Owor
CWNsb2NrLW5hbWVzID0gImJpdSIsICJjaXUiLCAiY2l1LWRyaXZlIiwgImNpdS1zYW1wbGUiOwor
CWNhcC1tbWMtaGlnaHNwZWVkOworCW1tYy1oczIwMC0xXzJ2OworCW5vbi1yZW1vdmFibGU7CisJ
YnVzLXdpZHRoID0gPDg+OworfTsKKwogJmdpYyB7CiAJL2RlbGV0ZS1wcm9wZXJ0eS8gaW50ZXJy
dXB0czsKIH07Ci0tIAoyLjMxLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

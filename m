Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33339C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CVFacx9snSBzBchspQ3MSeC2tmic3/d0ANE1SSirXSc=; b=B4/adR/rJ2yLLW
	putHABBr8K4D5zjyUW1Z9ud0fohSQie4pfRIAxBQtbeP9jkv0BJPQI+jCnaEF9kzjsSFEaB7Tp5S3
	LTAK9MQltSIkADb2b8GbmW5yN4FiRgLU5/CYlF1oIzf1O2/4Gzfrg05cA9+pw8WDzApWrQWhRnqSd
	90HXC+JZ30fv54yg+/TyFkGXjlNNL0B5Rmd52Fyjt+RqOfISwEE+iQEZNnu4lc7wqdKLsrT2kFNcj
	TbCeYHN1ja06fS2ac6EZBCG58eTrLuHDbUK1MAimUaaXdPDa+iKTYnOGOqmAc4vIB1Fga5CoYoxYn
	VI/KLe8Qm7TxE6DdS+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkFqn-009GYC-Q4; Fri, 29 Apr 2022 01:55:17 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkFqb-009GVD-VZ; Fri, 29 Apr 2022 01:55:08 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 1F5598003B3;
 Fri, 29 Apr 2022 09:54:58 +0800 (CST)
Date: Fri, 29 Apr 2022 09:54:58 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: kuba <kuba@kernel.org>, davem <davem@davemloft.net>, 
 joabreu <joabreu@synopsys.com>, 
 alexandre.torgue <alexandre.torgue@st.com>, 
 peppe.cavallaro <peppe.cavallaro@st.com>, 
 netdev <netdev@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH V2] ethernet: stmmac: support driver work for DTs
 without child queue node
References: <20220428010927.526310-1-jay.xu@rock-chips.com>, 
 <20220429004605.1010751-1-jay.xu@rock-chips.com>, 
 <Yms3ynT8RGmldAkm@lunn.ch>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022042909545741446644@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRkdQ0pWHktDHUMdSk
 MYQ0hNVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006TDo6Nz0*NhE3GhkzUR4T
 EjkwCz9VSlVKTU5KSkJMSUJDTU1CVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUhMSk03Bg++
X-HM-Tid: 0a80730746cfb03akuuu1f5598003b3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_185506_585764_0ADB4E63 
X-CRM114-Status: GOOD (  11.29  )
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

SGksIGFuZHJldwoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBGcmks
IEFwciAyOSwgMjAyMiBhdCAwODo0NjowNUFNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+PiBU
aGUgZHJpdmVyIHVzZSB0aGUgdmFsdWUgb2YgcHJvcGVydHkgJ3NucHMscngtcXVldWVzLXRvLXVz
ZScgdG8gbG9vcAo+PiBzYW1lIG51bWJlcnMgY2hpbGQgbm9kZXMgYXMgcXVldWVzLCBzdWNoIGFz
Ogo+Pgo+PsKgwqDCoMKgIGdtYWMgewo+PsKgwqDCoMKgwqDCoMKgwqAgcngtcXVldWVzLWNvbmZp
ZyB7Cj4+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNucHMscngtcXVldWVzLXRvLXVzZSA9IDwx
PjsKPj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcXVldWUwIHsKPj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAvLyBub3RoaW5nIG5lZWQgaGVyZS4KPj4gwqDCoMKgIH07Cj4+IH07
Cj4+wqDCoMKgwqAgfTsKPj4KPj4gU2luY2UgYSBwYXRjaCBmb3IgZHRjIGZyb20gcm9ja2NoaXAg
d2lsbCBkZWxldGUgYWxsIG5vZGUgd2l0aG91dCBhbnkKPj4gcHJvcGVydGllcyBvciBjaGlsZCBu
b2RlLCB0aGUgcXVldWUwIG5vZGUgd2lsbCBiZSBkZWxldGVkLCB0aGF0IGNhdXNlZAo+PiB0aGUg
ZHJpdmVyIGZhaWwgdG8gcHJvYmU6Cj4KPklzIHRoaXMgdGhlIGluIHRyZWUgZHRjPyBEbyB5b3Ug
aGF2ZSBhIGNvbW1pdCBoYXNoIGZvciBpdD8gVGhhdCBzaG91bGQKPnByb2JhYmx5IGJlIHVzZWQg
YXMgYSBGaXhlczogdGFnLiBPciB0aGF0IGNoYW5nZSB0byBkdGMgbmVlZHMKPnJldmVydGluZyBi
ZWNhdXNlIGl0IGJyZWFrcyBzdHVmZi4KPiAKVGhlIHBhdGNoIGlzIGEgaGFjayBwYXRjaCBmb3Ig
c29tZSBwcm9kdWN0cyBhbmQgaGF2ZSBub3QgaW4gdHJlZSBkdGMsIEkgc2FpZCB0aGF0IHRvCmV4
cGxhaW4gYSBwb3NzaWJsZSBjYXNlIGhvdyB0aGluZ3MgaGFwcGVkLCBpdCdzIG9ubHkgYSBjYXNl
IG9mIG5vIGNoaWxkIHF1ZXVlIG5vZGUuCgpJbiBteSBtaW5kLCBpdCdzIGhhcmQgdG8gdW5kZXJz
dGFuZCB0aGUgb25lIHByb3BlcnR5IChzbnBzLHJ4LXF1ZXVlcy10by11c2UpIGRvZXMKaGF2ZSBh
IGxpbWl0IGZvciBhbm90aGVyIG5vZGVzIG9yIHByb3BlcnRpZXMsIGlmIGl0IG11c3Qgd29yayB3
ZWxsLCB0aGUgZHRjIGlzIGJldHRlciB0bwpkbyBhIGFib3J0LCBsaWtlICNzaXplLWNlbGxzID8K
Ck15IHBlcnNvbmFsbHkgcXVlc3Rpb24gZnJvbSBhIGluc2lndGggb2YgRFRzIGJ1dCBnbWFjLCBp
ZiBpdCdzIG5vdCBhIGdvb2QgcXVlc3Rpb24sCkkgY2FuIHNpbXBseSBhZGQgYSBzdGF0dXMgPSAi
b2theSIgZm9yIHRoZSBlbXB0eSBub2RlIGFuZCBkcm9wIHRoaXMgcGF0Y2guCgo+CcKgIEFuZHJl
dwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

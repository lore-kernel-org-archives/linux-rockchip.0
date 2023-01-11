Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05233C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uiuxMwtjY0vjV6fwUQpFjR3tJo49gxnbnrxUkCaxOZw=; b=manOGz+RqomkbY
	mISjc42RMlVwEXc0FEYaTFuZ6k3G9Any1ssKwtoCLkVOMT2OLRMphzEDN5OMYDVSeYsEyxBS5oucJ
	BF3a5ZAk+e6Mtk06vvNXAcbm2vZ9EvKkw+i8JN2PRLkfDouZqDSqSZVPhXddS5/1XTlTDdMWcx7aa
	3LtFSDpZaCF+TAdJ/D5GBCQNVdJ1RqJvYLLSqXTHe2FRzboMoWD1aRLlpE79FbSBOKToRdSsQKXh+
	vrrtcqc78yxkAlWLXQuaNKRJ0J3rQTVJYoAaHmsUijnUoUlU4LiUpzf1D+QMqylmWNZzrB0KSa823
	dcOfyLwGTSqoqlOlzCSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ2J-00B0ws-OI; Wed, 11 Jan 2023 11:12:51 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ22-00B0ql-T3; Wed, 11 Jan 2023 11:12:37 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id 718F4740A82;
	Wed, 11 Jan 2023 19:12:29 +0800 (CST)
Date: Wed, 11 Jan 2023 19:12:29 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	"Jonas Karlman" <jonas@kwiboo.se>, 
	linus.walleij <linus.walleij@linaro.org>
Cc: linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: Re: [PATCH] pinctrl: rockchip: fix reading pull type on rk3568
References: <20230110172955.1258840-1-jonas@kwiboo.se>, 
	<2023011118261820881054@rock-chips.com>, 
	<3490318.N7aMVyhfb1@diego>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2023011119122923852255@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQktMVh9PGkMYGEkaSUMdGVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6Syo6SD0YGQ9RFRAoOhxI
	TzhPCUlVSlVKTUxIT0hOTk5LS09PVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9DTk03Bg++
X-HM-Tid: 0a85a0880fb52eb4kusn718f4740a82
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_031235_108039_99C9458D 
X-CRM114-Status: GOOD (  13.77  )
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

SGkgSGVpa286CgotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPkhpIEpheSwK
Pgo+QW0gTWl0dHdvY2gsIDExLiBKYW51YXIgMjAyMywgMTE6MjY6MTggQ0VUIHNjaHJpZWIgamF5
Lnh1QHJvY2stY2hpcHMuY29tOgo+PiBIaSBKb25hcwo+Pgo+PiAtLS0tLS0tLS0tLS0tLQo+PiBq
YXkueHVAcm9jay1jaGlwcy5jb20KPj4gPldoZW4gcmVhZGluZyBwaW5jb25mLXBpbnMgZnJvbSBk
ZWJ1Z2ZzIGl0IGZhaWxzIHRvIGdldCB0aGUgY29uZmlndXJlZCBwdWxsCj4+ID50eXBlIG9uIFJL
MzU2OCwgInVuc3VwcG9ydGVkIHBpbmN0cmwgdHlwZSIgZXJyb3IgbWVzc2FnZXMgaXMgYWxzbyBy
ZXBvcnRlZC4KPj4gPgo+PiA+Rml4IHRoaXMgYnkgYWRkaW5nIHN1cHBvcnQgZm9yIFJLMzU2OCBp
biByb2NrY2hpcF9nZXRfcHVsbCwgaW5jbHVkaW5nIGEKPj4gPnJldmVyc2Ugb2YgdGhlIHB1bGwt
dXAgdmFsdWUgc3dhcCBhcHBsaWVkIGluIHJvY2tjaGlwX3NldF9wdWxsIHNvIHRoYXQKPj4gPnB1
bGwtdXAgaXMgY29ycmVjdGx5IHJlcG9ydGVkIGluIHBpbmNvbmYtcGlucy4KPj4gPkFsc28gdXBk
YXRlIHRoZSB3b3JrYXJvdW5kIGNvbW1lbnQgdG8gcmVmbGVjdCBhZmZlY3RlZCBwaW5zLCBHUElP
MF9EMy1ENi4KPj4gPgo+PiA+Rml4ZXM6IGMwZGFkYzBlNDdhOCAoInBpbmN0cmw6IHJvY2tjaGlw
OiBhZGQgc3VwcG9ydCBmb3IgcmszNTY4IikKPj4gPlNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4KPj4gPi0tLQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKaWFucXVu
IFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+Cj4KPkRpZCB5b3Ugd2FudCBvbmUgb2YKPgo+LSBS
ZXZpZXdlZC1ieToKPi0gVGVzdGVkLWJ5Ogo+LSBBY2tlZC1ieToKPgo+aW5zdGVhZD8gCnRoYW5r
cywgCgpSZXZpZXdlZC1ieTrCoEppYW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNvbT4KPgo+
Cj5IZWlrbwo+Cj4+ID4gZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyB8IDExICsr
KysrKysrKystCj4+ID4gMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4gPgo+PiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4+ID5pbmRleCA4NDlk
NWZhMmEzNjIuLjVlZWFjOTJmNjEwYSAxMDA2NDQKPj4gPi0tLSBhL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLXJvY2tjaGlwLmMKPj4gPisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMKPj4gPkBAIC0yNDM2LDEwICsyNDM2LDE5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2V0
X3B1bGwoc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5rLCBpbnQgcGluX251bSkKPj4gPiBj
YXNlIFJLMzMwODoKPj4gPiBjYXNlIFJLMzM2ODoKPj4gPiBjYXNlIFJLMzM5OToKPj4gPisJY2Fz
ZSBSSzM1Njg6Cj4+ID4gY2FzZSBSSzM1ODg6Cj4+ID4gcHVsbF90eXBlID0gYmFuay0+cHVsbF90
eXBlW3Bpbl9udW0gLyA4XTsKPj4gPiBkYXRhID4+PSBiaXQ7Cj4+ID4gZGF0YSAmPSAoMSA8PCBS
SzMxODhfUFVMTF9CSVRTX1BFUl9QSU4pIC0gMTsKPj4gPisJLyoKPj4gPisJKiBJbiB0aGUgVFJN
LCBwdWxsLXVwIGJlaW5nIDEgZm9yIGV2ZXJ5dGhpbmcgZXhjZXB0IHRoZSBHUElPMF9EMy1ENiwK
Pj4gPisJKiB3aGVyZSB0aGF0IHB1bGwgdXAgdmFsdWUgYmVjb21lcyAzLgo+PiA+KwkqLwo+PiA+
KwlpZiAoY3RybC0+dHlwZSA9PSBSSzM1NjggJiYgYmFuay0+YmFua19udW0gPT0gMCAmJiBwaW5f
bnVtID49IDI3ICYmIHBpbl9udW0gPD0gMzApIHsKPj4gPisJaWYgKGRhdGEgPT0gMykKPj4gPisJ
ZGF0YSA9IDE7Cj4+ID4rCX0KPj4gPgo+PiA+IHJldHVybiByb2NrY2hpcF9wdWxsX2xpc3RbcHVs
bF90eXBlXVtkYXRhXTsKPj4gPiBkZWZhdWx0Ogo+PiA+QEAgLTI0OTcsNyArMjUwNiw3IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfc2V0X3B1bGwoc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5r
LAo+PiA+IH0KPj4gPiB9Cj4+ID4gLyoKPj4gPi0JKiBJbiB0aGUgVFJNLCBwdWxsLXVwIGJlaW5n
IDEgZm9yIGV2ZXJ5dGhpbmcgZXhjZXB0IHRoZSBHUElPMF9EMC1ENiwKPj4gPisJKiBJbiB0aGUg
VFJNLCBwdWxsLXVwIGJlaW5nIDEgZm9yIGV2ZXJ5dGhpbmcgZXhjZXB0IHRoZSBHUElPMF9EMy1E
NiwKPj4gPiAqIHdoZXJlIHRoYXQgcHVsbCB1cCB2YWx1ZSBiZWNvbWVzIDMuCj4+ID4gKi8KPj4g
PiBpZiAoY3RybC0+dHlwZSA9PSBSSzM1NjggJiYgYmFuay0+YmFua19udW0gPT0gMCAmJiBwaW5f
bnVtID49IDI3ICYmIHBpbl9udW0gPD0gMzApIHsKPj4gPi0tCj4+ID4yLjM5LjAKPj4gPgo+Pgo+
Cj4KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

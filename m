Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FAD0C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 20:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfWrNE7ZhaWJoXIVmeCQLSKNZ0OPmFSI+YLFJh7or/k=; b=olu8B18K84f54D
	KB2/cYVqVtF5bpHLodFpUGQmskcfskmzZ+Xd/HuwWxaQomu7r0rrq7vD3D63v9zaL783KLTwaaEpQ
	iLDrhL15VNvKsUGRohngiefEPd2hX1MeqEhfMPUFiExz6yzPEJogeo/pOVW+KZLAp8ZZ/IiVVE4AC
	kfKIAYxJqkp+E7ntBz64WYeBuMRlkkLZ/0aHQK3hrYaKvjVfeA5U8ysy5UjtLqocj+ShJCfjrfFrK
	8+j/18pPGf2jUSUmdXijXz/zXF+paN4ANLpeT5t70nUozuXzZpLpJk5LsWEEdyafjN4YgMJ1Ian8Y
	LZks/r2NSpJiPq7Y2TPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlv8-0094wg-Dk; Thu, 18 Aug 2022 20:15:14 +0000
Received: from smtp06.smtpout.orange.fr ([80.12.242.128] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOluu-0094ns-Gc
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 20:15:02 +0000
Received: from [192.168.1.18] ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id OlujoUzUBXaJmOlujo7dck; Thu, 18 Aug 2022 22:14:51 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 18 Aug 2022 22:14:51 +0200
X-ME-IP: 90.11.190.129
Message-ID: <b4daf694-1188-a8f6-615f-7e416cef9be0@wanadoo.fr>
Date: Thu, 18 Aug 2022 22:14:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] pwm: rockchip: Convert to use dev_err_probe()
Content-Language: en-GB
To: zhaoxiao <zhaoxiao@uniontech.com>, thierry.reding@gmail.com,
 heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220818075503.18442-1-zhaoxiao@uniontech.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220818075503.18442-1-zhaoxiao@uniontech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_131500_736759_FEA1D80F 
X-CRM114-Status: GOOD (  19.49  )
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

TGUgMTgvMDgvMjAyMiDDoCAwOTo1NSwgemhhb3hpYW8gYSDDqWNyaXTCoDoKPiBJdCdzIGZpbmUg
dG8gY2FsbCBkZXZfZXJyX3Byb2JlKCkgaW4gLT5wcm9iZSgpIHdoZW4gZXJyb3IgY29kZSBpcyBr
bm93bi4KPiBDb252ZXJ0IHRoZSBkcml2ZXIgdG8gdXNlIGRldl9lcnJfcHJvYmUoKS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiB6aGFveGlhbyA8emhhb3hpYW9AdW5pb250ZWNoLmNvbT4KPiAtLS0KPiAg
IHYyOiByZW1vdmUgdGhlICVkIGluIHRoZSBtZXNzYWdlLgpIaSwKCllvdSBkaWQgbW9yZSB0aGFu
IHRoYXQuCgo+IAo+ICAgZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMgfCAxMCArKystLS0tLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3
bS1yb2NrY2hpcC5jCj4gaW5kZXggZjM2NDdiMzE3MTUyLi5jNmUwODhjMWE2YmYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3B3bS9wd20t
cm9ja2NoaXAuYwo+IEBAIC0zMzAsMTYgKzMzMCwxMiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3B3
bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCj4gICAJaWYgKElTX0VS
UihwYy0+cGNsaykpIHsKPiAgIAkJcmV0ID0gUFRSX0VSUihwYy0+cGNsayk7Cj4gLQkJaWYgKHJl
dCAhPSAtRVBST0JFX0RFRkVSKQo+IC0JCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW4ndCBnZXQg
QVBCIGNsazogJWRcbiIsIHJldCk7Cj4gLQkJcmV0dXJuIHJldDsKPiArCQlyZXR1cm4gZGV2X2Vy
cl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJDYW4ndCBnZXQgQVBCIGNsa1xuIik7Cj4gICAJfQoK
WW91IGNvdWxkIHVzZSBQVFJfRVJSKHBjLT5wY2xrKSBkaXJlY3RseS4gVGhlcmUgaXMgbm8gbmVl
ZCB0byBhc3NpZ24gaXQgCnRvICdyZXQnLiBUaGlzIHdvdWxkIHNpbXBsaWZ5IGV2ZW4gZnVydGhl
ciB0aGUgY29kZS4gKHt9IGNhbiBiZSByZW1vdmVkKQoKCj4gICAKPiAgIAlyZXQgPSBjbGtfcHJl
cGFyZV9lbmFibGUocGMtPmNsayk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2VycigmcGRldi0+
ZGV2LCAiQ2FuJ3QgcHJlcGFyZSBlbmFibGUgUFdNIGNsazogJWRcbiIsIHJldCk7Cj4gLQkJcmV0
dXJuIHJldDsKPiAtCX0KPiArCWlmIChyZXQpCj4gKwkJZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2
LCByZXQsICJDYW4ndCBwcmVwYXJlIGVuYWJsZSBQV00gY2xrXG4iKTsKCklzIGEgJ3JldHVybicg
YmVmb3JlIGRldl9lcnJfcHJvYmUoKSBtaXNzaW5nPwoKQmVmb3JlIHdlIHdlcmUgcmV0dXJuaW5n
IHRoZSBlcnJvciBjb2RlLCBub3cgd2UgaWdub3JlIGl0IGFuZCBjb250aW51ZS4KSWYgZG9uZSBv
biBwdXJwb3NlLCB5b3Ugc2hvdWxkIGV4cGxhaW4gd2h5IGluIHRoZSBjb21taXQgbG9nLgoKCj4g
ICAKPiAgIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPnBjbGspOwo+ICAgCWlmIChyZXQp
IHsKCldoeSBqdXN0IGNvbnZlcnRpbmcgMiBkZXZfZXJyKCkgYW5kIGxlYXZpbmcgdGhlIG90aGVy
IG9uZSBpbiB0aGUgcHJvYmUgCnVudG91Y2hlZD8KCkNKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

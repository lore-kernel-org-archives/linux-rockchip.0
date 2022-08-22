Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C431C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 07:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtvU6X13qLg6Zks5qeM4laazvaSshCEI6mfI7rOcLjY=; b=WJtQeAQ7jm4UJr
	iKKojjMnJ4gQiTeU+kyx0uTImrwhh8kBIz6CsesehMbEfr3OuP7204xKjg5C0aByn9KOr7jF5VZ9i
	WfVwwfIS1C5qMp/NiDt6EDTd8f9QXFFkEikoGAkcLABBes/Y63ic5ILpQ8b+tJHbnbU+e8X7Hu5l8
	FYaseUa/qXWpTncdjC0xfuw3VZXFYI3kpRrpw4v52pFepZ3iczKrsIkAjK7WHhNDRGUllxRjbk7hZ
	e5B6CMaouZe4mbRTI3zvHs+Wv1gwBa3g5lFWP/+TLI8MB9PGTwRhYDwQpuNEEx6rvRSNZod1gK+B2
	W6Ap7iKPtquwZb3enTqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1sx-005wed-LT; Mon, 22 Aug 2022 07:30:11 +0000
Received: from smtp-12.smtpout.orange.fr ([80.12.242.12] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1sM-005wLv-52
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 07:29:38 +0000
Received: from [192.168.1.18] ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id Q1s6ofUmvLFqbQ1s6oZUKW; Mon, 22 Aug 2022 09:29:23 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 22 Aug 2022 09:29:23 +0200
X-ME-IP: 90.11.190.129
Message-ID: <66333c4d-8e8b-22a0-0c05-b72e2db2d3ca@wanadoo.fr>
Date: Mon, 22 Aug 2022 09:29:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4] pwm: rockchip: Convert to use dev_err_probe()
Content-Language: en-US
To: zhaoxiao <zhaoxiao@uniontech.com>, thierry.reding@gmail.com,
 heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220819092627.19416-1-zhaoxiao@uniontech.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220819092627.19416-1-zhaoxiao@uniontech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_002935_705287_9BCF41EC 
X-CRM114-Status: GOOD (  17.35  )
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

TGUgMTkvMDgvMjAyMiDDoCAxMToyNiwgemhhb3hpYW8gYSDDqWNyaXTCoDoKPiBJdCdzIGZpbmUg
dG8gY2FsbCBkZXZfZXJyX3Byb2JlKCkgaW4gLT5wcm9iZSgpIHdoZW4gZXJyb3IgY29kZSBpcyBr
bm93bi4KPiBDb252ZXJ0IHRoZSBkcml2ZXIgdG8gdXNlIGRldl9lcnJfcHJvYmUoKS4KCkhpLCBq
dXN0IGEgbGFzdCBjb21tZW50IGJlbG93LgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiB6aGFveGlhbyA8
emhhb3hpYW9AdW5pb250ZWNoLmNvbT4KPiAtLS0KPiAgIHY0OiBhZGQgdGhlIG1pc3NpbmcgZGV2
X2VyciBmdW5jdGlvbi4KPiAgIGRyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIHwgMTggKysrKysr
LS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMgYi9k
cml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwo+IGluZGV4IGYzNjQ3YjMxNzE1Mi4uZTZlZTE0YzZh
MTU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCj4gKysrIGIvZHJp
dmVycy9wd20vcHdtLXJvY2tjaGlwLmMKPiBAQCAtMzI4LDIyICszMjgsMTYgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAll
bHNlCj4gICAJCXBjLT5wY2xrID0gcGMtPmNsazsKPiAgIAo+IC0JaWYgKElTX0VSUihwYy0+cGNs
aykpIHsKPiAtCQlyZXQgPSBQVFJfRVJSKHBjLT5wY2xrKTsKPiAtCQlpZiAocmV0ICE9IC1FUFJP
QkVfREVGRVIpCj4gLQkJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbid0IGdldCBBUEIgY2xrOiAl
ZFxuIiwgcmV0KTsKPiAtCQlyZXR1cm4gcmV0Owo+IC0JfQo+ICsJaWYgKElTX0VSUihwYy0+cGNs
aykpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihwYy0+cGNs
ayksICJDYW4ndCBnZXQgQVBCIGNsa1xuIik7Cj4gICAKPiAgIAlyZXQgPSBjbGtfcHJlcGFyZV9l
bmFibGUocGMtPmNsayk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2VycigmcGRldi0+ZGV2LCAi
Q2FuJ3QgcHJlcGFyZSBlbmFibGUgUFdNIGNsazogJWRcbiIsIHJldCk7Cj4gLQkJcmV0dXJuIHJl
dDsKPiAtCX0KPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRl
diwgcmV0LCAiQ2FuJ3QgcHJlcGFyZSBlbmFibGUgUFdNIGNsa1xuIik7Cj4gICAKPiAgIAlyZXQg
PSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPnBjbGspOwo+ICAgCWlmIChyZXQpIHsKPiAtCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJDYW4ndCBwcmVwYXJlIGVuYWJsZSBBUEIgY2xrOiAlZFxuIiwgcmV0
KTsKPiArCQlkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIkNhbid0IHByZXBhcmUgZW5h
YmxlIEFQQiBjbGs6ICVkXG4iLCByZXQpOwoKQXMgaW4gdGhlIHByZXZpb3VzIHBhdGNoZXMsICVk
IGFuZCB0aGUgZmluYWwgcmV0IGFyZSBub3QgbmVlZGVkLiAKZGV2X2Vycl9wcm9iZSgpIHdpbGwg
YWxyZWFkeSBkaXNwbGF5IGFuIGVycm9yIGNvZGUgaW4gYSBodW1hbiByZWFkYWJsZSB3YXkuCgo+
ICAgCQlnb3RvIGVycl9jbGs7Cj4gICAJfQo+ICAgCj4gQEAgLTM2MCw3ICszNTQsNyBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAgCj4gICAJcmV0ID0gcHdtY2hpcF9hZGQoJnBjLT5jaGlwKTsKPiAgIAlpZiAocmV0IDwgMCkg
ewo+IC0JCWRldl9lcnIoJnBkZXYtPmRldiwgInB3bWNoaXBfYWRkKCkgZmFpbGVkOiAlZFxuIiwg
cmV0KTsKPiArCQlkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgInB3bWNoaXBfYWRkKCkg
ZmFpbGVkOiAlZFxuIiwgcmV0KTsKClNhbWUgaGVyZS4KCk90aGVyd2lzZSwgTEdUTS4KCkNKCgo+
ICAgCQlnb3RvIGVycl9wY2xrOwo+ICAgCX0KPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

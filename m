Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94648C25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 06:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7y7pD26+q/EjET+dUrzRJkVyfGWDBHEdDSmCkZlW4bA=; b=fIUedepd0eDHCi
	bwh3ZypCOyWIAK2Hm+5z63rAIUsHURpbucD9g+QT6YYAGhUm0I7jTLoDZ8ROFmCMOoicU/gpCklOx
	t1Yq9enDdeUIExhe27+B/o3r+n2cWy+Dpgvgk6rb3LmN/Wlg64HVoYzS5I/lS44l82cse6PaJ/cf8
	bJDkub9fHeSFmH9ytFh82+FsenmhZnoBU5i3ACtwRpK3nhfrgJLMFAMwXEW4W0ErtP0RI7NMGKH5B
	SnWpeE1+jv+AU3z/pFLwy1irpznPcMVj8Qda9R6QFF6p0dCogvnXgiqG3CnW1EVnVIt5POxlyKiun
	ODnuyX6zR4mQrG6+dhUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOCmH-00C9aD-Tg; Wed, 17 Aug 2022 06:43:45 +0000
Received: from smtp-26.smtpout.orange.fr ([80.12.242.26] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOCm5-00C9BZ-VV
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 06:43:36 +0000
Received: from [192.168.1.18] ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id OClyoHRZ0g7y2OClyokcqD; Wed, 17 Aug 2022 08:43:30 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 17 Aug 2022 08:43:30 +0200
X-ME-IP: 90.11.190.129
Message-ID: <27846879-6660-26b3-5839-997b92cda6d2@wanadoo.fr>
Date: Wed, 17 Aug 2022 08:43:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] pwm: rockchip: Convert to use dev_err_probe()
Content-Language: en-US
To: zhaoxiao <zhaoxiao@uniontech.com>, thierry.reding@gmail.com,
 heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220817055949.20497-1-zhaoxiao@uniontech.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220817055949.20497-1-zhaoxiao@uniontech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_234334_203153_A1BC7240 
X-CRM114-Status: GOOD (  20.37  )
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

TGUgMTcvMDgvMjAyMiDDoCAwNzo1OSwgemhhb3hpYW8gYSDDqWNyaXTCoDoKPiBJdCdzIGZpbmUg
dG8gY2FsbCBkZXZfZXJyX3Byb2JlKCkgaW4gLT5wcm9iZSgpIHdoZW4gZXJyb3IgY29kZSBpcyBr
bm93bi4KPiBDb252ZXJ0IHRoZSBkcml2ZXIgdG8gdXNlIGRldl9lcnJfcHJvYmUoKS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiB6aGFveGlhbyA8emhhb3hpYW9AdW5pb250ZWNoLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIHwgOSArKystLS0tLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKPiBp
bmRleCBmMzY0N2IzMTcxNTIuLmJkN2FiMzdhYWY4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3B3
bS9wd20tcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCj4gQEAg
LTMzMSwxNSArMzMxLDEyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJaWYgKElTX0VSUihwYy0+cGNsaykpIHsKPiAgIAkJ
cmV0ID0gUFRSX0VSUihwYy0+cGNsayk7Cj4gICAJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikK
PiAtCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2FuJ3QgZ2V0IEFQQiBjbGs6ICVkXG4iLCByZXQp
Owo+IC0JCXJldHVybiByZXQ7Cj4gKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYs
IHJldCwgIkNhbid0IGdldCBBUEIgY2xrOiAlZFxuIik7CgpIaSwKClByZXZpb3VzbHksIGlmIChy
ZXQgIT0gLUVQUk9CRV9ERUZFUiksIHdlIHdlcmUgcmV0dXJuaW5nLiBOb3cgd2UganVzdCAKaWdu
b3JlIGl0IGFuZCBjb250aW51ZS4KSWYgZG9uZSBvbiBwdXJwb3NlLCB5b3Ugc2hvdWxkIGV4cGxh
aW4gd2h5IGluIHRoZSBjb21taXQgbG9nLgoKTXkgZ3Vlc3MgaXMgdGhhdCB0aGUgdGVzdCBzaG91
bGQgYWxzbyBiZSByZW1vdmVkLiBkZXZfZXJyX3Byb2JlKCkgCmhhbmRsZXMgdGhhdCBmb3IgdXMu
CgoKWW91IGNvdWxkIHVzZSBQVFJfRVJSKHBjLT5wY2xrKSBkaXJlY3RseS4gVGhlcmUgaXMgbm8g
bmVlZCB0byBhc3NpZ24gaXQgCnRvIHJldC4gVGhpcyB3b3VsZCBzaW1wbGlmeSBldmVuIGZ1cnRo
ZXIgdGhlIGNvZGUuCgoKWW91IHJlbW92ZWQgdGhlIGxhc3QgJ3JldCcgcGFyYW1ldGVyLCB3aGlj
aCBpcyBmaW5lLCBidXQgbGVmdCB0aGUgJWQgaW4gCnRoZSBtZXNzYWdlLgpDb21waWxpbmcgdHJp
Z2dlciB0aGUgaXNzdWUuClBsZWFzZSwgQUxXQVlTLCBhdCBsZWFzdCBjb21waWxlIHRlc3QgeW91
ciBjaGFuZ2VzLCBldmVuIHdoZW4gdGhpbmdzIApsb29rIG9idmlvdXMuCgoKTG9vayBhdCB0aGUg
Y29kZSBhcm91bmQgbGluZSAzMTYgdG8gc2VlIGhvdyBpdCBpcyBkb25lLgoKPiAgIAl9Cj4gICAK
PiAgIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPmNsayk7Cj4gLQlpZiAocmV0KSB7Cj4g
LQkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2FuJ3QgcHJlcGFyZSBlbmFibGUgUFdNIGNsazogJWRc
biIsIHJldCk7Cj4gLQkJcmV0dXJuIHJldDsKPiAtCX0KPiArCWlmIChyZXQpCj4gKwkJZGV2X2Vy
cl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJDYW4ndCBwcmVwYXJlIGVuYWJsZSBQV00gY2xrOiAl
ZFxuIik7CgoncmV0dXJuJyBiZWZvcmUgZGV2X2Vycl9wcm9iZSgpIG1pc3Npbmc/CgpZb3UgcmVt
b3ZlZCB0aGUgbGFzdCAncmV0JyBwYXJhbWV0ZXIsIGJ1dCBsZWZ0IHRoZSAlZCBpbiB0aGUgbWVz
c2FnZS4KKHNhbWUgY29tbWVudCBhYm91dCBjb21waWxpbmcgYXMgYWJvdmUpCgo+ICAgCj4gICAJ
cmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBjLT5wY2xrKTsKPiAgIAlpZiAocmV0KSB7CgoKV2h5
IGp1c3QgY29udmVydGluZyAyIGRldl9lcnIoKSBhbmQgbGVhdmluZyB0aGUgb3RoZXIgb25lIGlu
IHRoZSBwcm9iZSAKdW50b3VjaGVkPwoKQ0oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

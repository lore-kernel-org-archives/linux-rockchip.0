Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E86F5C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 07:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moUr8eWB5VtMH0xa5ekNkZbXSXitMTADlJP0Hk1w/w4=; b=eV4KdJN6T9C93+
	OYv9LEcHVgyD+cdk0naHqNxMBabi7w04O6blSgz6BLnW07erdu1wynwT/gCEkCc9sJTkxGmi6IYVv
	O95/bxUyF+Wj8hmO95hB5rAQ4Wb+0iVTzTsHqthC39PzAu1nCFzCmuGDSUkUXS8lgSasGzMGCcpyi
	77ZSH8iRIsWowmiW7BZ2UP152MvJsYUvaVq12rRD0mQHRaIEhkRCX7SL5kh0Ykv1SKUnS8b4b/2D9
	B+qCsKpb8at+MwKS3hgCir8+msBP7EPYHhw8D5L8nnMgal2RUzJcLKhjdn1N6TLukOKtkjct6pxlE
	3LOz4gq/JgsAG5PduAiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasLt-0000000Eyzd-3WFx;
	Mon, 05 Aug 2024 07:41:57 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasLV-0000000Eyw5-2bfZ;
	Mon, 05 Aug 2024 07:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=+g9AFiexHerYjXboiQBgX3Ne42BKsVZFmAhEcS09dRE=; b=A
	DFvWmRotkByd6jLsSXQ7eltYfT5do0bxmkTj751SdH3L9igm+i/xhOpOuOhVoUqm
	bVOzdY+OnEgVmSXyljCVy21zwMyEXGUxlbCDZyRmMSfln9RaUROO73XVOCy90nId
	7HiHeRW4NvfFheKCVCFk/kVRsRLRLlnivuUasi9bAU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-131 (Coremail) ; Mon, 5 Aug 2024 15:40:43 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 5 Aug 2024 15:40:43 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dragan Simic" <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH] drm/rockchip: cdn-dp: Clean up a few logged messages
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
References: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
X-NTES-SC: AL_Qu2ZAPSfvE4v5SaRYOkZnEobh+Y5UcK2s/ki2YFXN5k0lyXIwAYYe1taPF//yf+tDQSFlDycThNq5P9+d4haZaLHlDfB3Yp85S1l1hmvfy5y
MIME-Version: 1.0
Message-ID: <714e5664.6e68.191217bbf3a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3v6D7gbBmBxsEAA--.6814W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0ggyXmWXzf5hyAABsf
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_004134_069341_2051261D 
X-CRM114-Status: GOOD (  10.27  )
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

CkhlbGxvIERyYWdhbu+8jAoKQXQgMjAyNC0wNy0wNCAwNzozMjoyMCwgIkRyYWdhbiBTaW1pYyIg
PGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj5DbGVhbiB1cCBhIGZldyBsb2dnZWQgbWVzc2Fn
ZXMsIHdoaWNoIHdlcmUgcHJldmlvdXNseSB3b3JkZWQgYXMgcmF0aGVyCj5pbmNvbXBsZXRlIHNl
bnRlbmNlcyBzZXBhcmF0ZWQgYnkgcGVyaW9kcy4gIFRoaXMgd2FzIGJvdGggYSBiaXQgdW5yZWFk
YWJsZQo+YW5kIGdyYW1tYXRpY2FsbHkgaW5jb3JyZWN0LCBzbyBjb252ZXJ0IHRoZW0gaW50byBw
YXJ0aWFsIHNlbnRlbmNlcyBzZXBhcmF0ZWQKPihvciBjb25uZWN0ZWQpIGJ5IHNlbWljb2xvbnMs
IHRvZ2V0aGVyIHdpdGggc29tZSB3b3JkaW5nIGltcHJvdmVtZW50cy4KPgo+U2lnbmVkLW9mZi1i
eTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+CgogUmV2aWV3ZWQtYnk6IEFuZHkg
WWFuIDxhbmR5c2hya0AxNjMuY29tPgoKCj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
Y2RuLWRwLWNvcmUuYyB8IDE2ICsrKysrKystLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2Ru
LWRwLWNvcmUuYwo+aW5kZXggYmQ3YWE4OTFiODM5Li5lZTlkZWYxOTcwOTUgMTAwNjQ0Cj4tLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+KysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKPkBAIC05NjksNDYgKzk2OSw0NCBAQCBzdGF0
aWMgdm9pZCBjZG5fZHBfcGRfZXZlbnRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4g
Cj4gCS8qIE5vdCBjb25uZWN0ZWQsIG5vdGlmeSB1c2Vyc3BhY2UgdG8gZGlzYWJsZSB0aGUgYmxv
Y2sgKi8KPiAJaWYgKCFjZG5fZHBfY29ubmVjdGVkX3BvcnQoZHApKSB7Cj4tCQlEUk1fREVWX0lO
Rk8oZHAtPmRldiwgIk5vdCBjb25uZWN0ZWQuIERpc2FibGluZyBjZG5cbiIpOwo+KwkJRFJNX0RF
Vl9JTkZPKGRwLT5kZXYsICJOb3QgY29ubmVjdGVkOyBkaXNhYmxpbmcgY2RuXG4iKTsKPiAJCWRw
LT5jb25uZWN0ZWQgPSBmYWxzZTsKPiAKPiAJLyogQ29ubmVjdGVkIGJ1dCBub3QgZW5hYmxlZCwg
ZW5hYmxlIHRoZSBibG9jayAqLwo+IAl9IGVsc2UgaWYgKCFkcC0+YWN0aXZlKSB7Cj4tCQlEUk1f
REVWX0lORk8oZHAtPmRldiwgIkNvbm5lY3RlZCwgbm90IGVuYWJsZWQuIEVuYWJsaW5nIGNkblxu
Iik7Cj4rCQlEUk1fREVWX0lORk8oZHAtPmRldiwgIkNvbm5lY3RlZCwgbm90IGVuYWJsZWQ7IGVu
YWJsaW5nIGNkblxuIik7Cj4gCQlyZXQgPSBjZG5fZHBfZW5hYmxlKGRwKTsKPiAJCWlmIChyZXQp
IHsKPi0JCQlEUk1fREVWX0VSUk9SKGRwLT5kZXYsICJFbmFibGUgZHAgZmFpbGVkICVkXG4iLCBy
ZXQpOwo+KwkJCURSTV9ERVZfRVJST1IoZHAtPmRldiwgIkVuYWJsaW5nIGRwIGZhaWxlZDogJWRc
biIsIHJldCk7Cj4gCQkJZHAtPmNvbm5lY3RlZCA9IGZhbHNlOwo+IAkJfQo+IAo+IAkvKiBFbmFi
bGVkIGFuZCBjb25uZWN0ZWQgdG8gYSBkb25nbGUgd2l0aG91dCBhIHNpbmssIG5vdGlmeSB1c2Vy
c3BhY2UgKi8KPiAJfSBlbHNlIGlmICghY2RuX2RwX2NoZWNrX3NpbmtfY29ubmVjdGlvbihkcCkp
IHsKPi0JCURSTV9ERVZfSU5GTyhkcC0+ZGV2LCAiQ29ubmVjdGVkIHdpdGhvdXQgc2luay4gQXNz
ZXJ0IGhwZFxuIik7Cj4rCQlEUk1fREVWX0lORk8oZHAtPmRldiwgIkNvbm5lY3RlZCB3aXRob3V0
IHNpbms7IGFzc2VydCBocGRcbiIpOwo+IAkJZHAtPmNvbm5lY3RlZCA9IGZhbHNlOwo+IAo+IAkv
KiBFbmFibGVkIGFuZCBjb25uZWN0ZWQgd2l0aCBhIHNpbmssIHJlLXRyYWluIGlmIHJlcXVlc3Rl
ZCAqLwo+IAl9IGVsc2UgaWYgKCFjZG5fZHBfY2hlY2tfbGlua19zdGF0dXMoZHApKSB7Cj4gCQl1
bnNpZ25lZCBpbnQgcmF0ZSA9IGRwLT5tYXhfcmF0ZTsKPiAJCXVuc2lnbmVkIGludCBsYW5lcyA9
IGRwLT5tYXhfbGFuZXM7Cj4gCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZkcC0+
bW9kZTsKPiAKPi0JCURSTV9ERVZfSU5GTyhkcC0+ZGV2LCAiQ29ubmVjdGVkIHdpdGggc2luay4g
UmUtdHJhaW4gbGlua1xuIik7Cj4rCQlEUk1fREVWX0lORk8oZHAtPmRldiwgIkNvbm5lY3RlZCB3
aXRoIHNpbms7IHJlLXRyYWluIGxpbmtcbiIpOwo+IAkJcmV0ID0gY2RuX2RwX3RyYWluX2xpbmso
ZHApOwo+IAkJaWYgKHJldCkgewo+IAkJCWRwLT5jb25uZWN0ZWQgPSBmYWxzZTsKPi0JCQlEUk1f
REVWX0VSUk9SKGRwLT5kZXYsICJUcmFpbiBsaW5rIGZhaWxlZCAlZFxuIiwgcmV0KTsKPisJCQlE
Uk1fREVWX0VSUk9SKGRwLT5kZXYsICJUcmFpbmluZyBsaW5rIGZhaWxlZDogJWRcbiIsIHJldCk7
Cj4gCQkJZ290byBvdXQ7Cj4gCQl9Cj4gCj4gCQkvKiBJZiB0cmFpbmluZyByZXN1bHQgaXMgY2hh
bmdlZCwgdXBkYXRlIHRoZSB2aWRlbyBjb25maWcgKi8KPiAJCWlmIChtb2RlLT5jbG9jayAmJgo+
IAkJICAgIChyYXRlICE9IGRwLT5tYXhfcmF0ZSB8fCBsYW5lcyAhPSBkcC0+bWF4X2xhbmVzKSkg
ewo+IAkJCXJldCA9IGNkbl9kcF9jb25maWdfdmlkZW8oZHApOwo+IAkJCWlmIChyZXQpIHsKPiAJ
CQkJZHAtPmNvbm5lY3RlZCA9IGZhbHNlOwo+LQkJCQlEUk1fREVWX0VSUk9SKGRwLT5kZXYsCj4t
CQkJCQkgICAgICAiRmFpbGVkIHRvIGNvbmZpZyB2aWRlbyAlZFxuIiwKPi0JCQkJCSAgICAgIHJl
dCk7Cj4rCQkJCURSTV9ERVZfRVJST1IoZHAtPmRldiwgIkZhaWxlZCB0byBjb25maWd1cmUgdmlk
ZW86ICVkXG4iLCByZXQpOwo+IAkJCX0KPiAJCX0KPiAJfQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

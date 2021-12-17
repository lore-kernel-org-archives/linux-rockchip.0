Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54812C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 15:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JN0urLjZ6z7soOGk3UJwqWGXOLcZb4AqKGUWKpz5eSE=; b=R9IPkoP9GSnbFOe79llMjSshnh
	24Qa0yQgSLordSVpZCBV7VU02eEGZQPxeVCPf0BrYBo9fAKuH9uy8hM3pX7fklCODmgtQIJHDzrnV
	nQ4IcuYrn5Qd0XnBC+Y0A6qF2Fpmz6B5Lx7MmHtmy17hP5/o5QhXZTfTRCWxkdi+LeF8d/FQ17MTo
	QmAcqQaPOKhV8E4z6Pd8ZSZwhdCbMo9GnqsWWnlQJR+U+xAlXscJ7fShfBCkN7X1J/+vxps4s4vw9
	ACfNXrXqs1TBAHbA1D95i6oNxrNPAuhog8cDO/bFGCRH5YBDto0yv9jHN2nFjSYHq+LF4lHKsFxzt
	iVACC6cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myFB8-00Aucz-9y; Fri, 17 Dec 2021 15:29:50 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myFB6-00Auc3-3F
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 15:29:49 +0000
Received: by mail-lf1-x12b.google.com with SMTP id d38so5505612lfv.0
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 07:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SKyfWTyKOCoSRkTw1gpTygsg+Ll1+r3jq0N230gAei4=;
 b=CzhhijgfP6vnsfiGneOe8PaSN6dLVFqfXXdBftLmGe9PCC03petzPTlBbADJSJxY96
 c+WvGzW6j8BwxljWavL3juGgeUu7uBoPnxXsl50TtIqy0phu5DNmp9NKB1q6ybwwyqCl
 A5+gP4Of3tfKZyTbnA7nCObENYYYaqzqGj4sHaHfgyxVGgzmlFaOqxFVMfECMwhNgKba
 d0YvDDFALh66lX8lhRjXY91EOUfzB3n030EgsE4Wg+HJqy/APhMb+QGalfUFis7+sxN8
 TLFSEfhNpnCf1aJfkUnIDoKUyKMwe/OWTGchP+Ns+dlTV/eQNRpF/VVQLoloSlWyylNZ
 Bu6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SKyfWTyKOCoSRkTw1gpTygsg+Ll1+r3jq0N230gAei4=;
 b=QsGi0WZHg81ikij+6ss18g9DyRucRRG+S9qVBq8PO6Bvz8p5f7q59UIqlw9fGtqAtp
 9g+uXYODmdYbze7eJm8QffOCa/rzOEtYc0++MG9G+xmjgY7p+oZav0N7K+3D848iS0mn
 UK1745M280Ei3aqwMHM1P1No6S4lRhRL4KSKsfTyFFvuS9ltu0DNBM73lJKIVBj1yftK
 EVdW2/cfoxgb3Nl/rzXkxxfZRZrWBbas8z0/xjkEQYftyu8puWJlNhy+0+nV4PO2Czlc
 4UgcTFDWrUHX52Y/lYzSdqYxqJE0L/W83JXiQMrGMghromKaGB7EfLs8tsxjVNJX570f
 oOLA==
X-Gm-Message-State: AOAM531IQGKasHuDNlIN2rH84J1KC/mAAaEKpx6xQh46rpYfairAZ3QV
 daMX2siEwuv9SwOXn7/QJK4=
X-Google-Smtp-Source: ABdhPJwW+rgWY+mtXVOj58sICuGmP0VvvzN1hU00mtUDEXPIxNMFBmK/Kk1DoZfHeW/S8afL7nyRgQ==
X-Received: by 2002:a05:6512:39c7:: with SMTP id
 k7mr3315391lfu.571.1639754986075; 
 Fri, 17 Dec 2021 07:29:46 -0800 (PST)
Received: from [192.168.2.145] (94-29-63-156.dynamic.spd-mgts.ru.
 [94.29.63.156])
 by smtp.googlemail.com with ESMTPSA id w6sm1777067ljj.118.2021.12.17.07.29.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Dec 2021 07:29:45 -0800 (PST)
Subject: Re: [PATCH v2] mfd: rk808: add reboot support to rk808.c
To: Peter Geis <pgwipeout@gmail.com>, Lee Jones <lee.jones@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
References: <20211217145544.341617-1-pgwipeout@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
Date: Fri, 17 Dec 2021 18:29:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211217145544.341617-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_072948_164991_45386E97 
X-CRM114-Status: GOOD (  28.98  )
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

MTcuMTIuMjAyMSAxNzo1NSwgUGV0ZXIgR2VpcyDQv9C40YjQtdGCOgo+IFRoaXMgYWRkcyByZWJv
b3Qgc3VwcG9ydCB0byB0aGUgcms4MDhvIHBtaWMgZHJpdmVyIGFuZCBlbmFibGVzIGl0IGZvcgo+
IHRoZSByazgwOSBhbmQgcms4MTcgZGV2aWNlcy4KPiBUaGlzIG9ubHkgZW5hYmxlcyBpZiB0aGUg
cm9ja2NoaXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIgZmxhZyBpcyBzZXQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiAtLS0KPiBUaGlz
IHBhdGNoIHdhcyBjcmVhdGVkIHRvIGFkZHJlc3MgaXNzdWVzIHdpdGggcHNjaS1yZXNldCBvbiBy
azM1NngKPiBjaGlwcy4gVW50aWwgdGhlIHJrMzU2eCBzZXJpZXMgQVRGIG9wZW4gc291cmNlIGNv
ZGUgaXMgcmVsZWFzZWQgc28gd2UKPiBjYW4gZml4IHRoZSBpc3N1ZSBhdCB0aGUgc291cmNlLCB0
aGlzIGlzIHRoZSBvbmx5IHdheSB0byBlbnN1cmUgcmVsaWFibGUKPiByZXNldHRpbmcgb24gZGV2
aWNlcyB1c2luZyB0aGVzZSBjaGlwcy4KPiAKPiBBZnRlciB0ZXN0aW5nIHRoZSByazgwOCAodGhh
bmtzIFJvYmluISksIGl0IHdhcyBmb3VuZCBERVZfT0ZGX1JTVCBkb2VzCj4gbm90IHJlc2V0IHRo
ZSBQTUlDIHRvIGEgcG93ZXIgb24gc3RhdGUuIFNpbmNlIHRoZSByazgwNSBhbmQgcms4MTggbWF0
Y2gKPiB0aGlzIHJlZ2lzdGVyIGxheW91dCwgSSdtIHJlbW92aW5nIHN1cHBvcnQgZm9yIGFsbCB0
aHJlZSBpbiB0aGUgdjIuCj4gSXQgbWF5IGJlIHBvc3NpYmxlIHRvIGFkZCBzdXBwb3J0IHRvIHRo
ZW0gdXNpbmcgYW4gUlRDIHdha2V1cCwgYnV0IHRoYXQKPiBoYXMgbm90IGJlZW4gZXhwbG9yZWQg
YW5kIGlzIG91dHNpZGUgdGhlIHNjb3BlIG9mIHRoaXMgcGF0Y2guCj4gCj4gQ2hhbmdlbG9nOgo+
IFYyOgo+IC0gU3F1YXNoIHRoZSBwYXRjaCBmcm9tIEZyYW5rIFd1bmRlcmxpY2ggZm9yIHJrODA5
IHN1cHBvcnQuCj4gLSBSZW1vdmUgc3VwcG9ydCBmb3IgdGhlIHJrODA1LCByazgwOCwgYW5kIHJr
ODE4IGRldmljZXMuCj4gLSBPbmx5IHJlZ2lzdGVyIHRoZSByZXNldCBoYW5kbGVyIGZvciBzdXBw
b3J0ZWQgZGV2aWNlcy4KPiAtIFJlbW92ZSB1bm5lY2Vzc2FyeSBkZXZfZXJyIGFuZCBkZXZfd2Fy
biBzdGF0ZW1lbnRzLgo+IC0gUmVnaXN0ZXIgdGhlIHJlc2V0IGhhbmRsZXIgZGlyZWN0bHkKPiAK
PiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8IDQzICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIHwgIDEgKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKLi4uCj4gK3N0YXRpYyBzdHJ1Y3Qgbm90
aWZpZXJfYmxvY2sgcms4MDhfcmVzdGFydF9oYW5kbGVyID0gewo+ICsJLm5vdGlmaWVyX2NhbGwg
PSByazgwOF9yZXN0YXJ0X25vdGlmeSwKPiArCS5wcmlvcml0eSA9IDI1NSwKPiArfTsKCkhlbGxv
IQoKUGxlYXNlIHVzZSB0aGUgZGVmYXVsdCAxMjggcHJpb3JpdHkgaWYgdGhlcmUgYXJlIG5vIG90
aGVyIGNvbmZsaWN0aW5nCmhhbmRsZXJzIG9uIHRoaXMgUksuCgo+ICBzdGF0aWMgdm9pZCByazh4
eF9zaHV0ZG93bihzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICB7Cj4gIAlzdHJ1Y3Qgcms4
MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKGNsaWVudCk7Cj4gQEAgLTcyNyw2ICs3NTcs
MTkgQEAgc3RhdGljIGludCByazgwOF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+
ICAJaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1j
b250cm9sbGVyIikpIHsKPiAgCQlyazgwOF9pMmNfY2xpZW50ID0gY2xpZW50Owo+ICAJCXBtX3Bv
d2VyX29mZiA9IHJrODA4X3BtX3Bvd2VyX29mZjsKPiArCj4gKwkJc3dpdGNoIChyazgwOC0+dmFy
aWFudCkgewo+ICsJCWNhc2UgUks4MDlfSUQ6Cj4gKwkJY2FzZSBSSzgxN19JRDoKPiArCQkJcmV0
ID0gcmVnaXN0ZXJfcmVzdGFydF9oYW5kbGVyKCZyazgwOF9yZXN0YXJ0X2hhbmRsZXIpOwoKVGhl
cmUgaXMgbm8gY29ycmVzcG9uZGluZyB1bnJlZ2lzdGVyX3Jlc3RhcnRfaGFuZGxlcigpLCB3aGlj
aCB5b3Ugc2hvdWxkCmFkZCB0byByazgwOF9yZW1vdmUoKS4gT3RoZXJ3aXNlIGtlcm5lbCB3aWxs
IGNyYXNoIG9uIHJlYm9vdCBpZiB5b3UnbGwKdW5sb2FkIHRoaXMgZHJpdmVyIG1vZHVsZS4KCj4g
KwkJCWJyZWFrOwo+ICsJCWRlZmF1bHQ6Cj4gKwkJCWRldl9pbmZvKCZjbGllbnQtPmRldiwgInBt
aWMgY29udHJvbGxlZCBib2FyZCByZXNldCBub3Qgc3VwcG9ydGVkXG4iKTsKCkknZCBzZXQgcmV0
PTAgZXhwbGljaXRseSBoZXJlLiBMYXRlciBvbiBzb21lYm9keSBtYXkgY2hhbmdlIHRoZSBjb2Rl
IGFuZApyZXQgd29uJ3QgYmUgemVybyBhbnltb3JlLCB0aGlzIGlzIG5vdCBhbiB1bmNvbW1vbiB0
cm91YmxlIGluIGtlcm5lbC4KCj4gKwkJCWJyZWFrOwo+ICsJCX0KPiArCj4gKwkJaWYgKHJldCkK
PiArCQkJZGV2X2VycigmY2xpZW50LT5kZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgcmVzdGFydCBo
YW5kbGVyLCAlZFxuIiwgcmV0KTsKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

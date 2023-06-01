Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4977C77B7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jun 2023 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fj2AysggpR5xvBeVxL3gPgL7Qqnt9X5WUDwTiy65HaA=; b=M3k/6xKFsSuPeaT1XDAPFqSiOT
	hwUxHs87xGrqX/4K/oy68ROg6hzl2VBiJdauuf1t+NyYTwNldA6Cc2rbqJ+CzxwwW+v7DH7PTyHBL
	j88oShW6XfWDJKllqZ4JLDinD4jy++prXPAF6fwxNukQUYbrqhOIC82dKRYX0O4RmtpTziEl121D7
	F1xwAACqUonUnu7Z4CEfR/paxGLtUZdg3txDZcqDUSX/TzeBeFWm/AIvhw1RYJOql2ykAoCWvNPd0
	kF/wxoB6PiTKZVNCG8PUtdM1wfOrNOIB9TAoBzvZkwa0oCGL2lmiWSE7T9qEZey9GiQlvxFVLIwTa
	UIXVvwdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iyT-003mgc-2y;
	Thu, 01 Jun 2023 14:08:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iyR-003mem-0m
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Jun 2023 14:08:20 +0000
Received: from [IPV6:2a01:e0a:120:3210:7d6d:c387:79e6:807d] (unknown [IPv6:2a01:e0a:120:3210:7d6d:c387:79e6:807d])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4DF5A6602B7B;
	Thu,  1 Jun 2023 15:08:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685628495;
	bh=2JX/h/DWYtco3A+ZzzUhtQVY2buJesqRTANDsE9Karg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=AdhYBi04g2Qg9LTs2O+2XUaB4NuEQ6mmKE8Pn5mgMBKmFuR0XyMlkKJXGGpGzCqxJ
	 lUsf0TsUjT3YfNnfHc5uHxa3F+ikAhbvlbSKWJT3vD4IHXs2yGWhX5x1ZYcmoN27Ht
	 4yi4jTd8GoevXhBfh8gn6PLEfgvjqQO6nCN5IBBGOE/27ehPYEaVOmxlhl/Xjop4J/
	 u2jvhYI5QQWTvF9sUT0ZsUqwY7ONrTmRVKiRBOumAq/E0k/QfhxMTUtVcGaN6RYZu1
	 KGsBWERn+kdZHs/wbdnJmEY8tTy4QsQMFGFUIAoQVi6PldcoJBMjulsYv/2+1nFgjE
	 ZGWwZiBkHBGXQ==
Message-ID: <2a892e71-f1be-41eb-5397-87484db7d592@collabora.com>
Date: Thu, 1 Jun 2023 16:08:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 m.szyprowski@samsung.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, kernel@pengutronix.de, nicolas.dufresne@collabora.com,
 didi.debian@cknow.org, hverkuil-cisco@xs4all.nl
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
 <20230601132749.GA31313@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230601132749.GA31313@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_070819_478857_7DAE89C8 
X-CRM114-Status: GOOD (  20.99  )
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

CkxlIDAxLzA2LzIwMjMgw6AgMTU6MjcsIE1pY2hhZWwgVHJldHRlciBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gVGh1LCAxMyBBcHIgMjAyMyAxMjo0Nzo1NiArMDIwMCwgQmVuamFt
aW4gR2FpZ25hcmQgd3JvdGU6Cj4+IGN0eC0+dnB1X2RzdF9mbXQgaXMgbm8gbW9yZSBpbml0aWFs
aXplZCBiZWZvcmUgY2FsbGluZyBoYW50cm9fdHJ5X2ZtdCgpCj4+IHNvIGFzc2lnbmUgaXQgdG8g
dnB1X2ZtdCBsZWQgdG8gY3Jhc2ggdGhlIGtlcm5lbC4KPj4gTGlrZSBmb3IgZGVjb2RlciBjYXNl
IHVzZSAnZm10JyBhcyBmb3JtYXQgZm9yIGVuY29kZXIgYW5kIGNsZWFuIHVwCj4+IHRoZSBjb2Rl
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KPj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+Cj4+IEZpeGVzOiBkYjZmNjhiNTFlNWMgKCJtZWRpYTogdmVyaXNp
bGljb246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZvcm1hdHMgaW4gcmVzZXQgZnVuY3Rp
b25zIikKPj4gLS0tCj4+IHZlcnNpb24gMjoKPj4gLSBSZW1vdmUgdXNlbGVzcyB2cHVfZm10Lgo+
Pgo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyB8
IDEwICsrKy0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fdjRsMi5jCj4+IGluZGV4IDhmMTQxNDA4NWY0Ny4uZDcxZjc5NDcxMzk2IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRs
Mi5jCj4+IEBAIC0yNzUsNyArMjc1LDcgQEAgc3RhdGljIGludCBoYW50cm9fdHJ5X2ZtdChjb25z
dCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+PiAgIAkJCSAgc3RydWN0IHY0bDJfcGl4X2Zvcm1h
dF9tcGxhbmUgKnBpeF9tcCwKPj4gICAJCQkgIGVudW0gdjRsMl9idWZfdHlwZSB0eXBlKQo+PiAg
IHsKPj4gLQljb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10LCAqdnB1X2ZtdDsKPj4gKwljb25z
dCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10Owo+PiAgIAlib29sIGNhcHR1cmUgPSBWNEwyX1RZUEVf
SVNfQ0FQVFVSRSh0eXBlKTsKPj4gICAJYm9vbCBjb2RlZDsKPj4gICAKPj4gQEAgLTI5NSwxMSAr
Mjk1LDcgQEAgc3RhdGljIGludCBoYW50cm9fdHJ5X2ZtdChjb25zdCBzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LAo+PiAgIAo+PiAgIAlpZiAoY29kZWQpIHsKPj4gICAJCXBpeF9tcC0+bnVtX3BsYW5l
cyA9IDE7Cj4+IC0JCXZwdV9mbXQgPSBmbXQ7Cj4+IC0JfSBlbHNlIGlmIChjdHgtPmlzX2VuY29k
ZXIpIHsKPj4gLQkJdnB1X2ZtdCA9IGN0eC0+dnB1X2RzdF9mbXQ7Cj4+IC0JfSBlbHNlIHsKPj4g
LQkJdnB1X2ZtdCA9IGZtdDsKPj4gKwl9IGVsc2UgaWYgKCFjdHgtPmlzX2VuY29kZXIpIHsKPj4g
ICAJCS8qCj4+ICAgCQkgKiBXaWR0aC9oZWlnaHQgb24gdGhlIENBUFRVUkUgZW5kIG9mIGEgZGVj
b2RlciBhcmUgaWdub3JlZCBhbmQKPj4gICAJCSAqIHJlcGxhY2VkIGJ5IHRoZSBPVVRQVVQgb25l
cy4KPj4gQEAgLTMxMSw3ICszMDcsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0
IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4+ICAgCXBpeF9tcC0+ZmllbGQgPSBWNEwyX0ZJRUxE
X05PTkU7Cj4+ICAgCj4+ICAgCXY0bDJfYXBwbHlfZnJtc2l6ZV9jb25zdHJhaW50cygmcGl4X21w
LT53aWR0aCwgJnBpeF9tcC0+aGVpZ2h0LAo+PiAtCQkJCSAgICAgICAmdnB1X2ZtdC0+ZnJtc2l6
ZSk7Cj4+ICsJCQkJICAgICAgICZmbXQtPmZybXNpemUpOwo+IFRoaXMgY2F1c2VzIGEgcmVncmVz
c2lvbiBvbiB0aGUgT1VUUFVUIGRldmljZSBvZiB0aGUgZW5jb2Rlci4gZm10LT5mcm1zaXplIGlz
Cj4gb25seSB2YWxpZCBmb3IgY29kZWQgKCJiaXRzdHJlYW0iKSBmb3JtYXRzLCBidXQgZm10IG9u
IHRoZSBPVVRQVVQgb2YgYW4KPiBlbmNvZGVyIHdpbGwgYmUgYSByYXcgZm9ybWF0LiBUaGlzIHJl
c3VsdHMgaW4gd2lkdGggYW5kIGhlaWdodCB0byBiZSBjbGFtcGVkCj4gdG8gMC4KPgo+IEkgdGhp
bmsgdGhlIGNvcnJlY3QgZml4IHdvdWxkIGJlIHRvIGFwcGx5IHRoZSBmcm1zaXplIGNvbnN0cmFp
bnRzIG9mIHRoZQo+IGN1cnJlbnRseSBjb25maWd1cmVkIGNvZGVkIGZvcm1hdCwgYnV0IGFzIGN0
eC0+dnB1X2RzdF9mbXQgaXMgbm90IGluaXRpYWxpemVkCj4gYmVmb3JlIGNhbGxpbmcgdGhpcyBj
b2RlLCBJIGRvbid0IGtub3cgaG93IHRvIGdldCB0aGUgY29kZWQgZm9ybWF0LgoKaWYgY3R4LT5k
c3RfZm10IGlzIGNvcnJlY3RseSBzZXQgKGFuZCBpdCBzaG91bGQgYmUpIHRoZW4gZG9pbmc6Cgpw
aXhfbXAtPndpZHRoID0gY3R4LT5kc3RfZm10LndpZHRoOwpwaXhfbXAtPmhlaWdodCA9IGN0eC0+
ZHN0X2ZtdC5oZWlnaHQ7CgpzaG91bGQgc29sdmUgdGhlIGlzc3VlLgoKQmVuamFtaW4KCj4KPiBN
aWNoYWVsCj4KPj4gICAKPj4gICAJaWYgKCFjb2RlZCkgewo+PiAgIAkJLyogRmlsbCByZW1haW5p
bmcgZmllbGRzICovCj4+IC0tIAo+PiAyLjM0LjEKPj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

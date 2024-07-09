Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C853AC2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 05:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z1T+db7Wh4blBviZjGYAtys5BIeeTyu7F86/BZGa2fk=; b=iYQo007chJftN4XNda+ASsdfta
	Z1L/FBGRZlV4smGKPtdX35wubickRB+4do3ngQ28R6qqL9bk678E4pnGOQ4O96ShYmeyaPBO3DRfn
	Xixd6uH6utY8B/IpAUb+UCSozRqY5x3PS7KR4ig4B1oMpNl7pLrHyktieP3Pbv+yyzVPrl90wmwnJ
	LTLBiCmyneugrN0YrYg0QLEmZBg+69JqA3CVrpSYSfd8estpYJRVEKtxx8RWy2zdAB3irhapyCIRh
	aPQNHGrF/Iiwhaweo5Io7zip9dSnIpJgF5EvCTbOIeo2QnjjB+rNgmrEC1Xa9hTAYrAjroNVjipDB
	r44YbOkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR2zH-00000005uED-46Tk;
	Tue, 09 Jul 2024 05:02:00 +0000
Received: from fw.sz-a.kwebs.cloud ([109.61.102.40])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR2zE-00000005uDa-1G7q
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jul 2024 05:01:57 +0000
Received: from webmail.srv.kwebs.cloud (172-16-36-107.prometheus-node-exporter.monitoring.svc.cluster.local [172.16.36.107])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	(Authenticated sender: richard@kojedz.in)
	by mx.kwebs.cloud (Postfix) with ESMTPSA id 81C6D8A2A;
	Tue,  9 Jul 2024 05:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kojedz.in; s=s02;
	t=1720501311; bh=8tR6jn7kwF6hW5yDul+MO94qtcn/sDOlpmI33qeYm8c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XC5pyvevToAraPyB6jUGz3MHYJVp7hIzXrZa/zwL2H7faZ9u7oYHik5gs1mrmnjAk
	 LHCo5TzOB/QZO1s74zSNowB/Qqd6k1PouNYWQ9jv4xz49lhbB3uAx+PymXuniO0yyw
	 iX0+nmiAROtqNxcz2hySpeq1420KGxEXzX6dISbFdJ9st1bTAjqpyFnONsvdEI28cZ
	 ligsUZ9SJzOYDFRFwIhxJWZFnH/+WgkDxCjH2MN+WzwRZ13Xgkq0ihpiCJZjSTVXaI
	 s6D/OWyJJ7vvZO1Exxm8S4nN9xKP13w5qZxlUt50dVdCul60LQ7X7M8FoRym4msGro
	 eoL1ZqmeObLuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kojedz.in; s=s01;
	t=1720501311; bh=8tR6jn7kwF6hW5yDul+MO94qtcn/sDOlpmI33qeYm8c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=VKpSishY4fffet3ZwuLx7Q54iQBmZqSLRh9JLt7QR9BNpVS6v3w0dh0NuUtpp2rsu
	 Grl/ZDwe2y/6zjCOoddIzbNNqyVh0w5/zeuJh3DboJzRc/WYTUBueWig2gGqMDK32V
	 n/7v25bUzeuckW48OeX8nNSLS2KdZgmLbxx5bJ1ucs0pUS/CCxnN1ziXiggbQnssEy
	 tK8sHNrklGo9FaPdhVUzHSWbedeQTDjj5V6ZEPBFBq4tGRRajyWFrqL16XWxuCcMVp
	 k1lMqrEdPpIl9wQY0ma0tSyzMhg4kUCS1/NDauR6iTjvrF2JjjJrKY4/XKgu8ZE+JO
	 fozrFXCjSFAhnOxAFibFu1J5LqnVnJqjYCEslkRDC1U4S56faEyfO7pjkTN8xwRU+K
	 LQrB/Z3NZISKBFchPon5H4z2WwcshQu50Iiqc4K9KP4IdbkqU4oRLl3yQcl3FvRv43
	 tIHBTNGrBIlxjJ43O1TCUXHGEFifWvQEd0lgId4TepXEW1qGfO5
MIME-Version: 1.0
Date: Tue, 09 Jul 2024 07:01:51 +0200
From: richard@kojedz.in
To: Huang-Huang Bao <i@eh5.me>
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, linux-rockchip@lists.infradead.org
Subject: Re: RK3328 / Rock64 eMMC regression
In-Reply-To: <7a2641f7-c928-4554-a795-e14dd4f644fa@eh5.me>
References: <c76c10dbb3e614b17a1879f3aa767b8b@kojedz.in>
 <7a2641f7-c928-4554-a795-e14dd4f644fa@eh5.me>
Message-ID: <4f29b743202397d60edfb3c725537415@kojedz.in>
X-Sender: richard@kojedz.in
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_220156_519465_E0C75339 
X-CRM114-Status: GOOD (  16.49  )
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

SGkgQmFvLAoKVGhpcyBjaGFuZ2Ugc2VlbXMgdG8gYmUgd29ya2luZy4KCllvdXIgcXVpY2sgcmVz
cG9uc2UgaXMgcmVhbGx5IHZhbHVhYmxlLiBUaGFua3MgYWdhaW4uCgpCZXN0IHJlZ2FyZHMsClJp
Y2hhcmQKCjIwMjQtMDctMDkgMDU6MDYgaWTFkXBvbnRiYW4gSHVhbmctSHVhbmcgQmFvIGV6dCDD
rXJ0YToKPiBIaSBSaWNoYXJkLAo+IAo+IEkgdGhpbmsgSSBoYXZlIGZpZ3VyZWQgb3V0IHdoZXJl
IHRoZSBwcm9ibGVtIGlzLCB0aGUgd3JvbmcgSU9NVVhfV0lEVEhfCj4gZmxhZygwKSBjYXVzZWQg
YWxsIHBpbm11eCBvZmZzZXRzIGFmdGVyIEdQSU8yLUIgdG8gYmUgY2FsY3VsYXRlZCB3cm9uZy4K
PiBUaGUgcGF0Y2ggYmVsb3cgc2hvdWxkIGZpeGVzIHRoZSBpc3N1ZS4KPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyAKPiBiL2RyaXZlcnMvcGluY3Ry
bC9waW5jdHJsLXJvY2tjaGlwLmMKPiBpbmRleCAzZjU2OTkxZjViODkuLmY2ZGE5MTk0MWZiZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gKysrIGIv
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+IEBAIC0zODEzLDcgKzM4MTMsNyBA
QCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rIAo+IHJrMzMyOF9waW5fYmFua3NbXSA9
IHsKPiAgICAgICAgIFBJTl9CQU5LX0lPTVVYX0ZMQUdTKDAsIDMyLCAiZ3BpbzAiLCAwLCAwLCAw
LCAwKSwKPiAgICAgICAgIFBJTl9CQU5LX0lPTVVYX0ZMQUdTKDEsIDMyLCAiZ3BpbzEiLCAwLCAw
LCAwLCAwKSwKPiAgICAgICAgIFBJTl9CQU5LX0lPTVVYX0ZMQUdTKDIsIDMyLCAiZ3BpbzIiLCAw
LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIElPTVVYX1dJRFRIXzJCSVQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBJT01VWF9XSURUSF8zQklULAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCksCj4g
ICAgICAgICBQSU5fQkFOS19JT01VWF9GTEFHUygzLCAzMiwgImdwaW8zIiwKPiAKPiAKPiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgdGhpcyB3b3Jrcy4gSSB3aWxsIHNlbmQgYSBmb3JtYWwgcGF0Y2gg
bGF0ZXIuCj4gCj4gU29ycnkgZm9yIHRoZSBpbmNpZGVudCwKPiBCYW8KPiAKPiBPbiA3LzgvMjQg
MDI6NDUsIHJpY2hhcmRAa29qZWR6LmluIHdyb3RlOgo+PiBEZWFyIGRldmVsb3BlcnMsCj4+IAo+
PiBJIGFtIHVzaW5nIGEgUm9jazY0IGJvYXJkIHdpdGggYW4gZW1tYyBtb2R1bGUuIEkndmUgdXBn
cmFkZWQga2VybmVsIAo+PiBmcm9tCj4+IDUuMTUuMTYxIHRvIC4xNjIsIGFuZCBzaW5jZSB0aGVu
IHRoZSBib2FyZCB3b250IGJvb3QgdXAuIEtlcm5lbCAKPj4gbWVzc2FnZXMKPj4gc2hvdzoKPj4g
Cj4+IFvCoMKgIDQ5LjExNzEzMV0gbW1jMTogc3dpdGNoIHRvIGJ1cyB3aWR0aCA4IGZhaWxlZAo+
PiBbwqDCoCA0OS4xMjQ3MDldIG1tYzE6IG1tY19zZWxlY3RfaHMyMDAgZmFpbGVkLCBlcnJvciAt
MTEwCj4+IFvCoMKgIDQ5LjEyNTE5MF0gbW1jMTogZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlhbGlz
aW5nIE1NQyBjYXJkCj4+IFvCoMKgIDQ5LjEzOTU2Nl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVk
IChzbG90IDApID0gMzAwMDAwSHogKHNsb3QgcmVxCj4+IDMwMDAwMEh6LCBhY3R1YWwgMzAwMDAw
SFogZGl2ID0gMCkKPj4gW8KgIDEwNS40MzcxMTFdIG1tYzE6IHN3aXRjaCB0byBidXMgd2lkdGgg
OCBmYWlsZWQKPj4gW8KgIDEwNS40NDY3MzldIG1tYzE6IG1tY19zZWxlY3RfaHMyMDAgZmFpbGVk
LCBlcnJvciAtMTEwCj4+IFvCoCAxMDUuNDQ3MjQ2XSBtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBp
bml0aWFsaXNpbmcgTU1DIGNhcmQKPj4gW8KgIDEwNS40NjE2MzldIG1tY19ob3N0IG1tYzE6IEJ1
cyBzcGVlZCAoc2xvdCAwKSA9IDIwMDAwMEh6IChzbG90IHJlcQo+PiAyMDAwMDBIeiwgYWN0dWFs
IDIwMDAwMEhaIGRpdiA9IDApCj4+IAo+PiBJIGFtIHVzaW5nIHJrMzMyOC1yb2NrNjQuZHRzIGZy
b20gdGhlIGtlcm5lbC4KPj4gCj4+IEJpc2VjdGluZyB0aGUga2VybmVsIHJldmVhbGVkIDk2OTAz
ZWQwZTg0NiBhcyBmaXJzdCBiYWQgY29tbWl0Lgo+PiBSZXZlcnRpbmcgdGhpcyBjb21taXQgb24g
dG9wIG9mIHY1LjE1LjE2MiBtYWtlcyBteSBib2FyZCBib290dXAgYWdhaW4uCj4+IAo+PiBDYW4g
eW91IHBsZWFzZSB0YWtlIGEgbG9vaz8KPj4gCj4+IFRoYW5rcyBpbiBhZHZhbmNlLAo+PiBSaWNo
YXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

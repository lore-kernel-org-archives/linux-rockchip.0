Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F6BC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGWfZI54JlEIFT3SEz2sZ9zb0UZBotKfOxBhmgJQL3M=; b=V+oF8ZhYQ+/o7n
	Gu7EUWRR4nRMG5b1FKpE3/xAApVZKRfNeCM/FYN3mU06Op+6kZtBiT0KSTqjB2+aP0UBtKP4Hq2vL
	kvtZ3yV0jxQiY1pU0UYG/wRdtWq1K4bcxjS9XHObEeBrZjuaJc9d1C58AeE48IoUao79waRV6sDKY
	ramepmZ09VOJSSq9M8SiHFB0gbmoaLc9PsG4EbYcrBvXqcfOuVTBVuTCDSzN5Rvp5ZAX4LiKKLC1i
	go0YsGznaytRgk2rNJY9UYPT4lQNz/MmXVOK3eUkAf3TDb1TdCCUugXLNvmYJwNgtq73+pLJF3gBR
	jWpHikqZw94wYesKT4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2ATZ-007R1Y-Nh; Fri, 17 Jun 2022 11:49:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2ATJ-007QvH-7I; Fri, 17 Jun 2022 11:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GuVcVAZkyT1jK/ksn05bLCTzbiq4+zpi2EwO6TolwW8=; b=ZpENYRHapK2zFc2QgdaqA9sEIi
	GAHlvlNUabGaZAcUyD66169RkMA1Hu5RZP3t3Xaj+tplMmlv8ANRFixioWcjSHrPAnjpuauN+1XxR
	YLgCz18Ksuxa7tvmfs3Y5rMe/544MRV6v16/XD4+caOGB+QwdIST8VuQsx201xhz+qul+O7W+lpNj
	MNoLKu/SOjhreV2GL4UMTOVkdqp+TE4FQLCvkFrRT2fgVHCPln0H9lU2dNLIhQGgDYuBee4AN0N45
	gAyXNCxXbeKvQc382pqDFnCjOoRQMsx9v8apWGqykj82Et6LI7rbhZo4vo5q3WxBkPipJa8/So/Bo
	6Cis4VGQ==;
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2ATE-008frs-Ma; Fri, 17 Jun 2022 11:49:03 +0000
Received: from p5098d998.dip0.t-ipconnect.de ([80.152.217.152] helo=hermes.fivetechno.de); authenticated
	by wp126.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1o2ATD-000767-I8; Fri, 17 Jun 2022 13:48:59 +0200
X-Virus-Scanned: by amavisd-new 2.12.2 using newest ClamAV at
	linuxbbg.five-lan.de
Received: from [127.0.0.1] (dynamic-046-114-037-216.46.114.pool.telefonica.de [46.114.37.216])
	(authenticated bits=0)
	by hermes.fivetechno.de (8.15.2/8.16.1/SUSE Linux 0.8) with ESMTPSA id 25HBmv1V003806
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 17 Jun 2022 13:48:58 +0200
Date: Fri, 17 Jun 2022 13:48:56 +0200
From: MR <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe.montjoie@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>
CC: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: rk3399-roc-pc does not boot
User-Agent: K-9 Mail for Android
In-Reply-To: <Yqxm+IR9wApJCFMN@Red>
References: <YqxEL/pgv3zuH6aS@Red> <c12cc4bd-f7b8-5e52-14a2-41a0da83bb0c@arm.com> <Yqxm+IR9wApJCFMN@Red>
Message-ID: <D6E0B1F3-D6C3-49D6-A6F8-3F07F48D1C0B@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;m.reichl@fivetechno.de;1655466540;bd569099;
X-HE-SMSGID: 1o2ATD-000767-I8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_124901_151262_1E6FD7E0 
X-CRM114-Status: GOOD (  17.72  )
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

CgpBbSAxNy4gSnVuaSAyMDIyIDEzOjM1OjIwIE1FU1ogc2NocmllYiBDb3JlbnRpbiBMYWJiZSA8
Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNvbT46Cj5MZSBGcmksIEp1biAxNywgMjAyMiBhdCAxMDo1
ODowM0FNICswMTAwLCBSb2JpbiBNdXJwaHkgYSDDqWNyaXQgOgo+PiBPbiAyMDIyLTA2LTE3IDEw
OjA2LCBDb3JlbnRpbiBMYWJiZSB3cm90ZToKPj4gPiBIZWxsbwo+PiA+IAo+PiA+IEkgdHJ5IHRv
IGFkZCByazMzOTktcm9jLXBjIHRvIGtlcm5lbENJIGJ1dCB0aGlzIGJvYXJkIGZhaWwgdG8gZW5k
cyBpdHMgYm9vdCB3aXRoIGFueSBrZXJuZWwgSSB0cnkuCj4+ID4gSXQgYm9vdCBub3JtYWxseSB1
cCB0byBzdGFydGluZyBpbml0IGJ1dCBpdCBzdHVja3Mgc2hvcnR5IGFmdGVyLgo+PiA+IEl0IGZh
aWwgb24gNS4xMCwgNS4xNSwgNS4xNywgNS4xOCBhbmQgbGludXgtbmV4dC4KPj4gPiBXaGVuIGRp
c2FibGluZyBDT05GSUdfVVNCLCB0aGUgYm9hcmQgYm9vdHMgc3VjY2Vzc2Z1bGx5Lgo+PiA+IAo+
PiA+IEluIGRtZXNnIEkgc2VlIE9GOiBncmFwaDogbm8gcG9ydCBub2RlIGZvdW5kIGluIC9pMmNA
ZmYxNjAwMDAvdXNiLXR5cGVjQDIyCj4+ID4gQWNjb3JkaW5nIHRvIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvZmNzLGZ1c2IzMDIudHh0LCB0aGUgcG9ydCBpcyBtYW5kYXRv
cnkuCj4+ID4gQ2FuIGl0IGJlIHBvc3NpYmxlIHRoYXQgdGhlIHByb2JsZW0gd2FzIHRoYXQgdGhl
IHBvd2VyIHBvcnQgYmVpbmcgZGlzYWJsZWQgPwo+PiAKPj4gSW5kZWVkLCBJIGJlbGlldmUgdGhl
IE9GIGdyYXBoIGVycm9yIGlzIGp1c3QgYSBtZWFuaW5nbGVzcyBhbm5veWFuY2UsIAo+PiBidXQg
dGhlIGdlbmVyYWwgcHJvYmxlbSBzb3VuZHMgbGlrZSBpdCdzIHByb2JhYmx5IHRoZSBzYW1lIHRo
aW5nIHRoYXQncyAKPj4gY29tZSB1cCBiZWZvcmU6Cj4+IAo+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMGFjNmJiZTctNjM5NS01MjZkLTIxM2MtYWM1OGExOWQ4NjczQGZpdmV0ZWNobm8u
ZGUvCj4+IAo+PiBEaXNhYmxpbmcgQ09ORklHX1RZUEVDX0ZVU0IzMDIgb3IgYmxhY2tsaXN0aW5n
IHRoZSBmdXNiMzAyIG1vZHVsZSBzaG91bGQgCj4+IGhlbHAgY29uZmlybSB0aGF0LiBJIGhhdmUg
bm8gaWRlYSBpZiBpdCdzIHN0aWxsIGFuIG9wZW4gcHJvYmxlbSwgb3IgaWYgCj4+IGl0J3MgYmVl
biBmaXhlZCBhbmQgeW91IG1pZ2h0IGp1c3QgbmVlZCB0byBkZWZpbmUgdGhlIHByb3BlciBwb3dl
ciByb2xlIAo+PiBpbiB0aGUgRFQ7IHRoaXMganVzdCB0cmlnZ2VyZWQgYSBtZW1vcnkgb2YgdGhh
dCBvbGRlciB0aHJlYWQgOikKPj4gCj4KPklmIEkgY29tbWVudCBmdXNiMCBub2RlIGluIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpLCB0aGUgYm9hcmQgYm9v
dCB3ZWxsLgo+Cj5XaXRoIHRoZSBmb2xsb3dpbmcgcGF0Y2gsIHRoZSBib2FyZHMgYm9vdCB3ZWxs
IGFsc286Cj5kaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9jLXBjLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMu
ZHRzaQo+aW5kZXggMGU0NWNjMmQxOTViLi42MGM0MDBjYTQwMzQgMTAwNjQ0Cj4tLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+KysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPkBAIC01NTIsNiArNTUy
LDIyIEBAIGZ1c2IwOiB1c2ItdHlwZWNAMjIgewo+ICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9
IDwmZnVzYjBfaW50PjsKPiAgICAgICAgICAgICAgICB2YnVzLXN1cHBseSA9IDwmdmNjX3ZidXNf
dHlwZWMwPjsKPiAgICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4rCj4rICAgICAgICAg
ICAgICAgY29ubmVjdG9yIHsKPisgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
dXNiLWMtY29ubmVjdG9yIjsKPisgICAgICAgICAgICAgICAgICAgICAgIGRhdGEtcm9sZSA9ICJo
b3N0IjsKPisgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gIlVTQi1DIjsKPisgICAgICAg
ICAgICAgICAgICAgICAgIHBvd2VyLXJvbGUgPSAiZHVhbCI7Cj4rCj4rICAgICAgICAgICAgICAg
ICAgICAgICBwb3J0cyB7Cj4rICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNz
LWNlbGxzID0gPDE+Owo+KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxs
cyA9IDwwPjsKPisKPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9ydEAwIHsKPisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4rICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4rICAgICAgICAgICAgICAgICAgICAgICB9Owo+
KyAgICAgICAgICAgICAgIH07Cj4gICAgICAgIH07Cj4gCj4gICAgICAgIG1wODg1OTogcmVndWxh
dG9yQDY2IHsKPgo+SSB0aGluayB0aGlzIHBhdGNoIGlzIHRoZSBwcm9wZXIgd2F5IHRvIGZpeCwg
SSB3aWxsIHNlbmQgaXQgc29vbi4KPgpUaGFua3MsIGhhcHB5IHRvIHNlZSB0aGF0IHRoaXMgd29y
a3Mgbm93LgoKPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

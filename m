Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F15C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 21:35:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C95E601FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 21:35:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C95E601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=siol.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tr0xSXyXy2CbinTcL7LclfdZXsdMd+Q7W9R5s+V3G+Q=; b=3DGFpzTNCA/2iBajIUVhGcwTl
	5d19Ie/R4uwNRabxD/7p+lRI+ZEaPq3S8OPwfHnJWLhYs4FBDMh6MTeTR7wIqkmevdosuckcjUOLd
	vgC2tNovl+ZTPkVURbK0D3IZnb0n13t/DfNw5FRd1qCL3sUiL507fFatg8FSuo6wNUP52WgHdHUqz
	K5lqnooNebrKlBpuO0ex/BjBWP8pdpzzOjrRM2FJA3e1aqKh55pN59VTtSYZALFlYNcuRqXR9ATLk
	NbOQWBax10biSWA1BiP8ozEof/0mVGb/wGZQxLzdtiOJuF9rGWCecl5be73vINDk0yjr4d9V9SaTH
	TjPd6EvDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCqx0-0007u4-TF; Thu, 18 Feb 2021 21:35:06 +0000
Received: from mailoutvs22.siol.net ([185.57.226.213] helo=mail.siol.net)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCqwx-0007st-8n; Thu, 18 Feb 2021 21:35:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 962EC521DBF;
 Thu, 18 Feb 2021 22:34:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ej1WVbFCk5fB; Thu, 18 Feb 2021 22:34:56 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 33026521ECB;
 Thu, 18 Feb 2021 22:34:56 +0100 (CET)
Received: from kista.localnet (cpe-86-58-17-133.cable.triera.net
 [86.58.17.133]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id A06FD521DBF;
 Thu, 18 Feb 2021 22:34:51 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 wens@csie.org, peng.fan@nxp.com, hverkuil-cisco@xs4all.nl,
 dan.carpenter@oracle.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
Date: Thu, 18 Feb 2021 22:34:51 +0100
Message-ID: <2850677.34AhzSeaHW@kista>
In-Reply-To: <20210218191844.297869-5-benjamin.gaignard@collabora.com>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_163503_441675_9844ED2B 
X-CRM114-Status: GOOD (  16.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDE4LiBmZWJydWFyIDIwMjEgb2IgMjA6MTg6MzkgQ0VUIGplIEJl
bmphbWluIEdhaWduYXJkIG5hcGlzYWwoYSk6Cj4gVGhlIEhFVkMgSEFOVFJPIGRyaXZlciBuZWVk
cyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4gdGhlIGJlZ2lubmluZyBv
ZiB0aGUgc2xpY2UgaGVhZGVyLgo+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVjaWZpYyByZXF1aXJl
bWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJvbAo+IHRoYXQgdGhpcyBwdXJwb3NlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBj
b2xsYWJvcmEuY29tPgo+IC0tLQo+ICBpbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29u
dHJvbHMuaCB8IDIwICsrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvdWFwaS9saW51eC92
NGwyLWNvbnRyb2xzLmggICAgICAgIHwgIDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3VhcGkvbGludXgvaGFu
dHJvLXY0bDItY29udHJvbHMuaAo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgv
aGFudHJvLXY0bDItY29udHJvbHMuaCBiL2luY2x1ZGUvdWFwaS9saW51eC8KaGFudHJvLXY0bDIt
Y29udHJvbHMuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4z
MGIxOTk5YjdhZjMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2hh
bnRyby12NGwyLWNvbnRyb2xzLmgKPiBAQCAtMCwwICsxLDIwIEBACj4gKy8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wIFdJVEggTGludXgtc3lzY2FsbC1ub3RlICovCj4gKwo+ICsj
aWZuZGVmIF9fVUFQSV9IQU5UUk9fVjRMMl9DT05ZVFJPTFNfSF9fCj4gKyNkZWZpbmUgX19VQVBJ
X0hBTlRST19WNEwyX0NPTllUUk9MU19IX18KPiArCj4gKyNpbmNsdWRlIDxsaW51eC92NGwyLWNv
bnRyb2xzLmg+Cj4gKyNpbmNsdWRlIDxtZWRpYS9oZXZjLWN0cmxzLmg+Cj4gKwo+ICsjZGVmaW5l
IFY0TDJfQ0lEX0hBTlRST19IRVZDX0VYVFJBX0RFQ09ERV9QQVJBTVMJCihWNEwyX0NJRF9VU0VS
X0hBTlRST19CQVNFICsgMCkKPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3QgaGFudHJvX2hldmNfZXh0
cmFfZGVjb2RlX3BhcmFtcyAtIGV4dHJhIGRlY29kZSBwYXJhbWV0ZXJzIGZvciAKaGFudHJvIGRy
aXZlcgo+ICsgKiBAaGV2Y19oZHJfc2tpcF9sZW5naHQ6CWhlYWRlciBmaXJzdCBiaXRzIG9mZnNl
dAo+ICsgKi8KPiArc3RydWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJhbXMgewo+ICsJ
X191MzIJaGV2Y19oZHJfc2tpcF9sZW5naHQ7Cgp0eXBvOiBsZW5naHQgLT4gbGVuZ3RoCgpTYW1l
IG1pc3Rha2UgaW4gZGVzY3JpcHRpb24gYWJvdmUuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAr
CV9fdTgJcGFkZGluZ1s0XTsKPiArfTsKPiArCj4gKyNlbmRpZgo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDIt
CmNvbnRyb2xzLmgKPiBpbmRleCAwMzljMGQ3YWRkMWIuLmNlZDc0ODZjN2Y0NiAxMDA2NDQKPiAt
LS0gYS9pbmNsdWRlL3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oCj4gKysrIGIvaW5jbHVkZS91
YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+IEBAIC0yMDksNiArMjA5LDExIEBAIGVudW0gdjRs
Ml9jb2xvcmZ4IHsKPiAgICogV2UgcmVzZXJ2ZSAxMjggY29udHJvbHMgZm9yIHRoaXMgZHJpdmVy
Lgo+ICAgKi8KPiAgI2RlZmluZSBWNEwyX0NJRF9VU0VSX0NDU19CQVNFCQkJKFY0TDJfQ0lEX1VT
RVJfQkFTRSArIAoweDEwZjApCj4gKy8qCj4gKyAqIFRoZSBiYXNlIGZvciBIQU5UUk8gZHJpdmVy
IGNvbnRyb2xzLgo+ICsgKiBXZSByZXNlcnZlIDMyIGNvbnRyb2xzIGZvciB0aGlzIGRyaXZlci4K
PiArICovCj4gKyNkZWZpbmUgVjRMMl9DSURfVVNFUl9IQU5UUk9fQkFTRQkJKFY0TDJfQ0lEX1VT
RVJfQkFTRSArIAoweDExNzApCj4gIAo+ICAvKiBNUEVHLWNsYXNzIGNvbnRyb2wgSURzICovCj4g
IC8qIFRoZSBNUEVHIGNvbnRyb2xzIGFyZSBhcHBsaWNhYmxlIHRvIGFsbCBjb2RlYyBjb250cm9s
cwo+IC0tIAo+IDIuMjUuMQo+IAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57D3CA0EFC
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Aug 2025 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISufk5NON2pIaRbpZRYpT+HZIN/l2O2JCQDViW8JNk8=; b=S/m+YDgRYk6XdL
	PFFwXmzTYq2VYVHuT2Rz+a+R0w3/EqF9JaS9sU69x20oSGQJW3fvaJE8MTOT7OXjiv8gdTvCrJVrv
	HNZ3vz0TXuXyx+ld/zN2S8YzSZ7nV0EXWWgcVppxBeVCcs1+NT3VZZ818JQrT5G4e+UikHw3cv3BA
	qVwcsJb6hziwsAWJoe0wokS8TcHYeBiZBifVCW58TQ7qMnP3JwnVvuBH+MKkvAq1nKxgeNP7kYFms
	p6961Lk7YQuVZpyc3f1PcURcI304porhFfd6QPEiU2nmIAy2T88CaASbFiplAJ9U1+9IecMrICDrt
	9gcySztFE5hyPg05iLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPrH-00000002IqW-0Xnk;
	Fri, 22 Aug 2025 11:22:59 +0000
Received: from smx-a.mailgw.jp ([210.171.6.215] helo=rmx-a.mailgw.jp)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIKw-00000001NS0-0cJj;
	Fri, 22 Aug 2025 03:21:08 +0000
Received: from bccml.bai.ne.jp (bccml-a.bai.ne.jp [210.171.3.161])
	by rmx-a.mailgw.jp  with ESMTP id 57M3KnEh030847-57M3KnEi030847;
	Fri, 22 Aug 2025 12:20:49 +0900
Received: from [192.168.11.11] (bai859bcd79.bai.ne.jp [133.155.205.121])
	by bccml.bai.ne.jp (Postfix) with ESMTPA id 1624B8192A;
	Fri, 22 Aug 2025 12:20:49 +0900 (JST)
Message-ID: <d0d7fc7f-d3f5-4375-abc4-c194c5b78c03@bcc.bai.ne.jp>
Date: Fri, 22 Aug 2025 12:20:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enables sound output from the audio
 jack on OrangePI5 Plus
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org
References: <20250821041555.4781-2-opi5plus@bcc.bai.ne.jp>
 <CALWfF7+rGDxtKDqYyazeh+8bndkyBb8LKe_gMq_EbNycD4mw3w@mail.gmail.com>
Content-Language: en-US
From: Hide Hako <opi5plus@bcc.bai.ne.jp>
In-Reply-To: <CALWfF7+rGDxtKDqYyazeh+8bndkyBb8LKe_gMq_EbNycD4mw3w@mail.gmail.com>
X-FE-Last-Public-Client-IP: 210.171.3.161
X-FE-Policy-ID: 3:1:2:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=bcc.bai.ne.jp; s=20240516; c=relaxed/relaxed;
 h=message-id:date:mime-version:subject:to:cc:references:from:content-type;
 bh=p9uP8cxjGLNlDC8IEuVAZKUw+9vO9WrsgXPNx2Qu4J8=;
 b=bDbcWxBygFWyIUYXw912ssQ4jaYb80gXSXk3Hl+LEmN4HH1ZKhOKkhJUOaDtc07a7wukwvTKE13P
	6oZOXVXfIa4E+/1Zm6IihOKSGAEagfxDQdU3xAZ3+zLxeYSeeVS97JCMO1vYUhPazKP8l+nVkj3V
	7JRo8lTgW7yUjmgFrjqMUjOXBBaRko9DCSF0iqHoGf3Qa+zFEiQSCInR//d43cfWLFi3jDOYzWwJ
	XRZjCELFZgbA46rJ7BraTB5ez6ylspMIGWypXImNQ/17Cb04VzIqeGNZlxcSWfTWPJfWFyCZNQsu
	i9T/X26iZp9erO2/qNx0hmYC/3GbrypfEcMiiA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_202106_752975_522E52CF 
X-CRM114-Status: GOOD (  14.53  )
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

CgpPbiAyMDI1LzA4LzIyIDE6NDksIEppbW15IEhvbiB3cm90ZToKPiBOb3RlOiB0aGUgc3ViamVj
dCBsb3N0IHRoZSAiYSIgaW4gYXJtNjQKU29ycnksIHR5cG8uCj4KPiBPbiBXZWQsIEF1ZyAyMCwg
MjAyNSwgMjM6MTkgSGlkZSBIYWtvIDxvcGk1cGx1c0BiY2MuYmFpLm5lLmpwPiB3cm90ZToKPgo+
PiBDdXJyZW50bHksIGFuYWxvZyBzb3VuZCBpcyBub3Qgb3V0cHV0IGZyb20gdGhlIGF1ZGlvIGph
Y2suCj4+IFRoaXMgcGF0Y2ggYWxsb3dzIHlvdSB0byBzZWxlY3QgYW5hbG9nIGhlYWRwaG9uZXMg
aW4gYWxzYW1peGVyLgo+PiBXb3JrcyB3aXRoIGtlcm5lbCA2LjE2LjEsIGJ1dCBub3QgNi4xNy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogSGlkZSBIYWtvIDxvcGk1cGx1c0BiY2MuYmFpLm5lLmpwPgo+
PiAtLS0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01
LmR0c2kgfCAxICsKPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUu
ZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUu
ZHRzaQo+PiBpbmRleCA5MWQ1NmMzNGEuLjY1NmFhYzJkZiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS5kdHNpCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUuZHRzaQo+PiBAQCAt
MTEzLDYgKzExMyw3IEBAIGFuYWxvZ19zb3VuZDogc291bmQgewo+PiAgICAgICAgICAgICAgICAg
IHNpbXBsZS1hdWRpby1jYXJkLG1jbGstZnMgPSA8MjU2PjsKPj4gICAgICAgICAgICAgICAgICBz
aW1wbGUtYXVkaW8tY2FyZCxiaXRjbG9jay1tYXN0ZXIgPSA8JmRhaWNwdT47Cj4+ICAgICAgICAg
ICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsZnJhbWUtbWFzdGVyID0gPCZkYWljcHU+Owo+PiAr
ICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQscGluLXN3aXRjaGVzID0gIkhlYWRwaG9u
ZXMiOwo+Pgo+IEZvciB0aGUgUGx1cywgaXQgaGFzIFNwZWFrZXIgYW5kIEhlYWRwaG9uZXMuCj4g
Rm9yIHRoZSBNYXggYW5kIFVsdHJhLCB0aGV5IG9ubHkgaGF2ZSBIZWFkcGhvbmVzLgpGb3IgYm9h
cmRzIHdpdGggYW4gYXVkaW8gamFjaywgdGhlIHN0YXRlbWVudCAKInNpbXBsZS1hdWRpby1jYXJk
LHBpbi1zd2l0Y2hlcyA9ICJIZWFkcGhvbmVzIjsiIGlzIHByb2JhYmx5IHJlcXVpcmVkLgpXaXRo
b3V0IHRoaXMgc3RhdGVtZW50LCB0aGUgIkhlYWRwaG9uZXMiIGl0ZW0gd2lsbCBub3QgYXBwZWFy
IGluIGFsc2FtaXhlci4KPiBTbyB0aGlzIHByb3BlcnR5IHNob3VsZCBiZSBkZWZpbmVkIGluIHRo
ZSAtcGx1cy5kdHMgYW5kIHRoZSAtY29tcGFjdC5kdHNpCj4gaW5zdGVhZCBvZiB0aGlzIGZpbGUg
d2hpY2ggaXMgY29tbW9uIHRvIGFsbC4KIMKgVGhpcyBwYXRjaCB3YXMgY3JlYXRlZCB3aXRoIHJl
ZmVyZW5jZSB0byByazM1ODhzLW9yYW5nZXBpLTUuZHRzaS4KCkhpZGUKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC4CBC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+dus4Vxm/Gnfm7Hid3BFHxL4+sJQjGn2rgdq2IF4Eo=; b=4mPwsJO7eWnL8A
	7oE0Og2vTuNerQs+f9XZZH1vvnka3PgO7QIYGc5h0Lu3IN/nVxP1Z6X8Qsn5XwKecXZ+BDCJhAN7N
	Z4yChb265jvkIGCPI4j60/GQ2rvo2t/YbBCp7uY5VBPypkZtRgbHAvED/AYjvi6jMOCzY4ezG2Tg7
	m3FLJM6Mv6n6A3e+QuMjy00Dyd8OVb/plu0CaXwfXO+q185aZsgDR97JHrf+aFHBnfTWi7LRhZv/k
	K7kNhQkuBLSbuKxdGPfizpRtitpF2CbjqNepVd8emAo8glAnjBKeY2eCTCsMfbXgrLsFPnMLbzlEP
	FLhkG8qM+GgaONZEqUnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AUu-007ReK-Kx; Fri, 17 Jun 2022 11:50:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AUi-007RZ1-Cj; Fri, 17 Jun 2022 11:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=z6s8j6QHMGdgd7Mk5tpAaYOw9Tp53cGm2BYsUeOLaiY=; b=iCsiOp+oRYpzaZSMvS1lgHrCcT
	gnaNIG+kAJ49xV3n0qT02GAgzUko41bLWY0s2zwJPaJVAfkGPsPU7Gpk4ZyHej6vfu3jA0fs+j6I6
	DfEa9tR4Mrv7S2C+ofetXUnb5slNcobaAUsDys9Fi7rrlTYjbHCEnzyBXkZuEfaIASu6xRSBiP5cJ
	RnhX4IeCQGB6dhBncfCZ0+CktWysvzQ35zdc5qJUixEgdPsXZw6ac4IR9tAENlJqCKlvzun5XpkAL
	D+EhIvdz2eWq7mMOT2GN3lJ20+rKJ8xxqxEwFaCBA38Fd8MRhAQpFXpIH9AyPOxgGr0DomdbODt2x
	CEU3Vg1g==;
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AUd-008ft9-UG; Fri, 17 Jun 2022 11:50:30 +0000
Received: from p5098d998.dip0.t-ipconnect.de ([80.152.217.152] helo=hermes.fivetechno.de); authenticated
	by wp126.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1o2AUd-0007OT-GV; Fri, 17 Jun 2022 13:50:27 +0200
X-Virus-Scanned: by amavisd-new 2.12.2 using newest ClamAV at
	linuxbbg.five-lan.de
Received: from [127.0.0.1] (dynamic-046-114-037-216.46.114.pool.telefonica.de [46.114.37.216])
	(authenticated bits=0)
	by hermes.fivetechno.de (8.15.2/8.16.1/SUSE Linux 0.8) with ESMTPSA id 25HBoPZ7003951
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 17 Jun 2022 13:50:26 +0200
Date: Fri, 17 Jun 2022 13:50:24 +0200
From: MR <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe.montjoie@gmail.com>
CC: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: rk3399-roc-pc does not boot
User-Agent: K-9 Mail for Android
In-Reply-To: <YqxpuT36/sjQKm0o@Red>
References: <YqxEL/pgv3zuH6aS@Red> <c12cc4bd-f7b8-5e52-14a2-41a0da83bb0c@arm.com> <9CC86176-19B0-491F-86A4-F95E670B0A66@fivetechno.de> <YqxpuT36/sjQKm0o@Red>
Message-ID: <C9931FED-3B0A-40D8-B03C-AD270F68DB57@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;m.reichl@fivetechno.de;1655466627;684fb25f;
X-HE-SMSGID: 1o2AUd-0007OT-GV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_125028_566484_7401524F 
X-CRM114-Status: GOOD (  14.61  )
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

CgpBbSAxNy4gSnVuaSAyMDIyIDEzOjQ3OjA1IE1FU1ogc2NocmllYiBDb3JlbnRpbiBMYWJiZSA8
Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNvbT46Cj5MZSBGcmksIEp1biAxNywgMjAyMiBhdCAwMTo0
MzowNVBNICswMjAwLCBNUiBhIMOpY3JpdCA6Cj4+IAo+PiAKPj4gQW0gMTcuIEp1bmkgMjAyMiAx
MTo1ODowMyBNRVNaIHNjaHJpZWIgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT46
Cj4+ID5PbiAyMDIyLTA2LTE3IDEwOjA2LCBDb3JlbnRpbiBMYWJiZSB3cm90ZToKPj4gPj4gSGVs
bG8KPj4gPj4gCj4+ID4+IEkgdHJ5IHRvIGFkZCByazMzOTktcm9jLXBjIHRvIGtlcm5lbENJIGJ1
dCB0aGlzIGJvYXJkIGZhaWwgdG8gZW5kcyBpdHMgYm9vdCB3aXRoIGFueSBrZXJuZWwgSSB0cnku
Cj4+ID4+IEl0IGJvb3Qgbm9ybWFsbHkgdXAgdG8gc3RhcnRpbmcgaW5pdCBidXQgaXQgc3R1Y2tz
IHNob3J0eSBhZnRlci4KPj4gPj4gSXQgZmFpbCBvbiA1LjEwLCA1LjE1LCA1LjE3LCA1LjE4IGFu
ZCBsaW51eC1uZXh0Lgo+PiA+PiBXaGVuIGRpc2FibGluZyBDT05GSUdfVVNCLCB0aGUgYm9hcmQg
Ym9vdHMgc3VjY2Vzc2Z1bGx5Lgo+PiA+PiAKPj4gPj4gSW4gZG1lc2cgSSBzZWUgT0Y6IGdyYXBo
OiBubyBwb3J0IG5vZGUgZm91bmQgaW4gL2kyY0BmZjE2MDAwMC91c2ItdHlwZWNAMjIKPj4gPj4g
QWNjb3JkaW5nIHRvIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZmNzLGZ1
c2IzMDIudHh0LCB0aGUgcG9ydCBpcyBtYW5kYXRvcnkuCj4+ID4+IENhbiBpdCBiZSBwb3NzaWJs
ZSB0aGF0IHRoZSBwcm9ibGVtIHdhcyB0aGF0IHRoZSBwb3dlciBwb3J0IGJlaW5nIGRpc2FibGVk
ID8KPj4gPgo+PiA+SW5kZWVkLCBJIGJlbGlldmUgdGhlIE9GIGdyYXBoIGVycm9yIGlzIGp1c3Qg
YSBtZWFuaW5nbGVzcyBhbm5veWFuY2UsIGJ1dCB0aGUgZ2VuZXJhbCBwcm9ibGVtIHNvdW5kcyBs
aWtlIGl0J3MgcHJvYmFibHkgdGhlIHNhbWUgdGhpbmcgdGhhdCdzIGNvbWUgdXAgYmVmb3JlOgo+
PiA+Cj4+ID5odHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMGFjNmJiZTctNjM5NS01MjZkLTIx
M2MtYWM1OGExOWQ4NjczQGZpdmV0ZWNobm8uZGUvCj4+ID4KPj4gPkRpc2FibGluZyBDT05GSUdf
VFlQRUNfRlVTQjMwMiBvciBibGFja2xpc3RpbmcgdGhlIGZ1c2IzMDIgbW9kdWxlIHNob3VsZCBo
ZWxwIGNvbmZpcm0gdGhhdC4gSSBoYXZlIG5vIGlkZWEgaWYgaXQncyBzdGlsbCBhbiBvcGVuIHBy
b2JsZW0sIG9yIGlmIGl0J3MgYmVlbiBmaXhlZCBhbmQgeW91IG1pZ2h0IGp1c3QgbmVlZCB0byBk
ZWZpbmUgdGhlIHByb3BlciBwb3dlciByb2xlIGluIHRoZSBEVDsgdGhpcyBqdXN0IHRyaWdnZXJl
ZCBhIG1lbW9yeSBvZiB0aGF0IG9sZGVyIHRocmVhZCA6KQo+PiA+Cj4+ID5Sb2Jpbi4KPj4gCj4+
IFllcywgdGhlIGlzc3VlIGFib3ZlIGlzIHN0aWxsIHRoZXJlLiBJIHRoZXJlZm9yZSB1c2UgZHVt
YiA1IFYsIDQgQSBVU0IgcG93ZXIgc3VwcGxpZXMgIHRoYXQgZG8gbm90IHJlYWN0IG9uIHRoZSBV
U0ItQyBjb21tdW5pY2F0aW9uLgo+PiAKPj4gTWFya3VzCj4KPkBNYXJrdXMKPkNvdWxkIHlvdSB0
cnkgdGhlIGRpZmYgSSBqdXN0IHNlbmQgPwoKUmlnaHQgb24gaG9saWRheSwgYnV0IHdpbGwgdGVz
dCBpdCBuZXh0IHdlZWsuCj4KPlRoYW5rcwo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj5MaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

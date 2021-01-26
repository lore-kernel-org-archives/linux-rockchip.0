Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45D3C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 15:25:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7367923101
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 15:25:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7367923101
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=edlBeV/ikoQVx599vqQEUArhoctp1Wooz2lNyqb8rSg=; b=fzV5324Z4qonF1zOYuyUxXS44
	Gt8tZNyOj7SP+q6xASQZ+H24oes8GQ61ZXkUdwKjLvt/kiCW8o2bGnJPx0IJQv/lprn8fmAR0U3fF
	v+W1andSjJeAC2rSi1d6KHiS1+ILD8nJsBuhuy6MoTX0vwVP/RWpkTITAdL0iXv/s+U0z5AYPBnGo
	4eCwFgtmXrzi4USjmvkBEDukNCZmneaB6Gb66ieBxaq0T5uES79PJZ/hX9MsRAhhRMfL2SWLGMyle
	zXev0YVp6qiOGyEjjlWcjbBq+CoiNg3lNy7J8FUPcBH84Z03FKxJXeJ3SZWVj4MSmKdWQgC0ETD1q
	96CMvUnzw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4QE0-0002dR-7d; Tue, 26 Jan 2021 15:25:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4QDx-0002cI-7g
 for linux-rockchip@lists.infradead.org; Tue, 26 Jan 2021 15:25:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 10CA122D58;
 Tue, 26 Jan 2021 15:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611674743;
 bh=yRdFQkspLQ1wcj3eSoQvsMygISsSCmwBA/F43gsmILw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IR4TSOCgx/IzvDxuN+32Q2VLHU3lkfQ+BmwPa3knsv1srjbUUX48c0Q//GfjJOK/o
 hYc7Em9qp/jl9mkh55mAjQRBqQjlmg3AFTNT8jRuPQqy9+ZtcIbwoLreC2qSxN45y8
 AdT+5uWSugjzE7/xL3SwAiryAa7UP2UxoEtIaYn/KZFe7rkkbGg6hiTYahobFRroES
 ElbOTg9Ofy9qJXImuHB2SE7vOe+ZOjE0OmRMozorTAVY4V/5a2IkC2q5zaYd0+oibu
 ZbVYqL2rcn2RBtb/DjS1lK3IkSYjS3G/v1Bb2i1C5XQ/rEvCq06z0GFain88M7Qn+8
 GTQ+Shgaq49sA==
Date: Tue, 26 Jan 2021 17:25:39 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <20210126152539.GI1053290@unreal>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com>
 <20210125054836.GB579511@unreal>
 <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
 <20210125090129.GF579511@unreal>
 <CAL_JsqJET8-gn-uy11EVHJAz057FVH3-BErwyL41W2WpxhgQUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJET8-gn-uy11EVHJAz057FVH3-BErwyL41W2WpxhgQUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_102545_407331_50D9461E 
X-CRM114-Status: GOOD (  31.95  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 xxm <xxm@rock-chips.com>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6NTI6MzFBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMzowMSBBTSBMZW9uIFJvbWFub3Zza3kgPGxl
b25Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6
NDA6MTBQTSArMDgwMCwgeHhtIHdyb3RlOgo+ID4gPiBIaSBMZW9uLAo+ID4gPgo+ID4gPiBUaGFu
a3MgZm9yIHlvdXIgcmVwbHkuCj4gPiA+Cj4gPiA+IOWcqCAyMDIxLzEvMjUgMTM6NDgsIExlb24g
Um9tYW5vdnNreSDlhpnpgZM6Cj4gPiA+ID4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTA6NDk6
MjdBTSArMDgwMCwgU2ltb24gWHVlIHdyb3RlOgo+ID4gPiA+ID4gcGNpZS1kdy1yb2NrY2hpcCBp
cyBiYXNlZCBvbiBEV0MgSVAuIEJ1dCBwY2llLXJvY2tjaGlwLWhvc3QKPiA+ID4gPiA+IGlzIFJv
Y2tjaGlwIGRlc2lnbmVkIElQIHdoaWNoIGlzIG9ubHkgdXNlZCBmb3IgUkszMzk5LiBTbyBhbGwg
dGhlIGZvbGxvd2luZwo+ID4gPiA+ID4gbm9uLVJLMzM5OSBTb0NzIHNob3VsZCB1c2UgdGhpcyBk
cml2ZXIuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1A
cm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9LY29uZmlnICAgICAgICAgICAgfCAgIDkgKwo+ID4gPiA+ID4gICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+ID4g
PiA+ID4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAy
ODYgKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjk2IGlu
c2VydGlvbnMoKykKPiA+ID4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPiA+ID4KPiA+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvS2NvbmZpZwo+ID4gPiA+ID4gaW5kZXggMjJjNTUyOWU5YTY1Li5hZWU0
MDhmZTkyODMgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9LY29uZmlnCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29u
ZmlnCj4gPiA+ID4gPiBAQCAtMjE0LDYgKzIxNCwxNSBAQCBjb25maWcgUENJRV9BUlRQRUM2X0VQ
Cj4gPiA+ID4gPiAgICAgICAgICAgICBFbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBQQ0llIGNvbnRy
b2xsZXIgaW4gdGhlIEFSVFBFQy02IFNvQyB0byB3b3JrIGluCj4gPiA+ID4gPiAgICAgICAgICAg
ICBlbmRwb2ludCBtb2RlLiBUaGlzIHVzZXMgdGhlIERlc2lnbldhcmUgY29yZS4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiArY29uZmlnIFBDSUVfUk9DS0NISVBfRFdfSE9TVAo+ID4gPiA+ID4gKyBib29s
ICJSb2NrY2hpcCBEZXNpZ25XYXJlIFBDSWUgY29udHJvbGxlciIKPiA+ID4gPiA+ICsgc2VsZWN0
IFBDSUVfRFcKPiA+ID4gPiA+ICsgc2VsZWN0IFBDSUVfRFdfSE9TVAo+ID4gPiA+ID4gKyBkZXBl
bmRzIG9uIEFSQ0hfUk9DS0NISVAgfHwgQ09NUElMRV9URVNUCj4gPiA+ID4gPiArIGRlcGVuZHMg
b24gT0YKPiA+ID4gPiA+ICsgaGVscAo+ID4gPiA+ID4gKyAgIEVuYWJsZXMgc3VwcG9ydCBmb3Ig
dGhlIERXIFBDSWUgY29udHJvbGxlciBpbiB0aGUgUm9ja2NoaXAgU29DLgo+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gICBjb25maWcgUENJRV9JTlRFTF9HVwo+ID4gPiA+ID4gICAgICAgICAgIGJvb2wg
IkludGVsIEdhdGV3YXkgUENJZSBob3N0IGNvbnRyb2xsZXIgc3VwcG9ydCIKPiA+ID4gPiA+ICAg
ICAgICAgICBkZXBlbmRzIG9uIE9GICYmIChYODYgfHwgQ09NUElMRV9URVNUKQo+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZpbGUKPiA+ID4gPiA+IGluZGV4IGE3NTE1NTNmYTBk
Yi4uMzBlZWY4ZTllZThhIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvTWFrZWZpbGUKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL01ha2VmaWxlCj4gPiA+ID4gPiBAQCAtMTMsNiArMTMsNyBAQCBvYmotJChDT05GSUdfUENJ
X0xBWUVSU0NBUEVfRVApICs9IHBjaS1sYXllcnNjYXBlLWVwLm8KPiA+ID4gPiA+ICAgb2JqLSQo
Q09ORklHX1BDSUVfUUNPTSkgKz0gcGNpZS1xY29tLm8KPiA+ID4gPiA+ICAgb2JqLSQoQ09ORklH
X1BDSUVfQVJNQURBXzhLKSArPSBwY2llLWFybWFkYThrLm8KPiA+ID4gPiA+ICAgb2JqLSQoQ09O
RklHX1BDSUVfQVJUUEVDNikgKz0gcGNpZS1hcnRwZWM2Lm8KPiA+ID4gPiA+ICtvYmotJChDT05G
SUdfUENJRV9ST0NLQ0hJUF9EV19IT1NUKSArPSBwY2llLWR3LXJvY2tjaGlwLm8KPiA+ID4gPiA+
ICAgb2JqLSQoQ09ORklHX1BDSUVfSU5URUxfR1cpICs9IHBjaWUtaW50ZWwtZ3cubwo+ID4gPiA+
ID4gICBvYmotJChDT05GSUdfUENJRV9LSVJJTikgKz0gcGNpZS1raXJpbi5vCj4gPiA+ID4gPiAg
IG9iai0kKENPTkZJR19QQ0lFX0hJU0lfU1RCKSArPSBwY2llLWhpc3RiLm8KPiA+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjA3ZjZk
MWNkNTg1Mwo+ID4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiA+ID4gPiBAQCAtMCwwICsx
LDI4NiBAQAo+ID4gPiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4g
PiA+ID4gPiArLyoKPiA+ID4gPiA+ICsgKiBQQ0llIGhvc3QgY29udHJvbGxlciBkcml2ZXIgZm9y
IFJvY2tjaGlwIFNvQ3MKPiA+ID4gPiA+ICsgKgo+ID4gPiA+ID4gKyAqIENvcHlyaWdodCAoQykg
MjAyMSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPiA+ID4gPiA+ICsgKiAgICAgICAg
ICAgICAgIGh0dHA6Ly93d3cucm9jay1jaGlwcy5jb20KPiA+ID4gPiA+ICsgKgo+ID4gPiA+ID4g
KyAqIEF1dGhvcjogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gPiArICov
Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ID4gPiA+ID4g
KyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4gPiA+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L21mZC9zeXNjb24uaD4KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4g
PiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgo+ID4gPiA+ID4gKyNpbmNsdWRl
IDxsaW51eC9waHkvcGh5Lmg+Cj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiA+ID4gPiA+ICsj
aW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsjaW5jbHVkZSAi
cGNpZS1kZXNpZ253YXJlLmgiCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArLyoKPiA+ID4gPiA+ICsg
KiBUaGUgdXBwZXIgMTYgYml0cyBvZiBQQ0lFX0NMSUVOVF9DT05GSUcgYXJlIGEgd3JpdGUKPiA+
ID4gPiA+ICsgKiBtYXNrIGZvciB0aGUgbG93ZXIgMTYgYml0cy4gIFRoaXMgYWxsb3dzIGF0b21p
YyB1cGRhdGVzCj4gPiA+ID4gPiArICogb2YgdGhlIHJlZ2lzdGVyIHdpdGhvdXQgbG9ja2luZy4K
PiA+ID4gPiA+ICsgKi8KPiA+ID4gPiBUaGlzIGlzIGNvcnJlY3Qgb25seSBmb3IgdGhlIHZhcmlh
YmxlcyB0aGF0IG5hdHVyYWxseSBhbGlnbmVkLCBJIGltYWdpbmUKPiA+ID4gPiB0aGF0IHRoaXMg
aXMgdGhlIGNhc2UgaGVyZSBhbmQgaW4gdGhlIExpbnV4LCBidXQgYmV0dGVyIGRvIG5vdCB3cml0
ZSBjb21tZW50cwo+ID4gPiA+IGluIHRoZSBjb2RlIHRoYXQgYXJlIG5vdCBhY2N1cmF0ZS4KPiA+
ID4KPiA+ID4gT2ssIHdpbGwgcmVtb3ZlLgo+ID4gPiBJIHdvbmRlciB3aGF0IGl0IHdvdWxkIGJl
IHdoZW4gb3V0c2lkZSB0aGUgTGludXg/IENvdWxkIHlvdSBzaGFyZSBzb21lIGluZm9ybWF0aW9u
Pwo+ID4KPiA+IFRoZSBDIHN0YW5kYXJkIHNheXMgbm90aGluZyBhYm91dCBhdG9taWNpdHksIGlu
dGVnZXIgYXNzaWdubWVudCBtYXliZSBhdG9taWMsCj4gPiBtYXliZSBpdCBpc27igJl0LiBUaGVy
ZSBpcyBubyBndWFyYW50ZWUsIHBsYWluIGludGVnZXIgYXNzaWdubWVudCBpbiBDIGlzIG5vbi1h
dG9taWMKPiA+IGJ5IGRlZmluaXRpb24uCj4gPgo+ID4gVGhlIGF0b21pY2l0eSBvZiB1MzIgaXMg
dmVyeSBkZXBlbmRlbnQgb24gaGFyZHdhcmUgdmVuZG9yLCBtZW1vcnkgbW9kZWwgYW5kIGNvbXBp
bGVyLAo+ID4gZm9yIGV4YW1wbGUgeDg2IGFuZCBBUk1zIGd1YXJhbnRlZSBhdG9taWNpdHkgZm9y
IHUzMi4gVGhpcyBpcyB3aHkgSSBzYWlkIHRoYXQgcHJvYmFibHkKPiA+IGhlcmUgKExpbnV4KSBp
dCBpcyBvayBhbmQgeW91IGFyZSBub3QgYWxvbmUgaW4gZXhwZWN0aW5nIGxvY2tsZXNzIHdyaXRl
Lgo+Cj4gQnV0IHRoaXMgaXMgYSBtbWlvIHJlZ2lzdGVyIGFjY2Vzc2VkIHRocnUgd3JpdGVsKCkg
d2hpY2ggZG9lcyBoYXZlIGFsbAo+IHRob3NlIGd1YXJhbnRlZXMuCgpUaGUgYXV0aG9yIGRpZG4n
dCB3cml0ZSAiVGhlIHdyaXRlbCgpIGd1YXJhbnRlZXMgYXRvbWljIHVwZGF0ZXMKd2l0aG91dCBu
ZWVkIG9mIGxvY2tpbmciLgoKQW55d2F5LCB0aGlzIGlzIG5vdCBpbXBvcnRhbnQuCgpUaGFua3MK
Cj4KPiBSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

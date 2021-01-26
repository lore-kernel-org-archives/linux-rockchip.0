Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E12EC43381
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 14:52:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8A1D23101
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 14:52:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8A1D23101
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F8gYgsn9+ZrmUT5P5rpFleZSPMJiTwf3ZV4TlVA79jE=; b=ZSmt9+E+2t/PaGZ14RfS/tJtP
	4FkPfSKEm7kczExRcxrSbfk6P68oRgPq1BxiqP9OzlC9aBlTXk9iHoy1b5XM/AaZA1EnOA2bdUBpr
	6zjnCVWpgm6Cz4tLu/ROe8/8VKu73JfWAvJJvzrqRmCg9Yokv8HRXnmuMPHZxfom0o9BOlNriFS6h
	OUwlUs/pBfZnPWgQWJugW4EaYcS/Kh7kTD/dEEz0BJxFFJubc4c3cWQ4krLA/nmtUZDbbSUOr89jI
	trM0gboZjJaJqhKym1UUXkQBpqrGe75JNPVzNYLx4Tq+FSiweQG6/1CksBBZC3VFed58FXqROlaqd
	PrRqpto9g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Pi6-0006XL-B9; Tue, 26 Jan 2021 14:52:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Pi1-0006WM-UC
 for linux-rockchip@lists.infradead.org; Tue, 26 Jan 2021 14:52:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D4E922EBF
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Jan 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611672764;
 bh=3yBxzjkgZhuyNBbMaccqgbZLYAKuOFoO0Q29PtcedmU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XTkQNv8Sbs4GgCocet74Y0iwGHu2J4vtK6ffoT2EiaLXhKdv6+gXprNgC/91C2sld
 ZdA2w1TSkTamreVLY6tGDje+3rgiY/G57iiXOcRNzUccxx5vGIuxJCLGrSV8il8/4B
 E7rhmyrQHEx/wB+Z9CW1wz96IvEq+hC3edpHow4/1eTbnupidGt+9Y4Fa+lfqO7EUi
 OLJR+AZHucIYJ6M/mt5yxzyfzBigbeI3Fgz7JjLZav62AiDzmFxr4GICriOU09G/Hj
 /4lzkpmLdlThZBbb8qpP0amMjjFfNYgQv1iTpHyCJ9lBxDS05/+TWgR4SLys4qxRmI
 USD7Klh2QhO6A==
Received: by mail-ed1-f41.google.com with SMTP id s11so20085323edd.5
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Jan 2021 06:52:44 -0800 (PST)
X-Gm-Message-State: AOAM531Elzyfcx0aKl/JniZkVs4RyEI0P9qkfnEZZ4dsqPDK7CxYqm0U
 1I87JZe3qznN+vRUpRjP+E61R1siLoMc7vLAeQ==
X-Google-Smtp-Source: ABdhPJx9p+Z7FBDf1hYI1Kfn/L638Nk9D11uIpYesw9n6jxClik4PWGyAIMoLFtqYSEQp7jkpV+XQhsyE8iIOyuGiv0=
X-Received: by 2002:aa7:c895:: with SMTP id p21mr4836358eds.165.1611672763215; 
 Tue, 26 Jan 2021 06:52:43 -0800 (PST)
MIME-Version: 1.0
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com>
 <20210125054836.GB579511@unreal>
 <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
 <20210125090129.GF579511@unreal>
In-Reply-To: <20210125090129.GF579511@unreal>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 26 Jan 2021 08:52:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJET8-gn-uy11EVHJAz057FVH3-BErwyL41W2WpxhgQUQ@mail.gmail.com>
Message-ID: <CAL_JsqJET8-gn-uy11EVHJAz057FVH3-BErwyL41W2WpxhgQUQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
To: Leon Romanovsky <leon@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_095246_092212_BC66964F 
X-CRM114-Status: GOOD (  30.02  )
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMzowMSBBTSBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEphbiAyNSwgMjAyMSBhdCAwMjo0MDoxMFBNICsw
ODAwLCB4eG0gd3JvdGU6Cj4gPiBIaSBMZW9uLAo+ID4KPiA+IFRoYW5rcyBmb3IgeW91ciByZXBs
eS4KPiA+Cj4gPiDlnKggMjAyMS8xLzI1IDEzOjQ4LCBMZW9uIFJvbWFub3Zza3kg5YaZ6YGTOgo+
ID4gPiBPbiBNb24sIEphbiAyNSwgMjAyMSBhdCAxMDo0OToyN0FNICswODAwLCBTaW1vbiBYdWUg
d3JvdGU6Cj4gPiA+ID4gcGNpZS1kdy1yb2NrY2hpcCBpcyBiYXNlZCBvbiBEV0MgSVAuIEJ1dCBw
Y2llLXJvY2tjaGlwLWhvc3QKPiA+ID4gPiBpcyBSb2NrY2hpcCBkZXNpZ25lZCBJUCB3aGljaCBp
cyBvbmx5IHVzZWQgZm9yIFJLMzM5OS4gU28gYWxsIHRoZSBmb2xsb3dpbmcKPiA+ID4gPiBub24t
UkszMzk5IFNvQ3Mgc2hvdWxkIHVzZSB0aGlzIGRyaXZlci4KPiA+ID4gPgo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IC0tLQo+
ID4gPiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyAgICAgICAgICAgIHwg
ICA5ICsKPiA+ID4gPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlICAgICAg
ICAgICB8ICAgMSArCj4gPiA+ID4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3
LXJvY2tjaGlwLmMgfCAyODYgKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gICAzIGZpbGVzIGNo
YW5nZWQsIDI5NiBpbnNlcnRpb25zKCspCj4gPiA+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiA+ID4gPiBpbmRleCAyMmM1NTI5ZTlhNjUu
LmFlZTQwOGZlOTI4MyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9LY29uZmlnCj4gPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2Nv
bmZpZwo+ID4gPiA+IEBAIC0yMTQsNiArMjE0LDE1IEBAIGNvbmZpZyBQQ0lFX0FSVFBFQzZfRVAK
PiA+ID4gPiAgICAgICAgICAgICBFbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBQQ0llIGNvbnRyb2xs
ZXIgaW4gdGhlIEFSVFBFQy02IFNvQyB0byB3b3JrIGluCj4gPiA+ID4gICAgICAgICAgICAgZW5k
cG9pbnQgbW9kZS4gVGhpcyB1c2VzIHRoZSBEZXNpZ25XYXJlIGNvcmUuCj4gPiA+ID4KPiA+ID4g
PiArY29uZmlnIFBDSUVfUk9DS0NISVBfRFdfSE9TVAo+ID4gPiA+ICsgYm9vbCAiUm9ja2NoaXAg
RGVzaWduV2FyZSBQQ0llIGNvbnRyb2xsZXIiCj4gPiA+ID4gKyBzZWxlY3QgUENJRV9EVwo+ID4g
PiA+ICsgc2VsZWN0IFBDSUVfRFdfSE9TVAo+ID4gPiA+ICsgZGVwZW5kcyBvbiBBUkNIX1JPQ0tD
SElQIHx8IENPTVBJTEVfVEVTVAo+ID4gPiA+ICsgZGVwZW5kcyBvbiBPRgo+ID4gPiA+ICsgaGVs
cAo+ID4gPiA+ICsgICBFbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBEVyBQQ0llIGNvbnRyb2xsZXIg
aW4gdGhlIFJvY2tjaGlwIFNvQy4KPiA+ID4gPiArCj4gPiA+ID4gICBjb25maWcgUENJRV9JTlRF
TF9HVwo+ID4gPiA+ICAgICAgICAgICBib29sICJJbnRlbCBHYXRld2F5IFBDSWUgaG9zdCBjb250
cm9sbGVyIHN1cHBvcnQiCj4gPiA+ID4gICAgICAgICAgIGRlcGVuZHMgb24gT0YgJiYgKFg4NiB8
fCBDT01QSUxFX1RFU1QpCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL01ha2VmaWxlIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZpbGUKPiA+
ID4gPiBpbmRleCBhNzUxNTUzZmEwZGIuLjMwZWVmOGU5ZWU4YSAxMDA2NDQKPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZQo+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlCj4gPiA+ID4gQEAgLTEzLDYgKzEzLDcgQEAg
b2JqLSQoQ09ORklHX1BDSV9MQVlFUlNDQVBFX0VQKSArPSBwY2ktbGF5ZXJzY2FwZS1lcC5vCj4g
PiA+ID4gICBvYmotJChDT05GSUdfUENJRV9RQ09NKSArPSBwY2llLXFjb20ubwo+ID4gPiA+ICAg
b2JqLSQoQ09ORklHX1BDSUVfQVJNQURBXzhLKSArPSBwY2llLWFybWFkYThrLm8KPiA+ID4gPiAg
IG9iai0kKENPTkZJR19QQ0lFX0FSVFBFQzYpICs9IHBjaWUtYXJ0cGVjNi5vCj4gPiA+ID4gK29i
ai0kKENPTkZJR19QQ0lFX1JPQ0tDSElQX0RXX0hPU1QpICs9IHBjaWUtZHctcm9ja2NoaXAubwo+
ID4gPiA+ICAgb2JqLSQoQ09ORklHX1BDSUVfSU5URUxfR1cpICs9IHBjaWUtaW50ZWwtZ3cubwo+
ID4gPiA+ICAgb2JqLSQoQ09ORklHX1BDSUVfS0lSSU4pICs9IHBjaWUta2lyaW4ubwo+ID4gPiA+
ICAgb2JqLSQoQ09ORklHX1BDSUVfSElTSV9TVEIpICs9IHBjaWUtaGlzdGIubwo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDdmNmQxY2Q1
ODUzCj4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPiA+IEBAIC0wLDAgKzEsMjg2IEBACj4g
PiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiA+ID4gKy8qCj4g
PiA+ID4gKyAqIFBDSWUgaG9zdCBjb250cm9sbGVyIGRyaXZlciBmb3IgUm9ja2NoaXAgU29Dcwo+
ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjEgUm9ja2NoaXAgRWxlY3Ry
b25pY3MgQ28uLCBMdGQuCj4gPiA+ID4gKyAqICAgICAgICAgICAgICAgaHR0cDovL3d3dy5yb2Nr
LWNoaXBzLmNvbQo+ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBBdXRob3I6IFNpbW9uIFh1ZSA8eHht
QHJvY2stY2hpcHMuY29tPgo+ID4gPiA+ICsgKi8KPiA+ID4gPiArCj4gPiA+ID4gKyNpbmNsdWRl
IDxsaW51eC9jbGsuaD4KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4K
PiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPiA+ID4gPiArI2luY2x1ZGUg
PGxpbnV4L21vZHVsZS5oPgo+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4g
PiA+ID4gKyNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+
ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+ID4gPiArCj4gPiA+ID4gKyNpbmNs
dWRlICJwY2llLWRlc2lnbndhcmUuaCIKPiA+ID4gPiArCj4gPiA+ID4gKy8qCj4gPiA+ID4gKyAq
IFRoZSB1cHBlciAxNiBiaXRzIG9mIFBDSUVfQ0xJRU5UX0NPTkZJRyBhcmUgYSB3cml0ZQo+ID4g
PiA+ICsgKiBtYXNrIGZvciB0aGUgbG93ZXIgMTYgYml0cy4gIFRoaXMgYWxsb3dzIGF0b21pYyB1
cGRhdGVzCj4gPiA+ID4gKyAqIG9mIHRoZSByZWdpc3RlciB3aXRob3V0IGxvY2tpbmcuCj4gPiA+
ID4gKyAqLwo+ID4gPiBUaGlzIGlzIGNvcnJlY3Qgb25seSBmb3IgdGhlIHZhcmlhYmxlcyB0aGF0
IG5hdHVyYWxseSBhbGlnbmVkLCBJIGltYWdpbmUKPiA+ID4gdGhhdCB0aGlzIGlzIHRoZSBjYXNl
IGhlcmUgYW5kIGluIHRoZSBMaW51eCwgYnV0IGJldHRlciBkbyBub3Qgd3JpdGUgY29tbWVudHMK
PiA+ID4gaW4gdGhlIGNvZGUgdGhhdCBhcmUgbm90IGFjY3VyYXRlLgo+ID4KPiA+IE9rLCB3aWxs
IHJlbW92ZS4KPiA+IEkgd29uZGVyIHdoYXQgaXQgd291bGQgYmUgd2hlbiBvdXRzaWRlIHRoZSBM
aW51eD8gQ291bGQgeW91IHNoYXJlIHNvbWUgaW5mb3JtYXRpb24/Cj4KPiBUaGUgQyBzdGFuZGFy
ZCBzYXlzIG5vdGhpbmcgYWJvdXQgYXRvbWljaXR5LCBpbnRlZ2VyIGFzc2lnbm1lbnQgbWF5YmUg
YXRvbWljLAo+IG1heWJlIGl0IGlzbuKAmXQuIFRoZXJlIGlzIG5vIGd1YXJhbnRlZSwgcGxhaW4g
aW50ZWdlciBhc3NpZ25tZW50IGluIEMgaXMgbm9uLWF0b21pYwo+IGJ5IGRlZmluaXRpb24uCj4K
PiBUaGUgYXRvbWljaXR5IG9mIHUzMiBpcyB2ZXJ5IGRlcGVuZGVudCBvbiBoYXJkd2FyZSB2ZW5k
b3IsIG1lbW9yeSBtb2RlbCBhbmQgY29tcGlsZXIsCj4gZm9yIGV4YW1wbGUgeDg2IGFuZCBBUk1z
IGd1YXJhbnRlZSBhdG9taWNpdHkgZm9yIHUzMi4gVGhpcyBpcyB3aHkgSSBzYWlkIHRoYXQgcHJv
YmFibHkKPiBoZXJlIChMaW51eCkgaXQgaXMgb2sgYW5kIHlvdSBhcmUgbm90IGFsb25lIGluIGV4
cGVjdGluZyBsb2NrbGVzcyB3cml0ZS4KCkJ1dCB0aGlzIGlzIGEgbW1pbyByZWdpc3RlciBhY2Nl
c3NlZCB0aHJ1IHdyaXRlbCgpIHdoaWNoIGRvZXMgaGF2ZSBhbGwKdGhvc2UgZ3VhcmFudGVlcy4K
ClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

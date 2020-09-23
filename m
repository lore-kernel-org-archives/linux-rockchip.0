Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2DDC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 17:24:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F48421BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 17:24:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Na4tKEyI";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYwzNX8c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F48421BE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WpQJdh+YPPVyYj+DxJJoA6IEG6R6jEF0vczSQ2tOtfg=; b=Na4tKEyI6xYKwpspIhWu6WSG1
	/W0u6v3aT6uRqcmhdNeKu73q8j5CpUM/PJWSZXdLT/5l8ss7246exKL2AOMyMNx1vKOSkh5PDUwDt
	SnMp0rQ2fO796tQCaA+UD6NQMP2G4hQfAUOqFn3K8s7gnMGhfoxVkmOc5Qa8a5AQEvu+pukJ9OeFI
	PunolD/t9kdS2iEl2Aqf2bXiTRaP/tmo93O9KMpO/GEoMg7lqmTN0NR0c+r2kIrKeMv67HqSvWDtf
	tGpCS7KO0EdtMdLlF1X19WdaEsC9AUxXZC2dCRHXbAbJLTiXyRtoO2xAOsYkhSeGRVS7LLxP5EYWz
	JrdXgpfDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL8Uk-0002rx-2x; Wed, 23 Sep 2020 17:23:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL8Ug-0002rK-Br; Wed, 23 Sep 2020 17:23:51 +0000
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13ABA2371F;
 Wed, 23 Sep 2020 17:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600881829;
 bh=730KdbTlfAh6bLWtoHtsz8yH6kRXQvyGVrEQq7gSANU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NYwzNX8cDLPLw28QKKLAMaSEmE4trXAkB+v3qLNlHcmSoMjQorgFg/WGV9b+M/k1A
 OVZO8rOgYBw1HNxTQHRKi7RO90FVD9vfWfbz63NPR/Cl/31J70UcF30ocGzLzx7RuN
 KYFT/k4oLeZ8VQvnAw+qq/kVyxY/bL8tNNy4CL8s=
Received: by mail-ot1-f44.google.com with SMTP id 95so428593ota.13;
 Wed, 23 Sep 2020 10:23:49 -0700 (PDT)
X-Gm-Message-State: AOAM532ujC1RloWcrJ+qGPumYKfGTJ1WV3rWe59CFrXvgoAUeQ4pPKNK
 ozZby7nQz3zUJ87I78eWHoCtI6mACwojN0L7GA==
X-Google-Smtp-Source: ABdhPJxUtzwTOVGogBCfk3/mDj7n+lJEHqswrMVz+ppffanPQR9H7uxwnTsaqk3Xj43eCclj08B5LLHvpJt3+Qf+o1c=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr489792otp.129.1600881828244; 
 Wed, 23 Sep 2020 10:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200905204416.GA83847@rocinante>
 <20200922232715.GA2238688@bjorn-Precision-5520>
In-Reply-To: <20200922232715.GA2238688@bjorn-Precision-5520>
From: Rob Herring <robh@kernel.org>
Date: Wed, 23 Sep 2020 11:23:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKs2m_echD97C+Q_NFS=yJif0LcgLMdDLnywjz35mboKQ@mail.gmail.com>
Message-ID: <CAL_JsqKs2m_echD97C+Q_NFS=yJif0LcgLMdDLnywjz35mboKQ@mail.gmail.com>
Subject: Re: [PATCH] PCI: Unify ECAM constants in native PCI Express drivers
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_132350_715507_61BA67AD 
X-CRM114-Status: GOOD (  24.69  )
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Jonathan Chocron <jonnyc@amazon.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMjIsIDIwMjAgYXQgNToyNyBQTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gWytjYyBSb2IsIHdobydzIGRvaW5nIGEgbG90IG9mIGNsZWFu
dXAgaW4gdGhlc2UgZHJpdmVyc10KPgo+IE9uIFNhdCwgU2VwIDA1LCAyMDIwIGF0IDEwOjQ0OjE2
UE0gKzAyMDAsIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90ZToKPiA+IEhlbGxvIEpvbmF0aGFu
LAo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHJldmlldyEgIEFsc28sIGFwb2xvZ2llcyBmb3Ig
bGF0ZSByZXBseS4KPiA+Cj4gPiBPbiAyMC0wOC0yOCAxMDowODo0MywgSm9uYXRoYW4gQ2FtZXJv
biB3cm90ZToKPiA+IFsuLi5dCj4gPiA+Cj4gPiA+IE1pZ2h0IHBvdGVudGlhbGx5IGJlIHdvcnRo
IHRpZHlpbmcgdXAgdGhlIG1hc2tzIGFzIHdlbGw/Cj4gPiA+IE9yIHBvdGVudGlhbGx5IGRyb3Ag
dGhlbSBnaXZlbiBJIHN1c3BlY3QgdGhhdCB0aGVyZSBhcmUgbm8gY2FzZXMKPiA+ID4gaW4gd2hp
Y2ggdGhlIG1hc2sgaXMgYWN0dWFsbHkgZG9pbmcgYW55dGhpbmcuLi4KPiA+Cj4gPiBKdXN0IHRv
IGNvbmZpcm0gLSB5b3UgaGF2ZSB0aGUgZm9sbG93aW5nIGNvbnN0YW50cyBpbiBtaW5kPwo+ID4K
PiA+IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oOgo+ID4KPiA+ICNkZWZp
bmUgUENJRV9FQ0FNX0JVUyh4KSAgICAgICgoKHgpICYgMHhmZikgPDwgMjApCj4gPiAjZGVmaW5l
IFBDSUVfRUNBTV9ERVYoeCkgICAgICAoKCh4KSAmIDB4MWYpIDw8IDE1KQo+ID4gI2RlZmluZSBQ
Q0lFX0VDQU1fRlVOQyh4KSAgICAgKCgoeCkgJiAweDcpIDw8IDEyKQo+ID4KPiA+IGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtYWwuYzoKPiA+Cj4gPiAjZGVmaW5lIFBDSUVfRUNBTV9E
RVZGTih4KSAgICAoKCh4KSAmIDB4ZmYpIDw8IDEyKQo+ID4KPiA+IEkgY2FuIG1vdmUgUENJRV9F
Q0FNX0JVUywgUENJRV9FQ0FNX0RFViBhbmQgUENJRV9FQ0FNX0ZVTkMgKGFzCj4gPiBQQ0lFX0VD
QU1fRlVOKSB0byB0aGUgbGludXgvcGNpLWVjYW0uaCBmaWxlLCBhcyB0aGVzZSBzZWVtIHVzZWZ1
bCwgYnV0Cj4gPiB3aXRob3V0IHRoZSBtYXNrcywgYW5kIHRoZW4gdXBkYXRlIG90aGVyIGZpbGVz
IHRvIHVzZSB0aGVzZS4gIFdlIGNvdWxkCj4gPiB0aGVuIGxldmVyYWdlIHRoZXNlLCBmb3IgZXhh
bXBsZToKPiA+Cj4gPiAgICAgICBwY2lfYmFzZV9hZGRyID0gKHZvaWQgX19pb21lbSAqKSgodWlu
dHB0cl90KXBwLT52YV9jZmcwX2Jhc2UgKwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKGJ1c25yX2VjYW0gPDwgMjApICsKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFBDSUVfRUNBTV9ERVZGTihkZXZmbikpOwo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUENJRV9FQ0FNX0JVUyhidXNucl9lY2FtKSAr
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQQ0lFX0VDQU1fRlVO
KGRldmZuKSk7Cj4gPgo+ID4gV2hhdCBkbyB5b3UgdGhpbms/ICBCam9ybiwgd291bGQgdGhhdCBi
ZSBhY2NlcHRhYmxlPwo+Cj4gSXQgd291bGQgYmUgbmljZSB0byB1c2UgdGhlIHNhbWUgc3R5bGUg
YW5kIHNhbWUgbWFjcm9zIGZvciBhbGwgb2YKPiB0aGUgZm9sbG93aW5nLCB3aGljaCBhcmUgYWxs
IHJlYWxseSBkb2luZyB0aGUgc2FtZSB0aGluZzoKPgo+ICAgYWxfcGNpZV9jb25mX2FkZHJfbWFw
KCkKPiAgICAgcGNpX2Jhc2VfYWRkciA9ICh2b2lkIF9faW9tZW0gKikoKHVpbnRwdHJfdClwcC0+
dmFfY2ZnMF9iYXNlICsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGJ1
c25yX2VjYW0gPDwgMjApICsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
UENJRV9FQ0FNX0RFVkZOKGRldmZuKSk7Cj4KPiAgIHJvY2tjaGlwX3BjaWVfcmRfb3RoZXJfY29u
ZigpCj4gICAgIGJ1c2RldiA9IFBDSUVfRUNBTV9BRERSKGJ1cy0+bnVtYmVyLCBQQ0lfU0xPVChk
ZXZmbiksCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBDSV9GVU5DKGRldmZuKSwgd2hl
cmUpOwo+Cj4gICBud2xfcGNpZV9tYXBfYnVzKCkKPiAgICAgcmVsYnVzID0gKGJ1cy0+bnVtYmVy
IDw8IEVDQU1fQlVTX0xPQ19TSElGVCkgfAo+ICAgICAgICAgICAgICAgICAgICAgKGRldmZuIDw8
IEVDQU1fREVWX0xPQ19TSElGVCk7Cj4KPiAgICAgcmV0dXJuIHBjaWUtPmVjYW1fYmFzZSArIHJl
bGJ1cyArIHdoZXJlOwo+Cj4gICB4aWxpbnhfcGNpZV9tYXBfYnVzKCkKPiAgICAgcmVsYnVzID0g
KGJ1cy0+bnVtYmVyIDw8IEVDQU1fQlVTX05VTV9TSElGVCkgfAo+ICAgICAgICAgICAgICAoZGV2
Zm4gPDwgRUNBTV9ERVZfTlVNX1NISUZUKTsKPgo+ICAgICByZXR1cm4gcG9ydC0+cmVnX2Jhc2Ug
KyByZWxidXMgKyB3aGVyZTsKPgo+IE1heWJlIHRoYXQncyBzb21ldGhpbmcgbGlrZSB1c2luZyBQ
Q0lFX0VDQU1fQUREUigpIGV2ZXJ5d2hlcmU/ICBJJ20KPiBub3Qgc3VyZSB0aGVyZSdzIHZhbHVl
IGluIGhhdmluZyB0aGUgY2FsbGVyIGRvIHRoZSBQQ0lfU0xPVCgpIGFuZAo+IFBDSV9GVU5DKCkg
ZGVjb21wb3NpdGlvbiwgdGhvdWdoLCBpLmUuLCBtYXliZSBpdCdzIHNvbWV0aGluZyBsaWtlCj4g
dGhpcz8KPgo+ICAgI2RlZmluZSBQQ0lFX0VDQU1fUkVHKHgpICAoKHgpICYgMHhmZmYpCj4KPiAg
ICNkZWZpbmUgUENJX0VDQU1fT0ZGU0VUKGJ1cywgZGV2Zm4sIHdoZXJlKSBcCj4gICAgIFBDSUVf
RUNBTV9CVVMoYnVzLT5udW1iZXIpIHwgXAo+ICAgICBQQ0lFX0VDQU1fREVWRk4oZGV2Zm4pIHwg
XAo+ICAgICBQQ0lFX0VDQU1fUkVHKHdoZXJlKQoKTEdUTS4gVGhpcyB3YXMgb24gbXkgcmFkYXIs
IGJ1dCBub3Qgc29tZXRoaW5nIEkndmUgbG9va2VkIGF0LgoKVGhlcmUncyBhbHNvIGFhcmR2YXJr
IHdoaWNoIGlzbid0IEVDQU0sIGJ1dCBkb2VzIHRoZSBzYW1lIGNhbGN1bGF0aW9uLgpDYWxsIGl0
IGluZGlyZWN0IEVDQU06Cgpkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jOiNk
ZWZpbmUgUENJRV9DT05GX0JVUyhidXMpCiAgICAgICAgICAgICAgICAgKCgoYnVzKSAmIDB4ZmYp
IDw8IDIwKQpkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jLSNkZWZpbmUgUENJ
RV9DT05GX0RFVihkZXYpCiAgICAgICAgICAgICAgICAgKCgoZGV2KSAmIDB4MWYpIDw8IDE1KQpk
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jLSNkZWZpbmUgUENJRV9DT05GX0ZV
TkMoZnVuKQogICAgICAgICAgICAgICAgICgoKGZ1bikgJiAweDcpICA8PCAxMikKZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYy0jZGVmaW5lIFBDSUVfQ09ORl9SRUcocmVnKQog
ICAgICAgICAgICAgICAgICgocmVnKSAmIDB4ZmZjKQpkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aS1hYXJkdmFyay5jLSNkZWZpbmUgUENJRV9DT05GX0FERFIoYnVzLApkZXZmbiwgd2hlcmUpIFwK
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYy0gIChQQ0lFX0NPTkZfQlVTKGJ1
cykgfApQQ0lFX0NPTkZfREVWKFBDSV9TTE9UKGRldmZuKSkgICAgfCBcCmRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMtClBDSUVfQ09ORl9GVU5DKFBDSV9GVU5DKGRldmZuKSkg
fCBQQ0lFX0NPTkZfUkVHKHdoZXJlKSkKCkFuZCBWTUQ6CmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
dm1kLmMtICAgY2hhciBfX2lvbWVtICphZGRyID0gdm1kLT5jZmdiYXIgKwpkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3ZtZC5jOiAgICAgICAgICAgICAgICAgICAgICAgICgoYnVzLT5udW1iZXIgLQp2
bWQtPmJ1c25fc3RhcnQpIDw8IDIwKSArCmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvdm1kLmMtICAg
ICAgICAgICAgICAgICAgICAgICAgKGRldmZuIDw8IDEyKSArIHJlZzsKZHJpdmVycy9wY2kvY29u
dHJvbGxlci92bWQuYy0KCgpBbmQgYnJjbV9wY2llX2NmZ19pbmRleCgpLgoKUm9iCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

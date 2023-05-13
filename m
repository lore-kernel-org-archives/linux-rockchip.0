Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30874C77B7C
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 11:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WP1EX7xZTLnZNozrSyqumctX3DAJH2mVR1qPSCRcXKk=; b=aZ6X7k8+QGKIsp
	PiMYwwS7/NYSpkHDaA1DPjcT9Ti9MA2BQ6XcJgycQ0YEA4kf3BYe1+BI0gMhsB9IajpgNAVMbp+fm
	5OOKjpYAFq7zJGnRgugtbaborvb0VB+U3i/BykozPzMxsLj6ZaAsXRFE/1Zft+AQy3NNOoYQQe7rb
	1nlyJcrPCiMJ0ewHAaeIQqIh8JXpEhH2xL2Oa0Ta48ZNnVqpNF0+HAf4p7ptTHgAJz7jZym1OIYYF
	y8mfL4E8Zlhq/VckXfLGpK8Yplu5lzDLc//94KpgroaqhlBOtYqlguDVF/OFz/Ly+AWmvpHbqDS9D
	3FaVrHn4mcEFkmeWbCgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxnc0-00Eq7h-2I;
	Sat, 13 May 2023 11:40:32 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxnbx-00Eq3F-1Z;
	Sat, 13 May 2023 11:40:31 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bc2feb320so16718289a12.3;
        Sat, 13 May 2023 04:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683978024; x=1686570024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LZ9as5crGNXR2voKPpqJxT4w6t/Cg57+liuts81XblU=;
        b=QRZQDrrRh/JBWK+hNSXx3B4jHQtsZr3D8XA54ZDF/liiCBQhLHlFFB0kxkf0X/VpaG
         9AAXjiguK739cj0tJMYka+SeciWYqTO8FJPQBkEQ+I7OvW2HBmcgFtlzeKO/FigHqmSl
         TA31DTqXfn0XNziPt/VOkjOf7VdUy2giSFyT6FdlMkRSjE03II/hscWyNOBpVxm/+1kv
         T0vNrBQB8rH8VJ0T/EkMJe9odlIg61z7Z5nVRb2d7FQPApel2NXaxa9ri5VuaE2D2haP
         agwTwNQMBOaXitVGPIsR6gL5p6te2GcyW3jDkfBQpLePktCKyWCQ80kjVF48jy+E3TCm
         fCkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683978024; x=1686570024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LZ9as5crGNXR2voKPpqJxT4w6t/Cg57+liuts81XblU=;
        b=EtrcHdLKCKSKnWy3L64D+xMnLgjnaK5rnDGv4OTYDVO5zlaIEZJUUEj6CnrRPkC2pq
         IPZv9H1t1DQSkCBcxELgX3mwPAUholZLLPTToh14vgom1iYatXGWkRnjbPw5nm/k7Fb1
         7Fw0JCKK2C7MmDa/mrmI0GnQi/JZebZcApy9C2h+H9WXNk7qNiUaiiz0ksd2YYoh8BH+
         Xw5U3r4GFL2SK+5kMzop5K080Rs7MhPyzWqZDKXaXH0xlxn8mrMTX+4RWTpPqhQCKWCH
         KyJw6v0O5vdpCuScrGKje+JSfdSHq8WC4R3w7Vr2whylt6WNHGlB2fJzITsLCiqO7aBB
         RntA==
X-Gm-Message-State: AC+VfDzlCw3k8myGi2HPm9PKGbS+f7vhUN/eMLAgg1uvfqoL5+TPjazE
	F+hxkI+4ilwD5byrbFz9oREgZN+5DfuJFVJRCo4=
X-Google-Smtp-Source: ACHHUZ4MFzhA6lWlkhasxKlMtmwM5Hv/840hxpapsCu/tRKKN98PijFTddvJ+mCdeHQTPkuB8j5ZtG/lWGwZlfMpGq8=
X-Received: by 2002:a17:907:7dab:b0:96a:4f89:3916 with SMTP id
 oz43-20020a1709077dab00b0096a4f893916mr8403783ejc.58.1683978024297; Sat, 13
 May 2023 04:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <CSK8M39MQL2C.3S7JO031H0BA2@vincent-arch> <ZF7m1npzLZmawT8Y@bhelgaas>
In-Reply-To: <ZF7m1npzLZmawT8Y@bhelgaas>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 13 May 2023 07:40:12 -0400
Message-ID: <CAMdYzYqV72=pQa-U3a2N7MZ2ChBNL74QrxHQLbMZJxiftTK9sA@mail.gmail.com>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, kw@linux.com, heiko@sntech.de, 
	robh@kernel.org, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, 
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com, 
	linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, lpieralisi@kernel.org, 
	linux-arm-kernel@lists.infradead.org, Dan Johansen <strit@manjaro.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_044029_548789_0F92811F 
X-CRM114-Status: GOOD (  34.73  )
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

T24gRnJpLCBNYXkgMTIsIDIwMjMgYXQgOToyNOKAr1BNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBbK2NjIEFSTTY0IGZvbGtzLCBpbiBjYXNlIHlvdSBoYXZl
IGFib3J0IGhhbmRsaW5nIHRpcHM7IHRocmVhZCBhdDoKPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjMwNTA5MTUzOTEyLjUxNTIxOC0xLXZpbmNlbnpvcGFsYXp6b2RldkBnbWFpbC5jb21d
Cj4KPiBQaW5lNjQgUm9ja1BybzY0IHBhbmljcyB3aGlsZSBlbnVtZXJhdGluZyBzb21lIFBDSWUg
ZGV2aWNlcy4gIEFkZGluZyBhCj4gZGVsYXkgYXZvaWRzIHRoZSBwYW5pYy4gIE15IHRoZW9yeSBp
cyBhIFBDSWUgUmVxdWVzdCBSZXRyeSBTdGF0dXMgdG8gYQo+IFZlbmRvciBJRCBjb25maWcgcmVh
ZCBjYXVzZXMgYW4gYWJvcnQgdGhhdCB3ZSBkb24ndCBoYW5kbGUuCj4KPiA+IE9uIFR1ZSwgTWF5
IDA5LCAyMDIzIGF0IDA1OjM5OjEyUE0gKzAyMDAsIFZpbmNlbnpvIFBhbGF6em8gd3JvdGU6Cj4g
Pj4gLi4uCj4gPj4gWyAgICAxLjIyOTg1Nl0gU0Vycm9yIEludGVycnVwdCBvbiBDUFU0LCBjb2Rl
IDB4YmYwMDAwMDIgLS0gU0Vycm9yCj4gPj4gWyAgICAxLjIyOTg2MF0gQ1BVOiA0IFBJRDogMSBD
b21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS45LjktMi4wLU1BTkpBUk8tQVJNCj4gPj4gIzEK
PiA+PiBbICAgIDEuMjI5ODYyXSBIYXJkd2FyZSBuYW1lOiBQaW5lNjQgUm9ja1BybzY0IHYyLjEg
KERUKQo+ID4+IFsgICAgMS4yMjk4NjRdIHBzdGF0ZTogNjAwMDAwODUgKG5aQ3YgZGFJZiAtUEFO
IC1VQU8gQlRZUEU9LS0pCj4gPj4gWyAgICAxLjIyOTg2Nl0gcGMgOiByb2NrY2hpcF9wY2llX3Jk
X2NvbmYrMHhiNC8weDI3MAo+ID4+IFsgICAgMS4yMjk4NjhdIGxyIDogcm9ja2NoaXBfcGNpZV9y
ZF9jb25mKzB4MWI0LzB4MjcwCj4gPj4gLi4uCj4gPj4gWyAgICAxLjIyOTkzOV0gS2VybmVsIHBh
bmljIC0gbm90IHN5bmNpbmc6IEFzeW5jaHJvbm91cyBTRXJyb3IgSW50ZXJydXB0Cj4gPj4gLi4u
Cj4gPj4gWyAgICAxLjIyOTk1NV0gIG5taV9wYW5pYysweDhjLzB4OTAKPiA+PiBbICAgIDEuMjI5
OTU2XSAgYXJtNjRfc2Vycm9yX3BhbmljKzB4NzgvMHg4NAo+ID4+IFsgICAgMS4yMjk5NThdICBk
b19zZXJyb3IrMHgxNWMvMHgxNjAKPiA+PiBbICAgIDEuMjI5OTYwXSAgZWwxX2Vycm9yKzB4ODQv
MHgxMDAKPiA+PiBbICAgIDEuMjI5OTYyXSAgcm9ja2NoaXBfcGNpZV9yZF9jb25mKzB4YjQvMHgy
NzAKPiA+PiBbICAgIDEuMjI5OTY0XSAgcGNpX2J1c19yZWFkX2NvbmZpZ19kd29yZCsweDZjLzB4
ZDAKPiA+PiBbICAgIDEuMjI5OTY2XSAgcGNpX2J1c19nZW5lcmljX3JlYWRfZGV2X3ZlbmRvcl9p
ZCsweDM0LzB4MWIwCj4gPj4gWyAgICAxLjIyOTk2OF0gIHBjaV9zY2FuX3NpbmdsZV9kZXZpY2Ur
MHhhNC8weDE0NAo+Cj4gT24gRnJpLCBNYXkgMTIsIDIwMjMgYXQgMTI6NDY6MjFQTSArMDIwMCwg
VmluY2Vuem8gUGFsYXp6byB3cm90ZToKPiA+IC4uLiBJcyB0aGVyZSBhbnkgd2F5IHRvIHRlbGwg
dGhlIGtlcm5lbCAiaGV5IHdlIG5lZWQgc29tZSBtb3JlIHRpbWUKPiA+IGhlcmUiPwo+Cj4gV2Ug
ZW51bWVyYXRlIFBDSSBkZXZpY2VzIGJ5IHRyeWluZyB0byByZWFkIHRoZSBWZW5kb3IgSUQgb2Yg
ZXZlcnkKPiBwb3NzaWJsZSBkZXZpY2UgYWRkcmVzcyAoc2VlIHBjaV9zY2FuX3Nsb3QoKSkuICBP
biBQQ0llLCBpZiBhIGRldmljZQo+IGRvZXNuJ3QgZXhpc3QgYXQgdGhhdCBhZGRyZXNzLCB0aGUg
VmVuZG9yIElEIGNvbmZpZyByZWFkIHdpbGwgYmUKPiB0ZXJtaW5hdGVkIHdpdGggVW5zdXBwb3J0
ZWQgUmVxdWVzdCAoVVIpIHN0YXR1cy4gIFRoaXMgaXMgbm9ybWFsCj4gYW5kIGhhcHBlbnMgZXZl
cnkgdGltZSB3ZSBlbnVtZXJhdGUgZGV2aWNlcy4KPgo+IFRoZSBjcmFzaCBkb2Vzbid0IGhhcHBl
biBldmVyeSB0aW1lIHdlIGVudW1lcmF0ZSwgc28gSSBkb24ndCB0aGluawo+IHRoaXMgVVIgaXMg
dGhlIHByb2JsZW0uICBBbHNvLCBpZiBpdCAqd2VyZSogdGhlIHByb2JsZW0sIGFkZGluZyBhCj4g
ZGVsYXkgd291bGQgbm90IG1ha2UgYW55IGRpZmZlcmVuY2UuCgpJcyB0aGlzIGJlaGF2aW9yIGRp
ZmZlcmVudCBpZiB0aGVyZSBpcyBhIHN3aXRjaCBkZXZpY2UgZm9yd2FyZGluZyBvbgp0aGUgVVI/
IE9uIHJrMzM5OSBzd2l0Y2hlcyBhcmUgY29tcGxldGVseSBub24tZnVuY3Rpb25hbCBiZWNhdXNl
IG9mCnRoZSBwYW5pYywgd2hpY2ggaXMgb2JzZXJ2ZWQgaW4gdGhlIG91dHB1dCBvZiB0aGUgZG1l
c2cgaW4gWzJdIHdpdGgKdGhlIGhhY2sgcGF0Y2ggZW5hYmxlZC4gQ29uc2lkZXJpbmcgd2hhdCB5
b3UganVzdCBkZXNjcmliZWQgaXQgbG9va3MKbGlrZSB0aGUgZm9yd2FyZGVkIFVSIGZvciBlYWNo
IG5vbi1leGlzdGVudCBkZXZpY2UgYmVoaW5kIHRoZSBzd2l0Y2gKaXMgY2F1c2luZyBhbiBzZXJy
b3IuCgo+Cj4gVGhlcmUgKmlzKiBhIHdheSBmb3IgYSBQQ0llIGRldmljZSB0byBzYXkgIkkgbmVl
ZCBtb3JlIHRpbWUiLiAgSXQgZG9lcwo+IHRoaXMgYnkgcmVzcG9uZGluZyB0byB0aGF0IFZlbmRv
ciBJRCBjb25maWcgcmVhZCB3aXRoIFJlcXVlc3QgUmV0cnkKPiBTdGF0dXMgKFJSUywgYWthIENS
UyBpbiBvbGRlciBzcGVjcyksIHdoaWNoIG1lYW5zICJJJ20gbm90IHJlYWR5IHlldCwKPiBidXQg
SSB3aWxsIGJlIHJlYWR5IGluIHRoZSBmdXR1cmUuIiAgQWRkaW5nIGEgZGVsYXkgd291bGQgZGVm
aW5pdGVseQo+IG1ha2UgYSBkaWZmZXJlbmNlIGhlcmUsIHNvIG15IGd1ZXNzIGlzIHRoaXMgaXMg
d2hhdCdzIGhhcHBlbmluZy4KPgo+IE1vc3Qgcm9vdCBjb21wbGV4ZXMgcmV0dXJuIH4wIGRhdGEg
dG8gdGhlIENQVSB3aGVuIGEgY29uZmlnIHJlYWQKPiB0ZXJtaW5hdGVzIHdpdGggVVIgb3IgUlJT
LiAgSXQgc291bmRzIGxpa2Ugcm9ja2NoaXAgZG9lcyB0aGlzIGZvciBVUgo+IGJ1dCBwb3NzaWJs
eSBub3QgZm9yIFJSUy4KPgo+IFRoZXJlIGlzIGEgIlJSUyBTb2Z0d2FyZSBWaXNpYmlsaXR5IiBm
ZWF0dXJlLCB3aGljaCBpcyBzdXBwb3NlZCB0bwo+IHR1cm4gdGhlIFJSUyBpbnRvIGEgc3BlY2lh
bCB2YWx1ZSAoVmVuZG9yIElEID09IDB4MDAwMSksIGJ1dCBwZXIgWzFdLAo+IHJvY2tjaGlwIGRv
ZXNuJ3Qgc3VwcG9ydCBpdCAobHNwY2kgY2FsbHMgaXQgIkNSU1Zpc2libGUiKS4KPgo+IEJ1dCB0
aGUgQ1BVIGxvYWQgaW5zdHJ1Y3Rpb24gY29ycmVzcG9uZGluZyB0byB0aGUgY29uZmlnIHJlYWQg
aGFzIHRvCj4gY29tcGxldGUgYnkgcmVhZGluZyAqc29tZXRoaW5nKiBvciBlbHNlIGJlIGFib3J0
ZWQuICBJdCBzb3VuZHMgbGlrZQo+IGl0J3MgYWJvcnRlZCBpbiB0aGlzIGNhc2UuICBJIGRvbid0
IGtub3cgdGhlIGFybTY0IGRldGFpbHMsIGJ1dCBpZiB3ZQo+IGNvdWxkIGNhdGNoIHRoYXQgYWJv
cnQgYW5kIGRldGVybWluZSB0aGF0IGl0IHdhcyBhbiBSUlMgYW5kIG5vdCBhIFVSLAo+IG1heWJl
IHdlIGNvdWxkIGZhYnJpY2F0ZSB0aGUgbWFnaWMgUlJTIDB4MDAwMSB2YWx1ZS4KPgo+IGlteDZx
X3BjaWVfYWJvcnRfaGFuZGxlcigpIGRvZXMgc29tZXRoaW5nIGxpa2UgdGhhdCwgYWx0aG91Z2gg
SSB0aGluawo+IGl0J3MgZm9yIGFybTMyLCBub3QgYXJtNjQuICBCdXQgb2J2aW91c2x5IHdlIGFs
cmVhZHkgY2F0Y2ggdGhlIGFib3J0Cj4gZW5vdWdoIHRvIGR1bXAgdGhlIHJlZ2lzdGVyIHN0YXRl
IGFuZCBwYW5pYywgc28gbWF5YmUgdGhlcmUncyBhIHdheSB0bwo+IGV4dGVuZCB0aGF0PwoKUGVy
aGFwcyBhIGhvb2sgbWVjaGFuaXNtIHRoYXQgYWxsb3dzIGRyaXZlcnMgdG8gcmVnaXN0ZXIgd2l0
aCB0aGUKc2Vycm9yIGhhbmRsZXIgYW5kIG9mZmVyIHRvIGhhbmRsZSBzcGVjaWZpYyBlcnJvcnMg
YmVmb3JlIHRoZSBnZW5lcmljCmNvZGUgY2F1c2VzIHRoZSBzeXN0ZW0gcGFuaWM/CgpWZXJ5IFJl
c3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXBjaS9DQU1kWXpZcW4zTDd4LXZjK19LNmpHMEVWVGlQR2J6OHBRLU4xUTFtUmJjVlhFODIyWWdA
bWFpbC5nbWFpbC5jb20vCgo+Cj4gQmpvcm4KPgo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1wY2kvQ0FNZFl6WXBPRkFWcTMwTitPMmdPeFhpUnRwb0hwYWtGZzNMS3EzVEVacTRT
NlkweTBnQG1haWwuZ21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

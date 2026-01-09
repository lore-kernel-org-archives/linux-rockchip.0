Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 920E1D232C5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 05:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZtnku0ZLXVYBY15PKdDSjhmKV9Vfaw5uyjGeFxM2IY=; b=4S08B4HIGz3dr3
	1gNpwInHHyBFVbJI/2LjwzYB38H8+Nn9Wu/UQ1NhLYyn3NJTZecGqxhirGnA1/myPUjRG1GxErxtH
	TFmBYPqe74PLZbQTBEnlX58FeNlLhojqmcnexDrAeSM3eBQJuPlyyMTA/TitLZeHNMGmIgISSy62n
	AcxA34O9ullmSfRPs8oXZz3O3L1yka1zgHAd4lv5oST5niEuw+yOZxKprx/Mwl2omb2/PSY9n1If5
	/qAwav2lJrqPub958pAAnmntASVUgwjzgVELOSIDRUJxjpkmJ6gON9MGgGaPguq4kFullo0VxPfSJ
	IZjC43XPwM1lCCXshf1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve5TI-00000001UOG-2dFE;
	Fri, 09 Jan 2026 05:55:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve5TG-00000001UMz-3PSu
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 05:55:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C6BE043AA6;
	Fri,  9 Jan 2026 05:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E32DC4CEF1;
	Fri,  9 Jan 2026 05:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767938135;
	bh=Xmah2fsBv6aaemUTf9tH7mTXFAvunSW/EeH/0G/8mBM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mkPVPG6/6Loqb8VtpL4nPEI9uLfUygfu6zGe66kKr3RRxraMlyyFYEuwhX15q/3vF
	 ONNH5+5dpD5E5R5NqvHrEbm+dNWVI05QS3V3wl88h+pyQMDnpwHuMGqFT6MP5NDB6H
	 TUgRl+Sy+hsdQyyr95jmjfzJqxTZiCMh5/frAijKg9+rITEs9uFW5Fulfk+EmEZfma
	 x2XT3rP83fpI1WTziuMAPFBLxOhf8avvr5Mi2YIalTheo0JAGTdBySimG/KDWIaOYh
	 NPW50NJwOPSv9EdZ+BWcODIDtILIh9MMowZ8MHgwru5oUck6OAl7GjTK9a0GCqEORx
	 DERmT6he0DPFQ==
Date: Fri, 9 Jan 2026 11:25:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
Message-ID: <uev63wla4msmmhww4j3t2jim7lhvxjikvujwpxiblg5mz7jwwa@2jucxkbtcsfm>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
 <1767929389-143957-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1767929389-143957-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_215538_929420_1A10723A 
X-CRM114-Status: GOOD (  23.47  )
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMTE6Mjk6NDlBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFJvY2tjaGlwIHBsYXRmb3JtcyBwcm92aWRlIGEgNjR4NCBieXRlcyBkZWJ1ZyBGSUZPIHRv
IHRyYWNlIHRoZQo+IExUU1NNIGhpc3RvcnkuIEFueSBMVFNTTSBjaGFuZ2Ugd2lsbCBiZSByZWNv
cmRlZC4gSXQncyB1c2VyZnVsCj4gZm9yIGRlYnVnIHB1cnBvc2UsIGZvciBleGFtcGxlIGxpbmsg
ZmFpbHVyZSwgZXRjLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSB1c2UgdHJhY2Vwb2lu
dAo+IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCA5
MiArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkyIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jCj4gaW5kZXggMzUyZjUxMy4uYmU5NjM5YWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTIyLDYgKzIyLDggQEAKPiAg
I2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVn
bWFwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ICsjaW5jbHVkZSA8bGludXgvd29y
a3F1ZXVlLmg+Cj4gKyNpbmNsdWRlIDx0cmFjZS9ldmVudHMvcGNpX2NvbnRyb2xsZXIuaD4KPiAg
Cj4gICNpbmNsdWRlICIuLi8uLi9wY2kuaCIKPiAgI2luY2x1ZGUgInBjaWUtZGVzaWdud2FyZS5o
Igo+IEBAIC03Myw2ICs3NSwxOCBAQAo+ICAjZGVmaW5lICBQQ0lFX0NMSUVOVF9DRE1fUkFTREVT
X1RCQV9MMV8xCUJJVCg0KQo+ICAjZGVmaW5lICBQQ0lFX0NMSUVOVF9DRE1fUkFTREVTX1RCQV9M
MV8yCUJJVCg1KQo+ICAKPiArLyogRGVidWcgRklGTyBpbmZvcm1hdGlvbiAqLwo+ICsjZGVmaW5l
IFBDSUVfQ0xJRU5UX0RCR19GSUZPX01PREVfQ09OCTB4MzEwCj4gKyNkZWZpbmUgIFBDSUVfQ0xJ
RU5UX0RCR19FTgkJMHhmZmZmMDAwNwo+ICsjZGVmaW5lICBQQ0lFX0NMSUVOVF9EQkdfRElTCQkw
eGZmZmYwMDAwCj4gKyNkZWZpbmUgUENJRV9DTElFTlRfREJHX0ZJRk9fUFROX0hJVF9EMAkweDMy
MAo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX0RCR19GSUZPX1BUTl9ISVRfRDEJMHgzMjQKPiArI2Rl
ZmluZSBQQ0lFX0NMSUVOVF9EQkdfRklGT19UUk5fSElUX0QwCTB4MzI4Cj4gKyNkZWZpbmUgUENJ
RV9DTElFTlRfREJHX0ZJRk9fVFJOX0hJVF9EMQkweDMyYwo+ICsjZGVmaW5lICBQQ0lFX0NMSUVO
VF9EQkdfVFJBTlNJVElPTl9EQVRBIDB4ZmZmZjAwMDAKPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9E
QkdfRklGT19TVEFUVVMJMHgzNTAKPiArI2RlZmluZSBQQ0lFX0RCR19MVFNTTV9ISVNUT1JZX0NO
VAk2NAo+ICsKPiAgLyogSG90IFJlc2V0IENvbnRyb2wgUmVnaXN0ZXIgKi8KPiAgI2RlZmluZSBQ
Q0lFX0NMSUVOVF9IT1RfUkVTRVRfQ1RSTAkweDE4MAo+ICAjZGVmaW5lICBQQ0lFX0xUU1NNX0FQ
UF9ETFkyX0VOCQlCSVQoMSkKPiBAQCAtOTYsNiArMTEwLDcgQEAgc3RydWN0IHJvY2tjaGlwX3Bj
aWUgewo+ICAJc3RydWN0IGlycV9kb21haW4gKmlycV9kb21haW47Cj4gIAljb25zdCBzdHJ1Y3Qg
cm9ja2NoaXBfcGNpZV9vZl9kYXRhICpkYXRhOwo+ICAJYm9vbCBzdXBwb3J0c19jbGtyZXE7Cj4g
KwlzdHJ1Y3QgZGVsYXllZF93b3JrIHRyYWNlX3dvcms7Cj4gIH07Cj4gIAo+ICBzdHJ1Y3Qgcm9j
a2NoaXBfcGNpZV9vZl9kYXRhIHsKPiBAQCAtMjA2LDYgKzIyMSw3OSBAQCBzdGF0aWMgZW51bSBk
d19wY2llX2x0c3NtIHJvY2tjaGlwX3BjaWVfZ2V0X2x0c3NtKHN0cnVjdCBkd19wY2llICpwY2kp
Cj4gIAlyZXR1cm4gcm9ja2NoaXBfcGNpZV9nZXRfbHRzc21fcmVnKHJvY2tjaGlwKSAmIFBDSUVf
TFRTU01fU1RBVFVTX01BU0s7Cj4gIH0KPiAgCj4gKyNpZmRlZiBDT05GSUdfVFJBQ0lORwo+ICtz
dGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2x0c3NtX3RyYWNlX3dvcmsoc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQo+ICt7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBjb250
YWluZXJfb2Yod29yaywgc3RydWN0IHJvY2tjaGlwX3BjaWUsCj4gKwkJCQkJCXRyYWNlX3dvcmsu
d29yayk7Cj4gKwlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gJnJvY2tjaGlwLT5wY2k7Cj4gKwllbnVt
IGR3X3BjaWVfbHRzc20gc3RhdGU7Cj4gKwl1MzIgdmFsLCByYXRlLCBsMXNzLCBsb29wLCBwcmV2
X3ZhbCA9IERXX1BDSUVfTFRTU01fVU5LTk9XTjsKClJldmVyc2UgWG1hcyBvcmRlciBwbGVhc2Uu
Cgo+ICsKPiArCWZvciAobG9vcCA9IDA7IGxvb3AgPCBQQ0lFX0RCR19MVFNTTV9ISVNUT1JZX0NO
VDsgbG9vcCsrKSB7CgpzL2xvb3AvaT8KCj4gKwkJdmFsID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9h
cGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0RCR19GSUZPX1NUQVRVUyk7Cj4gKwkJcmF0ZSA9ICh2
YWwgJiBHRU5NQVNLKDIyLCAyMCkpID4+IDIwOwo+ICsJCWwxc3MgPSAodmFsICYgR0VOTUFTSygx
MCwgOCkpID4+IDg7Cj4gKwkJdmFsICY9IFBDSUVfTFRTU01fU1RBVFVTX01BU0s7CgpDYW4geW91
IHVzZSBGSUVMRF8gbWFjcm9zIGhlcmU/Cgo+ICsKPiArCQkvKiBUd28gY29uc2VjdXRpdmUgaWRl
bnRpY2FsIExUU1NNIG1lYW5zIGludmFsaWQgc3Vic2VxdWVudCBkYXRhICovCgpJbnRlcmVzdGlu
Zy4gRG9lcyB0aGUgaGFyZHdhcmUgbWFpbnRhaW4gYSBjb3VudGVyIHRvIHRyYWNrIHRoZSByZWFk
cz8gU28gb25jZQp5b3UgYnJlYWsgb3V0IG9mIHRoZSBsb29wIGFuZCByZWFkIGl0IGFmdGVyIDVz
LCB5b3UnbGwgc3RhcnQgZnJvbSB3aGVyZSB5b3UgbGVmdAppLmUuLCB0aGUgZHVwbGljYXRlIGVu
dHJ5IG9yIGZyb20gdGhlIHN0YXJ0IG9mIHRoZSBjb3VudGVyIGFnYWluPwoKPiArCQlpZiAoKGxv
b3AgPiAwICYmIHZhbCA9PSBwcmV2X3ZhbCkgfHwgdmFsID4gRFdfUENJRV9MVFNTTV9SQ1ZSWV9F
UTMpCj4gKwkJCWJyZWFrOwo+ICsKPiArCQlzdGF0ZSA9IHByZXZfdmFsID0gdmFsOwo+ICsJCWlm
ICh2YWwgPT0gRFdfUENJRV9MVFNTTV9MMV9JRExFKSB7Cj4gKwkJCWlmIChsMXNzID09IDIpCj4g
KwkJCQlzdGF0ZSA9IERXX1BDSUVfTFRTU01fTDFfMjsKPiArCQkJZWxzZSBpZiAobDFzcyA9PSAx
KQo+ICsJCQkJc3RhdGUgPSBEV19QQ0lFX0xUU1NNX0wxXzE7CgpJIGJlbGlldmUgTDEuMCBpcyBu
b3Qgc3VwcG9ydGVkLgoKPiArCQl9Cj4gKwo+ICsJCXRyYWNlX3BjaWVfbHRzc21fc3RhdGVfdHJh
bnNpdGlvbihkZXZfbmFtZShwY2ktPmRldiksCj4gKwkJCQkJZHdfcGNpZV9sdHNzbV9zdGF0dXNf
c3RyaW5nKHN0YXRlKSwKPiArCQkJCQkoKHJhdGUgKyAxKSA+IHBjaS0+bWF4X2xpbmtfc3BlZWQp
ID8KPiArCQkJCQlQQ0lfU1BFRURfVU5LTk9XTiA6IFBDSUVfU1BFRURfMl81R1QgKyByYXRlKTsK
PiArCX0KPiArCj4gKwlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnJvY2tjaGlwLT50cmFjZV93b3Jr
LCBtc2Vjc190b19qaWZmaWVzKDUwMDApKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgcm9ja2No
aXBfcGNpZV9sdHNzbV90cmFjZShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsCj4gKwkJ
CQkgICAgICBib29sIGVuKQoKcy9lbi9lbmFibGUKCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

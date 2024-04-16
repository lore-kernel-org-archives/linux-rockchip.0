Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C3FAC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 09:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Oi7V66xaZqsUk6lyzSqjp6bxaUEGgb1mTiGcmTvsHM=; b=kSf+gR8gZGj3/l
	Vt1fSBxgiwNKB3i/0Z+vzXr+GhPk18Pj6uYZ8xgF/VlWygDn9s+AKTJHRZfxWGHIoOPLrRWtNn5Jr
	A3OOUhzhk3ieB6YyeJEBpLomSYA+3OYL0E06tizhClznslT8fQYIn/e/ol7A6BvDNZ86zU59eyygA
	hK3mzedT4zCa/2M9h86fMmO8pBQ5mAxLbENv3v2n8AGwlKeSdWNkaZb184No1BQ2nobzTExlyfpfX
	MMpXeJvidl1d5w+On4cgAhLNqkeFJwIYWLXjDToZQ2/GzLV51y4g8xEjoqwDnDI942aIJb3Ix7xkn
	SrmzNJl/wlPnqF/G7ecw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rweuv-0000000BZiR-4AII;
	Tue, 16 Apr 2024 09:15:53 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rweus-0000000BZhc-34m0
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Apr 2024 09:15:52 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1e36b7e7dd2so33017845ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Apr 2024 02:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713258949; x=1713863749; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rk1WQ+3QpO/6QliySx3KZ6AYelQe+QF9yeCh3moO8CY=;
        b=UtdO0Hja0RHVRTxpT5SxxMTfmm7uhRrQlhHO2uV8M+CizqpNPX68ibjLtfQ6tH8P0l
         cJMwEHJYVjuW+BNV5DHtry9esjiG4flqOck0uTzIBYKmpI6VgLfov/Oc6l68Bu7daK47
         Eg8VHOxOX5WWzgcRdxRoJr+eHSs5qLo6DC0TtFtRckj/f2LAkQ8XsI5B3pf0qJ/rUyGu
         /4BoaP0wt4hmW1CBcFdbH6HJyM19W3iSg7ARADyhjHaswKNfTZatUz+sMI4HIzK65KRo
         Fvv15PKljUq2lWCWjsBtmGcloBZJDyYM3h3+hNARI9ostwnWVfugkC0QEfOK64ce88gh
         PCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713258949; x=1713863749;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rk1WQ+3QpO/6QliySx3KZ6AYelQe+QF9yeCh3moO8CY=;
        b=cKV+bYsrMsTSh4zqPJNhX87DvzqEJmdMMdB8MDfrw9BiLeMKk12dEp835BA4Fchr/V
         iQHex5kULIzET+IFcWc3JNcEmbp+RR2DhCk0V7Sje/8WkF7fL2Hz8apWnilroyzLuSrE
         OExNPqYjUjdqngGRrgIV3BvU7taa/3tcAgCUOsOYmh6BYkQbB6Jf0AfLRffIWIVsNxm7
         cdkVMhEmjGCNdL/LXXwzLSX7w8pdVMfcOtG5CIheCOruu+YrbnkSWgXgWx/vpHCEfOUe
         z6k0Bziv4PydgMta23xKe1nocE/+C3JGKyFqUkzdCZhnFb3CD+KJWFIbuKP9yHVChlGP
         SaFA==
X-Forwarded-Encrypted: i=1; AJvYcCUInYjIRwHAGviJw31U+cOvpUlX7UqjUbhuP6Va0ibucba+aYAeav1alFKHsB1mEOOl2Z9OxUwmBn09z2bhyUXT8EA9iVA1VBihOl8yQuXSLale
X-Gm-Message-State: AOJu0YxP+K0+3Ar7EBvdEcxqA+T+xrFtfwOqePvD+GLEzcFSxgROBBD8
	WHxIit2A+EQtnpD/aoC75vWVtaw+zdFdFOt+DJ3PTvwywuNLfxU1sbdqlviBfQ==
X-Google-Smtp-Source: AGHT+IGJRCNlmDxyYYpADaPdST7LOgSRNL4oGeHhdQUfIc//HnzuAijx9v/ViY50hJoABvTNWua86A==
X-Received: by 2002:a17:903:41c9:b0:1e4:8870:7758 with SMTP id u9-20020a17090341c900b001e488707758mr12202867ple.39.1713258948828;
        Tue, 16 Apr 2024 02:15:48 -0700 (PDT)
Received: from thinkpad ([120.56.207.234])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e5cb00b001e20587b552sm9323787plf.163.2024.04.16.02.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 02:15:48 -0700 (PDT)
Date: Tue, 16 Apr 2024 14:45:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	mhi@lists.linux.dev, stable@vger.kernel.org,
	Slark Xiao <slark_xiao@163.com>
Subject: Re: [PATCH] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting
 ep_gpio
Message-ID: <20240416091542.GA2454@thinkpad>
References: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
 <Zh4fkbQTh0Z1GNGK@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zh4fkbQTh0Z1GNGK@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_021550_821597_316E1219 
X-CRM114-Status: GOOD (  31.75  )
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

T24gVHVlLCBBcHIgMTYsIDIwMjQgYXQgMDg6NDk6NTNBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIEFwciAxNiwgMjAyNCBhdCAxMToxMjozNUFNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBSb2NrY2hpcCBwbGF0Zm9ybXMgdXNlICdHUElPX0FD
VElWRV9ISUdIJyBmbGFnIGluIHRoZSBkZXZpY2V0cmVlIGRlZmluaXRpb24KPiA+IGZvciBlcF9n
cGlvLiBUaGlzIG1lYW5zLCB3aGF0ZXZlciB0aGUgbG9naWNhbCB2YWx1ZSBzZXQgYnkgdGhlIGRy
aXZlciBmb3IKPiA+IHRoZSBlcF9ncGlvLCBwaHlzaWNhbCBsaW5lIHdpbGwgb3V0cHV0IHRoZSBz
YW1lIGxvZ2ljIGxldmVsLgo+ID4gCj4gPiBGb3IgaW5zdGFuY2UsCj4gPiAKPiA+IAlncGlvZF9z
ZXRfdmFsdWVfY2Fuc2xlZXAocm9ja2NoaXAtPmVwX2dwaW8sIDApOyAtLT4gTGV2ZWwgbG93Cj4g
PiAJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHJvY2tjaGlwLT5lcF9ncGlvLCAxKTsgLS0+IExl
dmVsIGhpZ2gKPiA+IAo+ID4gQnV0IHdoaWxlIHJlcXVlc3RpbmcgdGhlIGVwX2dwaW8sIEdQSU9E
X09VVF9ISUdIIGZsYWcgaXMgY3VycmVudGx5IHVzZWQuCj4gPiBOb3csIHRoaXMgYWxzbyBjYXVz
ZXMgdGhlIHBoeXNpY2FsIGxpbmUgdG8gb3V0cHV0ICdoaWdoJyBjcmVhdGluZyB0cm91YmxlCj4g
PiBmb3IgZW5kcG9pbnQgZGV2aWNlcyBkdXJpbmcgaG9zdCByZWJvb3QuCj4gPiAKPiA+IFdoZW4g
aG9zdCByZWJvb3QgaGFwcGVucywgdGhlIGVwX2dwaW8gd2lsbCBpbml0aWFsbHkgb3V0cHV0ICds
b3cnIGR1ZSB0bwo+ID4gdGhlIEdQSU8gZ2V0dGluZyByZXNldCB0byBpdHMgUE9SIHZhbHVlLiBU
aGVuIGR1cmluZyBob3N0IGNvbnRyb2xsZXIgcHJvYmUsCj4gPiBpdCB3aWxsIG91dHB1dCAnaGln
aCcgZHVlIHRvIEdQSU9EX09VVF9ISUdIIGZsYWcuIFRoZW4gZHVyaW5nCj4gPiByb2NrY2hpcF9w
Y2llX2hvc3RfaW5pdF9wb3J0KCksIGl0IHdpbGwgZmlyc3Qgb3V0cHV0ICdsb3cnIGFuZCB0aGVu
ICdoaWdoJwo+ID4gaW5kaWNhdGluZyB0aGUgY29tcGxldGlvbiBvZiBjb250cm9sbGVyIGluaXRp
YWxpemF0aW9uLgo+ID4gCj4gPiBPbiB0aGUgZW5kcG9pbnQgc2lkZSwgZWFjaCBvdXRwdXQgJ2xv
dycgb2YgZXBfZ3BpbyBpcyBhY2NvdW50ZWQgZm9yIFBFUlNUIwo+ID4gYXNzZXJ0IGFuZCAnaGln
aCcgZm9yIFBFUlNUIyBkZWFzc2VydC4gV2l0aCB0aGUgYWJvdmUgbWVudGlvbmVkIGZsb3cgZHVy
aW5nCj4gPiBob3N0IHJlYm9vdCwgZW5kcG9pbnQgd2lsbCB3aXRuZXNzIGJlbG93IHN0YXRlIGNo
YW5nZXMgZm9yIFBFUlNUIzoKPiA+IAo+ID4gCSgxKSBQRVJTVCMgYXNzZXJ0IC0gR1BJTyBQT1Ig
c3RhdGUKPiA+IAkoMikgUEVSU1QjIGRlYXNzZXJ0IC0gR1BJT0RfT1VUX0hJR0ggd2hpbGUgcmVx
dWVzdGluZyBHUElPCj4gPiAJKDMpIFBFUlNUIyBhc3NlcnQgLSByb2NrY2hpcF9wY2llX2hvc3Rf
aW5pdF9wb3J0KCkKPiA+IAkoNCkgUEVSU1QjIGRlYXNzZXJ0IC0gcm9ja2NoaXBfcGNpZV9ob3N0
X2luaXRfcG9ydCgpCj4gPiAKPiA+IE5vdyB0aGUgdGltZSBpbnRlcnZhbCBiZXR3ZWVuICgyKSBh
bmQgKDMpIGlzIHZlcnkgc2hvcnQgYXMgYm90aCBoYXBwZW4KPiA+IGR1cmluZyB0aGUgZHJpdmVy
IHByb2JlKCksIGFuZCB0aGlzIHJlc3VsdHMgaW4gYSByYWNlIGluIHRoZSBlbmRwb2ludC4KPiA+
IEJlY2F1c2UsIGJlZm9yZSBjb21wbGV0aW5nIHRoZSBQRVJTVCMgZGVhc3NlcnRpb24gaW4gKDIp
LCBlbmRwb2ludCBnb3QKPiA+IGFub3RoZXIgUEVSU1QjIGFzc2VydCBpbiAoMykuCj4gPiAKPiA+
IEEgcHJvcGVyIHdheSB0byBmaXggdGhpcyBpc3N1ZSBpcyB0byBjaGFuZ2UgdGhlIEdQSU9EX09V
VF9ISUdIIGZsYWcgaW4gKDIpCj4gPiB0byBHUElPRF9PVVRfTE9XLiBCZWNhdXNlIHRoZSB1c3Vh
bCBjb252ZW50aW9uIGlzIHRvIHJlcXVlc3QgdGhlIEdQSU8gd2l0aAo+ID4gYSBzdGF0ZSBjb3Jy
ZXNwb25kaW5nIHRvIGl0cyAnaW5pdGlhbC9kZWZhdWx0JyB2YWx1ZSBhbmQgbGV0IHRoZSBkcml2
ZXIKPiA+IGNoYW5nZSB0aGUgc3RhdGUgb2YgdGhlIEdQSU8gd2hlbiByZXF1aXJlZC4KPiA+IAo+
ID4gQXMgcGVyIHRoYXQsIHRoZSBlcF9ncGlvIHNob3VsZCBiZSByZXF1ZXN0ZWQgd2l0aCBHUElP
RF9PVVRfTE9XIGFzIGl0Cj4gPiBjb3JyZXNwb25kcyB0byB0aGUgUE9SIHZhbHVlIG9mICcwJyAo
UEVSU1QjIGFzc2VydCBpbiB0aGUgZW5kcG9pbnQpLiBUaGVuCj4gPiB0aGUgZHJpdmVyIGNhbiBj
aGFuZ2UgdGhlIHN0YXRlIG9mIHRoZSBlcF9ncGlvIGxhdGVyIGluCj4gPiByb2NrY2hpcF9wY2ll
X2hvc3RfaW5pdF9wb3J0KCkgYXMgcGVyIHRoZSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZS4KPiA+
IAo+ID4gVGhpcyBmaXhlcyB0aGUgZmlybXdhcmUgY3Jhc2ggaXNzdWUgaW4gUWNvbSBiYXNlZCBt
b2RlbXMgY29ubmVjdGVkIHRvCj4gPiBSb2NrcHJvNjQgYmFzZWQgYm9hcmQuCj4gPiAKPiA+IENj
OiAgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgNC45Cj4gPiBSZXBvcnRlZC1ieTogU2xhcmsg
WGlhbyA8c2xhcmtfeGlhb0AxNjMuY29tPgo+ID4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9taGkvMjAyNDA0MDIwNDU2NDcuR0cyOTMzQHRoaW5rcGFkLwo+ID4gRml4ZXM6IGU3N2Y4
NDdkZjU0YyAoIlBDSTogcm9ja2NoaXA6IEFkZCBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgc3Vw
cG9ydCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gCj4gUmV2aWV3ZWQtYnk6IE5pa2xh
cyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IAo+IAo+IEkgc2VudCBhIHNpbWlsYXIgZml4
IGZvciB0aGUgRFdDLWJhc2VkIHJvY2tjaGlwIGRyaXZlciBhIGZldyB3ZWVrcyBhZ286Cj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjQwMzI3MTUyNTMxLjgxNDM5Mi0xLWNh
c3NlbEBrZXJuZWwub3JnLwo+IAoKV2hhdCBhIGNvaW5jaWRlbmNlIDopCgo+IElmIHlvdXIgZml4
IGlzIHBpY2tlZCB1cCwgaXQgd291bGQgYmUgbmljZSBpZiBtaW5lIGdvdCBwaWNrZWQgdXAgYXMg
d2VsbCwKPiBzdWNoIHRoYXQgYm90aCBkcml2ZXJzIGdldCBmaXhlZC4KPiAKCkkgY2FuIHNlZSB0
aGUgc2FtZSBpc3N1ZSBpbiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWhpc3RiLmMg
YnV0IHRoZQpzZXZlcml0eSBpcyBoaWdoIGluIHRoYXQuIFRoZSBkcml2ZXIgYXNzdW1lcyB0aGF0
IHRoZSBQRVJTVCMgcG9sYXJpdHkgaXMKQUNUSVZFX0xPVyB3aGlsZSBwb3BsYXIgZGV2aWNldHJl
ZSBkZWZpbmVzIEFDVElWRV9ISUdIIFsxXS4gQW5kIHRoZXJlIGlzIG5vCmV4dGVybmFsIHBvbGFy
aXR5IGludmVyc2lvbiBpbiB0aGUgUENCLgoKSSBkb24ndCBrbm93IGlmIGFueW9uZSBldmVyIHZh
bGlkYXRlZCBQQ0llIG9uIHRoYXQgYm9hcmQuIEkgd2lsbCBjaGVjawppbnRlcm5hbGx5LgoKQnV0
IHRoaXMgc2l0dWF0aW9uIGlzIG5vdCBpZGVhbCBJTU8uIFRoZSBkcml2ZXJzIGFuZCBEVHMgYXJl
IG5vdCBjb25zaXN0ZW50Cncuci50IFBFUlNUIyBhbmQgV0FLRSMgaGFuZGxpbmcuCgotIE1hbmkK
ClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM3OThj
djIwMC1wb3BsYXIuZHRzI24xODIKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

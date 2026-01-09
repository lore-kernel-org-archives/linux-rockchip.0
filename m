Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A41D232E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 07:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmkcH63wPA62PlYoEtfXB9WSC3NHv7ImTSFPcxFyrIw=; b=WswTEW06jLcVmU
	qZ3lNtYwqSZYDu2TVSpPj8lTeH04Izm4B2LZiQYC82SXdVMY/ZViAdCa1QqvWIktk/0X8qE9QnaUs
	2pAtf+/eP8xNE7Ab9tDm55ysKW5Pdb3vnrIKZAusgF5TjVU0fqNh+FYYV3TbtF80rRYCCOCw5BuF4
	aJn65qdE/0DlDvzOjd2s8ssFdkiLtLJMvtlFAHA5sHFHEodLYrDl3Yh6YQgV5ij9idxdLdqBp6rFp
	Le6LFFx7P8e9tt9y7+XOYaPH/0dlZ0t8VwBwNwiB9sPkFG13NaquvzJnW0JYa/73V7sSZbcUpN5lU
	NLBmQf+L90Lb460fRoPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve704-00000001kRD-2cj0;
	Fri, 09 Jan 2026 07:33:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve702-00000001kQG-1GEF
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 07:33:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8499844065;
	Fri,  9 Jan 2026 07:33:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7540C19421;
	Fri,  9 Jan 2026 07:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767944013;
	bh=YD8BBxsP8yyonhYcxXOQeNujcleXzXA99h7hR1PrpUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gF84Q7a10ypZYFbesF8ARMjjzzwG7BWKjIDSNTQYc3jFHIcoe9xn0f/qifNDkrkwu
	 shObJouqqNUPrTlziji0M0c4vGhxsswMPs/rAj0qgyLg/Qs5VzeEU40b2iBUtn3boA
	 Podpos9lf3tFJB0nss0jq2LTU1AGILfx1oEmWL5n/vqHjSBZy2s74LM/OGF2tvGWzF
	 kWE+1M79MvXGs8/uvHp4A87SGQUAzWZI53RyD+7PsZ1s6EnliHn+6/CvL8dw8+l6WA
	 y740RPIuMcgyiXVSNc/3wC6nHQkHlwfAlKhKEBl1LCJa/udsFriUAhMI8rdxqZQEQD
	 Rbo/6XVJjsQ2g==
Date: Fri, 9 Jan 2026 13:03:26 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
Message-ID: <z22h6xnioqcbnwszpxaip4rjqxkx45fg6wd4btliztr2bcvpiq@2pf625gvadmv>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
 <1767929389-143957-4-git-send-email-shawn.lin@rock-chips.com>
 <uev63wla4msmmhww4j3t2jim7lhvxjikvujwpxiblg5mz7jwwa@2jucxkbtcsfm>
 <dddbcb37-68d4-4ccb-9897-b1e5a4b41be7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dddbcb37-68d4-4ccb-9897-b1e5a4b41be7@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_233334_377218_A0585DA7 
X-CRM114-Status: GOOD (  31.59  )
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMDI6MjI6MTBQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI2LzAxLzA5IOaYn+acn+S6lCAxMzo1NSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IOWGmemBkzoKPiA+IE9uIEZyaSwgSmFuIDA5LCAyMDI2IGF0IDExOjI5OjQ5QU0gKzA4MDAsIFNo
YXduIExpbiB3cm90ZToKPiA+ID4gUm9ja2NoaXAgcGxhdGZvcm1zIHByb3ZpZGUgYSA2NHg0IGJ5
dGVzIGRlYnVnIEZJRk8gdG8gdHJhY2UgdGhlCj4gPiA+IExUU1NNIGhpc3RvcnkuIEFueSBMVFNT
TSBjaGFuZ2Ugd2lsbCBiZSByZWNvcmRlZC4gSXQncyB1c2VyZnVsCj4gPiA+IGZvciBkZWJ1ZyBw
dXJwb3NlLCBmb3IgZXhhbXBsZSBsaW5rIGZhaWx1cmUsIGV0Yy4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiAtLS0K
PiA+ID4gCj4gPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+IC0gdXNlIHRyYWNlcG9pbnQKPiA+ID4g
Cj4gPiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwg
OTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDky
IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gaW5kZXggMzUyZjUxMy4uYmU5NjM5YWEgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMKPiA+ID4gQEAgLTIyLDYgKzIyLDggQEAKPiA+ID4gICAjaW5jbHVkZSA8bGludXgvcGxhdGZv
cm1fZGV2aWNlLmg+Cj4gPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ID4gPiAgICNp
bmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5o
Pgo+ID4gPiArI2luY2x1ZGUgPHRyYWNlL2V2ZW50cy9wY2lfY29udHJvbGxlci5oPgo+ID4gPiAg
ICNpbmNsdWRlICIuLi8uLi9wY2kuaCIKPiA+ID4gICAjaW5jbHVkZSAicGNpZS1kZXNpZ253YXJl
LmgiCj4gPiA+IEBAIC03Myw2ICs3NSwxOCBAQAo+ID4gPiAgICNkZWZpbmUgIFBDSUVfQ0xJRU5U
X0NETV9SQVNERVNfVEJBX0wxXzEJQklUKDQpCj4gPiA+ICAgI2RlZmluZSAgUENJRV9DTElFTlRf
Q0RNX1JBU0RFU19UQkFfTDFfMglCSVQoNSkKPiA+ID4gKy8qIERlYnVnIEZJRk8gaW5mb3JtYXRp
b24gKi8KPiA+ID4gKyNkZWZpbmUgUENJRV9DTElFTlRfREJHX0ZJRk9fTU9ERV9DT04JMHgzMTAK
PiA+ID4gKyNkZWZpbmUgIFBDSUVfQ0xJRU5UX0RCR19FTgkJMHhmZmZmMDAwNwo+ID4gPiArI2Rl
ZmluZSAgUENJRV9DTElFTlRfREJHX0RJUwkJMHhmZmZmMDAwMAo+ID4gPiArI2RlZmluZSBQQ0lF
X0NMSUVOVF9EQkdfRklGT19QVE5fSElUX0QwCTB4MzIwCj4gPiA+ICsjZGVmaW5lIFBDSUVfQ0xJ
RU5UX0RCR19GSUZPX1BUTl9ISVRfRDEJMHgzMjQKPiA+ID4gKyNkZWZpbmUgUENJRV9DTElFTlRf
REJHX0ZJRk9fVFJOX0hJVF9EMAkweDMyOAo+ID4gPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9EQkdf
RklGT19UUk5fSElUX0QxCTB4MzJjCj4gPiA+ICsjZGVmaW5lICBQQ0lFX0NMSUVOVF9EQkdfVFJB
TlNJVElPTl9EQVRBIDB4ZmZmZjAwMDAKPiA+ID4gKyNkZWZpbmUgUENJRV9DTElFTlRfREJHX0ZJ
Rk9fU1RBVFVTCTB4MzUwCj4gPiA+ICsjZGVmaW5lIFBDSUVfREJHX0xUU1NNX0hJU1RPUllfQ05U
CTY0Cj4gPiA+ICsKPiA+ID4gICAvKiBIb3QgUmVzZXQgQ29udHJvbCBSZWdpc3RlciAqLwo+ID4g
PiAgICNkZWZpbmUgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwJMHgxODAKPiA+ID4gICAjZGVm
aW5lICBQQ0lFX0xUU1NNX0FQUF9ETFkyX0VOCQlCSVQoMSkKPiA+ID4gQEAgLTk2LDYgKzExMCw3
IEBAIHN0cnVjdCByb2NrY2hpcF9wY2llIHsKPiA+ID4gICAJc3RydWN0IGlycV9kb21haW4gKmly
cV9kb21haW47Cj4gPiA+ICAgCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9wY2llX29mX2RhdGEgKmRh
dGE7Cj4gPiA+ICAgCWJvb2wgc3VwcG9ydHNfY2xrcmVxOwo+ID4gPiArCXN0cnVjdCBkZWxheWVk
X3dvcmsgdHJhY2Vfd29yazsKPiA+ID4gICB9Owo+ID4gPiAgIHN0cnVjdCByb2NrY2hpcF9wY2ll
X29mX2RhdGEgewo+ID4gPiBAQCAtMjA2LDYgKzIyMSw3OSBAQCBzdGF0aWMgZW51bSBkd19wY2ll
X2x0c3NtIHJvY2tjaGlwX3BjaWVfZ2V0X2x0c3NtKHN0cnVjdCBkd19wY2llICpwY2kpCj4gPiA+
ICAgCXJldHVybiByb2NrY2hpcF9wY2llX2dldF9sdHNzbV9yZWcocm9ja2NoaXApICYgUENJRV9M
VFNTTV9TVEFUVVNfTUFTSzsKPiA+ID4gICB9Cj4gPiA+ICsjaWZkZWYgQ09ORklHX1RSQUNJTkcK
PiA+ID4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfbHRzc21fdHJhY2Vfd29yayhzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndvcmspCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCByb2NrY2hpcF9wY2llLAo+ID4g
PiArCQkJCQkJdHJhY2Vfd29yay53b3JrKTsKPiA+ID4gKwlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0g
JnJvY2tjaGlwLT5wY2k7Cj4gPiA+ICsJZW51bSBkd19wY2llX2x0c3NtIHN0YXRlOwo+ID4gPiAr
CXUzMiB2YWwsIHJhdGUsIGwxc3MsIGxvb3AsIHByZXZfdmFsID0gRFdfUENJRV9MVFNTTV9VTktO
T1dOOwo+ID4gCj4gPiBSZXZlcnNlIFhtYXMgb3JkZXIgcGxlYXNlLgo+ID4gCj4gPiA+ICsKPiA+
ID4gKwlmb3IgKGxvb3AgPSAwOyBsb29wIDwgUENJRV9EQkdfTFRTU01fSElTVE9SWV9DTlQ7IGxv
b3ArKykgewo+ID4gCj4gPiBzL2xvb3AvaT8KPiA+IAo+ID4gPiArCQl2YWwgPSByb2NrY2hpcF9w
Y2llX3JlYWRsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfREJHX0ZJRk9fU1RBVFVTKTsKPiA+
ID4gKwkJcmF0ZSA9ICh2YWwgJiBHRU5NQVNLKDIyLCAyMCkpID4+IDIwOwo+ID4gPiArCQlsMXNz
ID0gKHZhbCAmIEdFTk1BU0soMTAsIDgpKSA+PiA4Owo+ID4gPiArCQl2YWwgJj0gUENJRV9MVFNT
TV9TVEFUVVNfTUFTSzsKPiA+IAo+ID4gQ2FuIHlvdSB1c2UgRklFTERfIG1hY3JvcyBoZXJlPwo+
ID4gCj4gPiA+ICsKPiA+ID4gKwkJLyogVHdvIGNvbnNlY3V0aXZlIGlkZW50aWNhbCBMVFNTTSBt
ZWFucyBpbnZhbGlkIHN1YnNlcXVlbnQgZGF0YSAqLwo+ID4gCj4gPiBJbnRlcmVzdGluZy4gRG9l
cyB0aGUgaGFyZHdhcmUgbWFpbnRhaW4gYSBjb3VudGVyIHRvIHRyYWNrIHRoZSByZWFkcz8gU28g
b25jZQo+ID4geW91IGJyZWFrIG91dCBvZiB0aGUgbG9vcCBhbmQgcmVhZCBpdCBhZnRlciA1cywg
eW91J2xsIHN0YXJ0IGZyb20gd2hlcmUgeW91IGxlZnQKPiA+IGkuZS4sIHRoZSBkdXBsaWNhdGUg
ZW50cnkgb3IgZnJvbSB0aGUgc3RhcnQgb2YgdGhlIGNvdW50ZXIgYWdhaW4/Cj4gPiAKPiAKPiBZ
ZXMsIHRoZSByaW5nIEZJRk8gbWFpbnRhaW5zIGNvdW50ZXJzIGZvciByZWNvcmRpbmcgYm90aCBv
ZiBsYXN0LXJlYWQtcG9pbnQKPiBmb3IgdXNlciB0byBjb250aW51ZSB0byByZWFkLCBhbmQgbGFz
dC12YWxpZC1wb2ludCBmb3IgSFcgdG8KPiBjb250aW51ZSB0byB1cGRhdGUgdHJhbnNpdGlvbiBz
dGF0ZS4gU28gd2UgY291bGQgc3RhcnQgZnJvbSB3aGVyZSB3ZQo+IGxlZnQuCj4gCgpPay4gVGhh
bmtzIGZvciBjbGFyaWZpY2F0aW9uLiBJdCdkIGJlIHdvcnRoIHRvIGFkZCBpdCB0byB0aGUgZXhp
c3RpbmcgY29tbWVudC4KCj4gPiA+ICsJCWlmICgobG9vcCA+IDAgJiYgdmFsID09IHByZXZfdmFs
KSB8fCB2YWwgPiBEV19QQ0lFX0xUU1NNX1JDVlJZX0VRMykKPiA+ID4gKwkJCWJyZWFrOwo+ID4g
PiArCj4gPiA+ICsJCXN0YXRlID0gcHJldl92YWwgPSB2YWw7Cj4gPiA+ICsJCWlmICh2YWwgPT0g
RFdfUENJRV9MVFNTTV9MMV9JRExFKSB7Cj4gPiA+ICsJCQlpZiAobDFzcyA9PSAyKQo+ID4gPiAr
CQkJCXN0YXRlID0gRFdfUENJRV9MVFNTTV9MMV8yOwo+ID4gPiArCQkJZWxzZSBpZiAobDFzcyA9
PSAxKQo+ID4gPiArCQkJCXN0YXRlID0gRFdfUENJRV9MVFNTTV9MMV8xOwo+ID4gCj4gPiBJIGJl
bGlldmUgTDEuMCBpcyBub3Qgc3VwcG9ydGVkLgo+ID4gCj4gCj4gSSdtIG5vdCBzdXJlIEkgZm9s
bG93IHRoaXMgY29tbWVudC4gc3RhdGUgaXMgRFdfUENJRV9MVFNTTV9MMV9JRExFCj4g77yITDEu
MO+8iSBpZiBsMXNzIGlzIG5laXRoZXIgMSBub3IgMi4KPiAKCkFoIG9rLiBJdCB3YXMgbm90IGNs
ZWFyIHRoYXQgTDFfSURMRSBpcyBMMS4wCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

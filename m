Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61986C4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 21:29:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB90C2177B
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 21:29:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MPBLo3LK";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5skj99w"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB90C2177B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=WIm2wMlSCxAs7J49qWfhBrKkuFRECFsMe7uej6jweuQ=; b=MPBLo3LKiP4TDTHcH8146i1wV
	ay5wHmSar5fq4sCG4ba/UT23QA6PniAoCo0Vvwxyjc9ICK2ENUxF60M4tEhWl9qiEeFNAqdECLvXA
	4b45bPo0IQKBPZE3jnUs758DlqwyTiGbx0qg/WkllB/z0MEt1gK6R3NyYd02541Jqb+k9e5DasXr+
	DYCXfqkVEb07wZLAdlpjDBGJBa/rrxMAMc+aWQDXmjsggSRfRpm35weknhWGEntjmXVsRHnvqzaxK
	nmjc8cB2/f1sUMCgr/s92FLxG9F+uoIT5Br89Y8AgxCCmXZSC1vWhCNL+vl1B+sluvMOjNPx73O+8
	4OeiD9sZw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOScZ-0002XV-SN; Fri, 02 Oct 2020 21:29:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOScW-0002WZ-D4; Fri, 02 Oct 2020 21:29:41 +0000
Received: from localhost (170.sub-72-107-125.myvzw.com [72.107.125.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0A212177B;
 Fri,  2 Oct 2020 21:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601674179;
 bh=GMDMmF8EjWATW/8Z/8UIHDE4Py42sFgz6laFGi/LIcc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=F5skj99wI7R/aSIf35ffYv4vKlmTfBmKhXeWwAGbwF6msmTG0Y9J6P0QSfY/VkhQr
 h9mPgiX5ODO2fn6qRkX/ylP41GMnuLRlDos0AvQr0YHNSj0OgxreB438PKX8KiH5DW
 bKhBaxyGpetk9qQnX2IuW7ZBb4ZWHkh7kEikMw1c=
Date: Fri, 2 Oct 2020 16:29:37 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH v3] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20201002212937.GA2829999@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001220244.1271878-1-kw@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_172940_557457_440AD498 
X-CRM114-Status: GOOD (  22.31  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBPY3QgMDEsIDIwMjAgYXQgMTA6MDI6NDRQTSArMDAwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IFVuaWZ5IEVDQU0tcmVsYXRlZCBjb25zdGFudHMgaW50byBhIHNpbmds
ZSBzZXQgb2Ygc3RhbmRhcmQgY29uc3RhbnRzCj4gZGVmaW5pbmcgbWVtb3J5IGFkZHJlc3Mgc2hp
ZnQgdmFsdWVzIGZvciB0aGUgYnl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCj4gYmUgdXNlZCB3
aGVuIGFjY2Vzc2luZyB0aGUgUENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRo
ZW4KPiBtb3ZlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgdG8gdXNlIG5l
d2x5IGludHJvZHVjZWQKPiBkZWZpbml0aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNwZWNpZmlj
IG9uZXMuCj4gCj4gVGhlIEVDQU0gKCJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNo
YW5pc20iKSBpcyBkZWZpbmVkIGJ5IHRoZQo+IFBDSSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNl
ZSBQQ0kgRXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24sIFJldmlzaW9uCj4gNS4wLCBWZXJzaW9u
IDEuMCwgU2VjdGlvbiA3LjIuMiwgcC4gNjc2KSwgdGh1cyBtb3N0IGhhcmR3YXJlIHNob3VsZAo+
IGltcGxlbWVudCBpdCB0aGUgc2FtZSB3YXkuICBNb3N0IG9mIHRoZSBuYXRpdmUgUENJIEV4cHJl
c3MgY29udHJvbGxlcgo+IGRyaXZlcnMgZGVmaW5lIHRoZWlyIEVDQU0tcmVsYXRlZCBjb25zdGFu
dHMsIG1hbnkgb2YgdGhlc2UgY291bGQgYmUKPiBzaGFyZWQsIG9yIHVzZSBvcGVuLWNvZGVkIHZh
bHVlcyB3aGVuIHNldHRpbmcgdGhlIC5idXNfc2hpZnQgZmllbGQgb2YKPiB0aGUgc3RydWN0IHBj
aV9lY2FtX29wcy4KPiAKPiBBbGwgb2YgdGhlIG5ld2x5IGFkZGVkIGNvbnN0YW50cyBzaG91bGQg
cmVtb3ZlIGFtYmlndWl0eSBhbmQgcmVkdWNlIHRoZQo+IG51bWJlciBvZiBvcGVuLWNvZGVkIHZh
bHVlcywgYW5kIGFsc28gY29ycmVsYXRlIG1vcmUgc3Ryb25nbHkgd2l0aCB0aGUKPiBkZXNjcmlw
dGlvbnMgaW4gdGhlIGFmb3JlbWVudGlvbmVkIHNwZWNpZmljYXRpb24gKHNlZSBUYWJsZSA3LTEK
PiAiRW5oYW5jZWQgQ29uZmlndXJhdGlvbiBBZGRyZXNzIE1hcHBpbmciLCBwLiA2NzcpLgoKPiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1ob3N0LWdlbmVyaWMuYwo+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWhvc3QtZ2VuZXJpYy5jCj4gQEAgLTE1LDcgKzE1LDcg
QEAKPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAKPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCBwY2lfZWNhbV9vcHMgZ2VuX3BjaV9jZmdfY2FtX2J1c19vcHMgPSB7Cj4gLQku
YnVzX3NoaWZ0CT0gMTYsCj4gKwkuYnVzX3NoaWZ0CT0gUENJRV9DQU1fQlVTX1NISUZULAoKSSdt
IG5vdCBzdXJlIHRoaXMgY29kZSB3YXMgc2FmZSBldmVuIGJlZm9yZSB5b3UgdG91Y2hlZCBpdC4K
cGNpX2VjYW1fbWFwX2J1cygpIGRvZXNuJ3QgbGltaXQgIndoZXJlIiBhdCBhbGwsIHNvIGlmIHdl
IHRyeSB0bwphY2Nlc3MgZXh0ZW5kZWQgY29uZmlnIHNwYWNlIChvZmZzZXQgMHgxMDAgLSAweGZm
ZiksIEkgdGhpbmsgd2UnbGwKZ2VuZXJhdGUKCiAgKGJ1c25yIDw8IDE2KSB8IChkZXZmbiA8PCA4
KSArIHdoZXJlCgpJZiAid2hlcmUgPj0gMHgxMDAiLCB3ZSdsbCB0YXJnZXQgdGhlIHdyb25nIGRl
dmljZS4KCkV2ZW4gZm9yIEVDQU0sIGl0IGRvZXNuJ3QgbG9vayBsaWtlIGFueXRoaW5nIHByZXZl
bnRzIGEgZGVmZWN0aXZlIG9yCm1hbGljaW91cyBjYWxsZXIgZnJvbSBzdXBwbHlpbmcgYSBjb25m
aWcgb2Zmc2V0IG9mLCBzYXksIDB4MjAwMCBhbmQKdGFyZ2V0aW5nIHRoZSB3cm9uZyBkZXZpY2Uu
Cgo+ICAJLnBjaV9vcHMJPSB7Cj4gIAkJLm1hcF9idXMJPSBwY2lfZWNhbV9tYXBfYnVzLAo+ICAJ
CS5yZWFkCQk9IHBjaV9nZW5lcmljX2NvbmZpZ19yZWFkLAoKPiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaS14Z2VuZS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2kt
eGdlbmUuYwo+IEBAIC02MCw2ICs2MCwxNSBAQAo+ICAjZGVmaW5lIFhHRU5FX1BDSUVfSVBfVkVS
XzEJCTEKPiAgI2RlZmluZSBYR0VORV9QQ0lFX0lQX1ZFUl8yCQkyCj4gIAo+ICsvKgo+ICsgKiBF
bmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNoYW5pc20gKEVDQU0pCj4gKyAqCj4gKyAq
IE4uQi4gVGhpcyBpcyBhIG5vbi1zdGFuZGFyZCBwbGF0Zm9ybS1zcGVjaWZpYyBFQ0FNIGJ1cyBz
aGlmdCB2YWx1ZS4gIEZvcgo+ICsgKiBzdGFuZGFyZCB2YWx1ZXMgZGVmaW5lZCBpbiB0aGUgUENJ
IEV4cHJlc3MgQmFzZSBTcGVjaWZpY2F0aW9uIHNlZQo+ICsgKiBpbmNsdWRlL2xpbnV4L3BjaS1l
Y2FtLmguCj4gKyAqLwo+ICsjZGVmaW5lIFhHRU5FX1BDSUVfRUNBTV9CVVNfU0hJRlQJMTYKCklz
IHRoaXMgZXZlbiB1c2VkIGFueXdoZXJlPyAgeGdlbmVfcGNpZV9tYXBfYnVzKCkgZG9lc24ndCB1
c2UKYnVzX3NoaWZ0LiAgTWF5YmUgd2UgY2FuIGp1c3QgZHJvcCB0aGUgLmJ1c19zaGlmdCBpbml0
aWFsaXplcnM/Cgo+ICAjaWYgZGVmaW5lZChDT05GSUdfUENJX1hHRU5FKSB8fCAoZGVmaW5lZChD
T05GSUdfQUNQSSkgJiYgZGVmaW5lZChDT05GSUdfUENJX1FVSVJLUykpCj4gIHN0cnVjdCB4Z2Vu
ZV9wY2llX3BvcnQgewo+ICAJc3RydWN0IGRldmljZV9ub2RlCSpub2RlOwo+IEBAIC0yNTcsNyAr
MjY2LDcgQEAgc3RhdGljIGludCB4Z2VuZV92MV9wY2llX2VjYW1faW5pdChzdHJ1Y3QgcGNpX2Nv
bmZpZ193aW5kb3cgKmNmZykKPiAgfQo+ICAKPiAgY29uc3Qgc3RydWN0IHBjaV9lY2FtX29wcyB4
Z2VuZV92MV9wY2llX2VjYW1fb3BzID0gewo+IC0JLmJ1c19zaGlmdAk9IDE2LAo+ICsJLmJ1c19z
aGlmdAk9IFhHRU5FX1BDSUVfRUNBTV9CVVNfU0hJRlQsCj4gIAkuaW5pdAkJPSB4Z2VuZV92MV9w
Y2llX2VjYW1faW5pdCwKPiAgCS5wY2lfb3BzCT0gewo+ICAJCS5tYXBfYnVzCT0geGdlbmVfcGNp
ZV9tYXBfYnVzLAo+IEBAIC0yNzIsNyArMjgxLDcgQEAgc3RhdGljIGludCB4Z2VuZV92Ml9wY2ll
X2VjYW1faW5pdChzdHJ1Y3QgcGNpX2NvbmZpZ193aW5kb3cgKmNmZykKPiAgfQo+ICAKPiAgY29u
c3Qgc3RydWN0IHBjaV9lY2FtX29wcyB4Z2VuZV92Ml9wY2llX2VjYW1fb3BzID0gewo+IC0JLmJ1
c19zaGlmdAk9IDE2LAo+ICsJLmJ1c19zaGlmdAk9IFhHRU5FX1BDSUVfRUNBTV9CVVNfU0hJRlQs
Cj4gIAkuaW5pdAkJPSB4Z2VuZV92Ml9wY2llX2VjYW1faW5pdCwKPiAgCS5wY2lfb3BzCT0gewo+
ICAJCS5tYXBfYnVzCT0geGdlbmVfcGNpZV9tYXBfYnVzLAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

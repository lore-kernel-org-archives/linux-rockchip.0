Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09804CF258E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 06:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmaoc28y0Tv71BGoDIUQaXY8X5YT/Ed8/uFoJ/5Kxhc=; b=VhuAUKeTLEZES/
	CffZF8WYxuRU/JRSP5Ic1dAmUUTXFAIEOE5c+kJ7rKoRRN1PLTwAGljdRnKdJdj3Qf2T5Bmvh2S1c
	185MUOccDseEeek4JlftBfK2Jkyxun7DMo22G7Nu+jUoe1V596gpcXxiXREaaXzLt2Xd6gNY+fW2d
	C49cvWbZ4fFrb+NqrSQ9w+mcUpj1I0I499e3tx0dz9nLH4bBuHzLVi4bHACu2R+qwcA63++X65ghn
	CJvBFn+0UivqE0YX2UWfsu1P7QrRICwqSmuy9XzuSMObgOd/gzU7WrjzFUoJ8TZiZO3YmxMiG9Lo2
	yzsfnsmD/FaVyNQphh8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLbyV-00000002eDd-2LMa;
	Wed, 19 Nov 2025 06:47:31 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLbyS-00000002eCo-3tZm;
	Wed, 19 Nov 2025 06:47:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 85BDF41281;
	Wed, 19 Nov 2025 07:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763534842; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=VPnh4647l0Ye1/fWlT5mBsuMOhFdOEN38ARA/l13Q8c=;
	b=yLXwecfEvsrN+fPShQu7pUzx54NBsWvHHEU1/ZnbH64PmSCnxxv2fH/dytG/OADsSPgYMK
	0hoG5iNr1Hb165RJJNzTHl54ImwWEEKSd1MRWrmqwEMkBdgPTRshpDj7Xpq0HduR2NHx5j
	gYro03GRO19FOv5cUlSNC0tBRw5DWeiKckTIenGGhp3v0FXTQniVAzNOK6Fa1kyPYIHV4z
	hosgJERLb/tD0pZNHvE734+iu7aOA2ZjQ8JeFbso/g/6JjjVKEllL7/yO6y60n9uwgOo8C
	IHzWsNLam8jJ9fxFMXhpga9tsROqnJvVELN7Fs/KTDlKWvQTcOiTc6MRrLXzbA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org> <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
Date: Wed, 19 Nov 2025 07:47:20 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
MIME-Version: 1.0
Message-ID: <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_224729_225904_9430DC75 
X-CRM114-Status: GOOD (  17.51  )
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

SGVsbG8gTWljaGFlbCwKCk9uIFR1ZXNkYXksIE5vdmVtYmVyIDE4LCAyMDI1IDA2OjI3IENFVCwg
TWljaGFlbCBPcGRlbmFja2VyIDxtaWNoYWVsLm9wZGVuYWNrZXJAcm9vdGNvbW1pdC5jb20+IHdy
b3RlOgo+IE9uIDExLzE1LzI1IDAxOjUyLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPiBJJ20gc29y
cnkgYWdhaW4gZm9yIG5vdCBtZW50aW9uaW5nIGl0IGluIG15IGVhcmxpZXIgcmVzcG9uc2VzLAo+
ID4gYnV0IHNob3VsZG4ndCB0aGlzIGFkZGl0aW9uIGJlIHNwZWNpZmllZCBsaWtlIGJlbG93Ogo+
ID4KPiA+ICAgICAgIC0gZGVzY3JpcHRpb246IEFzdXMgVGlua2VyIEJvYXJkIDMvM1MKPiA+ICAg
ICAgICAgaXRlbXM6Cj4gPiAgICAgICAgICAgLSBlbnVtOgo+ID4gCSAgICAgICAgICAtIGFzdXMs
cmszNTY2LXRpbmtlci1ib2FyZC0zCj4gPiAgICAgICAgICAgICAtIGFzdXMscmszNTY2LXRpbmtl
ci1ib2FyZC0zcwo+ID4gICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2Ngo+ID4KPiA+
IC4uLiBiZWNhdXNlIHRoZSBpbnRyb2R1Y2VkIC5kdHMgZmlsZXMgZGVmaW5lIHRoZSBhY3R1YWwg
Ym9hcmQgRFRzLAo+ID4gYnkgZGVzY2VuZGluZyBmcm9tIHRoZSBjb21tb24gLmR0c2kgZmlsZSwg
d2hpbGUgdGhleSdyZSBjb21wYXRpYmxlCj4gPiBpbiB0aGUgc2Vuc2Ugb2YgdGhlIDNTIGJvYXJk
IHZhcmlhbnQgZXh0ZW5kaW5nIHRoZSAzIHZhcmlhbnQuCj4gCj4gQWN0dWFsbHksICJtYWtlIGR0
YnNfY2hlY2siIGZhaWxzIGlmIHJrMzU2Ni10aW5rZXItYm9hcmQtM3MuZHRzIGhhczoKPiBjb21w
YXRpYmxlID0gImFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zcyIsIAo+ICJhc3VzLHJrMzU2Ni10
aW5rZXItYm9hcmQtMyIsICJyb2NrY2hpcCxyazM1NjYiOwo+IAo+IFRoZSBmYWlsdXJlIGlzOgo+
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXRpbmtlci1ib2FyZC0zcy5kdGI6
IC8gCj4gKGFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zcyk6IGNvbXBhdGlibGU6ICdvbmVPZicg
Y29uZGl0aW9uYWwgZmFpbGVkLCAKPiBvbmUgbXVzdCBiZSBmaXhlZDoKPiAgwqAgwqAgWydhc3Vz
LHJrMzU2Ni10aW5rZXItYm9hcmQtM3MnLCAnYXN1cyxyazM1NjYtdGlua2VyLWJvYXJkLTMnLCAK
PiAncm9ja2NoaXAscmszNTY2J10gaXMgdG9vIGxvbmcKPiAgwqAgwqAgWydhc3VzLHJrMzU2Ni10
aW5rZXItYm9hcmQtM3MnLCAnYXN1cyxyazM1NjYtdGlua2VyLWJvYXJkLTMnLCAKPiAncm9ja2No
aXAscmszNTY2J10gaXMgdG9vIHNob3J0CgpPaCwgSSBtaXNzZWQgdGhhdCBjb21wbGV0ZWx5LCB0
aGFua3MgZm9yIHJ1bm5pbmcgdGhlIGNoZWNrcy4KCj4gSWYgSSB1bmRlcnN0YW5kIGNvcnJlY3Rs
eSwgdG8ga2VlcCB0aGXCoHJrMzU2Ni10aW5rZXItYm9hcmQtM3MuZHRzIGZpbGUgCj4gYXMgaXQg
aXMsIHlvdSBuZWVkIEFzdXMgVGlua2VyIEJvYXJkIDMgYW5kIDNTIHRvIGhhdmUgdHdvIGRpZmZl
cmVudCAKPiBkZXNjcmlwdGlvbnMgYXMgaW4gVjI6Cj4gCj4gLSBkZXNjcmlwdGlvbjogQXN1cyBU
aW5rZXIgQm9hcmQgMyBpdGVtczogLSBjb25zdDogCj4gYXN1cyxyazM1NjYtdGlua2VyLWJvYXJk
LTMgLSBjb25zdDogcm9ja2NoaXAscmszNTY2IC0gZGVzY3JpcHRpb246IEFzdXMgCj4gVGlua2Vy
IEJvYXJkIDNTIGl0ZW1zOiAtIGNvbnN0OiBhc3VzLHJrMzU2Ni10aW5rZXItYm9hcmQtM3MgLSBj
b25zdDogCj4gYXN1cyxyazM1NjYtdGlua2VyLWJvYXJkLTMgLSBjb25zdDogcm9ja2NoaXAscmsz
NTY2Cj4gCj4gVGhlIG90aGVyIHNvbHV0aW9uIGlzIHRvIHJlbW92ZSB0aGUgImFzdXMscmszNTY2
LXRpbmtlci1ib2FyZC0zIiAKPiBjb21wYXRpYmxlIGZyb23CoHJrMzU2Ni10aW5rZXItYm9hcmQt
M3MuZHRzLCB3aGljaCBpcyBub3QgYSBiaWcgZGVhbCBpbiAKPiBteSBvcGluaW9uLiBJbiBhZGRp
dGlvbiwgaWYgc29tZSBjb2RlIHR1cm5zIG91dCB0byB3b3JrIG9ubHkgb24gMyBidXQgCj4gbm90
IG9uIDNTLCB0aG91Z2ggdGhhdCdzIG5vdCBleHBlY3RlZCBpZiAzUyBpcyBpbmRlZWQgYSBzdXBl
cnNldCBvZiAzLCAKPiB3ZSB3b24ndCBiZSBzdHVjay4KPiAKPiBJIGNhbiBzdWJtaXQgYSBWMyBh
bG9uZyB0aGVzZSBsaW5lcy4KClRoaXMgc2hvdWxkIGxldCB1cyBrZWVwIHRoZSAiYXN1cyxyazM1
NjYtdGlua2VyLWJvYXJkLTMiIGNvbXBhdGlibGUKaW4gdGhlIG5ldyByazM1NjYtdGlua2VyLWJv
YXJkLTNzLmR0cyBib2FyZCBkdHMgd2hpbGUgc2F0aXNmeWluZyB0aGUKdmFsaWRhdGlvbiBwcm9w
ZXJseToKCiAgLSBkZXNjcmlwdGlvbjogQXN1cyBUaW5rZXIgQm9hcmQgMy8zUwogICAgaXRlbXM6
CiAgICAtIGVudW06CiAgICAgICAgLSBhc3VzLHJrMzU2Ni10aW5rZXItYm9hcmQtM3MKICAgIC0g
Y29uc3Q6IGFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zCiAgICAtIGNvbnN0OiByb2NrY2hpcCxy
azM1NjYKCkknbSBxdWl0ZSBidXN5IGF0IHRoZSBtb21lbnQsIGhlbmNlIG15IGRlbGF5ZWQgcmVz
cG9uc2UsIGFuZCBJIGFsc28KYXBvbG9naXplIGZvciBub3QgcnVubmluZyB0aGUgY2hlY2tzIG9u
IHRoZSBhYm92ZS1wcm9wb3NlZCBzb2x1dGlvbiwKYnV0IEkgdGhpbmsgaXQgc2hvdWxkIHdvcmsg
YXMgZXhwZWN0ZWQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

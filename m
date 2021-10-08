Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 484BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:54:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1F3B60FD8
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:54:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E1F3B60FD8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/siYtBJi6AwObF9NPQkIN5uFNr5usyGY+kbr/pyGKL4=; b=r8PpK/rQfRl5+A
	p5GZG+Jb9dkQ+ZnYl4TyvAdJ7W9riX7Xp/WMZkfvCNAxbfDA1ds57lQdJCEJyGHTtSwZ9L6DqNAFP
	VyeTAGhzmxwUEY0PsHt8Xc1E66+tTwi6z3huLAsQd7XQAdZ9rIDUlUI2AG3IxZMGp+1jdluD1MjqH
	Ov7CKFscnC7migaGPp9aXKEpBm4ko2F24UicDqS+TXajKa0ydaQAOV+GeJ1Vw8b+GrJcJLN5vIUyZ
	X7v22lnSYXJGH5EGzIGEMIG0BdOGH3xyKrPFUvA9rDJ/hyAHAMr3UHmpakMP23g9iJgfOzBcQgq52
	+MxCC+4F7iyoSBYbWlZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYsCU-003LVp-Pu; Fri, 08 Oct 2021 15:54:22 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYsCR-003LTG-Mc
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 15:54:21 +0000
Received: by mail-qv1-xf29.google.com with SMTP id a9so6688838qvf.0
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 08:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=JHQQ/ZPuMNBwfivK9zPtMYjZexbN/EgHfRTfb4X4FQM=;
 b=WilbUexRA01zQ0bMJZW4pqq0QhYgb4cjNMoYFpt/WN/kAwF2xzUpyfU1vmmjKkQnvx
 uOROisI1Hd25EaL/aZ4K1rDMkV4aT4ZtcAM3mAqwnnE1WvfK99MCJ6feMHFjtHQT7SjE
 VV5YT5M4Qo+Uu8Zd5HJaQM4LtKuMVcqpMf0JX9jpDrbdtZmOJ6dnujH4Db/u7CovMjCq
 DeFsPhEgFBltMLYOMkvGKaUwP0faoEj5P91nNZRBOTdRlQi3FSJBsTKOWNk8jci6DPXN
 KlDu1ZdeqcrMoQRYjtv8GcVZ1Ky8gx91c3Y4UgfFucJr5iRXsPSkEbZsLiWaNvZKPlf1
 vRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=JHQQ/ZPuMNBwfivK9zPtMYjZexbN/EgHfRTfb4X4FQM=;
 b=aw2YlaG2Q/T2ZYS2/2kLJCNyKqHpfnBE1mc17ft54GlwsybR/C+SAiyJ+6eIlbpBVz
 m9aZT5OCfOxmvkYllaNkkD+dPTnT0IK8haZSFKUD7C7lfhywy6djiTuUHgEs9OvJfzaj
 RaaqE76FX3jgC5AzkrX2zm9/a01li1oV52Rg1uyIQ+ThGrC7EVsSSTbeuGkOr2eyUc6S
 x2Mr0m+xxRGkp9Zwi3kJ3ITQwjiNSJJME+AaDCxDpTjNHxVl/p0znQTj2n27p6zC3qsb
 RvgIhh8KeCuC4p98br1JYxaYWzOUs1aSR1xegG/D+Oez4RJs7eS6fKe7jgE/N/SckfHB
 41mg==
X-Gm-Message-State: AOAM530WriYnpJX5JC7a0xqTQwwr/FYJT6R+EDsSdF94T2AEoRy2Pt66
 MUq6euSB/qLWfNaTVniYuciVzg==
X-Google-Smtp-Source: ABdhPJzVAQ4pK19I9ktgZs5SQ2HXyEEnpkAMWqKmsXbgQremDteXueDeFV7UIfAnw16lGzesZAT+CA==
X-Received: by 2002:a05:6214:1267:: with SMTP id
 r7mr10933942qvv.16.1633708458308; 
 Fri, 08 Oct 2021 08:54:18 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id 207sm2261102qkd.56.2021.10.08.08.54.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 08:54:18 -0700 (PDT)
Message-ID: <a2759c8f5ec47bf6a96f69e103994dc20198c39b.camel@ndufresne.ca>
Subject: Re: [PATCH 2/2] media: rkvdec: Support dynamic resolution changes
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Chen-Yu Tsai <wenst@chromium.org>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>,  stable@vger.kernel.org
Date: Fri, 08 Oct 2021 11:54:16 -0400
In-Reply-To: <20211008100423.739462-3-wenst@chromium.org>
References: <20211008100423.739462-1-wenst@chromium.org>
 <20211008100423.739462-3-wenst@chromium.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_085419_788851_C0BB0A5A 
X-CRM114-Status: GOOD (  24.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgdmVuZHJlZGkgMDggb2N0b2JyZSAyMDIxIMOgIDE4OjA0ICswODAwLCBDaGVuLVl1IFRzYWkg
YSDDqWNyaXTCoDoKPiBUaGUgbWVtLXRvLW1lbSBzdGF0ZWxlc3MgZGVjb2RlciBBUEkgc3BlY2lm
aWVzIHN1cHBvcnQgZm9yIGR5bmFtaWMKPiByZXNvbHV0aW9uIGNoYW5nZXMuIEluIHBhcnRpY3Vs
YXIsIHRoZSBkZWNvZGVyIHNob3VsZCBhY2NlcHQgZm9ybWF0Cj4gY2hhbmdlcyBvbiB0aGUgT1VU
UFVUIHF1ZXVlIGV2ZW4gd2hlbiBidWZmZXJzIGhhdmUgYmVlbiBhbGxvY2F0ZWQsCj4gYXMgbG9u
ZyBhcyBpdCBpcyBub3Qgc3RyZWFtaW5nLgoKQXMgY29tbWVudGVkIGluIHRoZSBjb2RlLCBpdCBh
bHNvIHJlcXVpcmVzIHRoZSBDQVBUVVJFIHNpZGUgbm90IHRvIGJlIGJ1c3ksIG5vdApzdXJlIGlm
IGl0cyB3b3J0aCBjbGFyaWZ5aW5nLCBJIGRvbid0IHJlYWxseSBtaW5kLgoKPiAKPiBSZWxheCBy
ZXN0cmljdGlvbnMgZm9yIFNfRk1UIGFzIGRlc2NyaWJlZCBpbiB0aGUgcHJldmlvdXMgcGFyYWdy
YXBoLAo+IGFuZCBhcyBsb25nIGFzIHRoZSBjb2RlYyBmb3JtYXQgcmVtYWlucyB0aGUgc2FtZS4g
VGhpcyBhbGlnbnMgaXQgd2l0aAo+IHRoZSBIYW50cm8gYW5kIENlZHJ1cyBkZWNvZGVycy4gVGhp
cyBjaGFuZ2Ugd2FzIG1vc3RseSBiYXNlZCBvbiBjb21taXQKPiBhZTAyZDQ5NDkzYjUgKCJtZWRp
YTogaGFudHJvOiBGaXggc19mbXQgZm9yIGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFuZ2VzIikuCj4g
Cj4gU2luY2Ugcmt2ZGVjX3NfZm10KCkgaXMgbm93IGp1c3QgYSB3cmFwcGVyIGFyb3VuZCB0aGUg
b3V0cHV0L2NhcHR1cmUKPiB2YXJpYW50cyB3aXRob3V0IGFueSBhZGRpdGlvbmFsIHNoYXJlZCBm
dW5jdGlvbmFsaXR5LCBkcm9wIHRoZSB3cmFwcGVyCj4gYW5kIGNhbGwgdGhlIHJlc3BlY3RpdmUg
ZnVuY3Rpb25zIGRpcmVjdGx5Lgo+IAo+IEZpeGVzOiBjZDMzYzgzMDQ0OGIgKCJtZWRpYTogcmt2
ZGVjOiBBZGQgdGhlIHJrdmRlYyBkcml2ZXIiKQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9y
Zz4KPiBTaWduZWQtb2ZmLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnN0QGNocm9taXVtLm9yZz4KClJl
dmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIHwgNDAg
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRp
b25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2
ZGVjLmMKPiBpbmRleCA3MTMxMTU2YzFmMmMuLjNmM2Y5NjQ4OGQ3NCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IEBAIC0yODAsMzEgKzI4MCwyMCBAQCBzdGF0aWMg
aW50IHJrdmRlY190cnlfb3V0cHV0X2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHJrdmRlY19zX2ZtdChzdHJ1Y3Qg
ZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKPiAtCQkJc3RydWN0IHY0bDJfZm9ybWF0ICpmLAo+IC0J
CQlpbnQgKCp0cnlfZm10KShzdHJ1Y3QgZmlsZSAqLCB2b2lkICosCj4gLQkJCQkgICAgICAgc3Ry
dWN0IHY0bDJfZm9ybWF0ICopKQo+ICtzdGF0aWMgaW50IHJrdmRlY19zX2NhcHR1cmVfZm10KHN0
cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICsJCQkJc3RydWN0IHY0bDJfZm9ybWF0ICpm
KQo+ICB7Cj4gIAlzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gZmhfdG9fcmt2ZGVjX2N0eChwcml2
KTsKPiAgCXN0cnVjdCB2YjJfcXVldWUgKnZxOwo+ICsJaW50IHJldDsKPiAgCj4gLQlpZiAoIXRy
eV9mbXQpCj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4gLQo+IC0JdnEgPSB2NGwyX20ybV9nZXRfdnEo
Y3R4LT5maC5tMm1fY3R4LCBmLT50eXBlKTsKPiArCS8qIENoYW5nZSBub3QgYWxsb3dlZCBpZiBx
dWV1ZSBpcyBidXN5ICovCj4gKwl2cSA9IHY0bDJfbTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgs
Cj4gKwkJCSAgICAgVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFX01QTEFORSk7Cj4gIAlpZiAo
dmIyX2lzX2J1c3kodnEpKQo+ICAJCXJldHVybiAtRUJVU1k7Cj4gIAo+IC0JcmV0dXJuIHRyeV9m
bXQoZmlsZSwgcHJpdiwgZik7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgcmt2ZGVjX3NfY2FwdHVy
ZV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCj4gLQkJCQlzdHJ1Y3QgdjRsMl9m
b3JtYXQgKmYpCj4gLXsKPiAtCXN0cnVjdCBya3ZkZWNfY3R4ICpjdHggPSBmaF90b19ya3ZkZWNf
Y3R4KHByaXYpOwo+IC0JaW50IHJldDsKPiAtCj4gLQlyZXQgPSBya3ZkZWNfc19mbXQoZmlsZSwg
cHJpdiwgZiwgcmt2ZGVjX3RyeV9jYXB0dXJlX2ZtdCk7Cj4gKwlyZXQgPSBya3ZkZWNfdHJ5X2Nh
cHR1cmVfZm10KGZpbGUsIHByaXYsIGYpOwo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+
ICAKPiBAQCAtMzE5LDkgKzMwOCwyMCBAQCBzdGF0aWMgaW50IHJrdmRlY19zX291dHB1dF9mbXQo
c3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCj4gIAlzdHJ1Y3QgdjRsMl9tMm1fY3R4ICpt
Mm1fY3R4ID0gY3R4LT5maC5tMm1fY3R4Owo+ICAJY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9m
bXRfZGVzYyAqZGVzYzsKPiAgCXN0cnVjdCB2NGwyX2Zvcm1hdCAqY2FwX2ZtdDsKPiAtCXN0cnVj
dCB2YjJfcXVldWUgKnBlZXJfdnE7Cj4gKwlzdHJ1Y3QgdmIyX3F1ZXVlICpwZWVyX3ZxLCAqdnE7
Cj4gIAlpbnQgcmV0Owo+ICAKPiArCS8qCj4gKwkgKiBJbiBvcmRlciB0byBzdXBwb3J0IGR5bmFt
aWMgcmVzb2x1dGlvbiBjaGFuZ2UsIHRoZSBkZWNvZGVyIGFkbWl0cwo+ICsJICogYSByZXNvbHV0
aW9uIGNoYW5nZSwgYXMgbG9uZyBhcyB0aGUgcGl4ZWxmb3JtYXQgcmVtYWlucy4gQ2FuJ3QgYmUK
PiArCSAqIGRvbmUgaWYgc3RyZWFtaW5nLgo+ICsJICovCj4gKwl2cSA9IHY0bDJfbTJtX2dldF92
cShtMm1fY3R4LCBWNEwyX0JVRl9UWVBFX1ZJREVPX09VVFBVVF9NUExBTkUpOwo+ICsJaWYgKHZi
Ml9pc19zdHJlYW1pbmcodnEpIHx8Cj4gKwkgICAgKHZiMl9pc19idXN5KHZxKSAmJgo+ICsJICAg
ICBmLT5mbXQucGl4X21wLnBpeGVsZm9ybWF0ICE9IGN0eC0+Y29kZWRfZm10LmZtdC5waXhfbXAu
cGl4ZWxmb3JtYXQpKQo+ICsJCXJldHVybiAtRUJVU1k7Cj4gKwo+ICAJLyoKPiAgCSAqIFNpbmNl
IGZvcm1hdCBjaGFuZ2Ugb24gdGhlIE9VVFBVVCBxdWV1ZSB3aWxsIHJlc2V0IHRoZSBDQVBUVVJF
Cj4gIAkgKiBxdWV1ZSwgd2UgY2FuJ3QgYWxsb3cgZG9pbmcgc28gd2hlbiB0aGUgQ0FQVFVSRSBx
dWV1ZSBoYXMgYnVmZmVycwo+IEBAIC0zMzEsNyArMzMxLDcgQEAgc3RhdGljIGludCBya3ZkZWNf
c19vdXRwdXRfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAJaWYgKHZiMl9p
c19idXN5KHBlZXJfdnEpKQo+ICAJCXJldHVybiAtRUJVU1k7Cj4gIAo+IC0JcmV0ID0gcmt2ZGVj
X3NfZm10KGZpbGUsIHByaXYsIGYsIHJrdmRlY190cnlfb3V0cHV0X2ZtdCk7Cj4gKwlyZXQgPSBy
a3ZkZWNfdHJ5X291dHB1dF9mbXQoZmlsZSwgcHJpdiwgZik7Cj4gIAlpZiAocmV0KQo+ICAJCXJl
dHVybiByZXQ7Cj4gIAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

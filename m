Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A415C624DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 09:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MD82oe2SVKma8vo7sDexvTJaWkWMMqsmcVjoi+3mzw8=; b=YRw31FBVFUW6NX
	7WIOe/Mfe2vftK+c3KyMXsOZNWE/Bhfng3AOj7QDqgNgOtgAuRTwLqAZmMOmOm1wv71QVk0oDqZxW
	iGcbn+62cPsT7vz9+E8Acpzf2Ok08wWakmwFIv+pRDaVjF9E6g0BfT+W9vGQIALlTXOpsS9eJODzQ
	1J+VausIKIRWyRZOeBOUXNGwiTxLpLoZg97YpA9R6iMHlUlkUVBzBF9KR5Wig+lo+4j42ZZNOqepr
	YeeO6eGnHetb0sQspjybGrh1PhtMftaCi1crCjaZQ6NzIFUhUJvFCrWdk0bunrTncXUj9aBP15BDO
	1+pirVm7r67ykfSoydvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QLo-00000001YOh-10hX;
	Fri, 04 Sep 2026 09:36:48 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QLk-00000001YN3-3ujl
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 09:36:46 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c252e703fa3so113867466b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 02:36:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788514602; cv=none;
        d=google.com; s=arc-20260327;
        b=a8FQqAEc3ldC8YkjuU5R74SwRHRyctvXJiWzbyQU1JEqomYv0NrT0iyUQmzo6WyWK8
         i3eK2N4qqNqmgfRyqsT3LCEXOxTysnWeDrHIDyQjWHdqSTSZ7FaXRnYOdA1W+HFyN9o2
         fohlYjEADiUKpJccNMKIVC+NkXrLuDIiru+yqR8O/ELXwBJ1isoQ99yTlgPDNova+Tm/
         yi+bt5yMkg11hEikk0phpeYmoFmhDAOEtGEZRXRTeu+Nnr8l1vR6MMCNoANLRVcM0uNX
         doSR9Qz/K7m+fYbcRlMyOXZyvhXgJIn4ju03jFMn57pRFLSsQB6HD6HB4sqNkfACLXPc
         5l5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=foFTrG5K5GBINGP1ISszqyndvxgyaNt7XJ7LpKu6ReU=;
        fh=0+veM7J4hoEh5YtoEYpKLhjd4TRGyDf2jt6+C0cFryg=;
        b=dXj3tyw7YvoG4kJzOtK8GVF6FqlmzIwO67oQZQRxtAZ5qwm82m2prUdg78K15uq2sS
         8S2/jpxSLrn5+4H97E71N20DDx2Pe9aQ1aCwcdmeTroB329cYXeypAjX30MQ3iv4ZM9P
         KPB2YPgzZRWVS8GHElnP7GroP9yr9Uqk5BRbD6pq0bGiyt5w6GTJDxvuqIMpVp7PGcgG
         L2a+4O12yrmLQU3bTwon7CBtslEBicHhS8mN/DM5Za++gAzzoErGIH7+N1A8XNhfCwgD
         tYbCcZi3w96CJJvVD21rD400RotT1A8RglhuZHcTkHuWwxeWmALSNhrL6vTPP2Gs64Y4
         HVCg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788514602; x=1789119402; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=foFTrG5K5GBINGP1ISszqyndvxgyaNt7XJ7LpKu6ReU=;
        b=zfnkT7jihI7QOzzBg55Z0KT0PcQ2OCMi/P0HGcFpDHlggFDy1ql5/fAwu0zAci2Inc
         6U0z/KLj2H8oWh6Mcs6IL3rLmp7Auhv5GazG9fdVQYF1hyX+WAUkyU65yipeVlrQpA9k
         FXLwRexhj1acRBSFCpXC5nFKelYrNNlvI3Zf7raoBJRFM62kiGCJnG5Zd7aAyit44R0b
         mISGmykqCiF3ZQdSdCe382aOOQYKhbH0Y7J3MPlTqOx0gEWkeZxzZOgP9jagXLA7aNEI
         g3vrCGSqNoWZH+pilm5wMThLyGMa0B5SKyFCnzdKvP0uea4LcX/9k8OtbGdtq5kBhc/8
         2XOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788514602; x=1789119402;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=foFTrG5K5GBINGP1ISszqyndvxgyaNt7XJ7LpKu6ReU=;
        b=q9SZj8IeZ7K+MrsBoQyyQfJKFsYHhXkUfn1sdAYZqwHBqBB8BzEzF+z4ilHXCL4hN2
         v1IK07k1ostZDptnxoWMKKL4XTgC8OAau2ZS1xX3tcLTqNJB24nBot6XNK0Yn/UnILdX
         aD0frTGsFWmunOpHs7P4izSJJlGtBO4l5j3Ur3zoMg5km4IBDp/ECNQUnQWE9D7WL95s
         fz4GSFCrEnH/YczevJR30tJ/qU5z9gfS6bWczTsqR0OoXuDCaN7tbipS4oXttQJlD/Cm
         UKMVX51eoK23Otz8CYLlBgSK/HPcQsJjUTQNeq7sHTX32p6P8oZ4WaBG2ByujqsP8hZv
         OPbA==
X-Forwarded-Encrypted: i=1; AKwUvBweYY7T09gDaW43yYuycj/uesXQu1eVva/iGqMnbfX0yvmsABOfVTx7IDXXu1MkXRqu7mBCHPmovSkOWi6MnQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lseK4CPcVqriHd/A4ZuwKujBvPJj+N2J+nfnvlcLKPbjm6xi1l
	upUaOYyoXYUwMapvN8CQn8Tj6qwbutGQDX9cYVBDF+HQZ9xdNDFyFHbxV2KvpBSFkzzdqXmV0fz
	jF4jqigO+YYjl5+HJYBcp5VTwfWFCm36xEFAGdMhVhQ==
X-Gm-Gg: AYBFou1Ie7+RnrCe3pnFkVVJFj0DDfx4B+V8BH7R3n6pfPWrsgVypp248VRRruB3guL
	Wk0uSh8CKIRywZMrqGxTwjSAh54+e/as6hQZH3SWqzEhyvGpQaMIN7bhBWN/6jnExxcCsFZmHjI
	BgIIo4546aYn7wQiVOA4pTUHENgRy2Hbx8gD+4VvhJOx3YcJLJm90oBHxCjpep7AkM/RW/I2eDu
	P7dQzx/ebTNBRQKgO1vDA9UEHNi7luB/MycYSczIMDInCeJXsWVWxRa+q7Pk15Jwm0LZPdl9eVR
	j8bJ/TQtaV2tDfOgkok4eKepjJud5RcZK8oihRtotvNVkOqvm9cozVKU/1n4uAB5I7yaueAQxIc
	U
X-Received: by 2002:a17:907:fd17:b0:c26:1648:a069 with SMTP id
 a640c23a62f3a-c261648b781mr97301566b.36.1788514602405; Fri, 04 Sep 2026
 02:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com> <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
 <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com>
In-Reply-To: <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 4 Sep 2026 13:36:34 +0400
X-Gm-Features: AcwNN1WNG6-4w87ND0ZEi9BFf-EutUvUpsgbnymsPufvucLp1TkkKsdtlvZ3MeQ
Message-ID: <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_023645_004298_17BE9B4C 
X-CRM114-Status: GOOD (  22.07  )
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

T24gRnJpLCBTZXAgNCwgMjAyNiBhdCAxOjU54oCvQU0gVmFzaWx5IEtob3J1emhpY2sgPGFuYXJz
b3VsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIFNlcCAyLCAyMDI2IGF0IDE6NDPigK9B
TSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4gd3JvdGU6Cj4gPgo+ID4gSGkg
VmFzaWx5LAo+Cj4gSGV5IEFsZXhleSwKPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLXJrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzM5OS5j
Cj4gPiA+IGluZGV4IGMyYjI0M2Q3YTVlMi4uZGIyNDFkMmRmNjI1IDEwMDY0NAo+ID4gPiAtLS0g
YS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzk5LmMKPiA+ID4gKysrIGIvZHJpdmVycy9j
bGsvcm9ja2NoaXAvY2xrLXJrMzM5OS5jCj4gPiA+IEBAIC05OCw2ICs5OCw3IEBAIHN0YXRpYyBz
dHJ1Y3Qgcm9ja2NoaXBfcGxsX3JhdGVfdGFibGUgcmszMzk5X3BsbF9yYXRlc1tdID0gewo+ID4g
PiAgICAgICAgIFJLMzAzNl9QTExfUkFURSggMTQ4NTAwMDAwLCAxLCA5OSwgNCwgNCwgMSwgMCks
Cj4gPiA+ICAgICAgICAgUkszMDM2X1BMTF9SQVRFKCAxMDY1MDAwMDAsIDEsIDcxLCA0LCA0LCAx
LCAwKSwKPiA+ID4gICAgICAgICBSSzMwMzZfUExMX1JBVEUoICA5NjAwMDAwMCwgMSwgNjQsIDQs
IDQsIDEsIDApLAo+ID4gPiArICAgICAgIFJLMzAzNl9QTExfUkFURSggIDg1NTAwMDAwLCAxLCA1
NywgNCwgNCwgMSwgMCksCj4gPgo+ID4gVGhlcmUgaXMgYWxyZWFkeSBhbiBlbnRyeSBmb3IgMTM2
ODAwMDAwMCwgd2hpY2ggaXMgMTZ4IHlvdXIgcmF0ZSwgYW5kCj4gPiB0aGUgMTZ4IGRpdmlzb3Ig
c2hvdWxkIGZpdCBjb21mb3J0YWJseSBpbnRvIHRoZSBkb3duc3RyZWFtIGNsb2NrJ3MKPiA+IDgt
Yml0IGRpdmlzb3IgZmllbGQuIERvIHlvdSByZWFsbHkgbmVlZCBhIHNlcGFyYXRlIFBMTCByYXRl
PyBIYXZlIHlvdQo+ID4gY2hlY2tlZCB3aGF0IHRoZSBoYXJkd2FyZSBhcnJpdmVzIGF0IHdpdGgg
dGhlIHVubW9kaWZpZWQgUExMIHRhYmxlIC0KPiA+IGUuZy4gdmlhIC9zeXMva2VybmVsL2RlYnVn
L2Nsay9jbGtfc3VtbWFyeT8KPgo+IFNlZSBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1iYXNlLmR0c2ksIGhkbWkgcmVmIGNsb2NrIGlzCj4gd2lyZWQgZGlyZWN0bHkgdG8gVlBM
TCwgYW5kIGR3X2hkbWktcm9ja2NoaXAgY2FsbHMgY2xrX3NldF9yYXRlKCkgd2l0aAo+IHBpeGVs
IGNsb2NrIGZvciByZWYgY2xvY2ssIHNlZQo+IGR3X2hkbWlfcm9ja2NoaXBfZW5jb2Rlcl9hdG9t
aWNfbW9kZV9zZXQoKS4gU28gYXQgbGVhc3QgaW4gdGhlIHJrMzM5OQo+IGNhc2UgVlBMTCBpcyBz
dXBwb3NlZCB0byBzdXBwb3J0IHRoZSByZXF1aXJlZCBwaXhlbCBjbG9jay4gV2l0aG91dCB0aGUK
PiBmaXJzdCBwYXRjaCAxMzY2eDc2OCBtb2RlIHdpdGggODUuNU1IeiBwaXhlbCBjbG9jayBpcyBq
dXN0IHJlamVjdGVkLgoKSSBzdHJvbmdseSBzdXNwZWN0IHRoYXQgdGhlIGR0c2kgZG9lc24ndCBk
ZXNjcmliZSB0aGUgcmVhbCBjbG9jayB1c2FnZQpoZXJlLiBUaGUgVFJNIGZvciBSSzMzOTkgZG9l
c24ndCBzaG93IGFueSAicmVmIiBjbG9jayBmb3IgSERNSSwgYW5kIG5vClRSTS1kb2N1bWVudGVk
IFZQTEwgdXNlcnMgbG9vayBsaWtlIGFueXRoaW5nIHRoYXQgY291bGQgY29ubmVjdApkaXJlY3Rs
eSB0byB0aGUgSERNSSBjb250cm9sbGVyLgoKSSBiZWxpZXZlIHNvbWV0aGluZyBpcyBoYXJkY29k
aW5nIHRoZSBkaXZpc29yIChvciBsZWF2aW5nIGl0IGF0IHRoZQpwb3dlci1vbiBkZWZhdWx0KSBp
biB0aGUgYWN0dWFsIERDTEsgb2YgYSBWT1Agd2hpY2ggdGhlIEhETUkKY29udHJvbGxlciB1c2Vz
LCBpbnN0ZWFkIG9mIG1vZGVsbGluZyBpdCBwcm9wZXJseSBhcyBhIG11eCAoZnJhYy9kaXYpCmZl
ZWRpbmcgb2ZmIFZQTEwgdmlhIGFub3RoZXIgbXV4IC0gYm90aCBwZXJmZWN0bHkgcmVwcmVzZW50
YWJsZSBpbiB0aGUKY2xvY2sgZnJhbWV3b3JrIGFuZCBhbHJlYWR5IGVudmlzYWdlZCBpbiB0aGUg
Y2xvY2sgZHJpdmVyLCBtYWtpbmcgdGhlClBMTCB0YWJsZSBwYXRjaGluZyB1bm5lY2Vzc2FyeS4K
CkNhbiB5b3UgcGxlYXNlIHRyeSByZS1wb2ludGluZyB0aGUgInJlZiIgY2xvY2sgYXQgRENMS19W
T1AwIChvciAxLApkZXBlbmRpbmcgb24gd2hpY2ggb25lIHlvdXIgSERNSSBjb250cm9sbGVyIHVz
ZXMpPyBZb3VyIGNsb2NrIHN1bW1hcnkKYWxyZWFkeSBzaG93cyB0aGF0IHNvbWV0aGluZyBpcyBh
c3NpZ25pbmcgaXRzIHBhcmVudCB0byBEQ0xLX1ZPUHhfRElWCmFuZCB0aGUgbGF0dGVyJ3MgcGFy
ZW50IHRvIFBMTF9WUExMLCBzbyByYXRlIGNoYW5nZXMgdGhlIGN1cnJlbnQKZHJpdmVyIGNvZGUg
ZG9lcyBvbiBWUExMIHByb3BhZ2F0ZSB0byB0aGUgbXV4ZWQgYW5kIGRpdmlkZWQgZG93bnN0cmVh
bQpjb25zdW1lciBhcyBhIHNpZGUtZWZmZWN0IHJhdGhlciB0aGFuIGFzIGFuIGFjdHVhbCByYXRl
IHJlcXVlc3QuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F9E1C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRazzis0AfRIcNMU4b/PGB+0Pd7QFp8uLNfbaYF4t0Y=; b=zfqI0ZyO0yvVhk
	QZDIZRvnE0e/02F0mCpShQRV3XpPzfwzq7LOtzmLUPov8qWo6yobvHS15FUcw4COZ1S2XkTEBcJit
	tAAUFnTIKMR/tfYC83cjIrJORpKsXkP/0byuOjzWaHVCWurFlC6UQWTdEc9j1v9v06ULZb/EnjwSm
	Dv3oW7w4YKW1uPs76lExuq+FIr1O4hTGS507P+eIe1MBvJVZtSflJjltkBNTSIoIjZeb32CEgLn7w
	0n9xQr81VPT6L4Fyz5pnUa4rjdGYc1Gi5WbCwIU0v1bTUNWRxQPja4xowQN+gXWEkoUElaJqn4lss
	Cgmcn31mEC9dP9aodKZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r874Y-006XsK-1m;
	Tue, 28 Nov 2023 23:00:54 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r874U-006XqW-3B
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:00:52 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-41cd4cc515fso33926031cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701212450; x=1701817250; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5qTeYLca2e2he2/h7lciNlkt/VVLJwBuHOteswziYE=;
        b=BSxkEci2E4QspinJ1zK5w7HRUkTbi7BSPNHNmFMlMDffptj5r3q4FyxHqfQMX6jDds
         d7PcZhajZ6D7dI7OynU8Z7dY30zU4zyzlzLxzG+ztOfHvWy6i7eEmWtzl4BkqzZEdFgh
         jB5fYl3c7+Oj7y/KwxfcqTScH7ZPQ8YFaLRSnuF4lvAHpGWYXcRm4Eo9yY7G8+yGfpU7
         LQlaaoetVDks2gEXyY0WeW8+NRDNCuPJhgTb+TgURPC4LYmRXvL88XckX4iAaOCVwdB2
         CeE5swQZSUZmrUbzTDi0C61c0qcTk3wbUoUUsaK/CdMMCuIQXCH/kxoqRNnsUv77PoA8
         7hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701212450; x=1701817250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i5qTeYLca2e2he2/h7lciNlkt/VVLJwBuHOteswziYE=;
        b=ChGS3IxlXYQBqxWPcj95ECJ8e7ovAtFIIeQl9OSZ/CZujtvcOxD14otf9YpPxw8frf
         QyBZBKn0Cc6XaqoZzfdTCv0Y8RfCpB58DATZTiH0GdccScGmcEEHMbqVvzN3ZHvsR0Gm
         HwjR4R5PGV/jrr6cGe4kiP3EnBYKs0Mq2oaBrRmHkdoTM5hjY8CP94gQocBkGlMlY9ss
         P3A7jOHlDycUVNZ4LKQH1TI22jch6WE6IIf+Ikv7TQLgr04VgJb7Q9Ml+GL8D0F+ynDA
         pmwScyGOcP6pg1oj80ags7Dq9vfUtQ+ew3skkZpT1XoV6pVFJfpsVLi85OR5b8XD8kgi
         ze3w==
X-Gm-Message-State: AOJu0YyGHi4ZyALmB7knsor9IAvaW3XB5WD5+V8r5IBjOVJM+aMZU4vW
	qc7hMm98ZM39q5X4r6Liy6OGnmOfrRk/7EIHGNUgXw==
X-Google-Smtp-Source: AGHT+IEPyMHIunggDlyG5iB0FMPH+mJhboCaVsS2S6rrqwyBMR/AatdaxBsSOQb0215dRYgwc4yOM/dAMVD+X08yuok=
X-Received: by 2002:a05:622a:34c:b0:41e:213d:3c8e with SMTP id
 r12-20020a05622a034c00b0041e213d3c8emr18601609qtw.32.1701212449795; Tue, 28
 Nov 2023 15:00:49 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com> <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
In-Reply-To: <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 18:00:13 -0500
Message-ID: <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided by iommu-pages.h
To: Robin Murphy <robin.murphy@arm.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, 
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com, 
	netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org, 
	samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_150051_033645_6B341338 
X-CRM114-Status: GOOD (  20.22  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNTo1M+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMS0yOCA4OjQ5IHBtLCBQYXNoYSBUYXRh
c2hpbiB3cm90ZToKPiA+IENvbnZlcnQgaW9tbXUvZnNsX3BhbXUuYyB0byB1c2UgdGhlIG5ldyBw
YWdlIGFsbG9jYXRpb24gZnVuY3Rpb25zCj4gPiBwcm92aWRlZCBpbiBpb21tdS1wYWdlcy5oLgo+
Cj4gQWdhaW4sIHRoaXMgaXMgbm90IGEgcGFnZXRhYmxlLiBUaGlzIHRoaW5nIGRvZXNuJ3QgZXZl
biAqaGF2ZSogcGFnZXRhYmxlcy4KPgo+IFNpbWlsYXIgdG8gcGF0Y2hlcyAjMSBhbmQgIzIgd2hl
cmUgeW91J3JlIGx1bXBpbmcgaW4gY29uZmlndXJhdGlvbgo+IHRhYmxlcyB3aGljaCBiZWxvbmcg
dG8gdGhlIElPTU1VIGRyaXZlciBpdHNlbGYsIGFzIG9wcG9zZWQgdG8gcGFnZXRhYmxlcwo+IHdo
aWNoIGVmZmVjdGl2ZWx5IGJlbG9uZyB0byBhbiBJT01NVSBkb21haW4ncyB1c2VyLiBCdXQgdGhl
biB0aGVyZSBhcmUKPiBzdGlsbCBkcml2ZXJzIHdoZXJlIHlvdSdyZSAqbm90KiBhY2NvdW50aW5n
IHNpbWlsYXIgY29uZmlndXJhdGlvbgo+IHN0cnVjdHVyZXMsIHNvIEkgcmVhbGx5IHN0cnVnZ2xl
IHRvIHNlZSBob3cgdGhpcyBtZXRyaWMgaXMgdXNlZnVsIHdoZW4KPiBpdCdzIHNvIGNvbXBsZXRl
bHkgaW5jb25zaXN0ZW50IGluIHdoYXQgaXQncyBjb3VudGluZyA6LwoKVGhlIHdob2xlIElPTU1V
IHN1YnN5c3RlbSBhbGxvY2F0ZXMgYSBzaWduaWZpY2FudCBhbW91bnQgb2Yga2VybmVsCmxvY2tl
ZCBtZW1vcnkgdGhhdCB3ZSB3YW50IHRvIGF0IGxlYXN0IG9ic2VydmUuIFRoZSBuZXcgZmllbGQg
aW4Kdm1zdGF0IGRvZXMganVzdCB0aGF0OiBpdCByZXBvcnRzIEFMTCBidWRkeSBhbGxvY2F0b3Ig
bWVtb3J5IHRoYXQKSU9NTVUgYWxsb2NhdGVzLiBIb3dldmVyLCBmb3IgYWNjb3VudGluZyBwdXJw
b3NlcywgSSBhZ3JlZSwgd2UgbmVlZCB0bwpkbyBiZXR0ZXIsIGFuZCBzZXBhcmF0ZSBhdCBsZWFz
dCBpb21tdSBwYWdldGFibGVzIGZyb20gdGhlIHJlc3QuCgpXZSBjYW4gc2VwYXJhdGUgdGhlIG1l
dHJpYyBpbnRvIHR3bzoKaW9tbXUgcGFnZXRhYmxlIG9ubHkKaW9tbXUgZXZlcnl0aGluZwoKb3Ig
aW50byB0aHJlZToKaW9tbXUgcGFnZXRhYmxlIG9ubHkKaW9tbXUgZG1hCmlvbW11IGV2ZXJ5dGhp
bmcKCldoYXQgZG8geW91IHRoaW5rPwoKUGFzaGEKCj4KPiBUaGFua3MsCj4gUm9iaW4uCj4KPiA+
IFNpZ25lZC1vZmYtYnk6IFBhc2hhIFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvaW9tbXUvZnNsX3BhbXUuYyB8IDUgKysrLS0KPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9mc2xfcGFtdS5jIGIvZHJpdmVycy9pb21tdS9mc2xf
cGFtdS5jCj4gPiBpbmRleCBmMzdkM2IwNDQxMzEuLjdiZmI0OTk0MGYwYyAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvaW9tbXUvZnNsX3BhbXUuYwo+ID4gKysrIGIvZHJpdmVycy9pb21tdS9mc2xf
cGFtdS5jCj4gPiBAQCAtMTYsNiArMTYsNyBAQAo+ID4gICAjaW5jbHVkZSA8bGludXgvcGxhdGZv
cm1fZGV2aWNlLmg+Cj4gPgo+ID4gICAjaW5jbHVkZSA8YXNtL21wYzg1eHguaD4KPiA+ICsjaW5j
bHVkZSAiaW9tbXUtcGFnZXMuaCIKPiA+Cj4gPiAgIC8qIGRlZmluZSBpbmRleGVzIGZvciBlYWNo
IG9wZXJhdGlvbiBtYXBwaW5nIHNjZW5hcmlvICovCj4gPiAgICNkZWZpbmUgT01JX1FNQU4gICAg
ICAgIDB4MDAKPiA+IEBAIC04MjgsNyArODI5LDcgQEAgc3RhdGljIGludCBmc2xfcGFtdV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICAoUEFHRV9T
SVpFIDw8IGdldF9vcmRlcihPTVRfU0laRSkpOwo+ID4gICAgICAgb3JkZXIgPSBnZXRfb3JkZXIo
bWVtX3NpemUpOwo+ID4KPiA+IC0gICAgIHAgPSBhbGxvY19wYWdlcyhHRlBfS0VSTkVMIHwgX19H
RlBfWkVSTywgb3JkZXIpOwo+ID4gKyAgICAgcCA9IF9faW9tbXVfYWxsb2NfcGFnZXMoR0ZQX0tF
Uk5FTCwgb3JkZXIpOwo+ID4gICAgICAgaWYgKCFwKSB7Cj4gPiAgICAgICAgICAgICAgIGRldl9l
cnIoZGV2LCAidW5hYmxlIHRvIGFsbG9jYXRlIFBBQUNUL1NQQUFDVC9PTVQgYmxvY2tcbiIpOwo+
ID4gICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+ID4gQEAgLTkxNiw3ICs5MTcsNyBAQCBz
dGF0aWMgaW50IGZzbF9wYW11X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
PiAgICAgICAgICAgICAgIGlvdW5tYXAoZ3V0c19yZWdzKTsKPiA+Cj4gPiAgICAgICBpZiAocHBh
YWN0KQo+ID4gLSAgICAgICAgICAgICBmcmVlX3BhZ2VzKCh1bnNpZ25lZCBsb25nKXBwYWFjdCwg
b3JkZXIpOwo+ID4gKyAgICAgICAgICAgICBpb21tdV9mcmVlX3BhZ2VzKHBwYWFjdCwgb3JkZXIp
Owo+ID4KPiA+ICAgICAgIHBwYWFjdCA9IE5VTEw7Cj4gPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30EEFC4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 09:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXUiDCBMd2/sXSAfS/M/B/iYOkM348e4SYD0uBCTMu0=; b=NhCUi2SbvLGrXm
	8GLI/rLrc3hUWbNS0Vj7OR4J1rRTwe/UI7mHlZ2nrSyJ2mM7FYXELk+PhMDhRrfR4iz2MnYnS4Ewy
	n8FyOryI9T//0hzMqwYV+S8nrU5weNT+FiPPkEL1OuzhyJ+gknMvaEyfDJ4bYSFju5bs4nHZo+xwk
	tvmxx6eWTnO7b106anKMtJZHLOKQhFJSvekqvDODt7vMUYw+wB8lNkl7aRdIdNMex2jBj9BBCkHbU
	K/IoZimqTN8hfw9XsocUS0PWZiPqGWeyTMntQWvFKmrWSLviIeHi6yME2dlu6y5raoPS22hScT7ru
	+8xWJJj5I+BJhhiFGQ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIKa-0000000Gqz2-2FqO;
	Thu, 16 Jul 2026 09:24:36 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIKX-0000000GqxX-0boX
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 09:24:35 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-84a652535dcso1193650b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 02:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784193872; cv=none;
        d=google.com; s=arc-20260327;
        b=qhrn+6dkM22K9pBME7y/PX7DXjsw83j/ITvF6krCeW8NFPXdyOs9paYLGowYZeBIFv
         Pwo/TzncQgoLwY/CSSci79D4pVKky3xp/1Met/yoYpdfNfF6Fngo71h8tCXdEswcTp9Q
         6oUIu16uLQjCGBdW89WwTWaFsHrXBcSZv7i1NXjUHDlW9jutSlTJNoJVUld+Je3Y/IMq
         v7qMoCXk18jShlKUsiONIwgC38BfoNdARDR+JI9kALa0EahVsgf8dVNpvJFhhqlqjHj9
         2tc/S1esetP4tXwCE4Z3GJaGPXvKifvFX0Qhmw36Svul08WhiiHwFOnRj1mUanA1xKe+
         9QfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D5AXjA9Tcy5dG64KZLElqY/MzuwlW4GyobQ/vNPe094=;
        fh=WHsORZD+aeitysPsNOyQEXad4wfLpehOPJ7BRKVeKkw=;
        b=e5Vdm64D/bC+zcSUd0k4V7WMGqGdb0udt3wC223lThz5JKCaLuAxGxNThNweXwxFQx
         6D7aEcbRF7xSGJfTPo3yKGA+qGqMOUHQaMf3T5ayg9hXPC1Z5p4HjNxingrUCPeazfK6
         cwwF7pwrxaH4r/xdYSqLNne/8rIAYctWvPcAYJtpmcXRdRGEEMm8FdE5Jow7HSaRpX5Y
         F8K5LJs5ZzZ+XWKmiCipwM7mvUy+AzETjyq3+nwOQ3Og+cqaN/03S9Kb2AxU0ovfhHpv
         KziIj09/yajXe9dahTnEsdLpjxoSbHchKNcgzYDKv94rmYyomAAvFGe6IvMNELiMn2HD
         /wGw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784193872; x=1784798672; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D5AXjA9Tcy5dG64KZLElqY/MzuwlW4GyobQ/vNPe094=;
        b=TQ+SWxfvv/D+8UZKHloSrncTRRyNdw2TXKWN9bKh5WC0LEg4lxrWo57q1RASAPgWxD
         DOrmXOEJU7TzErUOSuPkuuC3Lyk3MH66kp8xrqcc0I4tw/ggChQF0benGNBZRUZ1R+73
         KAvIAF/V19Dd5QyXcV8i8H8iPy2/+ufctkNZmk9jLfugR1YTfHc5jjd52ZnCiiPndgyJ
         bY1Dwt8SrLq1WJs6C3xzADQB7cfms4xloxM0w0TzotCRSBDtJEbG3/5DY7wjZ4+F/V55
         3f9IDCplltGTr+74bE1kfjsNZ5F++oGdfAHI1iF/5XrSwd3yMpYxl3Cu7u88n8c7A6C6
         9FfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784193872; x=1784798672;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D5AXjA9Tcy5dG64KZLElqY/MzuwlW4GyobQ/vNPe094=;
        b=Cs611yGq+EtPCOzUlarbhqT8mHAjMeB5VyJHKvBnQ6GV8CJoQh150eCBgecKtgx+Uj
         1VR4GCA7qYpmN4egxrBfrgVQw3J7U/BXsn5qfwVRTiAsBmvRiBhZznzYE9Hws3GFQhC9
         7qa2D3uhO9DhvO1QKX68T+e8kNF4LA6Sj/ealaURFQ7aHP2GubtRNj36UMVdr/79DbrV
         MPbN/E0DukleWy43NzGVBG1PPDGQxLllcZa+/awsZ6c3vQ4VXL1pldpnmAchdXKXI1Bc
         YW4NSsmBRnb8TKTC74bOWj6nIZ+wI9wN92bw1NPn9jMUi7FpeCR3/IpXUyNrr0Zhr78w
         g5HQ==
X-Forwarded-Encrypted: i=1; AHgh+RrelAXiKEYHGodhqMCfWoGO1wbF7XPia01DXuB0qEt1dC9iTzLfmgYLxQ4VRerd83VSgJx4mht41RpaJn1VDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3Ozy3E5XbBMlwIdWnMAStA7C4lbjdtE+V0yQmmuJWCfJJqapX
	KloCvZrD7/5kC4OQFfCKllfOLuCHUGxovSZeP69uWxrTsVvn4UFkwxJnRenbgdUT7I45xoz9mhb
	8/Ucv60lQ/DaSr8T4URT9UGOYFfwtoSc=
X-Gm-Gg: AfdE7ckOJAuFpKF4/3PJb9wIcsW+o5YVDyWeTIIxKejRVWc1BnkvClGV1K9/HC+D7Er
	xDOkNqlR942Tdp5QROENbxQHS8upH2fHyY/LwZ8dWxiI+oYHW8v2jtLhuq2pyUfDvrA6qgKGhyX
	3Mva89KOcf8nQXDQX2BWIzIPoSbTjzPETfYkIzPNwieUiBHUsgIa2FfeooofbazYK0tpfaEx102
	VufQ2RVxIVJ4HeBOB7JA8H4mBeqvhFF4jZV5bZpeuwT0Hkwp4mIshSzRNNDq5x4F4sUQa7ZIJz5
	rMLH8nt65eRXhO8x7FFxx7L4fvc4ZMeceVyPUyu4d8c=
X-Received: by 2002:a05:6a00:f08:b0:847:8504:9946 with SMTP id
 d2e1a72fcca58-84a6726b83dmr5832591b3a.25.1784193872009; Thu, 16 Jul 2026
 02:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <20260713-nanopi-m6-v3-11-227567ffc5dc@gmail.com> <20260713204131.C58091F000E9@smtp.kernel.org>
In-Reply-To: <20260713204131.C58091F000E9@smtp.kernel.org>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Thu, 16 Jul 2026 11:24:20 +0200
X-Gm-Features: AUfX_myLtG8XdKEHnucqiDRzCNz_tCXXHKJzmB4U4Ch-HDmXpuQEg3jOwAHCgo8
Message-ID: <CAPSPb=v=ZDGJ41auxGgSOpKo69MycE=FtMyHf9sG9a3ju9PAaQ@mail.gmail.com>
Subject: Re: [PATCH v3 11/12] arm64: dts: rockchip: rk3588s-nanopi-r6:
 refactor to support M6 boards
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, 
	Diederik de Haas <diederik@cknow-tech.com>, Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_022433_187003_5C3ED599 
X-CRM114-Status: GOOD (  19.56  )
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

SGksCgpPbiBNb24sIDEzIEp1bCAyMDI2IGF0IDIyOjQxLCA8c2FzaGlrby1ib3RAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJ
IHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtNZWRp
dW1dIFVuaW50ZW50aW9uYWwgcmVzdG9yYXRpb24gb2YgYHJlZ3VsYXRvci1ib290LW9uYCBmb3Ig
YHZkZF9ucHVfczBgIGR1cmluZyByZWZhY3RvcmluZy4KPiAtIFtMb3ddIERhbmdsaW5nIHBoYW5k
bGUgcmVmZXJlbmNlIGAmdmNjNXYwX3VzYl9vdGcwYCBpbiB0aGUgY29tbW9uIGAuZHRzaWAgZmls
ZS4KPiAtLQo+Cj4gLS0tIFBhdGNoIFsxMV06IFtQQVRDSCB2MyAxMS8xMl0gYXJtNjQ6IGR0czog
cm9ja2NoaXA6IHJrMzU4OHMtbmFub3BpLXI2OiByZWZhY3RvciB0byBzdXBwb3J0IE02IGJvYXJk
cyAtLS0KPiBjb21taXQgMDU2YWRmZjc1ZWMwODk4OWI5NmYwOWFkYzBlZmZmNmMzYTVkNjYyZgo+
IEF1dGhvcjogSm9hY2hpbSBFYXN0d29vZCA8am9hY2hpbS5lYXN0d29vZEBnbWFpbC5jb20+Cj4K
PiBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTg4cy1uYW5vcGktcjY6IHJlZmFjdG9yIHRvIHN1
cHBvcnQgTTYgYm9hcmRzCj4KPiBGcmllbmRseUVsZWMgTmFub1BpNiBzZXJpZXMgY29uc2lzdHMg
b2YgZm91ciBkaXN0aW5jdCBib2FyZHM7IFI2UywgUjZDLAo+IE02IGFuZCBNNlYyLiBSZWZhY3Rv
ciBGcmllbmRseUVsZWMgTmFub1BpIFI2IGJhc2UgZHRzaSBpbiBwcmVwYXJhdGlvbgo+IGZvciBh
ZGRpbmcgTmFub1BpIE02IHN1cHBvcnQuCj4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
PiBpbmRleCAwMDAwMDAwMDAwMDAwLi5hOGU1MzJhZDhiN2E4Cj4gPiAtLS0gL2Rldi9udWxsCj4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kK
Pgo+IFsgLi4uIF0KPgo+ID4gKyZpMmMyIHsKPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+
ICsKPiA+ICsgICAgIHZkZF9ucHVfczA6IHJlZ3VsYXRvckA0MiB7Cj4gPiArICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAicm9ja2NoaXAscms4NjAyIjsKPiA+ICsgICAgICAgICAgICAgcmVnID0g
PDB4NDI+Owo+ID4gKyAgICAgICAgICAgICBmY3Msc3VzcGVuZC12b2x0YWdlLXNlbGVjdG9yID0g
PDE+Owo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbnB1X3MwIjsKPiA+
ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTUwMDAwPjsKPiA+ICsg
ICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8OTUwMDAwPjsKPiA+ICsgICAg
ICAgICAgICAgcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjMwMD47Cj4gPiArICAgICAgICAgICAg
IHJlZ3VsYXRvci1ib290LW9uOwo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gSXMgdGhlIGFkZGl0
aW9uIG9mIHJlZ3VsYXRvci1ib290LW9uIGhlcmUgaW50ZW50aW9uYWw/CgpTZWVtcyBsaWtlIEkg
c2NyZXdlZCB1cCB0aGUgcmVmYWN0b3Jpbmcgb2YgdGhlIGNvZGUsIGFuZCBTYXNoaWtvIGNhdWdo
dCBtZS4KSSB3aWxsIGZpeCBpdCBhbmQgc2VuZCBvdXQgYSBuZXcgcGF0Y2ggc2V0IGxhdGVyLgoK
PiBUaGlzIGFwcGVhcnMgdG8gYWNjaWRlbnRhbGx5IHJldmVydCBhIHByaW9yIGZpeCB0aGF0IHJl
bW92ZWQgdGhlIGJvb3Qtb24KPiBwcm9wZXJ0eSBmb3IgdmRkX25wdV9zMCB0byBzYXZlIHBvd2Vy
IGR1cmluZyBlYXJseSBib290Lgo+Cj4gPiArICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZj
YzV2MF9zeXM+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3Itc3RhdGUtbWVtIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gPiAr
ICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gK307Cj4KPiBbIC4uLiBdCj4KPiA+ICsm
dTJwaHkwX290ZyB7Cj4gPiArICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNiX290ZzA+Owo+
Cj4gW1NldmVyaXR5OiBMb3ddCj4gRG9lcyB0aGlzIGNyZWF0ZSBhIGRhbmdsaW5nIHBoYW5kbGUg
cmVmZXJlbmNlIGluIHRoZSBjb21tb24gZHRzaSBmaWxlPwo+Cj4gU2luY2UgdGhlIHZjYzV2MF91
c2Jfb3RnMCByZWd1bGF0b3Igd2FzIGxlZnQgaW4gdGhlIGJvYXJkLXNwZWNpZmljCj4gcmszNTg4
cy1uYW5vcGktcjYuZHRzaSBmaWxlLCBpdCBsb29rcyBsaWtlIGNvbXBpbGluZyBhIG5ldyBib2Fy
ZCAobGlrZSB0aGUgTTYpCj4gdGhhdCBpbmNsdWRlcyB0aGlzIGNvbW1vbiBkdHNpIHdpbGwgZmFp
bCB0byBidWlsZCBpZiBpdCBkb2Vzbid0IGFsc28gZGVmaW5lIGEKPiByZWd1bGF0b3Igd2l0aCB0
aGlzIGV4YWN0IGxhYmVsLgoKSSBkb24ndCB0aGluayB0aGlzIGlzIHJlYWxseSBhbiBpc3N1ZS4g
Qm90aCBuYW5vcGktcjYuZHRzaSBhbmQgbmFub3BpLW02LmR0c2kKd2lsbCBoYXZlIHRob3NlIHJl
Z3VsYXRvcnMgZGVmaW5lZC4KClVubGVzcyBzb21lb25lIHRlbGxzIG1lIHRoaXMgaXMgYmFkIHBy
YWN0aWNlIEkgd2lsbCBrZWVwIHRoaXMgYXMgaXQgaXMuCgoKYmVzdCByZWdhcmRzLApKb2FjaGlt
IEVhc3R3b29kCgo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4KPiAtLQo+IFNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcx
My1uYW5vcGktbTYtdjMtMC0yMjc1NjdmZmM1ZGNAZ21haWwuY29tP3BhcnQ9MTEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

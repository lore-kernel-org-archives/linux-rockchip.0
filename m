Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57BAC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5h+idqZWNGBE9zeNvNMcmRHQiaWwWUWES2vzdSZYNU=; b=43b4rDVLj6ICW8
	53tUgiSQb34cJKRpdr981CmISHG5eQfG7YziS8ZFm6nOpYG2eWmu+00fKScV+njvrUVJ3Hr0u74nB
	t+900EamfplbuOspNaIh7NF7dMo0kjRizsS23zfFJq4mhh8UMA/meXf12prr2MzV7BCa086H2FpbK
	HSgPChchjRUGNx/P5Mv6zzaUejl8TyHVLS85ZqcyZFDjy6NJBcEycBRICS7dx7yH34Zy94w/bnI2Z
	HPELIe8gQ8+kkw4Gl3cUQLo+xO921aaE5yderZ+SKNwnWck82ikEoD6TTCnyflLAGclzzY2hR3I8P
	05edn0nkbEcJgN1C74nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdYKD-00000000x6h-3U4e;
	Mon, 12 Aug 2024 16:55:17 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdYKA-00000000x5f-0DLY
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Aug 2024 16:55:15 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70cec4aa1e4so3325168b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Aug 2024 09:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723481712; x=1724086512; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zG66/eBVG/x3gWkt3ExQFG0ZymJq67sA2nBIpQo8ZVQ=;
        b=PEfSuEAbPvh/rcloZJfSdZ9diMMK2hUCtnHptq7OA29yaDUFFwhCn0obCdEmifZmhM
         pt0ngqdOtgjvt2oaqT0Oi5AVHFbZgitx4eQAGmAqsjcrv2/OI4SeVkm/RdVBEmVAQvJR
         G+TBsI1a42TeIZzxdr3xPetjWrEWsQAnogyve5BUks/Ksklcr/BSmDZys7W4wEWKyC7p
         vqLZygJfsgOfV2AR2QiKrZwYoPqtH6Z5sGA8XlevXUPjn3L3AcdtaP+Ki0wpKlHkomrM
         fjmL/DRwN6R2obkivvL11Xd5QdKbTt0TM+qPHaJL4BQ4c8Uu25qMkLIm2H8GaTu01a8U
         JiBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723481712; x=1724086512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zG66/eBVG/x3gWkt3ExQFG0ZymJq67sA2nBIpQo8ZVQ=;
        b=OnQHXjARstIZ+MfxCaQgU8xS4YXBpYDeTtGffcm/AGU4eBerWDTKDQNHQfxgbGh07C
         Ng9puhetaSgGl2IydHaOXeLOlOmZhTP7EstAA0IWVMvch/iUSHjh//F9P/MXOdrQaojj
         inabULtrvMYXcGunI0FAwuomUaqfhaa6y/LK2DNPHL5jEhdS9wXdrQ08rn3F3N613wi4
         pQUvjDmLFJMdbtEqMhGgYjSuj6oTZZIp+GMVvbdnchCBRBrNodtxdKUq/q8pTUMvq/Fz
         s/VdvlMBIi8JPu/BMLXIbmZ7OHj+cldHIwHweRx+tmPnB1qEkRfiZmZ3WO4XRFXKw+TH
         05/g==
X-Forwarded-Encrypted: i=1; AJvYcCUSWb4ihfr/bmR6N6XpppNL19qv0g//avnrKI6zGXxXaPcoMkEoSRFGiaZgYohXO33FgEbhWuxuG3hjGo3ynqtOzQ2Bc+mneC9zo2BdQ92lkZUh
X-Gm-Message-State: AOJu0YzlxDZFXCzLnKDphlhapSD3rFuK0Fx+S46njYUBV4woY8kve61/
	JwJEm+3qMt2IyGX1RE47LmIf1lyEKCV7AD5PqppLSmQbRxEDEKvC
X-Google-Smtp-Source: AGHT+IEBwSf+fodbYhL2oVkAkNVKhy4cVzJR9k8klIravuzNtcXA9eYBt6xvCZZaew69xrl8bF2y6A==
X-Received: by 2002:a05:6a21:168c:b0:1c6:fbc8:670d with SMTP id adf61e73a8af0-1c8d75a27f5mr1413528637.43.1723481712433;
        Mon, 12 Aug 2024 09:55:12 -0700 (PDT)
Received: from thinkpad ([220.158.156.101])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-200bbb5e290sm40096655ad.303.2024.08.12.09.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 09:55:12 -0700 (PDT)
Date: Mon, 12 Aug 2024 22:25:04 +0530
From: Manivannan Sadhasivam <manisadhasivam.linux@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
Message-ID: <20240812165504.GB6003@thinkpad>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
 <20240809062813.GC2826@thinkpad>
 <421d48b7-4aa7-4202-8b5f-9c60916f6ef6@rock-chips.com>
 <20240810092817.GA147655@thinkpad>
 <3b2617f5-acb1-45c6-993c-33249fd19888@rock-chips.com>
 <20240812041051.GA2861@thinkpad>
 <49659932-5caf-433b-a140-664b61617c43@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49659932-5caf-433b-a140-664b61617c43@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_095514_196186_929F5924 
X-CRM114-Status: GOOD (  53.72  )
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

T24gTW9uLCBBdWcgMTIsIDIwMjQgYXQgMDI6MjQ6MzFQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI0LzgvMTIgMTI6MTAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4g
PiBPbiBNb24sIEF1ZyAxMiwgMjAyNCBhdCAwOToyODoyNkFNICswODAwLCBTaGF3biBMaW4gd3Jv
dGU6Cj4gPiA+IEpIaSBNYW5pLAo+ID4gPiAKPiA+ID4g5ZyoIDIwMjQvOC8xMCAxNzoyOCwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gPiBPbiBGcmksIEF1ZyAwOSwgMjAyNCBh
dCAwNDoxNjo0MVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gWy4u
Ll0KPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfaGNlX2Vu
YWJsZV9ub3RpZnkoc3RydWN0IHVmc19oYmEgKmhiYSwKPiA+ID4gPiA+ID4gPiArCQkJCQkgZW51
bSB1ZnNfbm90aWZ5X2NoYW5nZV9zdGF0dXMgc3RhdHVzKQo+ID4gPiA+ID4gPiA+ICt7Cj4gPiA+
ID4gPiA+ID4gKwlpbnQgZXJyID0gMDsKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKwlp
ZiAoc3RhdHVzID09IFBSRV9DSEFOR0UpIHsKPiA+ID4gPiA+ID4gPiArCQlpbnQgcmV0cnlfb3V0
ZXIgPSAzOwo+ID4gPiA+ID4gPiA+ICsJCWludCByZXRyeV9pbm5lcjsKPiA+ID4gPiA+ID4gPiAr
c3RhcnQ6Cj4gPiA+ID4gPiA+ID4gKwkJaWYgKHVmc2hjZF9pc19oYmFfYWN0aXZlKGhiYSkpCj4g
PiA+ID4gPiA+ID4gKwkJCS8qIGNoYW5nZSBjb250cm9sbGVyIHN0YXRlIHRvICJyZXNldCBzdGF0
ZSIgKi8KPiA+ID4gPiA+ID4gPiArCQkJdWZzaGNkX2hiYV9zdG9wKGhiYSk7Cj4gPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiA+ICsJCS8qIFVuaVBybyBsaW5rIGlzIGRpc2FibGVkIGF0IHRoaXMg
cG9pbnQgKi8KPiA+ID4gPiA+ID4gPiArCQl1ZnNoY2Rfc2V0X2xpbmtfb2ZmKGhiYSk7Cj4gPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsJCS8qIHN0YXJ0IGNvbnRyb2xsZXIgaW5pdGlhbGl6
YXRpb24gc2VxdWVuY2UgKi8KPiA+ID4gPiA+ID4gPiArCQl1ZnNoY2Rfd3JpdGVsKGhiYSwgQ09O
VFJPTExFUl9FTkFCTEUsIFJFR19DT05UUk9MTEVSX0VOQUJMRSk7Cj4gPiA+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gPiA+ICsJCXVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7Cj4gPiA+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gPiA+ICsJCS8qIHdhaXQgZm9yIHRoZSBob3N0IGNvbnRyb2xsZXIgdG8gY29tcGxl
dGUgaW5pdGlhbGl6YXRpb24gKi8KPiA+ID4gPiA+ID4gPiArCQlyZXRyeV9pbm5lciA9IDUwOwo+
ID4gPiA+ID4gPiA+ICsJCXdoaWxlICghdWZzaGNkX2lzX2hiYV9hY3RpdmUoaGJhKSkgewo+ID4g
PiA+ID4gPiA+ICsJCQlpZiAocmV0cnlfaW5uZXIpIHsKPiA+ID4gPiA+ID4gPiArCQkJCXJldHJ5
X2lubmVyLS07Cj4gPiA+ID4gPiA+ID4gKwkJCX0gZWxzZSB7Cj4gPiA+ID4gPiA+ID4gKwkJCQlk
ZXZfZXJyKGhiYS0+ZGV2LAo+ID4gPiA+ID4gPiA+ICsJCQkJCSJDb250cm9sbGVyIGVuYWJsZSBm
YWlsZWRcbiIpOwo+ID4gPiA+ID4gPiA+ICsJCQkJaWYgKHJldHJ5X291dGVyKSB7Cj4gPiA+ID4g
PiA+ID4gKwkJCQkJcmV0cnlfb3V0ZXItLTsKPiA+ID4gPiA+ID4gPiArCQkJCQlnb3RvIHN0YXJ0
Owo+ID4gPiA+ID4gPiA+ICsJCQkJfQo+ID4gPiA+ID4gPiA+ICsJCQkJcmV0dXJuIC1FSU87Cj4g
PiA+ID4gPiA+ID4gKwkJCX0KPiA+ID4gPiA+ID4gPiArCQkJdXNsZWVwX3JhbmdlKDEwMDAsIDEx
MDApOwo+ID4gPiA+ID4gPiA+ICsJCX0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFlvdSBqdXN0
IGR1cGxpY2F0ZWQgdWZzaGNkX2hiYV9leGVjdXRlX2hjZSgpIGhlcmUuIFdoeT8gVGhpcyBkb2Vz
bid0IG1ha2Ugc2Vuc2UuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpbmNlIHdlIHNldCBVRlNIQ0lf
UVVJUktfQlJPS0VOX0hDRSwgYW5kIHdlIGFsc28gbmVlZCB0byBkbyBzb21ldGluZwo+ID4gPiA+
ID4gd2hpY2ggaXMgdmVyeSBzaW1pbGFyIHRvIHVmc2hjZF9oYmFfZXhlY3V0ZV9oY2UoKSwgYmVm
b3JlIGNhbGxpbmcKPiA+ID4gPiA+IHVmc2hjZF9kbWVfcmVzZXQoKS4gU2ltaWxhciBidXQgbm90
IHRvdGFsbHkgdGhlIHNhbWUuIEknbGwgdHJ5IHRvIHNlZSBpZgo+ID4gPiA+ID4gd2UgY2FuIGV4
cG9ydCB1ZnNoY2RfaGJhX2V4ZWN1dGVfaGNlKCkgdG8gbWFrZSBmdWxsIHVzZSBvZiBpdC4KPiA+
ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IEJ1dCB5b3UgYXJlIHN0YXJ0aW5nIHRoZSBjb250cm9s
bGVyIHVzaW5nIFJFR19DT05UUk9MTEVSX0VOQUJMRS4gSXNuJ3QgdGhhdAo+ID4gPiA+IHN1cHBv
c2VkIHRvIGJlIGJyb2tlbiBpZiB5b3Ugc2V0IFVGU0hDSV9RVUlSS19CUk9LRU5fSENFPyBPciBJ
IGFtCj4gPiA+ID4gbWlzdW5kZXJzdGFuZGluZyB0aGUgcXVpcms/Cj4gPiA+ID4gCj4gPiA+IAo+
ID4gPiBPdXIgY29udHJvbGxlciBkb2Vzbid0IHdvcmsgd2l0aCBleGl0aW5nIGNvZGUsIHdoZXRo
ZXIgc2V0dGluZwo+ID4gPiBVRlNIQ0lfUVVJUktfQlJPS0VOX0hDRSBvciBub3QuCj4gPiA+IAo+
ID4gCj4gPiBPa2F5LiBUaGVuIHRoaXMgbWVhbnMgeW91IGRvIG5vdCBuZWVkIHRoaXMgcXVpcmsg
YXQgYWxsLgo+ID4gCj4gPiA+IAo+ID4gPiBGb3IgVUZTSENJX1FVSVJLX0JST0tFTl9IQ0UgY2Fz
ZSwgaXQgY2FsbHMgdWZzaGNkX2RtZV9yZXNldO+8iO+8iWZpcnN0LAo+ID4gPiBidXQgd2UgbmVl
ZCB0byBzZXQgUkVHX0NPTlRST0xMRVJfRU5BQkxFIGZpcnN0Lgo+ID4gPiAKPiA+ID4gRm9yICFV
RlNIQ0lfUVVJUktfQlJPS0VOX0hDRSBjYXNlLCBuYW1seSB1ZnNoY2RfaGJhX2V4ZWN1dGVfaGNl
LCBpdAo+ID4gPiBzZXRzIFJFR19DT05UUk9MTEVSX0VOQUJMRSAgZmlyc3QgYnV0IG5ldmVyIHNl
bmQgRE1BX1JFU0VUIGFuZCBjYWxscwo+ID4gPiB1ZnNoY2RfZG1lX2VuYWJsZS4KPiA+ID4gCj4g
PiAKPiA+IEkgZG9uJ3Qgc2VlIHdoZXJlIHVmc2hjZF9kbWVfZW5hYmxlKCkgaXMgZ2V0dGluZyBj
YWxsZWQgZm9yCj4gPiAhVUZTSENJX1FVSVJLX0JST0tFTl9IQ0UgY2FzZS4KPiA+IAo+ID4gPiBT
byB0aGUgY2xvc2V0IGNvZGUgcGF0aCBpcyB0byBnbyB0aHJvdWdoIFVGU0hDSV9RVUlSS19CUk9L
RU5fSENFIGNhc2UsCj4gPiA+IGFuZCBzZXQgUkVHX0NPTlRST0xMRVJfRU5BQkxFIGJ5IGFkZGlu
ZyBoY2VfZW5hYmxlX25vdGlmeSBob29rLgo+ID4gPiAKPiA+IAo+ID4gTm8sIHRoYXQgaXMgYWJ1
c2luZyB0aGUgcXVpcmsuIEJ1dCBJJ20gY29uZnVzZWQgYWJvdXQgd2h5IHlvdXIgY29udHJvbGxl
ciB3YW50cwo+ID4gcmVzZXR0aW5nIHRoZSB1bmlwcm8gc3RhY2sgX2FmdGVyXyBlbmFibGluZyB0
aGUgY29udHJvbGxlcj8gV2h5IGNhbid0IGl0IGJlCj4gPiByZXNldCBiZWZvcmU/Cj4gPiAKPiAK
PiBJdCBjYW4ndCBiZS4gVGhlIERNRV9SRVNFVCB0byByZXNldCB0aGUgdW5pcHJvIHN0YWNrIHdp
bGwgYmUgZmFpbGVkCj4gd2l0aG91dCBlbmFibGluZyBSRUdfQ09OVFJPTExFUl9FTkFCTEUuIEFu
ZCB0aGUgY29udHJvbGxlciBkb2VzIHdhbnQgdXMKPiB0byByZXNldCB0aGUgdW5pcHJvIHN0YWNr
IGJlZm9yZSBvdGhlciBjb21pbmcgVUlDcy4KPiAKPiBTbyBJIGNvbnNpZGVyZWQgaXQncyBhIGtp
bmQgb2YgYnJva2VuIEhDRSBjYXNlIGFzIHdlbGwuIFNob3VsZCBJIGFkZCBhCj4gbmV3IHF1aXJr
IG9yIGFkZCBhIG5ldyBoYmFfZW5hYmxlIGhvb2sgaW4gdWZzX2hiYV92YXJpYW50X29wcz8gT3Ig
anVzdAo+IHVzZSBVRlNIQ0lfUVVJUktfQlJPS0VOX0hDRSA/Cj4gCgpJTU8sIHlvdSBzaG91bGQg
YWRkIGEgbmV3IHF1aXJrIGFuZCB1c2UgaXQgZGlyZWN0bHkgaW4gdWZzaGNkX2hiYV9leGVjdXRl
X2hjZSgpLgpCdXQgeW91IG5lZWQgdG8gcGljayB0aGUgcXVpcmsgbmFtZSBhcyBwZXIgdGhlIGFj
dHVhbCBxdWlya3kgYmVoYXZpb3Igb2YgdGhlCmNvbnRyb2xsZXIuCgo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiArCX0gZWxzZSB7IC8qIFBPU1RfQ0hBTkdFICovCj4gPiA+ID4gPiA+ID4gKwkJ
ZXJyID0gdWZzaGNkX3ZvcHNfcGh5X2luaXRpYWxpemF0aW9uKGhiYSk7Cj4gPiA+ID4gPiA+ID4g
Kwl9Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsJcmV0dXJuIGVycjsKPiA+ID4gPiA+
ID4gPiArfQo+ID4gPiA+ID4gPiA+ICsKPiA+IAo+ID4gWy4uLl0KPiA+IAo+ID4gPiA+ID4gPiA+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgdWZzX3JvY2tjaGlwX3BtX29wcyA9IHsK
PiA+ID4gPiA+ID4gPiArCVNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHVmc19yb2NrY2hpcF9zdXNw
ZW5kLCB1ZnNfcm9ja2NoaXBfcmVzdW1lKQo+ID4gPiA+ID4gPiA+ICsJU0VUX1JVTlRJTUVfUE1f
T1BTKHVmc19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9ydW50aW1lX3Jl
c3VtZSwgTlVMTCkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFdoeSBjYW4ndCB5b3UgdXNlIHVm
c2hjZCBQTSBvcHMgYXMgbGlrZSBvdGhlciB2ZW5kb3IgZHJpdmVycz8KPiA+ID4gPiA+IAo+ID4g
PiA+ID4gSXQgZG9lc24ndCB3b3JrIGZyb20gdGhlIHRlc3QuIFdlIGhhdmUgbWFueSB1c2UgY2Fz
ZSB0byBwb3dlciBkb3duIHRoZQo+ID4gPiA+ID4gY29udHJvbGxlciBhbmQgZGV2aWNlLCBzbyB0
aGVyZSBpcyBubyBmbG93IHRvIHJlY292ZXJ5IHRoZSBsaW5rLiBPbmx5Cj4gPiA+ID4gPiB3aGVu
IHRoZSBmaXJzdCBhY2Nlc3NpbmcgdG8gVUZTIGZhaWxzLCB0aGUgdWZzaGNkIGVycm9yIGhhbmRs
ZSByZWNvdmVyeSB0aGUKPiA+ID4gPiA+IGxpbmsuIFRoaXMgaXMgbm90IHdoYXQgd2UgZXhwZWN0
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gV2hhdCB0ZXN0cz8gVGhlIGV4aXN0aW5nIFVG
UyBjb250cm9sbGVyIGRyaXZlcnMgYXJlIHVzZWQgaW4gcHJvZHVjdGlvbiBkZXZpY2VzCj4gPiA+
ID4gYW5kIHRoZXkgbmV2ZXIgaGFkIGEgdXNlY2FzZSB0byBpbnZlbnQgdGhlaXIgb3duIFBNIGNh
bGxiYWNrcy4gU28gaWYgeW91cgo+ID4gPiA+IGNvbnRyb2xsZXIgaXMgc3BlY2lhbCwgdGhlbiB5
b3UgbmVlZCB0byBqdXN0aWZ5IGl0IG1vcmUgZWxhYm9yYXRlbHkuIElmCj4gPiA+ID4gc29tZXRo
aW5nIGlzIG1pc3NpbmcgaW4gdWZzaGNkIGNhbGxiYWNrcywgdGhlbiB3ZSBjYW4gYWRkIHRoZW0u
Cj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBBbGwgdGhlIHJlZ2lzdGVyIGdvdCBsb3N0IGVhY2ggdGlt
ZSBhcyB3ZSBwb3dlciBkb3duIGJvdGggY29udHJvbGxlciAmIFBIWQo+ID4gPiBhbmQgZGV2aWNl
cyBpbiBzdXNwZW5kLgo+ID4gCj4gPiBXaGljaCBzdXNwZW5kPyBydW50aW1lIG9yIHN5c3RlbSBz
dXNwZW5kPyBJIGJlbGlldmUgc3lzdGVtIHN1c3BlbmQuCj4gCj4gQm90aC4KPiAKCldpdGgge3Jw
bS9zcG19X2x2bCA9IDMsIHlvdSBzaG91bGQgbm90IHBvd2VyIGRvd24gdGhlIGNvbnRyb2xsZXIu
Cgo+ID4gCj4gPiA+IFNvIHdlIGhhdmUgdG8gcmVzdG9yZSB0aGUgbmVjZXNzYXJ5Cj4gPiA+IHJl
Z2lzdGVycyBhbmQgbGluay4gSSBkaWRuJ3Qgc2VlIHdoZXJlIHRoZSBjb2RlIHJlY292ZXJ5IHRo
ZSBjb250cm9sbGVyCj4gPiA+IHNldHRpbmdzIGluIHVmc2hjZF9yZXN1bWUsIGV4Y2VwdCB1ZnNo
Y2RfZXJyX2hhbmRsZXLvvIjvvIl0cmlnZ2VycyB0aGF0Lgo+ID4gPiBBbSBJIG1pc3NpbmcgYW55
IHRoaW5nPwo+ID4gCj4gPiBDYW4geW91IGV4cGxhaW4gd2hhdCBpcyBjYXVzaW5nIHRoZSBwb3dl
cmRvd24gb2YgdGhlIGNvbnRyb2xsZXIgYW5kIFBIWT8KPiA+IEJlY2F1c2UsIHVmc2hjZF9zdXNw
ZW5kKCkganVzdCB0dXJucyBvZmYgdGhlIGNsb2NrcyBhbmQgcmVndWxhdG9ycyAoaWYKPiA+IFVG
U0hDRF9DQVBfQUdHUl9QT1dFUl9DT0xMQVBTRSBpcyBzZXQpIGFuZCBzcG1fbHZsIDMgc2V0IGJ5
IHRoaXMgZHJpdmVyIG9ubHkKPiA+IHB1dHMgdGhlIGRldmljZSBpbiBzbGVlcCBtb2RlIGFuZCBs
aW5rIGluIGhpYmVybjggc3RhdGUuCj4gPiAKPiAKPiBGb3IgcnVudGltZSBQTSBjYXNlLCBpdCdz
IHRoZSBwb3dlci1kb21haW4gZHJpdmVyIHdpbGwgcG93ZXIgZG93biB0aGUKPiBjb250cm9sbGVy
IGFuZCBQSFkgaWYgVUZTIHN0YWNrIGlzIG5vdCBhY3RpdmUgYW55IG1vcmXvvIhhdXRvc3VzcGVu
ZO+8iS4KPiAKPiBGb3Igc3lzdGVtIFBNIGNhc2UsIGl0J3MgdGhlIFNvQydzIGZpcm13YXJlIHRv
IGN1dHRpbmcgb2YgYWxsIHRoZSBwb3dlcgo+IGZvciBjb250cm9sbGVyL1BIWSBhbmQgZGV2aWNl
Lgo+IAoKQm90aCBjYXNlcyBhcmUgbm90IG1hdGNoaW5nIHRoZSBleHBlY3RhdGlvbnMgb2Yge3Jw
bS9zcG19X2x2bC4gU28gdGhlIHBsYXRmb3JtCihwb3dlciBkb21haW4gb3IgdGhlIGZpcm13YXJl
KSBzaG91bGQgYmUgZml4ZWQuIFdoYXQgaWYgdGhlIHVzZXIgc2V0cyB0aGUKe3JwbS9zcG19X2x2
bCB0byAxPyBXaWxsIHRoZSBwbGF0Zm9ybSBwb3dlciBkb3duIHRoZSBjb250cm9sbGVyIGV2ZW4g
dGhlbj8gSWYKc28sIHRoZW4gSSdkIHNheSB0aGF0IHRoZSBwbGF0Zm9ybSBpcyBicm9rZW4gYW5k
IHNob3VsZCBiZSBmaXhlZC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

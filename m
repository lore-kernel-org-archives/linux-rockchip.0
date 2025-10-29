Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C926DCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 06:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmZaYLgj10nIx310fL+GGt2f11oKyakhdptI3nLNIm0=; b=rEUyGmPWFMBgrg
	FNNAXOG2+2HvkI9PB50PttAfdZLha/C/4vz2lxtgiVBjtdTs/oBOMPsbMza4hi/uHE1xu3rUUk4fT
	PHoaBpt4w2WEuU5X7W+OUS/9QSnxHjMZQKdM8N+eBlihENn9Dad+XTijwxagUBu6Km92kvm4ZIMbp
	WoFcShM+bG8CCOT3+PkKGnqFl98QRtAJVir6bAgyV7CcGh+Q98VlTvOHrdQY3mpDO//ihwhuMlGzN
	cdHCy48IeyVQNdeEr3I0gIGe/Vu4WTs2zmdAf1zbJGr+y4lUKnLBxFbMJn+M5xLr8aXHy3gHY3NZH
	nbbn0B/eZSQIa4TGy63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzbo-0000000HSxA-3k5W;
	Wed, 29 Oct 2025 06:24:37 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzbm-0000000HSwU-2yGj
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 06:24:36 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b70406feed3so97953566b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 23:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761719073; x=1762323873; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=br982OtNpb98PdeBYhrJLVyrR7luvRLBafDbJi6d/xo=;
        b=OPuPuRyvRRrwaGiSNSwgVSP2e3Lo4Q8X6j6gaNC6Kk4L6ycFmWASBMnuk215H2cSYF
         01FymQUtkMLV1eStLvzsTolf239WUH9MNJfEq8M0gmApe+jtpC6cQgbPFEi4nB1AJafG
         eUeeeXPIZ9Nda1uA0UXa5HZLcW5C6KgF1Hg5kVWXkPgEMmssKQaVE/SOGypr2YyQV7Rv
         b0oHDi3GQ2Y4KjcJoh6g62sKQHTdy0Q3eYFjWEjabRoqVznHUwAzKLmtXE3fMfIgdv6X
         hEUSC6MjnfGi9XQv4kc9gk3tBB8oX3YjUfpA6eF+s5KvHel8D0P3YwyW4duy3PFP4SiZ
         JmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761719073; x=1762323873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=br982OtNpb98PdeBYhrJLVyrR7luvRLBafDbJi6d/xo=;
        b=RcixMPkNajM6NeeQOTdTGlQi/gomiRgEmvM+B1soB29H5XGGAargqA2kLRz6c1aYT4
         dM5UZXQdlxufoaT7Ij30MEnJwxcEAx3R7AYraATPAHNRUfYAy9SOCTL8xemeEl2hyEfx
         9epK4T4nAkl7zegBszk8w+tWZQsDWpZCZxHNJxxDpkoJ28AouKQmml5r3Lh6ZBtoI2Sv
         4jHWISa71f/Elt78OpVVhdPKfyM5iIAcXJ/tiSeisYq47qMsXcO3aV/8JyHQuUeCE27B
         CKvrutKVULXTJj+azyBqRcng+dYGiLiQXKFPbTz+g/AAAc/CM+yQHuESmRmDR5VwCBli
         flZQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6mSeKqH/Sn28n8MpdO2j4QbyUH5+ONIgrFXgFlajHmuMWDp/3ww/oyBDq9/0ongYvRpj72CsAFNjPSV5P7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTfTL0KINymjJLDIdt23j7Pw6rB3/UHYQMtzEq8fJ5c7fZPm14
	u6m+RdIm0W/jiYnPfqwg3kwK2UbZg+K5B1LCpzfIcayZUy8a6+d6CWlC3Hak0IcTrFhEOTYJg0y
	ds9XyB0uaTWfkMQLNlifMl01w1Vv8PJ4=
X-Gm-Gg: ASbGncu+rxRoaqR4qbjY4SIu90t6mrllinV1deHfSJHBIFzJmOGMxuMHoff6G4X4Is0
	kny//+G1wUOpmqGKqRNoZUnokumuWVCY5fvEMc4+Z3iTTrBgK0x4Mk8szmJtuBryz6iD8R4K2PJ
	LIGMfx1rPK8qC1TbdR9lg+FWN6EHySgp7DmwfAHi4BUjDssadToXXOPFcEU87SEYDT6hMQE1Y7p
	LHYKi6b77jDnX7Ys4y87w7QiZx90nEWkFwllKFOj9s6/J6xcxqVgd9Vrng=
X-Google-Smtp-Source: AGHT+IHyfp+TmtXxz/OYls2Ipv0mWC+Ecb2/8nvbOahETXIdxr4t72mAdvqkoOAyhDhf4ehMvRZYQA65me6ij1Ptm9w=
X-Received: by 2002:a17:907:3c96:b0:b40:8954:a8bf with SMTP id
 a640c23a62f3a-b703d2ccb40mr176983466b.2.1761719072619; Tue, 28 Oct 2025
 23:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com> <4fe0ccf9-8866-443a-8083-4a2af7035ee6@rock-chips.com>
 <CANAwSgRXcg4tO00SNu77EKdp6Ay6X7+_f-ZoHxgkv1himxdi0Q@mail.gmail.com> <3fcd5562-a367-41e9-8bff-51e5990145e2@rock-chips.com>
In-Reply-To: <3fcd5562-a367-41e9-8bff-51e5990145e2@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 29 Oct 2025 11:54:16 +0530
X-Gm-Features: AWmQ_bkHYm5QH-5Y_pmEaKy-mXRgDSlraZJjP-ybL_6P_hostigu_T7ZdM_pHso
Message-ID: <CANAwSgQ4HH=16Gn45XP3+jr+V+PrDhh8fC1Ek0jzrbMnhXo9fw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource cleanup
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_232434_778123_9CA32198 
X-CRM114-Status: GOOD (  34.84  )
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

SGkgU2hhd24sCgpPbiBXZWQsIDI5IE9jdCAyMDI1IGF0IDA1OjU4LCBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPgo+IOWcqCAyMDI1LzEwLzI4IOaYn+acn+S6
jCAxNzozNCwgQW5hbmQgTW9vbiDlhpnpgZM6Cj4gPiBIaSBTaGF3biwKPiA+Cj4gPiBUaGFua3Mg
Zm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgo+ID4KPiA+IE9uIFR1ZSwgMjggT2N0IDIwMjUgYXQg
MDU6NTYsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+Pgo+
ID4+IOWcqCAyMDI1LzEwLzI3IOaYn+acn+S4gCAyMjo1NSwgQW5hbmQgTW9vbiDlhpnpgZM6Cj4g
Pj4+IEludHJvZHVjZSBhIC5yZW1vdmUoKSBjYWxsYmFjayB0byB0aGUgUm9ja2NoaXAgRGVzaWdu
V2FyZSBQQ0llCj4gPj4+IGNvbnRyb2xsZXIgZHJpdmVyIHRvIGVuc3VyZSBwcm9wZXIgcmVzb3Vy
Y2UgZGVpbml0aWFsaXphdGlvbiBkdXJpbmcKPiA+Pj4gZGV2aWNlIHJlbW92YWwuIFRoaXMgaW5j
bHVkZXMgZGlzYWJsaW5nIGNsb2NrcyBhbmQgZGVpbml0aWFsaXppbmcgdGhlCj4gPj4+IFBDSWUg
UEhZLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBn
bWFpbC5jb20+Cj4gPj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWR3LXJvY2tjaGlwLmMgfCAxMSArKysrKysrKysrKwo+ID4+PiAgICAxIGZpbGUgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPj4+IGluZGV4IDg3ZGQyZGQxODhiNC4uYjg3OGFl
OGUyYjNlIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMKPiA+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gPj4+IEBAIC03MTcsNiArNzE3LDE2IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4+PiAgICAg
ICAgcmV0dXJuIHJldDsKPiA+Pj4gICAgfQo+ID4+Pgo+ID4+PiArc3RhdGljIHZvaWQgcm9ja2No
aXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+Pj4gK3sKPiA+
Pj4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+Pj4gKyAgICAgc3Ry
dWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPj4+
ICsKPiA+Pj4gKyAgICAgLyogUGVyZm9ybSBvdGhlciBjbGVhbnVwcyBhcyBuZWNlc3NhcnkgKi8K
PiA+Pj4gKyAgICAgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQs
IHJvY2tjaGlwLT5jbGtzKTsKPiA+Pj4gKyAgICAgcm9ja2NoaXBfcGNpZV9waHlfZGVpbml0KHJv
Y2tjaGlwKTsKPiA+Pj4gK30KPiA+Pgo+ID4+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLgo+ID4+Cj4g
Pj4gRG91IHlvdSBuZWVkIHRvIGNhbGwgZHdfcGNpZV9ob3N0X2RlaW5pdCgpPwo+ID4gSSBmZWVs
IHRoZSByb2NrY2hpcF9wY2llX3BoeV9kZWluaXQgd2lsbCBwb3dlciBvZmYgdGhlIHBoeQo+ID4+
IEFuZCBJIHRoaW5rIHlvdSBzaG91bGQgYWxzbyB0cnkgdG8gbWFzayBQQ0lFX0NMSUVOVF9JTlRS
X01BU0tfTUlTQyBhbmQKPiA+PiByZW1vdmUgdGhlIGlycSBkb21haW4gYXMgd2VsbC4KPiA+Pgo+
ID4+IGlmIChyb2NrY2hpcC0+aXJxX2RvbWFpbikgewo+ID4+ICAgICAgICAgIGludCB2aXJxLCBq
Owo+ID4+ICAgICAgICAgIGZvciAoaiA9IDA7IGogPCBQQ0lfTlVNX0lOVFg7IGorKykgewo+ID4+
ICAgICAgICAgICAgICAgICAgdmlycSA9IGlycV9maW5kX21hcHBpbmcocm9ja2NoaXAtPmlycV9k
b21haW4sIGopOwo+ID4+ICAgICAgICAgICAgICAgICAgaWYgKHZpcnEgPiAwKQo+ID4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBpcnFfZGlzcG9zZV9tYXBwaW5nKHZpcnEpOwo+ID4+ICAgICAg
ICAgICB9Cj4gPj4gICAgICAgICAgaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEocm9j
a2NoaXAtPmlycSwgTlVMTCwgTlVMTCk7Cj4gPj4gICAgICAgICAgaXJxX2RvbWFpbl9yZW1vdmUo
cm9ja2NoaXAtPmlycV9kb21haW4pOwo+ID4+IH0KPiA+Pgo+ID4gSSBoYXZlIGltcGxlbWVudGVk
IHJlc291cmNlIGNsZWFudXAgaW4gcm9ja2NoaXBfcGNpZV9yZW1vdmUsCj4gPiB3aGljaCBpcyBp
bnZva2VkIHdoZW4gdGhlIHN5c3RlbSBpcyBzaHV0dGluZyBkb3duLgo+ID4gWW91ciBmZWVkYmFj
ayBvbiB0aGUgdXBkYXRlZCBjb2RlIGlzIHdlbGNvbWUuCj4gPgo+ID4gc3RhdGljIHZvaWQgcm9j
a2NoaXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+IHsKPiA+
ICAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiAgICAgICAgICBz
dHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+
ICAgICAgICAgIGludCBpcnE7Cj4gPgo+ID4gICAgICAgICAgaXJxID0gb2ZfaXJxX2dldF9ieW5h
bWUoZGV2LT5vZl9ub2RlLCAibGVnYWN5Iik7Cj4gPiAgICAgICAgICBpZiAoaXJxIDwgMCkKPiA+
ICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4KPiA+ICAgICAgICAgIC8qIFBlcmZvcm0gb3Ro
ZXIgY2xlYW51cHMgYXMgbmVjZXNzYXJ5ICovCj4gPiAgICAgICAgICAvKiBjbGVhciB1cCBJTlRS
IHN0YWF0dXMgcmVnaXN0ZXIgKi8KPiA+ICAgICAgICAgIHJvY2tjaGlwX3BjaWVfd3JpdGVsX2Fw
Yihyb2NrY2hpcCwgMHhmZmZmZmZmZiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDKTsKPiA+ICAgICAgICAgIGlmIChyb2Nr
Y2hpcC0+aXJxX2RvbWFpbikgewo+ID4gICAgICAgICAgICAgICAgICBpbnQgdmlycSwgajsKPiA+
ICAgICAgICAgICAgICAgICAgZm9yIChqID0gMDsgaiA8IFBDSV9OVU1fSU5UWDsgaisrKSB7Cj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgdmlycSA9IGlycV9maW5kX21hcHBpbmcocm9ja2No
aXAtPmlycV9kb21haW4sIGopOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh2aXJx
ID4gMCkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlycV9kaXNwb3NlX21h
cHBpbmcodmlycSk7Cj4gPiAgICAgICAgICAgICAgICAgIH0KPiA+ICAgICAgICAgICAgICAgICAg
aXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCBOVUxMLCBOVUxMKTsKPiA+ICAg
ICAgICAgICAgICAgICAgaXJxX2RvbWFpbl9yZW1vdmUocm9ja2NoaXAtPmlycV9kb21haW4pOwo+
ID4gICAgICAgICAgfQo+ID4KPiA+ICAgICAgICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJl
KHJvY2tjaGlwLT5jbGtfY250LCByb2NrY2hpcC0+Y2xrcyk7Cj4gPiAgICAgICAgICAvKiBwb3dl
cm9mZiB0aGUgcGh5ICovCj4gPiAgICAgICAgICByb2NrY2hpcF9wY2llX3BoeV9kZWluaXQocm9j
a2NoaXApOwo+ID4gICAgICAgICAgLyogcmVsZWFzZSB0aGUgcmVzZXQgKi8KPgo+IHJlbGVhc2U/
IE9yICJyZXNldCB0aGUgY29udHJvbGxlciI/Cj4KT2ssIEkgd2lsbCBmaXggdGhpcy4KPiA+ICAg
ICAgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHJvY2tjaGlwLT5yc3QpOwo+ID4gICAgICAgICAg
cG1fcnVudGltZV9wdXRfc3luYyhkZXYpOwo+ID4gICAgICAgICAgcG1fcnVudGltZV9kaXNhYmxl
KGRldik7Cj4gPiAgICAgICAgICBwbV9ydW50aW1lX25vX2NhbGxiYWNrcyhkZXYpOwo+ID4gfQo+
ID4KPiA+PiBBbm90aGVyIHRoaW4gSSBub3RpY2VkIGlzIHNob3VsZCB3ZSBjYWxsIHBtX3J1bnRp
bWVfKiBoZXJlIGZvciBob3BlIHRoYXQKPiA+PiBnZW5wZCBjb3VsZCBiZSBwb3dlcmVkIGRvbncg
b25jZSByZW1vdmVkPwo+ID4+Cj4gPiBJIGNvdWxkIG5vdCBmaW5kICdnZW5wZCcgKHBvd2VyIGRv
bWFpbikgdXNlZCBpbiB0aGUgUENJZSBkcml2ZXIKPiA+IElmIHdlIGhhdmUgYW4gZXhhbXBsZSB0
byB1c2UgZ2VucGQgSSB3aWxsIHVwZGF0ZSB0aGlzLgo+ICA+ID4gSSBhbSBhbHNvIGxvb2tpbmcg
aW50byBhZGRpbmcgTk9JUlFfU1lTVEVNX1NMRUVQX1BNX09QUwo+Cj4gVGhhdCBzb3VuZHMgZ29v
ZCwgeW91IGNhbiBwaWNrIHVwIG15IHBhdGNoWzFdIGlmIHlvdSdkIGxpa2UgdG8gY29udGludWUK
PiBhZGRyZXNzaW5nIHRoZSBjb21tZW50cyB0aGF0IEkgaGF2ZW4ndCBoYWQgdGltZSB0byB0aGlu
ayBtb3JlLgo+Cj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXBjaS9t
c2cxNzE4NDYuaHRtbAo+Ck9rLCB0aGFua3MuIEkgd2lsbCBjYXJlZnVsbHkgc3R1ZHkgYW5kIGFk
ZHJlc3MgdGhlIGNvbW1lbnRzLgoKVGhhbmtzCi1BbmFuZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

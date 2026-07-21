Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C264C4451C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 13:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq+pPtgy96ju83kR1Bg6XbsTL0TCO4Ylf7VTsG1M7OE=; b=Mcd8cceQ1Cw7zg
	hvqkBmME2n/VLwYs0cLY2rj50RG9tENQ56h2ACG+v+PBzIZltm5lnfJVZYiBWDkOfkPEKQuwE4NXT
	wTnBENBFj37OoR+1rYet/o5EpnNWt92cQYDwbGrLN5S6DyZs9KeXDcM7XqvvkkCUw0vouRmgnRqMN
	Anf3e/QCdSofJP5B2EPtiwWbt5R6XuMRGW7NiJq26bLz2ngIcQLItvsIev2ipDDK9wvxoaDVtLKlC
	CJFBSCvoPZ0UY90/ukhGZUOob0lV4jRbYoNWrvpEEByU/1Qvu+PLoJbZbGjZZ2Zz+O2BlYNZn6eI2
	BA3du50gMYdfzonYrhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmA7b-00000009TZZ-3BRa;
	Tue, 21 Jul 2026 13:02:55 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmA7Z-00000009TYH-1bWL
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 13:02:55 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c15cb6f5c12so2003786266b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 06:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784638971; cv=none;
        d=google.com; s=arc-20260327;
        b=PvJEU083dud62rBIQuMqEA8Jw1Qt7kFGim5j09UaK/ikgk9bALUr/a9oG2nYR59coq
         BKTMrJwc0F8yQU+kMKyfrh8s/e+Z3tcCVB6WhUAC9C9m5lLAgoM1/YWOA8t1miI6FudD
         1BkEDVJGv4pEAE+hVhaa61NiDfCdjm6I4G7SbBAL5dBmcY3+AovHopyfo1TmsT3xLsMt
         G/5yp5jwNxocRktCRh5A1Xipx28BZwowduR7KEFssKxZ4W0mfuuRce1lpD7PTa9ckdFV
         ed1vKc1AFD7+7aDYVHocyQUfcl4JkG9RhukfnCh2vntlC6P9JrBrVTxWsnSPqy1ahLfM
         qfRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PLoRxgeU4eLbTE5cBel+nzCrJ1tx2QkUTBvlydG2Zzg=;
        fh=udb06TxAej3cfVNFtxncmfF6ffLtqIr0C2MCP087Xdo=;
        b=DqP0lKOYPvvdO9VEGDAz2iOG3pk4CodLZprIEbDtj0RVbf6kRdSIaBoI6rGrZcu5GW
         tIBOa3cVD3Yciwa9keYlHQXnPid/cSeV4ho6NIN+Du8T6d8CBteOwBsWScHexQW6Knto
         97fyWE2HuyLnZDCvKdQBh6c7EEF8As16THpnNFU+XovpAYAXp5jXiFB9LXbo4C2Y1vMN
         RsBzFDfnl5lgS1TwNpew0bjm3uAt4korGofjXnDOkb4tLD2UDQ/JU/qPNbLVtyqAqCjr
         K+STcAnXM+ii57iznR2WwZa9E4sVVQN9ibZc5K3vN9Rk8MRl3T8jE2qnoGV0vsl2pJpw
         ON6A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784638971; x=1785243771; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PLoRxgeU4eLbTE5cBel+nzCrJ1tx2QkUTBvlydG2Zzg=;
        b=EB9xrTu45z06tJr4Nt6aQUazRdwXqj0DxtWaoH84VcN9C7GUoyckyVnvtxAp1sL9cu
         kx3+1Ion05aBiIXH4egWMgXriXbtqQXwrpg/UyrL82drs5A587FDJ7F0y6WqseBPLuvf
         boXByRhdzOgpmCvxwwKDog9qmuM9soWIXuQ9UVnZPiN9el5m1LswzyLNi3gMNWIrHyIN
         zovAxAbRzxj49gFGOrpMOlKzw60pzl5qs/68d7b5cL4y9nA3riScuUW1nlA25cJRAhSx
         gxYqL5lsUYp/cJUy41CZm1fIjzInLrujyytCgMh/s9cfe4nr32jF9V28KKKz0ZevMjGG
         WwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784638971; x=1785243771;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PLoRxgeU4eLbTE5cBel+nzCrJ1tx2QkUTBvlydG2Zzg=;
        b=lmF/DGC/AyombTQd0s+XxncHU7K3L3a41iBYH4jk7Hp5dLc8QO7zG0G+Svs/iOiGJP
         YvdVqBgImbUHyqQxJrQ+znUZw7lZwxmr34jD1D7rbpL0u7Jsnjuw8oT2e60ET+IGM5aq
         2nwWOl1c0KhGDBIpncaGr0jwgN1IrLrHiPuHc00zhWkuK4P8CzIMiTxZ8hdDULLR14wz
         4QwMT+snCgC1MYw4qzorIej6FxyBMirlQOcxqhRBKaV43BnZxzkhRD+qFy20oR95JMSE
         ZH9l+aWKeuR0cjNdkSBb+g6xtBjOTkGk0SSfO2cY8cFI/AoVCP9Qt+RY1eEyw6nKlB2m
         w1LA==
X-Forwarded-Encrypted: i=1; AHgh+RqsOZBVzxI384Zv60JFj6TgmZyHRsDENeRj0jwSRCzOY6DRExCPhdpNOe57z/EBErwI3yQwEtkqv+MdYKfqgg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwE0ACBujCLnhCFRfqDyyxymG6T/XzOqpz4bRWGzxSpwwGatadu
	E5PVyrFABSDWH/sG2qvYVXKjlNBgCCq81I9gKz1JFjf5ZkKxdHjk/lYAaZsurmTbc51yNx27/t9
	BjJ/hSA6k4PnRheulQW/lqWB/7Owutoqb9zVIHkCLhg==
X-Gm-Gg: AR+sD10mE8LlrK8uzsx+l+gCPEdp+BHd8rsfjR2BT5rzPl6SoqY3giwoLokjWu2DJ6I
	XiPmhLY8d+x7QcqdrQy3gGi6wNmT6rvsKv4gZl31bJEi6B8W58GXbw4KtMRnEqHI1aSTnKwMkIE
	i/tb7drKEUQMmDogPZjJ49MJwUN3Q4ZNASGtn/tqynJ5MpPhemPc+u8Eg7kYTe6xpOUJroA3o39
	7F0/OMjAt/+xnnBRAnkjDoA38Ag96Rzq3IunCgOkCUXBWjGRuQaFm86o0ozmaw/UpSLZ462dWWm
	u1YqvzEEnYMOk/Ck6Q==
X-Received: by 2002:a17:906:ee81:b0:c12:34ed:e0fe with SMTP id
 a640c23a62f3a-c16b486b059mr764236766b.60.1784638970824; Tue, 21 Jul 2026
 06:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260718031146.3368811-1-gahing@gahingwoo.com> <20260718031146.3368811-7-gahing@gahingwoo.com>
In-Reply-To: <20260718031146.3368811-7-gahing@gahingwoo.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 21 Jul 2026 17:02:36 +0400
X-Gm-Features: AUfX_mybR4TJcD7UtKT7vkslJHd83avKACirSY-Al4DoJE_V_nYHHDDfXmU2CdM
Message-ID: <CAKTNdwHL2Z3h-FN7LLPshz5B0duiMw_pyfe=VG4UDhfm8igZ6Q@mail.gmail.com>
Subject: Re: [RFC PATCH v2 6/8] accel/rocket: add RK3576 NPU (RKNN) support
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, 
	ogabbay@kernel.org, chaoyi.chen@rock-chips.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060253_471090_78408159 
X-CRM114-Status: GOOD (  26.21  )
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

SGkgSmlheGluZywKCk9uIFNhdCwgSnVsIDE4LCAyMDI2IGF0IDc6MTHigK9BTSBKaWF4aW5nIEh1
IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4gd3JvdGU6Cj4KPiBBZGQgUkszNTc2IHN1cHBvcnQgdG8g
dGhlIHJvY2tldCBEUk0gYWNjZWxlcmF0b3IgZHJpdmVyICh1c2VkIHdpdGggdGhlCj4gTWVzYSBU
ZWZsb24gVEZMaXRlIGRlbGVnYXRlKS4gIFBlci1Tb0MgZGlmZmVyZW5jZXMgYXJlIHNlbGVjdGVk
IGJ5IG5ldwo+IG9mX2RldmljZV9pZCBtYXRjaCBkYXRhIChzdHJ1Y3Qgcm9ja2V0X3NvY19kYXRh
KSBzbyB0aGUgUkszNTg4IHBhdGggc3RheXMKPiB1bmNoYW5nZWQ6Cj4KPiAgIC0gbWF0Y2ggcm9j
a2NoaXAscmszNTc2LXJrbm4tY29yZTsgaXRlcmF0ZSBpdHMgbm9kZXMgYXQgcHJvYmUKPiAgIC0g
UkszNTc2IHRha2VzIHNpeCBjbG9ja3MgKGFkZHMgdGhlIENCVUYgZG9tYWluIEFDTEsvSENMS19S
S05OX0NCVUYpOgo+ICAgICB0aGUgQ05BIGZpbGxzIHRoZSBDQlVGIGFuZCBDT1JFIHJlYWRzIGZy
b20gaXQsIHNvIHRoZSBjb21wdXRlIHBhdGgKPiAgICAgc3RhbGxzIHdpdGhvdXQgdGhlbS4gIFJL
MzU4OCBrZWVwcyBpdHMgZm91ciBjbG9ja3MuCj4gICAtIFJLMzU3NiByZXF1ZXN0cyBvbmUgcmVz
ZXQgKHNyc3RfYSk7IGl0cyBCSVUgcmVzZXQgKHNyc3RfaCkgaXMgZHJpdmVuCj4gICAgIGZyb20g
dGhlIHBvd2VyIGRvbWFpbi4gIFJLMzU4OCBrZWVwcyBib3RoLgo+ICAgLSBSSzM1NzYgc3BhbnMg
dHdvIHBvd2VyIGRvbWFpbnMgKFBEX05QVTAgKyBQRF9OUFUxKSBhbmQgYXR0YWNoZXMgdGhlCj4g
ICAgIGxpc3QgZXhwbGljaXRseTsgUkszNTg4IGlzIHNpbmdsZS1kb21haW4gYW5kIGtlZXBzIHRo
ZSBkcml2ZXItY29yZQo+ICAgICBhdXRvLWF0dGFjaC4KPiAgIC0gUkszNTc2IGhhcyBubyBtYXNr
YWJsZSBjb21wbGV0aW9uIGludGVycnVwdCAoUENfRE9ORSBpcyByZWFkLW9ubHkgaW4KPiAgICAg
SU5URVJSVVBUX01BU0spLCBzbyBpdCBwb2xscyBQQ19ET05FIHZpYSBhbiBocnRpbWVyOyBSSzM1
ODgga2VlcHMgdGhlCj4gICAgIERQVSBjb21wbGV0aW9uIElSUS4KPiAgIC0gZ3VhcmQgcm9ja2V0
X2pvYl90aW1lZG91dCgpIE1NSU8gYmVoaW5kIHBtX3J1bnRpbWVfYWN0aXZlKCkKPgo+IFRlc3Rl
ZCBvbiBhIFJhZHhhIFJPQ0sgNEQ6IHRoZSBOUFUgcHJvYmVzLCBwb3dlcnMgb24sIGJyaW5ncyB1
cCBpdHMKPiBJT01NVXMgYW5kIHJ1bnMgc3VibWl0dGVkIGpvYnMgdG8gY29tcGxldGlvbi4gIEZ1
bGwgbXVsdGktbGF5ZXIgaW5mZXJlbmNlCj4gaXMgbm90IHlldCBjb3JyZWN0IG9uIHRoaXMgU29D
IChvbmx5IHRoZSBmaXJzdCBvcGVyYXRpb24gcGVyIHBvd2VyIHNlc3Npb24KPiBwcm9kdWNlcyB2
YWxpZCBvdXRwdXQpOyBzZWUgdGhlIGNvdmVyIGxldHRlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEpp
YXhpbmcgSHUgPGdhaGluZ0BnYWhpbmd3b28uY29tPgo+IC0tLQo+ICBkcml2ZXJzL2FjY2VsL3Jv
Y2tldC9yb2NrZXRfY29yZS5jICAgfCAgMzkgKysrKysrKy0KPiAgZHJpdmVycy9hY2NlbC9yb2Nr
ZXQvcm9ja2V0X2NvcmUuaCAgIHwgIDIyICsrKystCj4gIGRyaXZlcnMvYWNjZWwvcm9ja2V0L3Jv
Y2tldF9kZXZpY2UuYyB8ICAgNCArCj4gIGRyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kcnYu
YyAgICB8ICAyMiArKysrLQo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMgICAg
fCAxMjcgKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjAw
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKWy4uLl0KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3Jv
Y2tldF9qb2IuYwo+IGluZGV4IDJmMTg2MWY5Ni4uY2UzZjdjOTJlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYwo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcm9j
a2V0L3JvY2tldF9qb2IuYwo+IEBAIC03LDYgKzcsNyBAQAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9m
aWxlLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPgo+ICAjaW5jbHVkZSA8ZHJtL3JvY2tl
dF9hY2NlbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvaW50ZXJydXB0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pb21tdS5oPgo+ICAjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gQEAgLTIwLDYgKzIxLDE2IEBACj4KPiAgI2RlZmlu
ZSBKT0JfVElNRU9VVF9NUyA1MDAKPgo+ICsvKgo+ICsgKiBSSzM1NzY6IElOVEVSUlVQVF9NQVNL
IGJpdHMgMjgtMjkgYXJlIHJlYWQtb25seSAoaGFyZHdhcmUgcmVqZWN0cyB0aGUgd3JpdGUpLAo+
ICsgKiBzbyB0aGUgUENfRE9ORSBjb21wbGV0aW9uIHNpZ25hbCBjYW5ub3QgYmUgcm91dGVkIHRv
IHRoZSBHSUMgdmlhIHRoZSBub3JtYWwKPiArICogaW50ZXJydXB0LW1hc2sgcGF0aC4gIFdlIHBv
bGwgT1BFUkFUSU9OX0VOQUJMRSBldmVyeSBSSzM1NzZfUE9MTF9JTlRFUlZBTF9OUwo+ICsgKiBp
bnN0ZWFkIG9mIHdhaXRpbmcgZm9yIGEgY29tcGxldGlvbiBJUlEuCj4gKyAqLwo+ICsjZGVmaW5l
IFBDX0lOVEVSUlVQVF9NQVNLX1JLMzU3Nl9QQ19ET05FXzAgIDB4MTAwMDAwMDB1Cj4gKyNkZWZp
bmUgUENfSU5URVJSVVBUX01BU0tfUkszNTc2X1BDX0RPTkVfMSAgMHgyMDAwMDAwMHUKPiArI2Rl
ZmluZSBSSzM1NzZfUE9MTF9JTlRFUlZBTF9OUyAgMTAwMDAwMExMICAvKiAxIG1zICovCj4gKwo+
ICBzdGF0aWMgc3RydWN0IHJvY2tldF9qb2IgKgo+ICB0b19yb2NrZXRfam9iKHN0cnVjdCBkcm1f
c2NoZWRfam9iICpzY2hlZF9qb2IpCj4gIHsKPiBAQCAtMTM3LDggKzE0OCwyNCBAQCBzdGF0aWMg
dm9pZCByb2NrZXRfam9iX2h3X3N1Ym1pdChzdHJ1Y3Qgcm9ja2V0X2NvcmUgKmNvcmUsIHN0cnVj
dCByb2NrZXRfam9iICpqbwo+ICAgICAgICAgcm9ja2V0X3BjX3dyaXRlbChjb3JlLCBSRUdJU1RF
Ul9BTU9VTlRTLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBQQ19SRUdJU1RFUl9BTU9VTlRT
X1BDX0RBVEFfQU1PVU5UKCh0YXNrLT5yZWdjbWRfY291bnQgKyAxKSAvIDIgLSAxKSk7Cj4KPiAt
ICAgICAgIHJvY2tldF9wY193cml0ZWwoY29yZSwgSU5URVJSVVBUX01BU0ssIFBDX0lOVEVSUlVQ
VF9NQVNLX0RQVV8wIHwgUENfSU5URVJSVVBUX01BU0tfRFBVXzEpOwo+IC0gICAgICAgcm9ja2V0
X3BjX3dyaXRlbChjb3JlLCBJTlRFUlJVUFRfQ0xFQVIsIFBDX0lOVEVSUlVQVF9DTEVBUl9EUFVf
MCB8IFBDX0lOVEVSUlVQVF9DTEVBUl9EUFVfMSk7Cj4gKyAgICAgICBpZiAoY29yZS0+c29jLT5w
b2xsX2NvbXBsZXRpb24pIHsKPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAg
ICogUkszNTc2OiBQQ19ET05FIChiaXRzIDI4LTI5KSBpcyByZWFkLW9ubHkgaW4gSU5URVJSVVBU
X01BU0ssIHNvCj4gKyAgICAgICAgICAgICAgICAqIGl0IGNhbm5vdCBiZSByb3V0ZWQgdG8gdGhl
IEdJQzsgZW5hYmxlIHRoZSBETUEtZXJyb3IgaW50ZXJydXB0cwo+ICsgICAgICAgICAgICAgICAg
KiBhbmQgcG9sbCBQQ19ET05FIHZpYSB0aGUgaHJ0aW1lciBzdGFydGVkIGJlbG93Lgo+ICsgICAg
ICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgcm9ja2V0X3BjX3dyaXRlbChjb3JlLCBJ
TlRFUlJVUFRfTUFTSywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQQ19JTlRF
UlJVUFRfTUFTS19ETUFfUkVBRF9FUlJPUiB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUENfSU5URVJSVVBUX01BU0tfRE1BX1dSSVRFX0VSUk9SKTsKPiArICAgICAgICAgICAg
ICAgcm9ja2V0X3BjX3dyaXRlbChjb3JlLCBJTlRFUlJVUFRfQ0xFQVIsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUENfSU5URVJSVVBUX01BU0tfUkszNTc2X1BDX0RPTkVfMCB8
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUENfSU5URVJSVVBUX01BU0tfUksz
NTc2X1BDX0RPTkVfMSk7Cj4gKyAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICByb2Nr
ZXRfcGNfd3JpdGVsKGNvcmUsIElOVEVSUlVQVF9NQVNLLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFBDX0lOVEVSUlVQVF9NQVNLX0RQVV8wIHwgUENfSU5URVJSVVBUX01BU0tf
RFBVXzEpOwo+ICsgICAgICAgICAgICAgICByb2NrZXRfcGNfd3JpdGVsKGNvcmUsIElOVEVSUlVQ
VF9DTEVBUiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQQ19JTlRFUlJVUFRf
Q0xFQVJfRFBVXzAgfCBQQ19JTlRFUlJVUFRfQ0xFQVJfRFBVXzEpOwo+ICsgICAgICAgfQoKVGhp
cyB3aG9sZSBwb2xsZWQtaW50ZXJydXB0IHBhcnQgbG9va3MgdmVyeSBzdXNwaWNpb3VzLiBEb2Vz
IHRoZQp2ZW5kb3Igc3RhY2sgZG8gdGhlIHNhbWUgdGhpbmc/CgpJdCdzIGhhcmQgdG8gYmVsaWV2
ZSBSb2NrY2hpcCB3b3VsZCByZWxlYXNlIHBlcmZvcm1hbmNlLWNyaXRpY2FsIGFuZApoeXBlLWhl
YXZ5IHNpbGljb24gd2hpY2ggY2FuJ3QgcHJvcGVybHkgcmFpc2UgdGhlIG1vc3Qgb2Z0ZW4gdHJp
Z2dlcmVkCmludGVycnVwdCBpbiBpdHMgY3JpdGljYWwgcGF0aCwgc28gdGhlcmUgbXVzdCBiZSBz
b21ldGhpbmcgZWxzZSBnb2luZwpvbiBoZXJlLgoKT25lIHRoZW9yeSBjb3VsZCBiZSB0aGF0IHRo
ZSBpbnRlcnJ1cHQgYml0cyBhcmUgbm90ICJyZWFkLW9ubHkiIHBlcgpzZSwgYnV0IHJhdGhlciBn
YXRlZCBpbmFjdGl2ZSBieSBzb21lIGludGVybmFsIGhhcmR3YXJlIHN0YXRlIHdoaWNoCm11c3Qg
YmUgY2xlYXJlZCBiZWZvcmUgam9icyBhcmUgc3VibWl0dGVkIChlLmcuIHNvbWUgYnVmZmVycyBu
b3QKZHJhaW5lZCwgb3IgaW5pdCBzZXF1ZW5jZSBub3QgY29tcGxldGVkLCBvciB2b2x0YWdlcy9m
cmVxdWVuY2llcyBub3QKc2V0LCBvciBtZW1vcnkgbWFwcGluZ3Mgbm90IHdyaXR0ZW4gb3V0LCAu
Li4pLiBJZiBzbywgdGhpcyBzYW1lCmhhcmR3YXJlIHN0YXRlIChvciBzb21ldGhpbmcgcmVsYXRl
ZCB0byBpdCkgbWF5IHdlbGwgYmUgdGhlIGNhdXNlIG9mCnlvdXIgb2JzZXJ2ZWQgImZpcnN0IChm
b3JjZWQpIGpvYiBjb21wbGV0ZXMsIG90aGVycyBkb24ndCIuCgpCZXN0IHJlZ2FyZHMsCkFsZXhl
eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

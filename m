Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A4AC624DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 16:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JHaorGcOhv7mKgbZJ+MEAMfSfhHAjZqwDMqsJdG4c8=; b=opcUfIiAOQIgA/
	0eoVMfYgnweTkwCRwmsRuD888/WmNU9qPT8leV9VDRluYNmAr62OuIBgdA+dxI03SHzlnl3pULVUZ
	NFcwwqOUq9qWUkbExK7Y3lXr/g4/ajckZW1ZeaCFcwzYByXA+eB/JaEWp7pdr6x0kJ+vMSoEMPJOw
	OsTQUDWa4yDOlZj/VeOdtf8OFPHEr+jgX3CrubuamuLsk028HPVCmxSotZIBL9Uut+wPWb52Fshwv
	edTFOj0UQpQ1sN7WbdTfRZRgDZgaluHBgyBJFiCrWzdAxYBTbGV2EHPXIeFHi3/DbsGaqf+W7H0ZA
	3T8G8tMQGesCoXQPOJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2WzP-00000002lAM-2Cas;
	Fri, 04 Sep 2026 16:42:07 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2WzL-00000002l9B-3TKV;
	Fri, 04 Sep 2026 16:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:To:
	Content-Type; bh=NfI3sXa25YFWPfyRn+wgSyK1ek+FDv+B1YGaaHsijuo=;
	b=U4uu4KTaIEW+h9cMnkm1PY9BQufllSyQ7cQiXgrk2hXim0Drm1nI8I9ZJo9O/c
	bod4GATPrp8wqC1ARVrUosUrAHvRGVy10KYIg6pki8EOWxIsJ9Xhohw328A/Arnc
	X7Dt/3kjIErd7eSbl/2s3QwUAqDFy1n4pRmxkv23ZIMVE=
Received: from [IPV6:240e:b8f:91b3:d000:cb89:e59c:b7d0:5b84] (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgAXZJmq9JpqJYjJQw--.64773S2;
	Sat, 05 Sep 2026 00:41:15 +0800 (CST)
Message-ID: <1a193cc9-38c8-470c-9041-fdf1dad5b6e3@163.com>
Date: Sat, 5 Sep 2026 00:41:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
From: Hans Zhang <18255117159@163.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, Manivannan Sadhasivam <mani@kernel.org>,
 lpieralisi@kernel.org, kwilczynski@kernel.org, heiko@sntech.de,
 yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260622171448.GA678675@bhelgaas>
 <72a058fd-5781-43bc-9148-180140929ecd@163.com>
Content-Language: en-US
In-Reply-To: <72a058fd-5781-43bc-9148-180140929ecd@163.com>
X-CM-TRANSID: PigvCgAXZJmq9JpqJYjJQw--.64773S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CFykGr13tF43Jr1rArWDJwb_yoW8uw4kpF
	W5Xan3ta1xKry3CF1qqw1Fyr1jqa48tFy3XryDtryayFn0vr15XF1I9wsYkrn7Wr1xGr12
	9r1Uta4xXrn0vaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Ucdb8UUUUU=
X-Originating-IP: [240e:b8f:91b3:d000:cb89:e59c:b7d0:5b84]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbC7AuoTGqa9KsUEwAA3r
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_094204_290378_E4862A67 
X-CRM114-Status: GOOD (  13.02  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiA3LzE0LzI2IDE5OjA2LCBIYW5zIFpoYW5nIHdyb3RlOgo+IAo+IAo+IE9uIDYvMjMvMjYg
MDE6MTQsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+IE9uIEZyaSwgSnVuIDE5LCAyMDI2IGF0IDEx
OjI5OjM5UE0gKzA4MDAsIEhhbnMgWmhhbmcgd3JvdGU6Cj4+PiBPbiA1LzYvMjYgMjI6MDAsIE1h
bml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+PiBPbiBGcmksIE5vdiAyOCwgMjAyNSBhdCAw
MTowOTowNkFNICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+Pj4+PiBDdXJyZW50IFBDSWUgaW5p
dGlhbGl6YXRpb24gZXhoaWJpdHMgYSBrZXkgb3B0aW1pemF0aW9uIGdhcDogUm9vdCAKPj4+Pj4g
UG9ydHMKPj4+Pj4gbWF5IG9wZXJhdGUgd2l0aCBub24tb3B0aW1hbCBNYXhpbXVtIFBheWxvYWQg
U2l6ZSAoTVBTKSBzZXR0aW5ncy4gCj4+Pj4+IFdoaWxlCj4+Pj4+IGRvd25zdHJlYW0gZGV2aWNl
IGNvbmZpZ3VyYXRpb24gaXMgaGFuZGxlZCBkdXJpbmcgYnVzIGVudW1lcmF0aW9uLCAKPj4+Pj4g
Um9vdAo+Pj4+PiBQb3J0IE1QUyB2YWx1ZXMgaW5oZXJpdGVkIGZyb20gZmlybXdhcmUgb3IgaGFy
ZHdhcmUgZGVmYXVsdHMgb2Z0ZW4gCj4+Pj4+IGZhaWwKPj4+Pj4gdG8gdXRpbGl6ZSB0aGUgZnVs
bCBjYXBhYmlsaXRpZXMgc3VwcG9ydGVkIGJ5IGNvbnRyb2xsZXIgaGFyZHdhcmUuIAo+Pj4+PiBU
aGlzCj4+Pj4+IHJlc3VsdHMgaW4gc3Vib3B0aW1hbCBkYXRhIHRyYW5zZmVyIGVmZmljaWVuY3kg
dGhyb3VnaG91dCB0aGUgUENJZQo+Pj4+PiBoaWVyYXJjaHkuCj4+Pj4+Cj4+Pj4+IFRoaXMgcGF0
Y2ggc2VyaWVzIGFkZHJlc3NlcyB0aGlzIGJ5Ogo+Pj4+Pgo+Pj4+PiAxLiBDb3JlIFBDSSBlbmhh
bmNlbWVudCAoUGF0Y2ggMSk6Cj4+Pj4+IC0gUHJvYWN0aXZlbHkgY29uZmlndXJlcyBSb290IFBv
cnQgTVBTIGR1cmluZyBob3N0IGNvbnRyb2xsZXIgcHJvYmluZwo+Pj4+PiAtIFNldHMgaW5pdGlh
bCBNUFMgdG8gaGFyZHdhcmUgbWF4aW11bSAoMTI4IDw8IGRldi0+cGNpZV9tcHNzKQo+Pj4+PiAt
IENvbmRpdGlvbmFsIG9uIFBDSWUgYnVzIHR1bmluZyBiZWluZyBlbmFibGVkIChQQ0lFX0JVU19U
VU5FX09GRiAKPj4+Pj4gdW5zZXQpCj4+Pj4+IMKgwqDCoCBhbmQgbm90IGluIFBDSUVfQlVTX1BF
RVIyUEVFUiBtb2RlICh3aGljaCByZXF1aXJlcyBkZWZhdWx0IDEyOCAKPj4+Pj4gYnl0ZXMpCj4+
Pj4+IC0gTWFpbnRhaW5zIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgdmlhIFBDSUVfQlVTX1RVTkVf
T0ZGIGNoZWNrCj4+Pj4+IC0gUHJlc2VydmVzIHN0YW5kYXJkIE1QUyBuZWdvdGlhdGlvbiBkdXJp
bmcgZG93bnN0cmVhbSBlbnVtZXJhdGlvbgo+Pj4+Pgo+Pj4+PiAyLiBEcml2ZXIgY2xlYW51cCAo
UGF0Y2ggMik6Cj4+Pj4+IC0gUmVtb3ZlcyByZWR1bmRhbnQgTVBTIGNvbmZpZ3VyYXRpb24gZnJv
bSBNZXNvbiBQQ0llIGNvbnRyb2xsZXIgCj4+Pj4+IGRyaXZlcgo+Pj4+PiAtIEZ1bmN0aW9uYWxp
dHkgaXMgbm93IGNlbnRyYWxpemVkIGluIFBDSSBjb3JlCj4+Pj4+IC0gU2ltcGxpZmllcyBkcml2
ZXIgbWFpbnRlbmFuY2UgbG9uZy10ZXJtCj4+Pj4+Cj4+Pj4KPj4+PiBGb3IgdGhlIHNlcmllcywK
Pj4+Pgo+Pj4+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVs
Lm9yZz4KPj4+Pgo+Pj4+IEJqb3JuOiBDb3VsZCB5b3UgcGxlYXNlIHRha2UgYSBsb29rPyBUaGlz
IHNlcmllcyBoYXMgYmVlbiBmbG9hdGluZyAKPj4+PiBmb3IgYQo+Pj4+IHdoaWxlLi4uCj4+Pgo+
Pj4gSGVsbG8gQmpvcm4sCj4+Pgo+Pj4gQW55IGNoYW5jZSBmb3IgdGhpcyBzZXJpZXMgdG8gYmUg
YXBwbGllZD8KPj4KPj4gSXQncyB0b28gbGF0ZSBmb3IgdjcuMjsgd2UncmUgYWxyZWFkeSBtb3Jl
IHRoYW4gaGFsZndheSB0aHJvdWdoIHRoZQo+PiBtZXJnZSB3aW5kb3cuwqAgV2UgY2FuIGxvb2sg
YWdhaW4gZm9yIHY3LjMgYWZ0ZXIgdjcuMi1yYzEuCj4gCj4gSGVsbG8gQmpvcm4sCj4gCj4gR2Vu
dGxlIHBpbmcgb24gdGhpcyBzZXJpZXMuCj4gCgpIZWxsbyBCam9ybiwKCldvdWxkIHlvdSBoYXZl
IHRpbWUgdG8gdGFrZSBhIGxvb2sgYXQgdGhpcyBzZXJpZXM/IElmIHRoZXJlIGlzIGFueXRoaW5n
IAplbHNlIEkgY2FuIGRvIHRvIGltcHJvdmUsIEkgd2lsbCBkbyBpdC4KCgpCZXN0IHJlZ2FyZHMs
CkhhbnMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

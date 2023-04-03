Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02103C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 17:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6lUmM1/by0Zf7/2uZkg1eXOWGzZEfig/LeFecCUaa4=; b=ETgCSgX3a2+K7s
	tn+a0VJoNjO6onyV/JkO4L6GX27EIZOGA4ooZcYHV/YdIHIe0F5L7nZ0HPW5PQdQ85YVnAqauSa2C
	CE8qeEt8UggkjSuqAVzQiUODmGP4sgZmpfFuCFPNh/8as14cAhG9Yq7SiWZbWKUl0odv5NpnQn7dR
	1KlZQIOc8cjJsw669j+CT8prdmIh160AMCNgwrAjsyiJ3ZpKu++YTInie7gTYkH0FtyyXVb1uaP/f
	/kpZOW1jTrEeiPWXmtyxMvJM/1d5dKztJfnrQi+uaMrSlZ/TGmTQE2mFeyZzCLlOmW+dJrzLS3BDy
	gCnhSEqtZQgmI8jR5MZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjO0r-00G4on-2s;
	Mon, 03 Apr 2023 17:30:37 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMxI-00Fwmk-2U;
	Mon, 03 Apr 2023 16:22:54 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0CCED66030F1;
	Mon,  3 Apr 2023 17:22:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680538968;
	bh=KZFxkxlJwNymS68Q84h+uC4PbGDB/VlWh4Zh9RnB1Mk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aVWszbJnKMu1vphEXT7Y+ZUFkCAEfH4uCwtlsHcGw7FoGzU49BlqzoL+v+dHCIA2+
	 zHM9S/TnBX900XiTtNOAWEp16glpjZNb2V99cfxjYQfgmwe5CTYRPBlNrw6q14OlQ4
	 4YukySR3AR+WUwzEOUGniclING2u0kIsnfEL9R7vGxbGx4CFML/eIlzJD6PkBlC2B+
	 c1652NuqCZ0FHZZ1u7vuYPcIpJdacmMWvVxz2Npzpxt41nP1YYQzTzyQ7EVDt+rots
	 BlyaHNTtrRYKy0zZ6QJGpGFDhitfQG4RnpGK/GB4i1J0O/sNB0j8tkPQWkhcqI0efq
	 bElzJAvst3PaQ==
Message-ID: <49c226ff-08a3-a7ca-59bd-f0b9cea865e3@collabora.com>
Date: Mon, 3 Apr 2023 19:22:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
 <168052514639.463695.9544022277060710805.robh@kernel.org>
 <dcd79e14-d9df-39c1-5465-4e9d71221659@collabora.com>
 <79396eed-18ab-bcee-5c7e-c3e5e61f32c3@collabora.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <79396eed-18ab-bcee-5c7e-c3e5e61f32c3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_092253_018844_64A56D23 
X-CRM114-Status: GOOD (  17.68  )
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

T24gNC8zLzIzIDE3OjQzLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPiBJbCAw
My8wNC8yMyAxNjozMiwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIGhhIHNjcml0dG86Cj4+IE9uIDQvMy8y
MyAxNjoxMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+Pgo+Pj4gT24gTW9uLCAwMyBBcHIgMjAyMyAx
Mzo1MDo1MSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+Pj4+IENvbnZlcnQgdGhl
IFBXTSBmYW4gYmluZGluZ3MgdG8gRFQgc2NoZW1hIGZvcm1hdC4KPj4+Pgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5j
b20+Cj4+Pj4gLS0tCj4+Pj4gwqDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9od21vbi9wd20t
ZmFuLnR4dMKgwqDCoMKgIHzCoCA2OCArLS0tLS0tLS0tLQo+Pj4+IMKgwqAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvaHdtb24vcHdtLWZhbi55YW1swqDCoMKgIHwgMTA5Cj4+Pj4gKysrKysrKysr
KysrKysrKysrCj4+Pj4gwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDExMCBpbnNlcnRpb25zKCspLCA2
NyBkZWxldGlvbnMoLSkKPj4+PiDCoMKgIGNyZWF0ZSBtb2RlIDEwMDY0NAo+Pj4+IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9od21vbi9wd20tZmFuLnlhbWwKPj4+Pgo+Pj4KPj4+
IFJ1bm5pbmcgJ21ha2UgZHRic19jaGVjaycgd2l0aCB0aGUgc2NoZW1hIGluIHRoaXMgcGF0Y2gg
Z2l2ZXMgdGhlCj4+PiBmb2xsb3dpbmcgd2FybmluZ3MuIENvbnNpZGVyIGlmIHRoZXkgYXJlIGV4
cGVjdGVkIG9yIHRoZSBzY2hlbWEgaXMKPj4+IGluY29ycmVjdC4gVGhlc2UgbWF5IG5vdCBiZSBu
ZXcgd2FybmluZ3MuCj4+Pgo+Pj4gTm90ZSB0aGF0IGl0IGlzIG5vdCB5ZXQgYSByZXF1aXJlbWVu
dCB0byBoYXZlIDAgd2FybmluZ3MgZm9yIGR0YnNfY2hlY2suCj4+PiBUaGlzIHdpbGwgY2hhbmdl
IGluIHRoZSBmdXR1cmUuCj4+Pgo+Pj4gRnVsbCBsb2cgaXMgYXZhaWxhYmxlIGhlcmU6Cj4+PiBo
dHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvZGV2aWNldHJlZS1iaW5kaW5ncy9w
YXRjaC8yMDIzMDQwMzEwNTA1Mi40MjYxMzUtMi1jcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbQo+Pj4KPj4+Cj4+PiBwd20tZmFuOiAnY29vbGluZy1tYXgtc3RhdGUnLCAnY29vbGluZy1t
aW4tc3RhdGUnIGRvIG5vdCBtYXRjaCBhbnkgb2YKPj4+IHRoZSByZWdleGVzOiAncGluY3RybC1b
MC05XSsnCj4+PiDCoMKgwqDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1zbTEt
b2Ryb2lkLWhjNC5kdGIKPj4+IMKgwqDCoMKgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTAyOGEta29udHJvbi1zbDI4LXZhcjMtYWRzMi5kdGIKPj4+Cj4+Cj4+IFRoZSBvbmx5
IHJlZmVyZW5jZXMgdG8gdGhlIG9mZmVuZGluZyBjb29saW5nLXttaW58bWF4fS1zdGF0ZSBhcmUg
bG9jYXRlZAo+PiBpbiBhIGZldyBEVFMgZmlsZXMuIEFzc3VtaW5nIHRoZXkgYXJlIG9ic29sZXRl
LCBtYXkgSSBzaW1wbHkgZHJvcCB0aGVtPwo+Pgo+IAo+IElmIHRoZXkncmUgb2Jzb2xldGUsIHlv
dSBjYW4gbWFyayB0aGVtIGFzIGBkZXByZWNhdGVkOiB0cnVlYCBpbiB0aGUKPiBiaW5kaW5nLCBi
dXQKPiBkcm9wcGluZyB0aGVtIGVudGlyZWx5IHdvdWxkIGJlIGFuIEFCSSBicmVha2FnZSwgc28g
bm8sIHlvdSBjYW4ndC4KCkZyb20gdGhlIHB3bS1mYW4gZHJpdmVyIHBvaW50IG9mIHZpZXcsIHRo
ZSBwcm9wZXJ0aWVzIGFyZSBub3Qgc3VwcG9ydGVkCmFuZCBJIGNvdWxkbid0IGZpbmQgYW55IGlu
ZGljYXRpb24gdGhhdCB0aGV5IGNvdWxkIGhhdmUgYmVlbiB1c2VkIGluIHRoZQpwYXN0LgoKSGVu
Y2UgSSdtIG5vdCBzdXJlIGFkZGluZyB0aGVtIHRvIHRoZSBiaW5kaW5nIGlzIHRoZSBwcm9wZXIg
d2F5IHRvCmhhbmRsZSB0aGlzIGlzc3VlLgoKVGhhbmtzLApDcmlzdGlhbgoKPiBSZWdhcmRzLAo+
IEFuZ2Vsbwo+IAo+PiAkIGdpdCBncmVwICJjb29saW5nLS4qLXN0YXRlIgo+Pgo+PiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tZzEyYi1iYW5hbmFwaS5kdHNpOgo+PiBjb29saW5n
LW1pbi1zdGF0ZSA9IDwwPjsKPj4gYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWcx
MmItYmFuYW5hcGkuZHRzaToKPj4gY29vbGluZy1tYXgtc3RhdGUgPSA8Mz47Cj4+IGFyY2gvYXJt
NjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1zbTEtb2Ryb2lkLWhjNC5kdHM6Cj4+IGNvb2xpbmct
bWluLXN0YXRlID0gPDA+Owo+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tc20x
LW9kcm9pZC1oYzQuZHRzOgo+PiBjb29saW5nLW1heC1zdGF0ZSA9IDwzPjsKPj4gYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEta29udHJvbi1zbDI4LXZhcjMtYWRzMi5k
dHM6wqDCoMKgwqDCoMKgwqAgY29vbGluZy1taW4tc3RhdGUgPSA8MD47Cj4+IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLWtvbnRyb24tc2wyOC12YXIzLWFkczIuZHRz
OsKgwqDCoMKgwqDCoMKgIGNvb2xpbmctbWF4LXN0YXRlID0gPDM+Owo+PiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYwYS1jZXg3LmR0c2k6wqDCoMKgwqDCoMKgwqAKPj4g
Y29vbGluZy1taW4tc3RhdGUgPSA8MD47Cj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2ZzbC1seDIxNjBhLWNleDcuZHRzaTrCoMKgwqDCoMKgwqDCoAo+PiBjb29saW5nLW1heC1zdGF0
ZSA9IDw5PjsKPj4KPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

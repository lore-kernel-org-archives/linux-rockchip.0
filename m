Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85F2CC44520
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 19:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZc/Jhqs2o4CQ6a+n4xh2hd9HUTYEZEfnOUmnGZMErg=; b=FWUCvuSyLHC7HW
	XGyrnjvtvBQETT1jnYB4ISN4EIdtTd2LQkMqIZpeOlqkHHhQ+erW3Ivt67wLi0RpnN1dJm6LBkIL3
	tC4xsnjvz0zEWT/+A5WeDK5dpUSnMZ9rXCoVtvfQKOM+j7NPbQ3S9QvylQIAbYc18mvG5SB9QVgey
	eVWHsrjVXK0OngyDbYLXZBlarrdowP/qwlRv1o1rEqfSvfJKrLJfBFXhnNwdvdD/s9UvDbO/+tGF3
	IKrRn2RKqNUVeFCH1oENyeiqArgurZtfliJiKCaeNfzzGs+qsCzOLJIxo1uMWmuFpiCbGv8619FsV
	t39VCE48/jO0neywtfMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wltZv-00000007kBs-1viZ;
	Mon, 20 Jul 2026 19:23:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wltZs-00000007k8x-0YgY;
	Mon, 20 Jul 2026 19:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784575377;
	bh=OsvP99ela6zAdfVIAq+eCL6sZcIj2qQNMD54cI/1i9s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jnWSq+Lo4AbMpRQhZKdE9RiEnUqKI7RkAeHfp+TqVXKMmhFuXWYunZK2eTEiRClZR
	 Vu6vYhpB7cxno6FTANC9D+otPZCYlwWvWMfiOd//Kd1Le/VTkK7VdnXBbI34f0uvGQ
	 +GRTOzhpVlLZvturG7s3N3pxjVlgJE+upcHgD4XLZYWPaaxz3UesDjJs8l7k1EHyS/
	 t0V++NdxCm6DJc7npUYUzEVcoiKaUaoWSX/fjQKn40LbctCDgc8uXxcdkOvILjAIJW
	 cGtYMGI+OnXFXE5cVtDfAkkllbog/2Pift17HprAaSgldYnJ2qqPFUUX1d3kecnZ/L
	 GkNpp6qWTNdYw==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 469CB17E0910;
	Mon, 20 Jul 2026 21:22:57 +0200 (CEST)
Message-ID: <d6df5627-b3d3-4508-be4a-d202b2a13afc@collabora.com>
Date: Mon, 20 Jul 2026 22:22:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
 <al4t4aN01iiUKff_@umbar.lan>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <al4t4aN01iiUKff_@umbar.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_122300_332606_E2B498FD 
X-CRM114-Status: GOOD (  21.19  )
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

T24gNy8yMC8yNiA1OjE3IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIEZyaSwgSnVu
IDEyLCAyMDI2IGF0IDAyOjQ1OjIzQU0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToK
Pj4gQW55IGNoYW5nZXMgdG8gdGhlIFBIWSBsaW5rIHJhdGUgYW5kL29yIGNvbG9yIGRlcHRoIGRv
bmUgdmlhIHRoZSBIRE1JCj4+IFBIWSBjb25maWd1cmF0aW9uIEFQSSBhcmUgbm90IGltbWVkaWF0
ZWx5IHByb2dyYW1tZWQgaW50byB0aGUgaGFyZHdhcmUsCj4+IGJ1dCBhcmUgZGVsYXllZCB1bnRp
bCB0aGUgUEhZIHVzYWdlIGNvdW50IGdldHMgaW5jcmVtZW50ZWQgZnJvbSAwIHRvIDEsCj4+IHRo
YXQgaXMgd2hlbiBpdCBpcyBwb3dlcmVkIG9uIG9yIHdoZW4gdGhlIFBMTCBjbG9jayBleHBvc2Vk
IHRocm91Z2gKPj4gdGhlIENDRiBBUEkgaXMgcHJlcGFyZWQsIHdoaWNoZXZlciBjb21lcyBmaXJz
dC4KPiAKPiBXaHkgZG8geW91IG5lZWQgZWl0aGVyLW9mIGhlcmU/IENhbiBpdCBiZSBqdXN0IG9u
ZSBwYXRoPwoKVGhlIHRoaW5nIGlzIHRoYXQgUExMIGNsb2NrIHVzYWdlIGlzIGR5bmFtaWMsIGRl
cGVuZGluZyBvbiB0aGUgcmF0ZSwgYnV0IGl0IGNhbgphbHNvIGJlIGRpc2FibGVkIHBlcm1hbmVu
dGx5LiBXaGVuIGl0J3MgaW4gdXNlLCBpdCB0cmlnZ2VycyBiZWZvcmUgcG93ZXIgb24sCmhlbmNl
IHRoZSBoYXJkd2FyZSBtdXN0IGJlIHByb2dyYW1tZWQgYXQgdGhhdCB0aW1lLgoKPj4KPj4gU2lu
Y2UgdGhlIGNsb2NrIG1pZ2h0IHJlbWFpbiBpbiBwcmVwYXJlZCBzdGF0ZSBhZnRlciBzdWJzZXF1
ZW50IFBIWQo+PiBjb25maWcgY2hhbmdlcywgdGhlIHByb2dyYW1taW5nIGNhbiBhbHNvIGJlIHRy
aWdnZXJlZCB2aWEKPj4gY2xrX29wcy5zZXRfcmF0ZSgpLiAgSG93ZXZlciwgZnJvbSB0aGUgY2xv
Y2sgY29uc3VtZXIgcGVyc3BlY3RpdmUgKGkuZS4KPj4gVk9QMiBkaXNwbGF5IGNvbnRyb2xsZXIp
LCB0aGUgKHBpeGVsKSBjbG9jayByYXRlIGRvZXNuJ3QgdmFyeSB3aXRoIGJwYywKPj4gYXMgdGhh
dCBpcyBoYW5kbGVkIGludGVybmFsbHkgYnkgdGhlIFBIWSBhbmQgcmVmbGVjdGVkIGluIHRoZSBU
RE1TCj4+IGNoYXJhY3RlciByYXRlIG9ubHkuCj4+Cj4+IEFzIGEgY29uc2VxdWVuY2UsIGNoYW5n
aW5nIHRoZSBicGMgd2hpbGUgcHJlc2VydmluZyB0aGUgbW9kZWxpbmUgbWF5Cj4+IGxlYWQgdG8g
b3V0LW9mLXN5bmMgaXNzdWVzIGJldHdlZW4gQ0NGIGFuZCBIRE1JIFBIWSBjb25maWcgc3RhdGUs
Cj4+IGJlY2F1c2UgdGhlIC5zZXRfcmF0ZSgpIGNhbGxiYWNrIGlzIG5vdCBpbnZva2VkIHdoZW4g
Y2xvY2sgcmF0ZSByZW1haW5zCj4+IGNvbnN0YW50LiAgVGhpcyBtYXkgYWxzbyBoYXBwZW4gd2hl
biB0aGUgUEhZIFBMTCBoYXMgYmVlbiBwcmUtcHJvZ3JhbW1lZAo+PiBieSBhbiBleHRlcm5hbCBl
bnRpdHksIGUuZy4gdGhlIGJvb3Rsb2FkZXIsIHdoaWNoIGlzIGFjdHVhbGx5IGEKPj4gcmVncmVz
c2lvbiBpbnRyb2R1Y2VkIGJ5IHRoZSByZWNlbnQgRlJMIHBhdGNoZXMuCj4+Cj4+IEludHJvZHVj
ZSBhIHBsbF9jb25maWdfZGlydHkgZmxhZyB0byBrZWVwIHRyYWNrIG9mIHVuY29tbWl0dGVkIFBI
WQo+PiBjb25maWcgY2hhbmdlcyBhbmQgdXNlIGl0IGluIGNsa19vcHMuZGV0ZXJtaW5lX3JhdGUo
KSB0byBpbnZhbGlkYXRlIHRoZQo+PiBjdXJyZW50IGNsb2NrIHJhdGUgKGFzIGtub3duIGJ5IEND
RikgYW5kLCBjb25zZXF1ZW50bHksIGVuc3VyZSB0aG9zZQo+PiBjaGFuZ2VzIGFyZSBwcm9ncmFt
bWVkIGludG8gaGFyZHdhcmUgdmlhIGNsa19vcHMuc2V0X3JhdGUoKS4KPj4KPj4gTW9yZW92ZXIs
IHByb2NlZWQgd2l0aCBhIHNpbWlsYXIgZml4IGluIHBoeV9vcHMucG93ZXJfb24oKSBjYWxsYmFj
aywgdG8KPj4gaGFuZGxlIHRoZSBzY2VuYXJpbyB3aGVyZSB0aGUgQ0NGIEFQSSBpcyBub3QgdXNl
ZCBkdWUgdG8gb3BlcmF0aW5nIGluCj4+IEZSTCBtb2RlLCB3aGlsZSB0aGUgY2xvY2sgaXMgc3Rp
bGwgaW4gYSBwcmVwYXJlZCBzdGF0ZSBhbmQgdGh1cwo+PiBwcmV2ZW50aW5nIHJrX2hkcHR4X3Bo
eV9jb25zdW1lcl9nZXQoKSB0byBhcHBseSB0aGUgdXBkYXRlZCBQSFkKPj4gY29uZmlndXJhdGlv
bi4KPj4KPj4gRml4ZXM6IGRlNWRiYTgzMzExOCAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRw
dHg6IEFkZCBIRE1JIDIuMSBGUkwgc3VwcG9ydCIpCj4+IEZpeGVzOiA5ZDBlYzUxZDdjMjIgKCJw
aHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBBZGQgaGlnaCBjb2xvciBkZXB0aCBtYW5hZ2Vt
ZW50IikKPj4gVGVzdGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+
Cj4+IFRlc3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4+IFNpZ25lZC1v
ZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5j
b20+Cj4+IC0tLQo+PiAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmct
aGRwdHguYyB8IDg0ICsrKysrKysrKysrKystLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwg
NDggaW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+PiBpbmRleCBiMjEwYzFh
ODhiMjUuLjI1YmQ4MjFjZDAzOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4+IEBAIC00MTMsNiArNDEzLDcgQEAgc3Ry
dWN0IHJrX2hkcHR4X3BoeSB7Cj4+ICAKPj4gIAkvKiBjbGsgcHJvdmlkZXIgKi8KPj4gIAlzdHJ1
Y3QgY2xrX2h3IGh3Owo+PiArCWJvb2wgcGxsX2NvbmZpZ19kaXJ0eTsKPiAKPiBXaGljaCBsb2Nr
IHByb3RlY3RzIGl0PwoKVGhpcyBpcyBub3QgcHJvdGVjdGVkIGJ5IGEgZHJpdmVyLWxvY2FsIGxv
Y2ssIGFzIHRoZSBpbXBhY3RlZCBjYWxscyBhcmUKb3JjaGVzdHJhdGVkIGJ5IHRoZSBEUk0gY29y
ZSwgd2hpY2ggc2hvdWxkIGd1YXJhbnR5IHRoZSBleHBlY3RlZCBzZXF1ZW5jZSBvZgpvcGVyYXRp
b25zOgoKMS4gZW5jb2Rlci1jaGVjayAtPiBwaHlfY29uZmlndXJlIC0+IG5vIEhXIHByb2dyYW1t
aW5nLCBwbGxfY29uZmlnX2RpcnR5PXRydWUKMi4gVk9QMiBjcnRjLWVuYWJsZSAtPiBzZXRfcmF0
ZSAtPiBIVyBjb21taXQsIHBsbF9jb25maWdfZGlydHk9ZmFsc2UKMy4gYnJpZGdlLWVuYWJsZSAt
PiBwaHlfcG93ZXJfb24sIG5vIEhXIHByb2dyYW1taW5nIChwbGxfY29uZmlnX2RpcnR5IGFscmVh
ZHkKICAgZmFsc2UpCgo+IAo+PiAgCWJvb2wgcmVzdHJpY3RfcmF0ZV9jaGFuZ2U7Cj4+ICAKPj4g
IAlhdG9taWNfdCB1c2FnZV9jb3VudDsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

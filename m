Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285DFCAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 08:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuSJ0iHTT/R8zce0T+hWHCx9FTk2OmkEZCtVv7c31+8=; b=YtuEbHOXW03LmW
	Ltk6aWt7NI+UOnzmcdix54d/66oLGjwUSvSzyrNow+BPUsuxU/b0vnb4rtLtoyD7XIQWaOIZaVdwe
	MN6zKoWWmFoTUrjwxnqPj/ZqCSlDxFG5KamR3JK6a/SzGNj98sWaI+A20fcx7PtG3S2Bcigu+NIvy
	tHZmFfbw3s4FOXS0sBt5EbkRkKyK4+37VCG8bRWF8DUmu0B0aBku5e64iy+Ce9RYfx9KUWyq2RH59
	B5XBM3DGHzxJLLksqdsxfcdAtjwku6zQjRbscGsYaYut6fK72zgZogwvAGZrYsYdA+a4yb+gKtKC1
	G1TwEQse6+WwTCBy6Qpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzTR-000000081Vi-3lGH;
	Fri, 12 Sep 2025 08:49:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzTO-000000081UK-3tpF;
	Fri, 12 Sep 2025 08:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1757666976;
	bh=t2CbprpuSHyhZVsAXOvVA2HQNj6MCqFKJW6RdhauD7A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b9k6Y/jYHYRf1lBd3IVQs8MHuAF8Lp6WToReTrp1ENuOHC572Yy8h6K04o261v7Ua
	 4yW19LAPpuImfWtnGkwQ0AI++cysclzDjM48otKS6QWxc3huIGYnfsD2EIhixgRlnB
	 DASIixfeR12WRXjgbBInSPg9IQsTxZ3yVzg7gkK97V+olG00bTvwQxVTAQNjgQjLX8
	 BuV3duQibBT6UOIh8+w26DohRm5Zwb+2dqew+bmZTDDDfA5DyuNbhJDKNQWRtzO5s7
	 rixyPQa88tYz+a/WjvMPdPxtN1tP4M3Azs1f15mTHQRrIsynehoHJn87WgBxnP8tJx
	 h179TIG0hlXKg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0E66317E05BE;
	Fri, 12 Sep 2025 10:49:35 +0200 (CEST)
Message-ID: <181e1668-6efc-4dce-91e4-7b535e17dd46@collabora.com>
Date: Fri, 12 Sep 2025 10:49:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/12] dt-bindings: media: Convert MediaTek mt8173-mdp
 bindings to DT schema
To: Chen-Yu Tsai <wenst@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ariel D'Alessandro <ariel.dalessandro@collabora.com>, airlied@gmail.com,
 amergnat@baylibre.com, andrew+netdev@lunn.ch, andrew-ct.chen@mediatek.com,
 broonie@kernel.org, chunkuang.hu@kernel.org, conor+dt@kernel.org,
 davem@davemloft.net, dmitry.torokhov@gmail.com, edumazet@google.com,
 flora.fu@mediatek.com, heiko@sntech.de, houlong.wei@mediatek.com,
 jeesw@melfas.com, kernel@collabora.com, krzk+dt@kernel.org, kuba@kernel.org,
 lgirdwood@gmail.com, linus.walleij@linaro.org,
 louisalexis.eyraud@collabora.com, luiz.dentz@gmail.com,
 maarten.lankhorst@linux.intel.com, marcel@holtmann.org,
 matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com,
 mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com,
 robh@kernel.org, sean.wang@kernel.org, simona@ffwll.ch,
 support.opensource@diasemi.com, tiffany.lin@mediatek.com,
 tzimmermann@suse.de, yunfei.dong@mediatek.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-bluetooth@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 netdev@vger.kernel.org
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
 <20250911151001.108744-2-ariel.dalessandro@collabora.com>
 <20250912-alluring-turaco-of-conversion-dca193@kuoka>
 <CAGXv+5GovP7NuG042AwfmtC-sPJMGuFAm6iZ0iqNZgU0VE+qmQ@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAGXv+5GovP7NuG042AwfmtC-sPJMGuFAm6iZ0iqNZgU0VE+qmQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_014939_114345_EAC8C38F 
X-CRM114-Status: GOOD (  20.62  )
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

SWwgMTIvMDkvMjUgMTA6MjcsIENoZW4tWXUgVHNhaSBoYSBzY3JpdHRvOgo+IE9uIEZyaSwgU2Vw
IDEyLCAyMDI1IGF0IDI6MDbigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Pgo+PiBPbiBUaHUsIFNlcCAxMSwgMjAyNSBhdCAxMjowOTo1MFBNIC0wMzAw
LCBBcmllbCBEJ0FsZXNzYW5kcm8gd3JvdGU6Cj4+PiBDb252ZXJ0IHRoZSBleGlzdGluZyB0ZXh0
LWJhc2VkIERUIGJpbmRpbmdzIGZvciBNZWRpYVRlayBNVDgxNzMgTWVkaWEgRGF0YQo+Pj4gUGF0
aCB0byBhIERUIHNjaGVtYS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBcmllbCBEJ0FsZXNzYW5k
cm8gPGFyaWVsLmRhbGVzc2FuZHJvQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL2Jp
bmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE3My1tZHAueWFtbCAgIHwgMTY5ICsrKysrKysrKysr
KysrKysrKwo+Pj4gICAuLi4vYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWstbWRwLnR4dCAgICAgICAg
ICAgfCAgOTUgLS0tLS0tLS0tLQo+Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDE2OSBpbnNlcnRpb25z
KCspLCA5NSBkZWxldGlvbnMoLSkKPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxNzMtbWRwLnlhbWwKPj4+
ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9tZWRpYXRlay1tZHAudHh0Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxNzMtbWRwLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWssbXQ4MTczLW1kcC55
YW1sCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uOGNh
MzNhNzMzYzQ3OAo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE3My1tZHAueWFtbAo+Pj4gQEAgLTAs
MCArMSwxNjkgQEAKPj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBC
U0QtMi1DbGF1c2UpCj4+PiArJVlBTUwgMS4yCj4+PiArLS0tCj4+PiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9tZWRpYS9tZWRpYXRlayxtdDgxNzMtbWRwLnlhbWwjCj4+PiAr
JHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+
PiArCj4+PiArdGl0bGU6IE1lZGlhVGVrIE1UODE3MyBNZWRpYSBEYXRhIFBhdGgKPj4+ICsKPj4+
ICttYWludGFpbmVyczoKPj4+ICsgIC0gQXJpZWwgRCdBbGVzc2FuZHJvIDxhcmllbC5kYWxlc3Nh
bmRyb0Bjb2xsYWJvcmEuY29tPgo+Pj4gKwo+Pj4gK2Rlc2NyaXB0aW9uOgo+Pj4gKyAgTWVkaWEg
RGF0YSBQYXRoIGlzIHVzZWQgZm9yIHNjYWxpbmcgYW5kIGNvbG9yIHNwYWNlIGNvbnZlcnNpb24u
Cj4+PiArCj4+PiArcHJvcGVydGllczoKPj4+ICsgIGNvbXBhdGlibGU6Cj4+PiArICAgIG9uZU9m
Ogo+Pj4gKyAgICAgIC0gZW51bToKPj4+ICsgICAgICAgICAgLSBtZWRpYXRlayxtdDgxNzMtbWRw
LXJkbWEKPj4+ICsgICAgICAgICAgLSBtZWRpYXRlayxtdDgxNzMtbWRwLXJzego+Pj4gKyAgICAg
ICAgICAtIG1lZGlhdGVrLG10ODE3My1tZHAtd2RtYQo+Pj4gKyAgICAgICAgICAtIG1lZGlhdGVr
LG10ODE3My1tZHAtd3JvdAo+Pgo+PiBXaHkgdGhlcmUgaXMgbm8gbWVkaWF0ZWssbXQ4MTczLW1k
cCBoZXJlPyBXaGF0IGRvZXMgdGhpcyBjb21wYXRpYmxlCj4+IHJlcHJlc2VudD8KPj4KPj4+ICsg
ICAgICAtIGl0ZW1zOgo+Pj4gKyAgICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWRw
LXJkbWEKPj4KPj4gU3RpbGwgc3VzcGljaW91cy4gRGV2aWNlIGNhbm5vdCBiZSBzaW11bGF0YW5v
dXNseTogY29tcGF0aWJsZSBhbmQgbm90Cj4+IGNvbXBhdGlibGUuIFRoaXMgaXMgbm90IGEgd2Vs
bCBrbm93biBjYXQgdGhhdCBoYXMgc3VwZXJwb3NpdGlvbiBvZiB0d28KPj4gc3RhdGVzLCB3aGVu
ZW52ZXIgeW91IGxvb2sgdGhlIG90aGVyIHdheS4KPj4KPj4gTWF5YmUgdGhlIG9sZCBiaW5kaW5n
IHdhcyBpbmNvcnJlY3QsIG1heWJlIHRoZSBpbi10cmVlIERUUyBpcyBpbmNvcnJlY3QuCj4+IFdo
aWNoZXZlciB0aGUgcmVhc29uLCB0aGlzIG11c3QgYmUgaW52ZXN0aWdhdGVkIGFuZCBkb2N1bWVu
dGVkLCBiZWNhdXNlCj4+IGJ5IHN0YW5kYXJkIHJ1bGVzIHRoaXMgaXMgd3JvbmcuIEVhY2ggd3Jv
bmcgY29kZSBuZWVkcyB2ZXJ5IGNsZWFyCj4+IGV4cGxhbmF0aW9ucyAoYW5kICJzb21lb25lIGRp
ZCBpdCIgaXMgbm90IGEgZ29vZCBlbm91Z2ggZXhwbGFuYXRpb24pLgo+IAo+IE15IGd1ZXNzIGlz
IHRoYXQgIm1lZGlhdGVrLG10ODE3My1tZHAiIGlzIG1lYW50IHRvIHNlcnZlIGFzIGEgc2luZ2xl
Cj4gZW50cnkgcG9pbnQgZm9yIHRoZSBpbXBsZW1lbnRhdGlvbiB0byBiaW5kIHRoZSBkcml2ZXIg
dG8uIFRoZSBNRFAgaXMKPiBhIERhdGEgUGlwZWxpbmUgYW5kIHRoZXJlIGNvdWxkIGJlIG11bHRp
cGxlIGluc3RhbmNlcyBvZiB0aGUgc2FtZQo+IElQIGJsb2NrLCBhcyBzZWVuIGluIHRoZSBvcmln
aW5hbCBleGFtcGxlLgo+IAoKWWVhaCB5b3VyIGd1ZXNzIGlzIHJpZ2h0LgoKQ2hlZXJzLApBbmdl
bG8KCj4gVGhlIGRhdGFzaGVldCBJIGhhdmUgZG9lc24ndCBjb3ZlciB0aGUgIlJETUEiIGJsb2Nr
IHNwZWNpZmljYWxseSwgc28KPiBJIGNhbid0IHNheSB3aGV0aGVyIHRoZXJlIGlzIGFuIGFjdHVh
bCBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHR3byBSRE1BCj4gYmxvY2tzLgo+IAo+IAo+IENoZW5Z
dQo+IAo+Pj4gKyAgICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWRwCj4+PiArCj4+
PiArICByZWc6Cj4+PiArICAgIG1heEl0ZW1zOiAxCj4+PiArCj4+PiArICBjbG9ja3M6Cj4+PiAr
ICAgIG1pbkl0ZW1zOiAxCj4+PiArICAgIG1heEl0ZW1zOiAyCj4+PiArCj4+PiArICBwb3dlci1k
b21haW5zOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4gKwo+Pj4gKyAgaW9tbXVzOgo+Pj4gKyAg
ICBtYXhJdGVtczogMQo+Pj4gKwo+Pj4gKyAgbWVkaWF0ZWssdnB1Ogo+Pj4gKyAgICAkcmVmOiAv
c2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+PiArICAgIGRlc2NyaXB0
aW9uOgo+Pj4gKyAgICAgIHBoYW5kbGUgdG8gTWVkaWF0ZWsgVmlkZW8gUHJvY2Vzc29yIFVuaXQg
Zm9yIEhXIENvZGVjIGVuY29kZS9kZWNvZGUgYW5kCj4+PiArICAgICAgaW1hZ2UgcHJvY2Vzc2lu
Zy4KPj4+ICsKPj4+ICtyZXF1aXJlZDoKPj4+ICsgIC0gY29tcGF0aWJsZQo+Pj4gKyAgLSByZWcK
Pj4+ICsgIC0gY2xvY2tzCj4+PiArICAtIHBvd2VyLWRvbWFpbnMKPj4+ICsKPj4+ICthbGxPZjoK
Pj4+ICsgIC0gaWY6Cj4+PiArICAgICAgcHJvcGVydGllczoKPj4+ICsgICAgICAgIGNvbXBhdGli
bGU6Cj4+PiArICAgICAgICAgIGNvbnRhaW5zOgo+Pj4gKyAgICAgICAgICAgIGNvbnN0OiBtZWRp
YXRlayxtdDgxNzMtbWRwLXJkbWEKPj4+ICsgICAgdGhlbjoKPj4+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+Pj4gKyAgICAgICAgY2xvY2tzOgo+Pj4gKyAgICAgICAgICBpdGVtczoKPj4+ICsgICAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBNYWluIGNsb2NrCj4+PiArICAgICAgICAgICAgLSBkZXNjcmlw
dGlvbjogTXV0ZXggY2xvY2sKPj4+ICsgICAgZWxzZToKPj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+
Pj4gKyAgICAgICAgY2xvY2tzOgo+Pj4gKyAgICAgICAgICBpdGVtczoKPj4+ICsgICAgICAgICAg
ICAtIGRlc2NyaXB0aW9uOiBNYWluIGNsb2NrCj4+PiArCj4+PiArICAtIGlmOgo+Pj4gKyAgICAg
IHByb3BlcnRpZXM6Cj4+PiArICAgICAgICBjb21wYXRpYmxlOgo+Pj4gKyAgICAgICAgICBjb250
YWluczoKPj4+ICsgICAgICAgICAgICBlbnVtOgo+Pj4gKyAgICAgICAgICAgICAgLSBtZWRpYXRl
ayxtdDgxNzMtbWRwLXJkbWEKPj4+ICsgICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTczLW1k
cC13ZG1hCj4+PiArICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE3My1tZHAtd3JvdAo+Pj4g
KyAgICB0aGVuOgo+Pj4gKyAgICAgIHJlcXVpcmVkOgo+Pj4gKyAgICAgICAgLSBpb21tdXMKPj4+
ICsKPj4+ICsgIC0gaWY6Cj4+PiArICAgICAgcHJvcGVydGllczoKPj4+ICsgICAgICAgIGNvbXBh
dGlibGU6Cj4+PiArICAgICAgICAgIGNvbnRhaW5zOgo+Pj4gKyAgICAgICAgICAgIGNvbnN0OiBt
ZWRpYXRlayxtdDgxNzMtbWRwCj4+PiArICAgIHRoZW46Cj4+PiArICAgICAgcmVxdWlyZWQ6Cj4+
PiArICAgICAgICAtIG1lZGlhdGVrLHZwdQo+Pj4gKwo+Pj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVz
OiBmYWxzZQo+Pj4gKwo+Pj4gK2V4YW1wbGVzOgo+Pj4gKyAgLSB8Cj4+PiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9jbG9jay9tdDgxNzMtY2xrLmg+Cj4+PiArICAgICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9tZW1vcnkvbXQ4MTczLWxhcmItcG9ydC5oPgo+Pj4gKyAgICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvcG93ZXIvbXQ4MTczLXBvd2VyLmg+Cj4+PiArCj4+PiArICAgIHNvYyB7Cj4+PiAr
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4+ICsgICAgICAgICNzaXplLWNlbGxzID0g
PDI+Owo+Pj4gKwo+Pj4gKyAgICAgICAgbWRwX3JkbWEwOiByZG1hQDE0MDAxMDAwIHsKPj4+ICsg
ICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE3My1tZHAtcmRtYSIsCj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICJtZWRpYXRlayxtdDgxNzMtbWRwIjsKPj4+ICsgICAg
ICAgICAgICByZWcgPSA8MCAweDE0MDAxMDAwIDAgMHgxMDAwPjsKPj4+ICsgICAgICAgICAgICBj
bG9ja3MgPSA8Jm1tc3lzIENMS19NTV9NRFBfUkRNQTA+LAo+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIDwmbW1zeXMgQ0xLX01NX01VVEVYXzMySz47Cj4+PiArICAgICAgICAgICAgcG93ZXItZG9t
YWlucyA9IDwmc3BtIE1UODE3M19QT1dFUl9ET01BSU5fTU0+Owo+Pj4gKyAgICAgICAgICAgIGlv
bW11cyA9IDwmaW9tbXUgTTRVX1BPUlRfTURQX1JETUEwPjsKPj4+ICsgICAgICAgICAgICBtZWRp
YXRlayx2cHUgPSA8JnZwdT47Cj4+PiArICAgICAgICB9Owo+Pj4gKwo+Pj4gKyAgICAgICAgbWRw
X3JkbWExOiByZG1hQDE0MDAyMDAwIHsKPj4+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1l
ZGlhdGVrLG10ODE3My1tZHAtcmRtYSI7Cj4+PiArICAgICAgICAgICAgcmVnID0gPDAgMHgxNDAw
MjAwMCAwIDB4MTAwMD47Cj4+PiArICAgICAgICAgICAgY2xvY2tzID0gPCZtbXN5cyBDTEtfTU1f
TURQX1JETUExPiwKPj4+ICsgICAgICAgICAgICAgICAgICAgICA8Jm1tc3lzIENMS19NTV9NVVRF
WF8zMks+Owo+Pj4gKyAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnNwbSBNVDgxNzNfUE9X
RVJfRE9NQUlOX01NPjsKPj4+ICsgICAgICAgICAgICBpb21tdXMgPSA8JmlvbW11IE00VV9QT1JU
X01EUF9SRE1BMT47Cj4+PiArICAgICAgICB9Owo+Pgo+PiBNeSBwcmV2aW91cyBjb21tZW50IGFw
cGxpZXMuCj4+Cj4+IEtlZXAgb25lIG9yIHR3byBleGFtcGxlcy4KPj4KPj4gQmVzdCByZWdhcmRz
LAo+PiBLcnp5c3p0b2YKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

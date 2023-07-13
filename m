Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11538EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 07:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nReCOBVIAxJM6HgaLuio6po0/tiahqsmSZIEKBIeFVs=; b=FniqqDSMc2VfSW
	jyL9XKiobbbD8wT6GxO+ElZqaj3iOQ0FdhqL8klrSx/fOvwtwrFAdRqeIYtDpsHjTXuZB2Er46z16
	f2O+VuHDNxULva+ELSFdQEBJyRZys/5dcJ1kgMbFzKIthkTM/c5/Y+E0gQrm8SwQCeX1EPrrP9M8K
	6WcQpnNZQfCh1bUb6o2GTd1pHO8z0dugYKsjQWs9+u8f5a6rYgjqrj3fh5op+3YY11R+Yk86m3+ig
	gr+tk/3554Tn2rL/7TzaNtYOIYr+8gqqiLMsTIErVx9g1su9TC1XviOiDY1NCZxGSc+PvKLP24d4p
	9STkyPWh8+mIBhACg1tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJqQV-002BWU-0f;
	Thu, 13 Jul 2023 07:07:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJqQR-002BTz-05;
	Thu, 13 Jul 2023 07:07:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D140961A38;
	Thu, 13 Jul 2023 07:07:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A0B4C433C8;
	Thu, 13 Jul 2023 07:07:33 +0000 (UTC)
Message-ID: <37b85c30-7ba4-00ee-3441-26335e16ecf2@xs4all.nl>
Date: Thu, 13 Jul 2023 09:07:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sakari Ailus <sakari.ailus@iki.fi>
Cc: Joe Tessler <jrt@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang
 <wenyou.yang@microchip.com>, Bin Liu <bin.liu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Yong Deng <yong.deng@magewell.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
 <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
 <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
 <ZG9ger4WE2VWoVEF@valkosipuli.retiisi.eu>
 <158425ec-86e8-ca3e-eed8-e14b37c42730@linaro.org>
 <ce217ae6-6dd5-26ea-2ce7-95d97ef791c4@linaro.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <ce217ae6-6dd5-26ea-2ce7-95d97ef791c4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_000743_200115_7EAE63F1 
X-CRM114-Status: GOOD (  22.00  )
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

T24gMTMvMDcvMjAyMyAwODo0NiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxOS8w
Ni8yMDIzIDE2OjEzLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAyNS8wNS8yMDIz
IDE1OjE5LCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4+PiBIaSBmb2xrcywKPj4+Cj4+PiBPbiBUaHUs
IE1heSAyNSwgMjAyMyBhdCAwMzo0MDowNFBNICswMzAwLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4+
Pj4gSGkgSGFucywKPj4+Pgo+Pj4+IE9uIFNhdCwgTWF5IDEzLCAyMDIzIGF0IDExOjU3OjMzQU0g
KzAyMDAsIEhhbnMgVmVya3VpbCB3cm90ZToKPj4+Pj4gT24gMTIvMDUvMjAyMyAxODozNSwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+Pj4+IE9uIDEyLzAzLzIwMjMgMTQ6MTIsIEtyenlz
enRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+Pj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2
aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4+Pj4+Pj4gdXNl
ZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNv
IGFsbG93cyBBQ1BJCj4+Pj4+Pj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0
IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4KPj4+Pj4+Pgo+Pj4+Pj4+ICAgZHJpdmVycy9t
ZWRpYS9jZWMvaTJjL2NoNzMyMi5jOjU4MzozNDogZXJyb3I6IOKAmGNoNzMyMl9vZl9tYXRjaOKA
mSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+
Pj4+Pj4+Cj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6
dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4KPj4+Pj4+IEhhbnMs
IFNha2FyaSwKPj4+Pj4+Cj4+Pj4+PiBDYW4geW91IHBpY2sgdXAgdGhlIHBhdGNoc2V0PyBUaGVy
ZSB3YXMgcG9zaXRpdmUgZmVlZGJhY2s6Cj4+Pj4+PiBodHRwczovL3BhdGNod29yay5saW51eHR2
Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNoLzIwMjMwMzEyMTMxMzE4LjM1MTE3My0xLWty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZy8KPj4+Pj4+Cj4+Pj4+PiBidXQgaXQgc2VlbXMg
aXQgd2FzIG5vdCBhcHBsaWVkLgo+Pj4+Pgo+Pj4+PiBJIHNlZSBpdCBpcyBkZWxlZ2F0ZWQgdG8g
U2FrYXJpIGluIHBhdGNod29yayBhbmQgbWFya2VkIFVuZGVyIFJldmlldywgYnV0IEkgZG9uJ3QK
Pj4+Pj4gc2VlIGEgY29ycmVzcG9uZGluZyBwdWxsIHJlcXVlc3QgZm9yIHRoaXMgc2VyaWVzLgo+
Pj4+Pgo+Pj4+PiBTYWthcmksIGRpZCBzb21ldGhpbmcgZ28gd3Jvbmc/Cj4+Pj4KPj4+PiBJIHNw
b3R0ZWQgdGhpcyBhcyBIYW5zIG5vdGlmaWVkIG1lIGluIElSQywgSSB3YXNuJ3QgY2MnZC4gQXBv
bG9naWVzIGZvcgo+Pj4+IHRoaXMgLS0tIEkgaW50ZW5kZWQgdG8gdGFrZSB0aGVzZSBidXQgSSB0
aGluayBJIG11c3QgaGF2ZSBtaXNzZWQgc29tZXRoaW5nCj4+Pj4gaW1wb3J0YW50IGluIHRoZSBw
cm9jZXNzLiBJJ2xsIHRha2UgdGhlbSBub3cuCj4+Pj4KPj4+PiBUaGFua3MuCj4+Pgo+Pj4gVGhp
cyBubyBsb25nZXIgYXBwbGllZCBjbGVhbmx5LiBNb3N0bHkgdGhlcmUgd2FzIGZ1enogbmVhciAu
b2ZfbWF0Y2hfdGFibGUKPj4+IGNoYW5nZXMgYXMgcHJvYmVfbmV3IChhbmQgcmVtb3ZlX25ldz8p
IGNoYW5nZXMgaGF2ZSBiZWVuIHJlY2VudGx5IG1lcmdlZC4KPj4+IFRoZXJlIHdlcmUgb3RoZXIg
aXNzdWVzIGFzIHdlbGwsIEkgbWFya2VkIGEgZmV3IHBhdGNoZXMgaW4gdGhlIHNldCAibm90Cj4+
PiBhcHBsaWNhYmxlIiBhcyBvdGhlciBwYXRjaGVzIGhhZCBhbHJlYWR5IGRvbmUgZXF1aXZhbGVu
dCBjaGFuZ2VzIGVhcmxpZXIuCj4+Pgo+Pj4gVGhlcmUgd2VyZSBzdWJzdGFuY2UtY2hhbmdpbmcg
Y2hhbmdlcyBpbiB0aGUgMjB0aCBwYXRjaCwgcmVwbGllZCB0byB0aGUKPj4+IGRpc3VjY3Npb24g
dGhlcmUuCj4+Pgo+Pj4gSSd2ZSBwdXNoZWQgdGhlIHJlc3VsdCBoZXJlIGFuZCBpbnRlbmQgdG8g
c2VuZCBQUiB0byBNYXVybyBzb29uIGlmIHRoZXJlCj4+PiBhcmUgbm8gaXNzdWVzOgo+Pj4KPj4+
IDxVUkw6aHR0cHM6Ly9naXQubGludXh0di5vcmcvc2FpbHVzL21lZGlhX3RyZWUuZ2l0L2xvZy8/
aD1vZi1tYXRjaC1wdHI+Cj4+Cj4+IE9uZSBtb250aCBsYXRlciwgSSBzdGlsbCBkb24ndCBzZWUg
dGhpcyBzZXQgaW4gdGhlIGxpbnV4LW5leHQuICBXaGF0J3MKPj4gaGFwcGVuaW5nIGhlcmU/Cj4+
Cj4gCj4gSSBkb24ndCB0aGluayB0aGlzIHdhcyBtZXJnZWQgaW4gdjYuNS1yYzEuIEl0J3Mgbm90
IGluIGxpbnV4LW5leHQsCj4gZWl0aGVyLiBBbm90aGVyIG1vbnRoIHBhc3NlZC4uLgoKSSdtIHJl
YWxseSBob3BlZnVsIGl0IHdpbGwgYmUgbWVyZ2VkIHZlcnkgc29vbi4gQXMgeW91IG1heSBoYXZl
IG5vdGljZWQgKCEpIHdlCmhhdmUgcHJvYmxlbXMgd2l0aCBtYWludGFpbmluZyB0aGUgbWVkaWEg
c3Vic3lzdGVtICh0b28gbWFueSBwYXRjaGVzLCBub3QgZW5vdWdoCm1haW50YWluZXJzKS4gV2Ug
aGFkIGEgbWVldGluZyBhYm91dCB0aGF0IGEgZmV3IHdlZWtzIGFnbyBhbmQgYXJlIHdvcmtpbmcg
b24KaXQuCgpUaGUgY29yZSBwcm9ibGVtIGZvciB0aGlzIHBhcnRpY3VsYXIgc2VyaWVzIHdhcyB0
aGF0IHRoZSBQUiBjb250YWluaW5nIHRoaXMgc2VyaWVzCndhcyBwb3N0ZWQgbXVjaCB0b28gbGF0
ZSAoYXMgaW4gdGhyZWUgbW9udGhzIHRvbyBsYXRlISksIGFuZCBpdCBjYW1lIGluIHRvbyBsYXRl
CmZvciA2LjUuCgpSZWdhcmRzLAoKCUhhbnMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

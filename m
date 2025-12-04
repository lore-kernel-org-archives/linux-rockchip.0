Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6700DD1CDB9
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 02:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BjrZ2TQayi/EIixVERCvBBTgz9lRnw/hWczEZbNc/Q=; b=NivDvKGXTkiD8N
	Bo43/ZGiUABXcJw0PdJJaAUfO1v7ux+kccZPJkloyGB7ErzmjIHaKlfItfIdXJuG5CnQ9jbT/BRTe
	2G+3M53EG/5Dqpe23J5+q+gbgzgfmFb/Oa82Pzg2qUQXsvIip54faGJQrbqRt5yNyFayZ2yeUHJI7
	dqAPhnbiBYVCMUW3MDbql0ZJmG8Vgvj5bfv9o4lspOmJ9XwbL5j7sPnhBYn1yNS4ucC2JsNh5Be2R
	2zg5i8wwHm/6Lpu9jfp2pERgNT4Co7yKZX+xt4XpKwHsoK+Qql5v5y6XEyrOVSgLoz3bdmxJGGZ1k
	A95mXYT1emdgXK9iAiwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQyl9-00000007MEw-2AD5;
	Thu, 04 Dec 2025 02:07:55 +0000
Received: from mail-m49235.qiye.163.com ([45.254.49.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQyl5-00000007MEP-1yKE
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Dec 2025 02:07:53 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2be9edc35;
	Thu, 4 Dec 2025 10:07:44 +0800 (GMT+08:00)
Message-ID: <1284bf23-1069-4d54-b259-7b40271f8e0e@rock-chips.com>
Date: Thu, 4 Dec 2025 10:07:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] drm/mcde: Create custom commit tail
To: Linus Walleij <linusw@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-2-f1bffd4ec0fa@kernel.org>
 <c3c5f62f-98fd-49a7-9b39-c4c4f798ad2c@rock-chips.com>
 <CAD++jLmzkmZAgwbahKDnasj3dDpG4RBggoZfhPiEHj9rb09+eQ@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAD++jLmzkmZAgwbahKDnasj3dDpG4RBggoZfhPiEHj9rb09+eQ@mail.gmail.com>
X-HM-Tid: 0a9ae71d89a603abkunm6ff8ae635f3078
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tPTFZLHh4eSE1JGB0fTRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Sv5/itSEsRDt7Idjp5+XyunqOgxTrWF+ajneoPKm2CkpDlKGN1/nOH9ogl8y1VDdnnssu1M7dm94Z+kynwqwTWyU4WKLk8paHPgTpmFgXQvQDJuQuviIut8fgv7atpLpoFeEKcz4drz0JUkNdCtJaEviMH1zSdHy/fCixDSg0RA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=fEyb6s/X54CqQDGTtl8EkHTpjqxUsuwAv/fJrVBHtT0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_180752_032502_EDD84317 
X-CRM114-Status: GOOD (  17.50  )
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

T24gMTIvNC8yMDI1IDc6MTMgQU0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4gT24gV2VkLCBEZWMg
MywgMjAyNSBhdCA3OjI34oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMu
Y29tPiB3cm90ZToKPiAKPj4gVGhlIGJyaWRnZSBkb2N1bWVudCBzYXlzOiAiVGhlIGRpc3BsYXkg
cGlwZSAoaS5lLiBjbG9ja3MgYW5kIHRpbWluZwo+PiBzaWduYWxzKSBmZWVkaW5nIHRoaXMgYnJp
ZGdlIHdpbGwgbm90IHlldCBiZSBydW5uaW5nIHdoZW4gdGhlCj4+IEBhdG9taWNfcHJlX2VuYWJs
ZSBpcyBjYWxsZWQuIgo+Pgo+PiBUaGVyZWZvcmUsIHlvdXIgYXBwcm9hY2ggc2VlbXMgdG8gYmUg
bWVyZWx5IGEgd29ya2Fyb3VuZCBhbmQgZG9lcyBub3QKPj4gbWVldCB0aGUgY3VycmVudCByZXF1
aXJlbWVudHMgb2YgdGhlIGJyaWRnZS4KPj4KPj4gQW5kIGRvY3VtZW50IGFsc28gc2F5czogIlRo
ZSBicmlkZ2UgY2FuIGFzc3VtZSB0aGF0IHRoZSBkaXNwbGF5IHBpcGUKPj4gKGkuZS4gY2xvY2tz
IGFuZCB0aW1pbmcgc2lnbmFscykgZmVlZGluZyBpdCBpcyBydW5uaW5nIHdoZW4KPj4gQGF0b21p
Y19lbmFibGUgY2FsbGJhY2sgaXMgY2FsbGVkLiIKPj4KPj4gSWYgRFNJIGNvbW1hbmRzIG5lZWQg
dG8gd2FpdCBmb3IgdGhlIGRpc3BsYXkgcGlwZSAoQ1JUQykgdG8gYmUgcmVhZHksCj4+IHdoeSBu
b3QgcGVyZm9ybSB0aGVtIGluc2lkZSBAYXRvbWljX2VuYWJsZSBpbnN0ZWFkIG9mIEBhdG9taWNf
cHJlX2VuYWJsZT8KPiAKPiBUaGF0IHdhcyBleGFjdGx5IHdoYXQgdGhlIHYxIGFuZCB2MiB2ZXJz
aW9ucyBvZiB0aGlzIHBhdGNoIHNldCB3YXMKPiBkb2luZywgYW5kIGl0IHdhcyAocG9saXRlbHkp
IE5BQ0tlZCwgYW5kIHRoYXQgaXMgd2h5IHdlIGFyZQo+IGhlcmUuCj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvZHJpLWRldmVsLzIwMjUxMDIzLWZpeC1tY2RlLWRybS1yZWdyZXNzaW9uLXYxLTAt
ZWQ5YTkyNWRiOGM3QGxpbmFyby5vcmcvCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRl
dmVsLzIwMjUxMDI2LWZpeC1tY2RlLWRybS1yZWdyZXNzaW9uLXYyLTAtOGQ3OTllNDg4Y2Y5QGxp
bmFyby5vcmcvCj4KCkhtbSwgSSdtIGFmcmFpZCB0aGVyZSByZWFsbHkgaXNuJ3QgYSBjb21tb24g
c29sdXRpb24gYXQgdGhpcyBwb2ludC4KClRoZSBsb2dpY2FsIGVuYWJsZSBvcmRlciBvZiB0aGUg
Q1JUQywgYnJpZGdlLCBhbmQgcGFuZWwgbWF5IGJlCmRpZmZlcmVudCBmcm9tIHRoZSBhY3R1YWwg
cGh5c2ljYWwgZW5hYmxlIG9yZGVyLiBBbmQgdGhlcmUgaXMgbm8KbWVjaGFuaXNtIHRvIGNoYW5n
ZSB0aGlzIG9yZGVyIDooCgpTbyBJIGJlbGlldmUgeW91ciBjdXJyZW50IHBhdGNoIHRvIHRoZSBt
Y2RlIG1ha2VzIHNlbnNlLApiZWNhdXNlIHlvdSBhcmUgaW5kZWVkIHJlcXVpcmluZyB0aGUgQ1JU
QyB0byBiZSBlbmFibGVkIGF0IHRoZQpoYXJkd2FyZSBsZXZlbC4gQnV0IGZvciBvdGhlciBwbGF0
Zm9ybXMsIHlvdSBtYXkgbmVlZCB0byBkaXN0aW5ndWlzaAp3aGV0aGVyIHRoaXMgaXMgYSBzb2Z0
d2FyZSBkZXBlbmRlbmN5IG9yZGVyIHByb2JsZW0gY2F1c2VkIGJ5IGNoYW5nZXMKdG8gdGhlIGJy
aWRnZSBlbmFibGUgb3JkZXIuCgo+IEluIGVzc2VuY2UsIFRvbWkgcmVtYXJrZWQgdGhhdCBkcml2
ZXJzIHNob3VsZCBiZSBhYmxlIHRvIHNlbmQgRFNJCj4gY29tbWFuZHMgYXQgYXRvbWljX3ByZV9l
bmFibGUoKSB3aGljaCBpcyBmb3IgZXhhbXBsZQo+IG1hcHBlZCB0byB0aGUgLnByZXBhcmUoKSBj
YWxsYmFjayBpbiB0aGUgRFNJIHBhbmVsIGJyaWRnZS4KPiBBbmQgaGUgaGFzIGEgZ29vZCBwb2lu
dCBpbiB0aGlzLCBJIGp1c3QgY29udmVydGVkIHRoZSBmZXcgcGFuZWwKPiBkcml2ZXJzIHRoYXQg
SSB3YXMgYWZmZWN0ZWQgYnksIGJ1dCB0aGVyZSBhcmUgbWFueSBtb3JlIHN1Y2gKPiBhbmQgcHJv
YmFibHkgc29tZSBicmlkZ2VzIGFzIHdlbGwuCj4gCj4gWW91cnMsCj4gTGludXMgV2FsbGVpago+
IAo+IAoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

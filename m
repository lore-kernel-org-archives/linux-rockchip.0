Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE38C44506
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2lqch3gFm10fTOWr+I+msKadYXkOyeDH7cRMDdxckc=; b=KQbyxcaDXeNdZ1
	oCA9bEBDvaEt5tPWv7Vc/MI/IhGyyPC3yo+wR3k+GHSATtfz5N3HSQLO0JJW26931tgD+CqCsPm3y
	ofYFT3GKKZlY7d6lOjQqxU77dOa2Y3TcNohuo6fnyrvwxu2f3wRI8GQcmdgEHPOHZ8yw1TsDEXOtK
	Rfl9E9aUHtfYQtExItV9qXHDT3V9sTLQ+jpTW7LbrDdX9UDDS5Qov6pcW6zfag+RroIczO9UCJ/1z
	stMOWPkE5uHoISc5HEn7iAAM7eJ2zDkA6qZenjg0NjfxY0GO1mZjMd47DG8uU2Ppa66BYaykSjeU/
	jZqqBn6Ic+kxa/wdU14A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkSY-00000001ZUB-3tl6;
	Thu, 09 Jul 2026 08:50:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHjAD-00000001caR-1LsS;
	Tue, 28 Apr 2026 14:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XwiqsOpR23ShlfylRkZ2Fb1ig1xeGogp5lQf7doEuds=; b=j7eAS/9lmzXSkKi+VB76UcGtDA
	IZm9hW7Z48aF/JE/CszfTf3JS8c8YZl9lnUT7IDmtEghrLWJWUz/L4JKjN6c9oGa74y5wT4s/OBH9
	8CMNKy57F27sj5KBcIM1taayduYCC2+BZPdcj12cGSxWsrXF43Y4VSN8U8DCcg3a0sUeRyC/bnVoz
	BvsT8+iIQghp5g3ydNzuf1gr+fm2xS8ecPV7EW8dPuMFic0Ywj3XwTueeIjzoZntdz/CzCZwDDjZt
	KM+Lxf9bNvWn312KcjqPjljfWM9qpu151lcDcYV5YqqhGInSu+Y2KIQMe90FuubNHBn/wKZHNST6x
	Jvz2X+Ew==;
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHjA8-00000003Ht3-3FUU;
	Tue, 28 Apr 2026 14:11:48 +0000
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.102.122])
	by APP-03 (Coremail) with SMTP id rQCowADX79bQv_BpQaZ1Dw--.2120S2;
	Tue, 28 Apr 2026 22:10:28 +0800 (CST)
Message-ID: <7d9086ff60e5e98117aeeb40a085dcde2c29de65.camel@iscas.ac.cn>
Subject: Re: [PATCH v2 00/41] drm/display: bridge-connector: attach encoder
 to the connector
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov	
 <dmitry.baryshkov@oss.qualcomm.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart	
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Sasha Finkelstein <fnkl.kernel@gmail.com>,
 Janne Grunau <j@jannau.net>, Liu Ying <victor.liu@nxp.com>, Douglas
 Anderson <dianders@chromium.org>, Laurentiu Palcu	
 <laurentiu.palcu@oss.nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Frank
 Li	 <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Philipp Zabel	 <p.zabel@pengutronix.de>, Paul Cercueil
 <paul@crapouillou.net>, Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Kevin Hilman
 <khilman@baylibre.com>,  Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Rob Clark	
 <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang
 <jesszhan0024@gmail.com>, Sean Paul	 <sean@poorly.run>, Marijn Suijten
 <marijn.suijten@somainline.org>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?=	 <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Thierry Reding	 <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,  Jonathan Hunter
 <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>, Inki Dae
 <inki.dae@samsung.com>,  Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin
 Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski	 <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Laurent Pinchart	
 <laurent.pinchart+renesas@ideasonboard.com>, Tomi Valkeinen	
 <tomi.valkeinen+renesas@ideasonboard.com>, Kieran Bingham	
 <kieran.bingham+renesas@ideasonboard.com>, Geert Uytterhoeven	
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Biju Das	
 <biju.das.jz@bp.renesas.com>, Marek Vasut <marex@denx.de>, Stefan Agner	
 <stefan@agner.ch>, Jyri Sarha <jyri.sarha@iki.fi>, Michal Simek	
 <michal.simek@amd.com>
Cc: Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, 	linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, 	linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, 	freedreno@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, 	linux-tegra@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, 	linux-renesas-soc@vger.kernel.org
Date: Tue, 28 Apr 2026 22:10:18 +0800
In-Reply-To: <DI4TW9XECX53.17TEZPCSWTH1A@bootlin.com>
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
	 <cf2c91396eb3017aa51dd9c840badffddca2f7ec.camel@iscas.ac.cn>
	 <DI4TW9XECX53.17TEZPCSWTH1A@bootlin.com>
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-CM-TRANSID: rQCowADX79bQv_BpQaZ1Dw--.2120S2
X-Coremail-Antispam: 1UD129KBjvJXoWxtw4DGF1UKFWUtry7tFWxCrg_yoW7WFWDpF
	Wjga12kr4kXryrAws2vF15Za4FvrWDJr45Jr1qgw4SkaykuF18AFW7tFs8uasrAFWrW3Wj
	qr4YqrWxuF15AaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvGb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I
	8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l
	c7CjxVAaw2AFwI0_ZF0_GFyUMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r
	4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
	67AKxVWrXVW8Jr1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
	IIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
	6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa
	73UjIFyTuYvjxUyPr4UUUUU
X-Originating-IP: [112.94.102.122]
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_151145_533877_050D32CE 
X-CRM114-Status: GOOD (  44.89  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

5ZyoIDIwMjYtMDQtMjjkuoznmoQgMTU6MzkgKzAyMDDvvIxMdWNhIENlcmVzb2xp5YaZ6YGT77ya
Cj4gSGVsbG8gSWNlbm93eSwKPiAKPiBPbiBTYXQgQXByIDI1LCAyMDI2IGF0IDU6MjIgUE0gQ0VT
VCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPiA+IOWcqCAyMDI2LTA0LTIz5Zub55qEIDExOjE2ICsw
MjAw77yMTHVjYSBDZXJlc29saeWGmemBk++8mgo+ID4gPiBUaGlzIHNlcmllcyBzaW1wbGlmaWVz
IHVzaW5nIHRoZSBicmlkZ2UtY29ubmVjdG9yIGJ5IHJlbW92aW5nIHRoZQo+ID4gPiBuZWVkIHRv
Cj4gPiA+IGF0dGFjaCB0aGUgbmV3bHkgY3JlYXRlZCBjb25uZWN0b3IgdG8gdGhlIGVuY29kZXIu
Cj4gPiA+IAo+ID4gPiA9PSBTZXJpZXMgZGVzY3JpcHRpb24KPiA+ID4gCj4gPiA+IEN1cnJlbnRs
eSBhbGwgdXNlcnMgb2YgdGhlIGJyaWRnZS1jb25uZWN0b3IgbXVzdCBjYWxsCj4gPiA+IGRybV9j
b25uZWN0b3JfYXR0YWNoX2VuY29kZXIoKSBpbW1lZGlhdGVseSBhZnRlciBhIHN1Y2Nlc3NmdWwK
PiA+ID4gZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpLgo+ID4gPiAKPiA+ID4gVGhpcyBpcyBh
biB1bm5lY2Vzc2FyeSBidXJkZW4gZm9yIHVzZXJzLiBNb3ZlIHRoZSBjYWxsIHRvIHRoZSBlbmQK
PiA+ID4gb2YKPiA+ID4gZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpIHNvIGFsbCBjYWxsZXJz
IGNhbiBiZSBzaW1wbGlmaWVkLgo+ID4gPiAKPiA+ID4gwqAqIFBhdGNoIDEgYWRkcyBhIGRybV9j
b25uZWN0b3JfYXR0YWNoX2VuY29kZXIoKSBjYWxsIGF0IHRoZSBlbmQKPiA+ID4gb2YKPiA+ID4g
wqDCoCBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KCkKPiA+ID4gwqAqIFRoZSBvdGhlciBwYXRj
aGVzIHJlbW92ZSBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKCkgYWZ0ZXIKPiA+ID4gYWxs
Cj4gPiA+IMKgwqAgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpIGNhbGxzLCBvcmRlcmVkIGZy
b20gdGhlIHNpbXBsZXN0Cj4gPiA+IG9uZXMKPiA+ID4gwqDCoCAob25seSB0aGUgbGFzdCBvbmUg
aXMgc29tZXdoYXQgbm9uLW9idmlvdXMpCj4gPiA+IAo+ID4gPiBUaGUgQ2MgbGlzdCBpcyBodWdl
IGR1ZSB0byB0aGUgbWFueSBkcml2ZXJzIHRvdWNoZWQuIEkgc2VudCB2MSB0bwo+ID4gPiBhCj4g
PiA+IHJlZHVjZWQKPiA+ID4gQ2MgbGlzdCB0byBlbnN1cmUgdGhlcmUgaXMgYW4gYWdyZWVtZW50
IGFib3V0IHRoZSBvdmVyYWxsIGlkZWEuCj4gPiA+IFRoYXQKPiA+ID4gc2VlbXMKPiA+ID4gdG8g
YmUgdGhlIGNhc2UsIHNvIG5vdyBpdCdzIHRpbWUgdG8gY29weSBhbGwgZHJpdmVycyBtYWludGFp
bmVycy4KPiA+ID4gCj4gPiA+IEl0IHdvdWxkIGJlIG5pY2UgdG8gYXBwbHkgYWxsIG9mIHRoaXMg
c2VyaWVzIGF0IG9uY2UgdG8gYXZvaWQKPiA+ID4gZHVwbGljYXRlZAo+ID4gPiBjYWxscyB0byBk
cm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKCkgaW4gdGhlIGludGVyaW0uIFRoYXQKPiA+ID4g
d291bGQgYmUKPiA+ID4gaGFybWxlc3MgYmVhY3VzZSBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNv
ZGVyKCkgaXMgaWRlbXBvdGVudCwKPiA+ID4gYnV0Cj4gPiA+IHVucGxlYXNhbnQuCj4gPiA+IAo+
ID4gPiA9PSBBZGRpdGlvbmFsIHJhdGlvbmFsZSAoZm9yIHRoZSBjdXJpb3VzKQo+ID4gPiAKPiA+
ID4gQmVzaWRlcyBtYWtpbmcgdGhlIHVzYWdlIG9mIHRoZSBicmlkZ2UtY29ubmVjdG9yIGEgYml0
IHNpbXBsZXIsCj4gPiA+IHRoaXMKPiA+ID4gc2VyaWVzCj4gPiA+IGlzIGluIHByZXBhcmF0aW9u
IGZvciBEUk0gYnJpZGdlIGhvdHBsdWcuIEhlcmUncyB3aHksIGZlZWwgZnJlZQo+ID4gPiB0bwo+
ID4gPiBza2lwIGlmCj4gPiA+IHlvdSBkb24ndCBjYXJlLgo+ID4gPiAKPiA+ID4gVGhlIG9sZCBi
cmlkZ2UgaG90cGx1ZyBwcm9wb3NhbHMgSSBoYXZlIHNlbnQgaW4gdGhlIHBhc3QgWzFdIHdlcmUK
PiA+ID4gYmFzZWQgb24KPiA+ID4gYSBob3RwbHVnLWJyaWRnZSBkcml2ZXIgdG8gc2l0IGJldHdl
ZW4gdGhlIGxhc3QgZml4ZWQgYnJpZGdlIGFuZAo+ID4gPiB0aGUKPiA+ID4gZmlyc3QKPiA+ID4g
aG90cGx1Z2dlZCBicmlkZ2UuIERpc2N1c3Npb24gd2l0aCB0aGUgY29tbXVuaXR5IGxlZCB0byB0
aGUgbmVlZAo+ID4gPiBvZgo+ID4gPiByZW1vdmluZyB0aGUgaG90cGx1Zy1icmlkZ2UgYW5kIGxl
dCBjb21tb24gRFJNIGNvZGUgaGFuZGxlCj4gPiA+IGhvdHBsdWcuCj4gPiA+IFRoZQo+ID4gPiBj
b21tb24gcGxhY2Ugb2YgY29kZSB0aGF0IGFwcGVhcnMgdGhlIG1vc3Qgc3VpdGFibGUgZm9yIGhv
dHBsdWcKPiA+ID4gaGFuZGxpbmcgaXMKPiA+ID4gdGhlIGJyaWRnZS1jb25uZWN0b3IsIHdoaWNo
IGlzIGJ5IG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IHRvCj4gPiA+IGhhbmRsZQo+ID4gPiBjb25u
ZWN0b3IgaW5zdGFudGlhdGlvbiBhZnRlciBhIGJyaWRnZSBjaGFpbi4KPiA+ID4gCj4gPiA+IFNv
IEknbSBpbiB0aGUgcHJvY2VzcyBvZiBleHRlbmRpbmcgdGhlIGJyaWRnZS1jb25uZWN0b3IgdG8g
YmUgdGhlCj4gPiA+IGNlbnRyYWwKPiA+ID4gcG9pbnQgdG8gaGFuZGxlIGJyaWRnZSBob3RwbHVn
LiBUdXJucyBvdXQgdGhlIG5lZWQgdG8gY2FsbAo+ID4gPiBkcm1fY29ubmVjdG9yX2F0dGFjaF9l
bmNvZGVyKCkgYWZ0ZXIgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpCj4gPiA+IGhhcwo+ID4g
PiByZXR1cm5lZCBpcyBhZGRpbmcgYmlnIGhlYWRhY2hlcyB0byBzdWNoIHdvcmsuIFNvIEknbSBz
ZW5kIHRoaXMKPiA+ID4gbG9uZwo+ID4gPiBidXQKPiA+ID4gc2ltcGxlIHNlcmllcyB0byBib3Ro
IHNpbXBsaWZ5IGJyaWRnZS1jb25uZWN0b3IgdXNhZ2UgYW5kIHJlbW92ZQo+ID4gPiBvbmUKPiA+
ID4gb2JzdGFjbGUgZnJvbSB0aGUgYnJpZGdlIGhvdHBsdWcgd29yay4gVGhpcyBzZXJpZXMgaXMg
cmVsZXZhbnQgYnkKPiA+ID4gaXRzZWxmCj4gPiA+IGFueXdheS4KPiA+ID4gCj4gPiA+IFsxXQo+
ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjUwMjA2LWhvdHBsdWctZHJtLWJy
aWRnZS12Ni0yNi05ZDZmMmM5YzMwNThAYm9vdGxpbi5jb20vCj4gPiA+IAo+ID4gPiA9PSBHcmFu
ZCBwbGFuCj4gPiA+IAo+ID4gPiBUaGlzIGlzIHBhcnQgb2YgdGhlIHdvcmsgdG8gc3VwcG9ydCBo
b3RwbHVnIG9mIERSTSBicmlkZ2VzLiBUaGUKPiA+ID4gZ3JhbmQKPiA+ID4gcGxhbgo+ID4gPiB3
YXMgZGlzY3Vzc2VkIGluIFswXS4KPiA+IAo+ID4gSnVzdCBzZWUgdGhlIGJyaWRnZSBob3RwbHVn
Z2luZyB0aGluZywgaXMgaXQgcG9zc2libGUgZm9yIERSTQo+ID4gZHJpdmVycwo+ID4gdG8gZGVj
bGFyZSBicmlkZ2VzIGF0dGFjaGVkIHRvIHRoZW1zZWx2ZXMgYWZ0ZXIgdGhpcz8KPiA+IAo+ID4g
TG9vbmdzb24gN0ExMDAwIFBDSCBjYW4gb25seSBvdXRwdXQgRFBJIHNpZ25hbHMsIHNvIG5lYXJs
eSBhbGwKPiA+IHByb2R1Y3RzCj4gPiB3aXRoIGl0IGFyZSBzaGlwcGluZyB3aXRoIHNvbWUga2lu
ZCBvZiBleHRlcm5hbCBicmlkZ2VzLCBidXQKPiA+IGN1cnJlbnRseQo+ID4gZHJtL2xvb25nc29u
IGRvZXMgbm90IHN1cHBvcnQgdGhlbSAoYWxsIGRpc3BsYXkgY29ubmVjdG9ycyBhcmUgbm93Cj4g
PiBzZWVuCj4gPiBhcyBEUEkgb25lcywgYW5kIGNvbm5lY3RvcnMgYmVoaW5kIG5vbi10cmFuc3Bh
cmVudCBicmlkZ2VzIHdvbid0Cj4gPiB3b3JrKS4KPiA+IAo+ID4gVGhlIGJyaWRnZXMgYXJlIGdv
aW5nIHRvIGJlIGFjY2Vzc2VkIGJ5IHRoZSBEREMgSTJDIGJ1c3NlcyBvZgo+ID4gN0ExMDAwLAo+
ID4gYW5kIGFyZSBub3QgZGVjbGFyZWQgd2l0aCBkZXZpY2UgdHJlZSAoc3lzdGVtcyB3aXRoIDdB
MTAwMCBuZXZlcgo+ID4gc2hpcAo+ID4gd2l0aCBkZXZpY2UgdHJlZXMsIGFuZCBMaW51eCBjdXJy
ZW50bHkgbWF0Y2hlcyBhIGJ1aWx0LWluIGRldmljZQo+ID4gdHJlZSkuCj4gPiAoQnJpZGdlcyBi
ZWluZyBvbiB0aGUgRERDIEkyQyBhbHNvIGludHJvZHVjZXMgc29tZSBkZXBlbmRlbmN5IGZvcgo+
ID4gdGhlbQo+ID4gdG8gZGVwZW5kIG9uIHRoZSBkcm0vbG9vbmdzb24gZHJpdmVyLikKPiA+IAo+
ID4gTG9vbmdzb24gaGF2ZSBkZWZpbmVkIHNvbWUga2luZCBvZiBWQklPUyBkZWNsYXJpbmcgd2hh
dCBicmlkZ2UgaXMKPiA+IGJlaGluZCwgYW5kIHRoZWlyIG5vbi1tYWlubGluZSBkcml2ZXIganVz
dCBjb250YWlucyBkcml2ZXIgY29kZXMKPiA+IGZvcgo+ID4gYWxsIHBvc3NpYmxlIGJyaWRnZXMu
IChTdWkgSmluZ2ZlbmcgcHJldmlvdXNseSB0cmllZCB0byBtYWlubGluZQo+ID4gc3VjaAo+ID4g
cHJhY3RpY2UsIGFuZCBvZiBjb3Vyc2UgaXQncyByZWplY3RlZCBiZWNhdXNlIG9mIGNvZGUgZHVw
bGljaXR5LikKPiAKPiBJJ20gYWZyYWlkIHlvdXIgcXVlc3Rpb24gZ29lcyBhIGJpdCBiZXlvbmQg
bXkga25vd2xlZGdlLCB0aGUgaG90cGx1Zwo+IHdvcmsKPiBJJ20gY2Fycnlpbmcgb24gaXMgZm9j
dXNlcyBvbiBEVCBwbGF0Zm9ybXMuCj4gCj4gTXkgbGltaXRlZCB1bmRlcnN0YWRpbmcgb2Ygbm9u
LURUIHBsYXRmb3JtcyBpcyB0aGF0IGEgY2FyZCBkcml2ZXIKPiBtdXN0Cj4gaW5zdGFudGlhdGUg
YWxsIGNvbXBvbmVudHMgYW5kIHRpZSB0aGVtIHRvZ2V0aGVyLCB3aGljaCBhc3N1bWVzIGl0Cj4g
aGFzIHRvCj4ga25vdyB0aGVtIHNvbWVob3cgKEFDUEksIGhhcmRjb2RlZCwgd2hhdGV2ZXIpLiBP
dGhlcnMgY2FuIHByb2JhYmx5Cj4gY29tbWVudAo+IGJldHRlciBhYm91dCB0aGlzLgoKWWVzLCB0
aGVyZSdzIHNvbWUgcHJvcHJpZXRhcnkgd2F5IGRlZmluZWQgYnkgTG9vbmdzb24gdG8gZGVjbGFy
ZSB3aGljaApkZXZpY2UgaXMgYXR0YWNoZWQuCgpUaGUgcHJvYmxlbSBoZXJlIGlzIGp1c3QgdG8g
aW5zdGFudGlhdGUgdGhlIGF0dGFjaGVkIGRldmljZXMgKGFsdGhvdWdoCnBhcnNpbmcgb2YgdGhl
IExvb25nc29uIFZCSU9TIGRhdGEgaXMgYWxzbyBhIFRPRE8gbm93KSBhbmQgcHJldmVudApkZXBl
bmRlbmN5IGxvb3AuCgpUaGFua3MsCkljZW5vd3kKCj4gCj4gQXMgYSBnZW5lcmFsIHByaW5jaXBs
ZSwgd2hlbiBkZXZpY2VzIGNhbiBiZSBtaXhlZCBhbmQgbWF0Y2hlZCBieSB0aGUKPiBib2FyZAo+
IGRlc2lnbmVyLCBoYXJkY29kaW5nIHRoZW0gaXMgYSBiYWQgZGVzaWduIGNob2ljZS4gVGhpbmsg
b2YgYmFkIG9sZAo+IGJvYXJkCj4gZmlsZXMgd3JpdHRlbiBpbiBDLCB3aGljaCB3ZXJlIHVubWFu
YWdlYWJsZSBhbmQgZ290IHJlcGxhY2VkIGV4YWN0bHkKPiBieQo+IGRldmljZSB0cmVlLiBTbyBt
eSBvcGluaW9uIGlzIHRoYXQgRFJNIGVuY29kZXJzIGFuZCBicmlkZ2VzIHNob3VsZAo+IGtub3cg
YXMKPiBsaXR0bGUgYXMgcG9zc2libGUgYWJvdXQgdGhlIGZvbGxvd2luZyBicmlkZ2UsIGNvbm5l
Y3RvciBvciBwYW5lbAo+IHRoYXQKPiBmb2xsb3dzIHRoZW0uCj4gCj4gTHVjYQo+IAo+IC0tCj4g
THVjYSBDZXJlc29saSwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5l
ZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B737606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 15:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OJBH/81E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PQxfwm4H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SpIFG5jpFYoijBglZ6IEbQJX2b7n3Uj83qdOqe+J+wg=; b=OJBH/81Euq6VkhJdXhSuTWgdRa
	5Np5BPRP5kxqT/442QK+3H17oW0jPGy7sYwXt46X2lzyYEXtz0blEzRM9/f4ge4uNH5Lp+t8KGHSp
	e1qXFnWZ77Uxq0jErS16gB9Yadc/ZrINCQEsWpqb1KDylEREoDp0cEIBBG2Qxtn2srMDLdHqTv46N
	ar+62IOHydFne4NPJIhDEVxt4Geb/YvZPkrJ6Ke2ijB/s3iDqEYr3nqCamO1/2qd0WzwcKP5MCqvH
	ILvWZhqdscL9NzMyUwkKIZwaY+TeBLZZnl6IkV1nqWGW0AbJDE3s2anCFQYysWaXF2NS2VijWgWti
	9nNW0fVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFJk-0000000ASXA-1STu;
	Wed, 25 Nov 2026 15:53:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFJg-0000000ASWq-1Nq3
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 15:53:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 07A45462E6
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:53:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CADE81F000EE
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795622031;
	bh=/QyiPsXELdVcU8h8SMClaBGSEvaC+/rJrAPi6gmrO6o=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=PQxfwm4HZ/4IqyyrMOscRAB2kuaFOJ+mjqRe77pK7wNNL/dxm6v/H5iv9tkA+8Ghc
	 6eBHSrAii4f84K/dSSppdUYZ6q80NYTG26eI8racfvJjvM3sISdvsCZKZze19cLvq3
	 1+EyHmosT/IEVYUe1o8vZHe3wQw9uMooKYd3ePSTp6OQp95659nLXZeOsv/OtVnLYd
	 ft+bbBdo9XqMrpSX8Qzxg9vg7lbJLigI67Tt3AZZ6Zw0bDnaQ5el3aqqYqaDH2aLXv
	 wfxAt75u0olCnHZace59c40GuFU6HGv49t6FrfoRajlrY+6Nxyv0RiCmTBHk9AkK3Y
	 XdhaGwekSgKpQ==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5c14f3dab09so3070309e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 07:53:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErHxvvovXfQbYQt7CRE9I2wqAhdP+JpSShnEAkHBdqXM5Jb7AzShfjFYzOP2AoRIqalEJjsXBEEEQNk87ngWKA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8JtuHFlTxgTdW4fhT721L1IE8hQJNAwhv2uTMRzyDdH0nt8Hvv
	/6JfcNRcUpdDAEZQtfMSznzkYZWGLIfoSuvS4oRdXvvJLtVE/5WNHj1zFLHHh11VqKLLsX+O0Km
	+Jjoi4T91idlCPw0ccCoQHbtT3dLqMB8=
X-Received: by 2002:ac2:4e07:0:b0:5c1:4f54:a6c6 with SMTP id
 2adb3069b0e04-5c1bc7cb0f6mr5811261e87.30.1795622030011; Wed, 25 Nov 2026
 07:53:50 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261117173738.1073856-1-Frank.Li@oss.nxp.com>
 <20261117173738.1073856-2-Frank.Li@oss.nxp.com> <CAPx+jO9RwkpSKwq6vq00uoXK-mcovJ2LMH7b_ByRnxOUj8nH8w@mail.gmail.com>
In-Reply-To: <CAPx+jO9RwkpSKwq6vq00uoXK-mcovJ2LMH7b_ByRnxOUj8nH8w@mail.gmail.com>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Wed, 25 Nov 2026 16:53:35 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
X-Gm-Features: Aa3M54pn_ud7xKJ4Sp9_9mJsafRFGsiuNY-zMFg468C0_97OrWEf728wG9SLJbM
Message-ID: <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] PM: runtime: fix stub pm_runtime_get_if_in_use()
 for !CONFIG_PM
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Frank.Li@oss.nxp.com, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Ulf Hansson <ulfh@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Matthew Auld <matthew.auld@intel.com>, Hans de Goede <hansg@kernel.org>, 
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Mark Brown <broonie@kernel.org>, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, 
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>, Yong Wu <yong.wu@mediatek.com>, 
	Will Deacon <will@kernel.org>, Tomasz Figa <tfiga@chromium.org>, Marek Vasut <marex@denx.de>, 
	Michael Tretter <m.tretter@pengutronix.de>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Hans Verkuil <hverkuil@kernel.org>, 
	"open list:POWER MANAGEMENT CORE" <linux-pm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-mediatek@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support:Keyword:b[Rr]ock[Cc]hipb" <linux-rockchip@lists.infradead.org>, imx@lists.linux.dev, 
	Frank Li <Frank.Li@nxp.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, 
	David Airlie <airlied@gmail.com>, Matthew Brost <matthew.brost@intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Alessio Belle <alessio.belle@imgtec.com>, 
	Luigi Santivetti <luigi.santivetti@imgtec.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Bard Liao <yung-chuan.liao@linux.intel.com>, 
	Kai Vehmanen <kai.vehmanen@linux.intel.com>, Robin Murphy <robin.murphy@arm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Vijendar Mukunda <Vijendar.Mukunda@amd.com>, dri-devel@lists.freedesktop.org, 
	imagination@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, 
	linux-media@vger.kernel.org, linux-sound@vger.kernel.org, 
	sound-open-firmware@alsa-project.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgNDowN+KAr1BNIFVsZiBIYW5zc29uCjx1bGYuaGFuc3Nv
bkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDE3LCAyMDI2IGF0IDY6
MzjigK9QTSA8RnJhbmsuTGlAb3NzLm54cC5jb20+IHdyb3RlOgo+ID4KPiA+IEZyb206IEZyYW5r
IExpIDxGcmFuay5MaUBueHAuY29tPgo+ID4KPiA+IFRoZSBzdHViIGZvciBwbV9ydW50aW1lX2dl
dF9pZl9pbl91c2UoKSB1bmRlciAhQ09ORklHX1BNIGN1cnJlbnRseQo+ID4gcmV0dXJucyAtRUlO
VkFMLiAgVGhlIHJlYWwgaW1wbGVtZW50YXRpb24gcmV0dXJuczoKPiA+ICAgMSAgLSBkZXZpY2Ug
aXMgYWN0aXZlIGFuZCBpdHMgdXNhZ2UgY291bnRlciBpcyBub24temVybyAoYnVtcGVkKQo+ID4g
ICAwICAtIGRldmljZSBpcyBub3QgaW4gdXNlIG9yIG5vdCBhY3RpdmUgKGNvdW50ZXIgbm90IGJ1
bXBlZCkKPiA+ICAtRUlOVkFMIC0gcnVudGltZSBQTSBkaXNhYmxlZCBmb3IgdGhpcyBkZXZpY2UK
PiA+Cj4gPiBXaGVuIENPTkZJR19QTSBpcyBub3Qgc2V0IGV2ZXJ5IGRldmljZSBpcyBwZXJtYW5l
bnRseSAiYWN0aXZlIiBhbmQKPiA+IGFsd2F5cyBjb25zaWRlcmVkICJpbiB1c2UiLCBzbyB0aGUg
c3R1YiBtdXN0IHJldHVybiAxLCBtaXJyb3JpbmcKPiA+IF9fcG1fcnVudGltZV9yZXN1bWUoKSB3
aGljaCBhbHJlYWR5IHJldHVybnMgMSBpbiB0aGUgc2FtZSBidWlsZC4KPiA+Cj4gPiBSZXR1cm5p
bmcgLUVJTlZBTCBicmVha3MgY2FsbGVycyB0aGF0IHRlc3QgdGhlIHJldHVybiB2YWx1ZSB3aXRo
Cj4gPiBjb21wYXJpc29ucyBvdGhlciB0aGFuICIhPSAwIC8gPT0gMCI6Cj4gPgo+ID4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jOgo+ID4gICBpZiAoaW50ZWxfcnVudGlt
ZV9wbV9nZXRfaWZfaW5fdXNlKHJwbSkpCj4gPiAgIHdoaWNoIHdyYXBzIHRvOiByZXQgPSBwbV9y
dW50aW1lX2dldF9pZl9pbl91c2UoKTsgcmV0dXJuIHJldCA+IDA7Cj4gPiAgIFdpdGggLUVJTlZB
TCB0aGUgd3JhcHBlciByZXR1cm5zIGZhbHNlLCBjYXVzaW5nIGFuIGluY29ycmVjdCBlcnJvcgo+
ID4gICBwYXRoIGluIHRoZSBHVCBmZW5jZSByZXZvY2F0aW9uIGNvZGUuCj4gPgo+ID4gZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX3BtLmM6Cj4gPiAgIGlmIChwbV9ydW50aW1lX2dldF9pZl9pbl91c2Uo
eGUtPmRybS5kZXYpID4gMCkKPiA+ICAgV2l0aCAtRUlOVkFMIHRoZSBjb25kaXRpb24gaXMgZmFs
c2U7IHhlX3BtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZSgpCj4gPiAgIHJldHVybnMgZmFsc2UsIHNv
IGNhbGxlcnMgYmVsaWV2ZSB0aGUgZGV2aWNlIGlzIG5vdCB1c2FibGUuCj4gPgo+ID4gZHJpdmVy
cy9ncHUvZHJtL2dtYTUwMC9wb3dlci5jOgo+ID4gICByZXR1cm4gcG1fcnVudGltZV9nZXRfaWZf
aW5fdXNlKGRldikgPT0gMTsKPiA+ICAgLUVJTlZBTCAhPSAxLCBzbyB0aGUgaGVscGVyIGFsd2F5
cyByZXR1cm5zIGZhbHNlIHdoZW4gIUNPTkZJR19QTS4KPiA+Cj4gPiBkcml2ZXJzL2dwdS9kcm0v
aW1hZ2luYXRpb24vcHZyX3Bvd2VyLmM6Cj4gPiAgIGlmIChwbV9ydW50aW1lX2dldF9pZl9pbl91
c2UoLi4uKSA8PSAwKQo+ID4gICAtRUlOVkFMIDw9IDAgaXMgdHJ1ZSwgc28gdGhlIGRyaXZlciBh
bHdheXMgdGFrZXMgdGhlICJyZXF1ZXVlIiBlcnJvcgo+ID4gICBwYXRoIGluc3RlYWQgb2YgcHJv
Y2VlZGluZyB3aXRoIHRoZSBhY3RpdmUgZGV2aWNlLgo+ID4KPiA+IHNvdW5kL3NvYy9zb2YvZGVi
dWcuYzoKPiA+ICAgaWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShzZGV2LT5kZXYpID09IDEp
Cj4gPiAgIC1FSU5WQUwgIT0gMSwgc28gZDNfcHJldmVudGVkIGlzIG5ldmVyIHNldCwgY29ycnVw
dGluZyBleGNlcHRpb24KPiA+ICAgZGVidWcgYWNjb3VudGluZy4KPiA+Cj4gPiBkcml2ZXJzL2lv
bW11L210a19pb21tdS5jOgo+ID4gICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKGRvbS0+
cGxhdF9kZXYtPmRldikgPD0gMCkKPiA+ICAgLUVJTlZBTCA8PSAwIHNraXBzIHRoZSBUTEIgZmx1
c2gsIGxlYXZpbmcgc3RhbGUgSU9NTVUgbWFwcGluZ3MuCj4gPgo+ID4gZHJpdmVycy9pb21tdS9y
b2NrY2hpcC1pb21tdS5jOgo+ID4gICBUaHJlZSBjYWxsIHNpdGVzIHVzZSBXQVJOX09OX09OQ0Uo
ZXJyIDwgMCkgb3Igc2ltaWxhciBwYXR0ZXJucy4KPiA+ICAgLUVJTlZBTCA8IDAgdHJpZ2dlcnMg
YSBzcHVyaW91cyBXQVJOSU5HIG9uIGV2ZXJ5IGNhbGwuCj4gPgo+ID4gZHJpdmVycy9tZWRpYS9p
MmMvaXNsNzk5OHguYzoKPiA+ICAgaWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShkZXYpIDw9
IDApICAodHdvIGNhbGwgc2l0ZXMpCj4gPiAgIC1FSU5WQUwgPD0gMCBjYXVzZXMgdGhlIGRyaXZl
ciB0byBhbHdheXMgc2tpcCByZWdpc3RlciBwcm9ncmFtbWluZwo+ID4gICB3aGVuICFDT05GSUdf
UE0uCj4gPgo+ID4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3Ax
LWRlYnVnLmM6Cj4gPiAgIGlmIChwbV9ydW50aW1lX2dldF9pZl9pbl91c2UoZGV2KSA8PSAwKSAg
KHR3byBjYWxsIHNpdGVzKQo+ID4gICAtRUlOVkFMIDw9IDAgcHJldmVudHMgYW55IGRlYnVnIHN0
YXRpc3RpY3MgZnJvbSBiZWluZyBjb2xsZWN0ZWQuCj4gPgo+ID4gRml4ZXM6IGE0MzZiNmExOWY1
NyAoIlBNIC8gcnVudGltZTogQWRkIG5ldyBoZWxwZXIgZm9yIGNvbmRpdGlvbmFsIHVzYWdlIGNv
dW50IGluY3JlbWVudGF0aW9uIikKPiA+IEZpeGVzOiAzYjg1YjdiY2NjZjQgKCJkcm0veGU6IEZp
eCBkaXNwbGF5IHJ1bnRpbWVfcG0gaGFuZGxpbmciKQo+ID4gRml4ZXM6IDY3MmM0NzM1NzZjYSAo
ImRybS9nbWE1MDA6IFJld3JpdGUgcG93ZXIgbWFuYWdlbWVudCBjb2RlIikKPiA+IEZpeGVzOiBi
MzAyODllN2ZhOTIgKCJBU29DOiBTT0Y6IEZpeCBydW50aW1lIHBtIHVzYWdlIGNvdW50ZXIgYmFs
YW5jZSBhZnRlciBmdyBleGNlcHRpb24iKQo+ID4gRml4ZXM6IGMwYjU3NTgxYjczYiAoImlvbW11
L21lZGlhdGVrOiBBZGQgcG93ZXItZG9tYWluIG9wZXJhdGlvbiIpCj4gPiBGaXhlczogNTFlZjJi
ZTU0NmUyICgibWVkaWE6IGkyYzogaXNsNzk5OHg6IEFkZCBkcml2ZXIgZm9yIEludGVyc2lsIElT
TDc5OTh4IikKPiA+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPgo+
ID4gLS0tCj4gPiBDaGFuZ2UgaW4gdjMKPiA+IC0gZHJvcCB0YWc6IGNiYjgxOWMzNjNjNSAoIm1l
ZGlhOiBya2lzcDE6IGRlYnVnOiBDb2xsZWN0IGlucHV0IHN0YXR1cyBieSBzYW1wbGluZyBJU1Bf
RkxBR1NfU0hEIikKPiA+IHNlbGVjdGVkIFBNIGF0IGFyY2ggY29uZmlnCj4gPiAtIGRyb3AgdGFn
OiAwZjE4MWQzY2Y3ZDkgKCJpb21tdS9yb2NrY2hpcDogQWRkIHJ1bnRpbWUgUE0gc3VwcG9ydCIp
Cj4gPiBzZWxlY3RlZCBQTSBhdCBhcmNoIGNvbmZpZwo+ID4gLSBkcm9wIHRhZzogOWQ1OGFhNDYy
OTFkICgiZHJtL2k5MTU6IEZpeCB0aGUgR1QgZmVuY2UgcmV2b2NhdGlvbiBydW50aW1lIFBNIGxv
Z2ljIikKPiA+IGd1YXJkIGJ5IENPTkZJR19QTQo+ID4gLSBkcm9wIHRhZyA3Mjc1MzhhNGJiZmYg
KCJkcm0vaW1hZ2luYXRpb246IEltcGxlbWVudCBwb3dlciBtYW5hZ2VtZW50IikKPiA+IGRlcGVu
ZCBvbiBQTQo+ID4gYAo+ID4gQ2hhbmdlIGluIHYyCj4gPiAtIG5ldyBwYXRjaGVzLgo+ID4KPiA+
IENjOiAiUmFmYWVsIEouIFd5c29ja2kiIDxyYWZhZWxAa2VybmVsLm9yZz4KPiA+IENjOiBsaW51
eC1wbUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGlu
dXguaW50ZWwuY29tPgo+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4ubmV0Pgo+ID4gQ2M6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4g
PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+ID4gQ2M6ICJUaG9tYXMg
SGVsbHN0cm9tIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogU2lt
b25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPgo+ID4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGll
ZEBnbWFpbC5jb20+Cj4gPiBDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5j
b20+Cj4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gPiBD
YzogUGF0cmlrIEpha29ic3NvbiA8cGF0cmlrLnIuamFrb2Jzc29uQGdtYWlsLmNvbT4KPiA+IENj
OiBBbGVzc2lvIEJlbGxlIDxhbGVzc2lvLmJlbGxlQGltZ3RlYy5jb20+Cj4gPiBDYzogTHVpZ2kg
U2FudGl2ZXR0aSA8bHVpZ2kuc2FudGl2ZXR0aUBpbWd0ZWMuY29tPgo+ID4gQ2M6IExpYW0gR2ly
ZHdvb2QgPGxnaXJkd29vZEBnbWFpbC5jb20+Cj4gPiBDYzogTWFyayBCcm93biA8YnJvb25pZUBr
ZXJuZWwub3JnPgo+ID4gQ2M6IEphcm9zbGF2IEt5c2VsYSA8cGVyZXhAcGVyZXguY3o+Cj4gPiBD
YzogVGFrYXNoaSBJd2FpIDx0aXdhaUBzdXNlLmNvbT4KPiA+IENjOiBCYXJkIExpYW8gPHl1bmct
Y2h1YW4ubGlhb0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogUGllcnJlLUxvdWlzIEJvc3NhcnQg
PHBpZXJyZS1sb3Vpcy5ib3NzYXJ0QGxpbnV4LmRldj4KPiA+IENjOiBQZXRlciBVamZhbHVzaSA8
cGV0ZXIudWpmYWx1c2lAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IEthaSBWZWhtYW5lbiA8a2Fp
LnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11
cnBoeUBhcm0uY29tPgo+ID4gQ2M6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPgo+ID4g
Q2M6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25v
QGNvbGxhYm9yYS5jb20+Cj4gPiBDYzogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdt
YWlsLmNvbT4KPiA+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gQ2M6
IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYkBrZXJuZWwub3JnPgo+ID4gQ2M6IERhZm5h
IEhpcnNjaGZlbGQgPGRhZm5hQGZhc3RtYWlsLmNvbT4KPiA+IENjOiBMYXVyZW50IFBpbmNoYXJ0
IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Cj4gPiBDYzogTWljaGFlbCBUcmV0
dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiBDYzogRGFuaWVsIEJhbHV0YSA8ZGFu
aWVsLmJhbHV0YUBueHAuY29tPgo+ID4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+
Cj4gPiBDYzogVmlqZW5kYXIgTXVrdW5kYSA8VmlqZW5kYXIuTXVrdW5kYUBhbWQuY29tPgo+ID4g
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbWFnaW5hdGlvbkBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogaW9tbXVA
bGlzdHMubGludXguZGV2Cj4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gPiBDYzogbGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiA+IENjOiBsaW51eC1zb3VuZEB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBz
b3VuZC1vcGVuLWZpcm13YXJlQGFsc2EtcHJvamVjdC5vcmcKPiA+IENjOiBpbXhAbGlzdHMubGlu
dXguZGV2Cj4gPiAtLS0KPiA+ICBpbmNsdWRlL2xpbnV4L3BtX3J1bnRpbWUuaCB8IDIgKy0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wbV9ydW50aW1lLmggYi9pbmNsdWRlL2xpbnV4L3Bt
X3J1bnRpbWUuaAo+ID4gaW5kZXggZGU5ZTc1MThlY2VmMi4uMWQ5ODNmZTU1YTE2YSAxMDA2NDQK
PiA+IC0tLSBhL2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5oCj4gPiArKysgYi9pbmNsdWRlL2xp
bnV4L3BtX3J1bnRpbWUuaAo+ID4gQEAgLTI3Niw3ICsyNzYsNyBAQCBzdGF0aWMgaW5saW5lIGlu
dCBwbV9zY2hlZHVsZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IGRl
bGF5KQo+ID4gIH0KPiA+ICBzdGF0aWMgaW5saW5lIGludCBwbV9ydW50aW1lX2dldF9pZl9pbl91
c2Uoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gIHsKPiA+IC0gICAgICAgcmV0dXJuIC1FSU5WQUw7
Cj4gPiArICAgICAgIHJldHVybiAxOwo+Cj4gVGhpcyBzaG91bGQgYmUgcmV0dXJuIDAsIGFzIHdl
IGRpZCBub3QgYnVtcCB0aGUgdXNhZ2UgY291bnQuCgpUaGlzIGlzIGtpbmQgb2YgbW9vdCBiZWNh
dXNlIHRoZXJlIGlzIG5vIHVzYWdlIGNvdW50ZXIuCgpIb3dldmVyLCB0aGUgY2FsbGVyIG1heSBh
bHdheXMgdGFrZSB0aGUgb3Bwb3J0dW5pc3RpYyAiaW4gdXNlIiBwYXRoCmJlY2F1c2UgdGhlcmUg
YXJlIG5vIHBvdGVudGlhbCBjb3N0cyByZWxhdGVkIHRvIGl0LgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

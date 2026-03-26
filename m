Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE2B10A62CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 13:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iAyHJPH69Ibty7w1xo9rz3xkhW6PXpoWbKTDWB/O4Y=; b=UCiBBLWfEUEzwq
	1fow8x0Zf/Bam1ji8WxIoiTmS3AuWFjxRgVzQnJvCCIj8slD/pbI8CXSfC6knbUfKRgOtwsCtTK+h
	azAqOeR1Mb/1/zlMniPr6fB3MIUSlnEefWfYrA5Ftd+JnN5k6wq6CG9fijqnW9leArPRoyhSYTv6o
	Q2TKhxw5xYFN+5wnRrGclkp6aHmqzGNiiqMMENG0xND6HI+j3L0ZW8Zx3p6iHly2NEuOsgQzHJAaF
	nW2xbnli+fiMbb8FMRyTp0GLi07crvrHcuK+LKjVRtX7mffJHK5OgtNQSpa9SggH9LUZePWIrBwNf
	kEMUC0nWwWgOuGZloGqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5kkV-00000005YAh-2Ey1;
	Thu, 26 Mar 2026 13:27:47 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5kkS-00000005Y9x-4AKz;
	Thu, 26 Mar 2026 13:27:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774531618; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=inF8c0T9S04BCFBJF/AFqs0QQE1fnL6+L0KLfp2qflAKOoeaNF7POilnvsA4ogT6zDYEJzs/DCseE80aWKaUz95nmU2U1FPPkxmNHr6fa9tAABj6/T0/YzxGOEfjkI2vE7iix4wdHGsYY+jGCIIpca2Is5cbPETQB2cW49W/Z1Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774531618; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AMrMoDyMoCm1J1RqpO4nLs9/wPH8TbeR8ZH8ieMqM3M=; 
	b=F/uVOgmOl/+m0cjgsZP2y8CQcCEJp7/Yg24rmTHvQeop6slol6pRNfz33yzdJwytMxRzBykwUO1UZRD6U1RSUHwIQfw2LwMYGCPCK7s0zi3sF3kvj1eLwMbFVG/l1Kolu1GsIta26G2M2I0EuRjqkDbRVtjCfe7IrS/JP9zacG8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774531618;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=AMrMoDyMoCm1J1RqpO4nLs9/wPH8TbeR8ZH8ieMqM3M=;
	b=HBcXyV1aOElHJrP/+ER67nmCR0XxtxLBZgcVosoR2oun5PXk84eq4XCERgt0txCj
	n1btqz4DhdJsscJVr/Z3XksBjfuJCDRFbqPwSO1mPImfxdfB188suw3+SZnrbcmpGbo
	LUMkv9IiZsZn/W4s/g4yu3jAGvxeNMghnaVP+9zg=
Received: by mx.zohomail.com with SMTPS id 177453161763075.0968772878656;
	Thu, 26 Mar 2026 06:26:57 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Date: Thu, 26 Mar 2026 14:26:47 +0100
Message-ID: <16004581.uLZWGnKmhe@workhorse>
In-Reply-To: <acUvg3Y7kMf2qioK@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <3979783.tdWV9SEqCh@workhorse> <acUvg3Y7kMf2qioK@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_062745_085844_B54A8CD7 
X-CRM114-Status: GOOD (  52.21  )
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

T24gVGh1cnNkYXksIDI2IE1hcmNoIDIwMjYgMTQ6MDc6MTUgQ2VudHJhbCBFdXJvcGVhbiBTdGFu
ZGFyZCBUaW1lIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBUaHUsIE1hciAyNiwgMjAyNiBh
dCAwMTo0NDowM1BNICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiBPbiBXZWRu
ZXNkYXksIDI1IE1hcmNoIDIwMjYgMTI6MDM6MDcgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBU
aW1lIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gT24gV2VkLCBNYXIgMjUsIDIwMjYgYXQg
MDk6MjQ6MjdBTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIE1h
ciAyNCwgMjAyNiBhdCAwOTo1MzozNVBNICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4g
PiA+ID4gPiBPbiBUdWUsIE1hciAyNCwgMjAyNiBhdCAwODoxMDoxMVBNICswMTAwLCBOaWNvbGFz
IEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1ZXNkYXksIDI0IE1hcmNoIDIwMjYg
MTg6MDA6NDUgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1lIFZpbGxlIFN5cmrDpGzDpCB3
cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBUdWUsIE1hciAyNCwgMjAyNiBhdCAwNTowMTowN1BNICsw
MTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiArZW51bSBkcm1f
Y29ubmVjdG9yX2NvbG9yX2Zvcm1hdCB7Cj4gPiA+ID4gPiA+ID4gPiArCS8qKgo+ID4gPiA+ID4g
PiA+ID4gKwkgKiBARFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfQVVUTzogVGhlIGRyaXZlciBv
ciBkaXNwbGF5IHByb3RvY29sCj4gPiA+ID4gPiA+ID4gPiArCSAqIGhlbHBlcnMgc2hvdWxkIHBp
Y2sgYSBzdWl0YWJsZSBjb2xvciBmb3JtYXQuIEFsbCBpbXBsZW1lbnRhdGlvbnMgb2YgYQo+ID4g
PiA+ID4gPiA+ID4gKwkgKiBzcGVjaWZpYyBkaXNwbGF5IHByb3RvY29sIG11c3QgYmVoYXZlIHRo
ZSBzYW1lIHdheSB3aXRoICJBVVRPIiwgYnV0Cj4gPiA+ID4gPiA+ID4gPiArCSAqIGRpZmZlcmVu
dCBkaXNwbGF5IHByb3RvY29scyBkbyBub3QgbmVjZXNzYXJpbHkgaGF2ZSB0aGUgc2FtZSAiQVVU
TyIKPiA+ID4gPiA+ID4gPiA+ICsJICogc2VtYW50aWNzLgo+ID4gPiA+ID4gPiA+ID4gKwkgKgo+
ID4gPiA+ID4gPiA+ID4gKwkgKiBGb3IgSERNSSwgIkFVVE8iIHBpY2tzIFJHQiwgYnV0IGZhbGxz
IGJhY2sgdG8gWUNiQ3IgNDoyOjAgaWYgdGhlCj4gPiA+ID4gPiA+ID4gPiArCSAqIGJhbmR3aWR0
aCByZXF1aXJlZCBmb3IgZnVsbC1zY2FsZSBSR0IgaXMgbm90IGF2YWlsYWJsZSwgb3IgdGhlIG1v
ZGUKPiA+ID4gPiA+ID4gPiA+ICsJICogaXMgWUNiQ3IgNDoyOjAtb25seSwgYXMgbG9uZyBhcyB0
aGUgbW9kZSBhbmQgb3V0cHV0IGJvdGggc3VwcG9ydAo+ID4gPiA+ID4gPiA+ID4gKwkgKiBZQ2JD
ciA0OjI6MC4KPiA+ID4gPiA+ID4gPiA+ICsJICoKPiA+ID4gPiA+ID4gPiA+ICsJICogRm9yIGRp
c3BsYXkgcHJvdG9jb2xzIG90aGVyIHRoYW4gSERNSSwgdGhlIHJlY3Vyc2l2ZSBicmlkZ2UgY2hh
aW4KPiA+ID4gPiA+ID4gPiA+ICsJICogZm9ybWF0IHNlbGVjdGlvbiBwaWNrcyB0aGUgZmlyc3Qg
Y2hhaW4gb2YgYnJpZGdlIGZvcm1hdHMgdGhhdCB3b3JrcywKPiA+ID4gPiA+ID4gPiA+ICsJICog
YXMgaGFzIGFscmVhZHkgYmVlbiB0aGUgY2FzZSBiZWZvcmUgdGhlIGludHJvZHVjdGlvbiBvZiB0
aGUgImNvbG9yCj4gPiA+ID4gPiA+ID4gPiArCSAqIGZvcm1hdCIgcHJvcGVydHkuIE5vbi1IRE1J
IGJyaWRnZXMgc2hvdWxkIHRoZXJlZm9yZSBlaXRoZXIgc29ydCB0aGVpcgo+ID4gPiA+ID4gPiA+
ID4gKwkgKiBidXMgb3V0cHV0IGZvcm1hdHMgYnkgcHJlZmVyZW5jZSwgb3IgYWdyZWUgb24gYSB1
bmlmaWVkIGF1dG8gZm9ybWF0Cj4gPiA+ID4gPiA+ID4gPiArCSAqIHNlbGVjdGlvbiBsb2dpYyB0
aGF0J3MgaW1wbGVtZW50ZWQgaW4gYSBjb21tb24gc3RhdGUgaGVscGVyIChsaWtlCj4gPiA+ID4g
PiA+ID4gPiArCSAqIGhvdyBIRE1JIGRvZXMgaXQpLgo+ID4gPiA+ID4gPiA+ID4gKwkgKi8KPiA+
ID4gPiA+ID4gPiA+ICsJRFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfQVVUTyA9IDAsCj4gPiA+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiArCS8qKgo+ID4gPiA+ID4gPiA+ID4gKwkgKiBA
RFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfUkdCNDQ0OiBSR0Igb3V0cHV0IGZvcm1hdAo+ID4g
PiA+ID4gPiA+ID4gKwkgKi8KPiA+ID4gPiA+ID4gPiA+ICsJRFJNX0NPTk5FQ1RPUl9DT0xPUl9G
T1JNQVRfUkdCNDQ0LAo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKwkvKioKPiA+
ID4gPiA+ID4gPiA+ICsJICogQERSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDQ0OiBZ
Q2JDciA0OjQ6NCBvdXRwdXQgZm9ybWF0IChpZS4KPiA+ID4gPiA+ID4gPiA+ICsJICogbm90IHN1
YnNhbXBsZWQpCj4gPiA+ID4gPiA+ID4gPiArCSAqLwo+ID4gPiA+ID4gPiA+ID4gKwlEUk1fQ09O
TkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQ0NCwKPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ID4gPiA+ICsJLyoqCj4gPiA+ID4gPiA+ID4gPiArCSAqIEBEUk1fQ09OTkVDVE9SX0NPTE9SX0ZP
Uk1BVF9ZQ0JDUjQyMjogWUNiQ3IgNDoyOjIgb3V0cHV0IGZvcm1hdCAoaWUuCj4gPiA+ID4gPiA+
ID4gPiArCSAqIHdpdGggaG9yaXpvbnRhbCBzdWJzYW1wbGluZykKPiA+ID4gPiA+ID4gPiA+ICsJ
ICovCj4gPiA+ID4gPiA+ID4gPiArCURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDIy
LAo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKwkvKioKPiA+ID4gPiA+ID4gPiA+
ICsJICogQERSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDIwOiBZQ2JDciA0OjI6MCBv
dXRwdXQgZm9ybWF0IChpZS4KPiA+ID4gPiA+ID4gPiA+ICsJICogd2l0aCBob3Jpem9udGFsIGFu
ZCB2ZXJ0aWNhbCBzdWJzYW1wbGluZykKPiA+ID4gPiA+ID4gPiA+ICsJICovCj4gPiA+ID4gPiA+
ID4gPiArCURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDIwLAo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IFNlZW1zIGxpa2UgdGhpcyBzaG91bGQgZG9jdW1lbnQgd2hhdCB0aGUg
cXVhbnRpemF0aW9uIHJhbmdlCj4gPiA+ID4gPiA+ID4gc2hvdWxkIGJlIGZvciBlYWNoIGZvcm1h
dC4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEkgZG9uJ3QgdGhpbmsg
c28/IElmIHlvdSB3YW50IHBlci1jb21wb25lbnQgYml0IGRlcHRoIHZhbHVlcywKPiA+ID4gPiA+
ID4gRFJNX0ZPUk1BVF8qIGRlZmluZXMgd291bGQgYmUgdGhlIGFwcHJvcHJpYXRlIHZhbHVlcyB0
byB1c2UuIFRoaXMKPiA+ID4gPiA+ID4gZW51bSBpcyBtb3JlIGFic3RyYWN0IHRoYW4gdGhhdCwg
YW5kIGlzIHRoZXJlIHRvIGNvbW11bmljYXRlCj4gPiA+ID4gPiA+IFlVViB2cy4gUkdCIGFuZCBj
aHJvbWEgc3Vic2FtcGxpbmcsIHdpdGggYml0IGRlcHRoIGJlaW5nIGhhbmRsZWQKPiA+ID4gPiA+
ID4gYnkgb3RoZXIgcHJvcGVydGllcy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IElmIHlvdSBt
ZWFuIHRoZSBmYWN0b3IgdXNlZCBmb3Igc3Vic2FtcGxpbmcsIHRoZW4gdGhhdCdkIG9ubHkgYmUK
PiA+ID4gPiA+ID4gcmVsZXZhbnQgaWYgWUNCQ1I0MTAgd2FzIHN1cHBvcnRlZCB3aGVyZSBvbmUg
Y2hyb21hIHBsYW5lIGlzbid0Cj4gPiA+ID4gPiA+IGhhbHZlZCBidXQgcXVhcnRlcmVkIGluIHJl
c29sdXRpb24uIEkgc3VzcGVjdCA0OjE6MCB3aWxsIG5ldmVyCj4gPiA+ID4gPiA+IGJlIGFkZGVk
OyBubyBkaWdpdGFsIGRpc3BsYXkgcHJvdG9jb2wgc3RhbmRhcmQgc3VwcG9ydHMgaXQgdG8gbXkK
PiA+ID4gPiA+ID4ga25vd2xlZGdlLCBhbmQgaG9wZWZ1bGx5IG5vbmUgZXZlciB3aWxsLgo+ID4g
PiA+ID4gCj4gPiA+ID4gPiBObywgSSBtZWFuIHRoZSBxdWFudGl6YXRpb24gcmFuZ2UgKDE2LTIz
NSB2cy4gMC0yNTUgZXRjKS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhlIGk5MTUgYmVoYXZpb3Vy
IGlzIHRoYXQgWUNiQ3IgaXMgYWx3YXlzIGxpbWl0ZWQgcmFuZ2UsCj4gPiA+ID4gPiBSR0IgY2Fu
IGVpdGhlciBiZSBmdWxsIG9yIGxpbWl0ZWQgcmFuZ2UgZGVwZW5kaW5nIG9uIHRoZSAKPiA+ID4g
PiA+ICJCcm9hZGNhc3QgUkdCIiBwcm9wZXJ0eSBhbmQgb3RoZXIgcmVsYXRlZCBmYWN0b3JzLgo+
ID4gPiA+IAo+ID4gPiA+IFNvIGZhciB0aGUgSERNSSBzdGF0ZSBoYXMgYm90aCB0aGUgZm9ybWF0
IGFuZCBxdWFudGl6YXRpb24gcmFuZ2UgYXMKPiA+ID4gPiBkaWZmZXJlbnQgZmllbGRzLiBJJ20g
bm90IHN1cmUgd2UgbmVlZCB0byBkb2N1bWVudCB0aGUgcmFuZ2UgaW4gdGhlCj4gPiA+ID4gZm9y
bWF0IGZpZWxkLCBtYXliZSBvbmx5IG1lbnRpb24gaXQncyBub3QgcGFydCBvZiB0aGUgZm9ybWF0
IGJ1dCBoYXMgYQo+ID4gPiA+IGZpZWxkIG9mIGl0cyBvd24/Cj4gPiA+IAo+ID4gPiBJIHRoaW5r
IHdlIG9ubHkgaGF2ZSBpdCBmb3IgUkdCIChvbiBzb21lIGRyaXZlcnMgb25seT8pLiBGb3IgWUNi
Q3IKPiA+ID4gSSB0aGluayB0aGUgYXNzdW1wdGlvbiBpcyBsaW1pdGVkIHJhbmdlIGV2ZXJ5d2hl
cmUuCj4gPiA+IAo+ID4gPiBCdXQgSSdtIG5vdCByZWFsbHkgY29uY2VybmVkIGFib3V0IGRvY3Vt
ZW50aW5nIHN0cnVjdCBtZW1iZXJzLgo+ID4gPiBXaGF0IEknbSB0YWxraW5nIGFib3V0IGlzIHRo
ZSAqdWFwaSogZG9jcy4gU3VyZWx5IHVzZXJzcGFjZQo+ID4gPiB3aWxsIHdhbnQgdG8ga25vdyB3
aGF0IHRoZSBuZXcgcHJvcGVydHkgYWN0dWFsbHkgZG9lcyBzbyB0aGUKPiA+ID4gdWFwaSBuZWVk
cyB0byBiZSBkb2N1bWVudGVkIHByb3Blcmx5LiBBbmQgZG93biB0aGUgbGluZSBzb21lCj4gPiA+
IG5ldyBkcml2ZXIgbWlnaHQgYWxzbyBpbXBsZW1lbnQgdGhlIHdyb25nIGJlaGF2aW91ciBpZiB0
aGVyZQo+ID4gPiBpcyBubyBjbGVhciBzcGVjaWZpY2F0aW9uLgo+ID4gPiAKPiA+ID4gU28gSSdt
IHRoaW5raW5nIChvciBwZXJoYXBzIGhvcGluZykgdGhlIHJ1bGUgbWlnaHQgYmUgc29tZXRoaW5n
IGxpa2U6Cj4gPiA+IC0gWUNiQ3IgbGltaXRlZCByYW5nZSAKPiA+ID4gLSBSR0IgZnVsbCByYW5n
ZSBpZiAiQnJvYWRjYXN0IFJHQiIgcHJvcGVydHkgaXMgbm90IHByZXNlbnQKPiA+ID4gLSBSR0Ig
ZnVsbCBvciBsaW1pdGVkIHJhbmdlIGJhc2VkIG9uIHRoZSAiQnJvYWRjYXN0IFJHQiIgcHJvcGVy
dHkKPiA+ID4gICBpZiBpdCdzIHByZXNlbnQKPiA+ID4gCj4gPiA+IEkgdGhpbmsgdGhlICJCcm9h
ZGNhc3QgUkdCIiBwcm9wZXJ0eSBpdHNlbGYgbWlnaHQgYWxzbyBiZSBsYWNraW5nCj4gPiA+IHBy
b3BlciB1YXBpIGRvY3MsIHNvIHRoYXQgbWF5IG5lZWQgdG8gYmUgcmVtZWRpZWQgYXMgd2VsbC4K
PiA+ID4gCj4gPiA+IAo+ID4gCj4gPiBBbHJpZ2h0LCBzbyBpbiB2MTIgSSdsbCBkbyB0aGUgZm9s
bG93aW5nOgo+ID4gCj4gPiAtIEFkZCBhIGxpbmUgdG8gYWxsIFlDQkNSIGNvbm5lY3RvciBmb3Jt
YXRzIHRoYXQgc3BlY2lmaWVzIHRoZXkncmUKPiA+ICAgbGltaXRlZCByYW5nZSBhcyBsb25nIGFz
IEJyb2FkY2FzdCBSR0IgaXMgbGltaXRlZC4gV2hldGhlciBpdCdzIGxpbWl0ZWQKPiA+ICAgcmFu
Z2Ugd2hlbiBCcm9hZGNhc3QgUkdCIGlzIGZ1bGwgaXMgcHVycG9zZWZ1bGx5IGxlZnQgdW5kZWZp
bmVkLgo+IAo+ICJCcm9hZGNhc3QgUkdCIiwgYXMgdGhlIG5hbWUgaW1wbGllcywgb25seSBhZmZl
Y3RzIFJHQiBvdXRwdXQuCgpBbHJpZ2h0LCBJJ2xsIHNjcmF0Y2ggdGhlIG92ZXJjb21wbGljYXRl
ZCB1bmRlZmluZWQgYmVoYXZpb3VyIHRoaW5nCmFuZCBqdXN0IHNheSBpdCdzIGxpbWl0ZWQgcmFu
Z2UsIGFuZCBpbiB0aGUgZnV0dXJlLCB3ZSBjYW4gZXh0ZW5kIGl0CnRvIGxpbWl0ZWQgcmFuZ2Ug
YnkgZGVmYXVsdCBidXQgZnVsbCByYW5nZSBpZiBhbm90aGVyIG5ldyBwcm9wZXJ0eSBpcwpzZXQu
Cgo+IAo+ID4gICBJbiB0aGUgZnV0dXJlLCB3ZSBjYW4gZXhwYW5kIHRoaXMgdG8gc3RhdGUgdGhl
eSdyZSBsaW1pdGVkIHJhbmdlIGJ5Cj4gPiAgIGRlZmF1bHQgdW5sZXNzIHNvbWUgb3RoZXIgcHJv
cGVydHkgaXMgc2V0LiBJZiB3ZSdyZSBub3QgcmUtdXNpbmcKPiA+ICAgQnJvYWRjYXN0IFJHQiBm
b3IgdGhhdCwgdGhpcyB3aWxsIHdvcmsgb3V0IGZpbmUsIGJlY2F1c2UgdXNlcnMgd2hvCj4gPiAg
IGRvbid0IGtub3cgYWJvdXQgdGhlIGV2ZW50dWFsIG5ldyBwcm9wZXJ0eSB3b24ndCBoYXZlIHRo
aXMgYmVoYXZpb3VyCj4gPiAgIGNoYW5nZWQuIElmIHdlIGRvIHJlLXVzZSAiQnJvYWRjYXN0IFJH
QiIgZm9yIHRoYXQsIHRoZW4gb25seSB1c2Vycwo+ID4gICByZWx5aW5nIG9uIHRoaW5ncyB3ZSBl
eHBsaWNpdGx5IGxlZnQgdW5kZWZpbmVkIHdpbGwgZ2V0IHN1cnByaXNlCj4gPiAgIGZ1bGwgcmFu
Z2UgWUNCQ1IuCj4gPiAtIEFkZCBhIGxpbmUgdG8gdGhlIFJHQiBjb25uZWN0b3IgZm9ybWF0IHRo
YXQgc3BlY2lmaWVzIGl0cyByYW5nZQo+ID4gICBkZXBlbmRzIG9uIHRoZSAiQnJvYWRjYXN0IFJH
QiIgcHJvcGVydHkKPiA+IAo+ID4gVGhpcyBpcyBhIGJpdCBvZiBhIG1lc3MsIGJlY2F1c2UgaXQn
cyBlbnRpcmVseSByZWFzb25hYmxlIHRoYXQgYQo+ID4gZnV0dXJlIFlDQkNSIHJhbmdlIHByb3Bl
cnR5IHdvdWxkIHdhbnQgdG8gZGVmYXVsdCB0byBmdWxsIHJhbmdlCj4gPiBzbyB0aGF0IHVzZXJz
IGdldCB0aGUgbW9zdCBjb2xvciBvdXQgb2YgdGhlaXIgbW9uaXRvcnMuIEJ1dCB3aXRoCj4gPiB0
aGlzIGRlc2NyaXB0aW9uIG9mIHRoZSBjb25uZWN0b3IgY29sb3IgZm9ybWF0cywgd2UgY2FuJ3Qg
ZG8gdGhhdC4KPiA+IAo+ID4gSWYgdGhlcmUgYXJlIGFsdGVybmF0ZSBzdWdnZXN0aW9ucywgSSdt
IG9wZW4gZm9yIHRoZW0uIFdlIGNhbid0Cj4gPiByZWFsbHkgcmVuYW1lICJCcm9hZGNhc3QgUkdC
IiBidXQgaWYgSSBoYWQgYSB0aW1lIG1hY2hpbmUsIHRoYXQnZAo+ID4gYmUgbXkgZmlyc3QgY2hv
aWNlLgo+ID4gCj4gPiBLaW5kIHJlZ2FyZHMsCj4gPiBOaWNvbGFzIEZyYXR0YXJvbGkKPiA+IAo+
IAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E8CF10A3D8E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 12:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWW/bVSJIfrqSXN6CNC3xTGIRVEmYY/CZ7Dk/xsMczU=; b=xHsk0EfA9p/yEM
	mMWz96wdxW+y7n+Z4o3yomPGOH8NIHtdI5uEpW5fW4LkEtJZTLpwXQFU1KqKyCp5AEMXlO5SJ1rch
	xC1CDdBSvzC6bomTE6t+XL4gvARGLf5wloXliQdd69N3vFnZopQbD6xngGd6wIC1FpbGkRjbVExfh
	fUhtZdMrrIgzyJRXLnTamkh8yj3xO4jSZIgcHwvmg9+d0deDc+ie5BU8qIZoXAr99rKs/RXRBoIPE
	3YzzLsFjnHFGC2gO74yyRxwlHaO+bXVI7BWEKmEWPukO4gO4y3dsEf9k5jbhpvotZFFTtNwKCssTS
	LiPpBnsQQDv2k5YUAXxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5k5A-00000005U2Z-1wS8;
	Thu, 26 Mar 2026 12:45:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5k56-00000005U1Q-464Z;
	Thu, 26 Mar 2026 12:45:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774529053; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TrSl20mrUhKyAwSXH2BaofiS0davnhwOsaaehOkLoDjd9JFhoAYUnqCWKl0QKQ2wsBqpKPLhvhjZXyJTPNDiuY2itsmIhCckU3x2D/uBfHH8MYDFQwu2Pebf1X6ifySejIm5wsUmBt7OLNzpg/4rdlX3j+mGlsnnhOymgXTffpg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774529053; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=OSUVDXD78sWOEkX0slW7O4nHOQ6IXLnzNINhSsFAGtY=; 
	b=QK+BnGQA8xy5e9I/cvAEWOHb1kxy1C4UMhE1KpvhUmyQvQmsffJFfTPPhRjhrdDlBFp5vVvH9VcFQ+XOOqUON/YJdwCVMxmxBwjxW9rNgbjywmc8Fi0pPM9Yd2vBL690vGQhLAghN7zpBsqnCPFSzXu1t3Ftbx0yfHna3UK/z9s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774529053;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=OSUVDXD78sWOEkX0slW7O4nHOQ6IXLnzNINhSsFAGtY=;
	b=HE7C1XM3iXSRiRwRbApiPEPrRuM6tf7GC+GF6Rwt6hqib8I7pA76ZlBeRC1D4DZj
	p9goFEYEyL1BQ0PLGrp+r7mIWKiLXMEeZyn3zUHC+/tyIDgsSVUPJ1xRV+6PjbxlJIa
	MJ3DjTeTgDymmOCoGMwNmD+9Z1wXSfcxD5Aws358=
Received: by mx.zohomail.com with SMTPS id 1774529052171601.5959355004869;
	Thu, 26 Mar 2026 05:44:12 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Maxime Ripard <mripard@kernel.org>,
 Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
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
Date: Thu, 26 Mar 2026 13:44:03 +0100
Message-ID: <3979783.tdWV9SEqCh@workhorse>
In-Reply-To: <acPA60Ci3n_t__xF@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260325-neat-elegant-raven-ebc9ab@houat> <acPA60Ci3n_t__xF@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_054501_104958_A74400EB 
X-CRM114-Status: GOOD (  43.48  )
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

T24gV2VkbmVzZGF5LCAyNSBNYXJjaCAyMDI2IDEyOjAzOjA3IENlbnRyYWwgRXVyb3BlYW4gU3Rh
bmRhcmQgVGltZSBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gV2VkLCBNYXIgMjUsIDIwMjYg
YXQgMDk6MjQ6MjdBTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+IE9uIFR1ZSwgTWFy
IDI0LCAyMDI2IGF0IDA5OjUzOjM1UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+
ID4gT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMDg6MTA6MTFQTSArMDEwMCwgTmljb2xhcyBGcmF0
dGFyb2xpIHdyb3RlOgo+ID4gPiA+IE9uIFR1ZXNkYXksIDI0IE1hcmNoIDIwMjYgMTg6MDA6NDUg
Q2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1lIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+
ID4gPiA+IE9uIFR1ZSwgTWFyIDI0LCAyMDI2IGF0IDA1OjAxOjA3UE0gKzAxMDAsIE5pY29sYXMg
RnJhdHRhcm9saSB3cm90ZToKPiA+ID4gPiA+ID4gK2VudW0gZHJtX2Nvbm5lY3Rvcl9jb2xvcl9m
b3JtYXQgewo+ID4gPiA+ID4gPiArCS8qKgo+ID4gPiA+ID4gPiArCSAqIEBEUk1fQ09OTkVDVE9S
X0NPTE9SX0ZPUk1BVF9BVVRPOiBUaGUgZHJpdmVyIG9yIGRpc3BsYXkgcHJvdG9jb2wKPiA+ID4g
PiA+ID4gKwkgKiBoZWxwZXJzIHNob3VsZCBwaWNrIGEgc3VpdGFibGUgY29sb3IgZm9ybWF0LiBB
bGwgaW1wbGVtZW50YXRpb25zIG9mIGEKPiA+ID4gPiA+ID4gKwkgKiBzcGVjaWZpYyBkaXNwbGF5
IHByb3RvY29sIG11c3QgYmVoYXZlIHRoZSBzYW1lIHdheSB3aXRoICJBVVRPIiwgYnV0Cj4gPiA+
ID4gPiA+ICsJICogZGlmZmVyZW50IGRpc3BsYXkgcHJvdG9jb2xzIGRvIG5vdCBuZWNlc3Nhcmls
eSBoYXZlIHRoZSBzYW1lICJBVVRPIgo+ID4gPiA+ID4gPiArCSAqIHNlbWFudGljcy4KPiA+ID4g
PiA+ID4gKwkgKgo+ID4gPiA+ID4gPiArCSAqIEZvciBIRE1JLCAiQVVUTyIgcGlja3MgUkdCLCBi
dXQgZmFsbHMgYmFjayB0byBZQ2JDciA0OjI6MCBpZiB0aGUKPiA+ID4gPiA+ID4gKwkgKiBiYW5k
d2lkdGggcmVxdWlyZWQgZm9yIGZ1bGwtc2NhbGUgUkdCIGlzIG5vdCBhdmFpbGFibGUsIG9yIHRo
ZSBtb2RlCj4gPiA+ID4gPiA+ICsJICogaXMgWUNiQ3IgNDoyOjAtb25seSwgYXMgbG9uZyBhcyB0
aGUgbW9kZSBhbmQgb3V0cHV0IGJvdGggc3VwcG9ydAo+ID4gPiA+ID4gPiArCSAqIFlDYkNyIDQ6
MjowLgo+ID4gPiA+ID4gPiArCSAqCj4gPiA+ID4gPiA+ICsJICogRm9yIGRpc3BsYXkgcHJvdG9j
b2xzIG90aGVyIHRoYW4gSERNSSwgdGhlIHJlY3Vyc2l2ZSBicmlkZ2UgY2hhaW4KPiA+ID4gPiA+
ID4gKwkgKiBmb3JtYXQgc2VsZWN0aW9uIHBpY2tzIHRoZSBmaXJzdCBjaGFpbiBvZiBicmlkZ2Ug
Zm9ybWF0cyB0aGF0IHdvcmtzLAo+ID4gPiA+ID4gPiArCSAqIGFzIGhhcyBhbHJlYWR5IGJlZW4g
dGhlIGNhc2UgYmVmb3JlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgdGhlICJjb2xvcgo+ID4gPiA+ID4g
PiArCSAqIGZvcm1hdCIgcHJvcGVydHkuIE5vbi1IRE1JIGJyaWRnZXMgc2hvdWxkIHRoZXJlZm9y
ZSBlaXRoZXIgc29ydCB0aGVpcgo+ID4gPiA+ID4gPiArCSAqIGJ1cyBvdXRwdXQgZm9ybWF0cyBi
eSBwcmVmZXJlbmNlLCBvciBhZ3JlZSBvbiBhIHVuaWZpZWQgYXV0byBmb3JtYXQKPiA+ID4gPiA+
ID4gKwkgKiBzZWxlY3Rpb24gbG9naWMgdGhhdCdzIGltcGxlbWVudGVkIGluIGEgY29tbW9uIHN0
YXRlIGhlbHBlciAobGlrZQo+ID4gPiA+ID4gPiArCSAqIGhvdyBIRE1JIGRvZXMgaXQpLgo+ID4g
PiA+ID4gPiArCSAqLwo+ID4gPiA+ID4gPiArCURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX0FV
VE8gPSAwLAo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsJLyoqCj4gPiA+ID4gPiA+ICsJICog
QERSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1JHQjQ0NDogUkdCIG91dHB1dCBmb3JtYXQKPiA+
ID4gPiA+ID4gKwkgKi8KPiA+ID4gPiA+ID4gKwlEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9S
R0I0NDQsCj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKwkvKioKPiA+ID4gPiA+ID4gKwkgKiBA
RFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0NDQ6IFlDYkNyIDQ6NDo0IG91dHB1dCBm
b3JtYXQgKGllLgo+ID4gPiA+ID4gPiArCSAqIG5vdCBzdWJzYW1wbGVkKQo+ID4gPiA+ID4gPiAr
CSAqLwo+ID4gPiA+ID4gPiArCURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDQ0LAo+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsJLyoqCj4gPiA+ID4gPiA+ICsJICogQERSTV9DT05O
RUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDIyOiBZQ2JDciA0OjI6MiBvdXRwdXQgZm9ybWF0IChp
ZS4KPiA+ID4gPiA+ID4gKwkgKiB3aXRoIGhvcml6b250YWwgc3Vic2FtcGxpbmcpCj4gPiA+ID4g
PiA+ICsJICovCj4gPiA+ID4gPiA+ICsJRFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0
MjIsCj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKwkvKioKPiA+ID4gPiA+ID4gKwkgKiBARFJN
X0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0MjA6IFlDYkNyIDQ6MjowIG91dHB1dCBmb3Jt
YXQgKGllLgo+ID4gPiA+ID4gPiArCSAqIHdpdGggaG9yaXpvbnRhbCBhbmQgdmVydGljYWwgc3Vi
c2FtcGxpbmcpCj4gPiA+ID4gPiA+ICsJICovCj4gPiA+ID4gPiA+ICsJRFJNX0NPTk5FQ1RPUl9D
T0xPUl9GT1JNQVRfWUNCQ1I0MjAsCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNlZW1zIGxpa2UgdGhp
cyBzaG91bGQgZG9jdW1lbnQgd2hhdCB0aGUgcXVhbnRpemF0aW9uIHJhbmdlCj4gPiA+ID4gPiBz
aG91bGQgYmUgZm9yIGVhY2ggZm9ybWF0Lgo+ID4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gSSBk
b24ndCB0aGluayBzbz8gSWYgeW91IHdhbnQgcGVyLWNvbXBvbmVudCBiaXQgZGVwdGggdmFsdWVz
LAo+ID4gPiA+IERSTV9GT1JNQVRfKiBkZWZpbmVzIHdvdWxkIGJlIHRoZSBhcHByb3ByaWF0ZSB2
YWx1ZXMgdG8gdXNlLiBUaGlzCj4gPiA+ID4gZW51bSBpcyBtb3JlIGFic3RyYWN0IHRoYW4gdGhh
dCwgYW5kIGlzIHRoZXJlIHRvIGNvbW11bmljYXRlCj4gPiA+ID4gWVVWIHZzLiBSR0IgYW5kIGNo
cm9tYSBzdWJzYW1wbGluZywgd2l0aCBiaXQgZGVwdGggYmVpbmcgaGFuZGxlZAo+ID4gPiA+IGJ5
IG90aGVyIHByb3BlcnRpZXMuCj4gPiA+ID4gCj4gPiA+ID4gSWYgeW91IG1lYW4gdGhlIGZhY3Rv
ciB1c2VkIGZvciBzdWJzYW1wbGluZywgdGhlbiB0aGF0J2Qgb25seSBiZQo+ID4gPiA+IHJlbGV2
YW50IGlmIFlDQkNSNDEwIHdhcyBzdXBwb3J0ZWQgd2hlcmUgb25lIGNocm9tYSBwbGFuZSBpc24n
dAo+ID4gPiA+IGhhbHZlZCBidXQgcXVhcnRlcmVkIGluIHJlc29sdXRpb24uIEkgc3VzcGVjdCA0
OjE6MCB3aWxsIG5ldmVyCj4gPiA+ID4gYmUgYWRkZWQ7IG5vIGRpZ2l0YWwgZGlzcGxheSBwcm90
b2NvbCBzdGFuZGFyZCBzdXBwb3J0cyBpdCB0byBteQo+ID4gPiA+IGtub3dsZWRnZSwgYW5kIGhv
cGVmdWxseSBub25lIGV2ZXIgd2lsbC4KPiA+ID4gCj4gPiA+IE5vLCBJIG1lYW4gdGhlIHF1YW50
aXphdGlvbiByYW5nZSAoMTYtMjM1IHZzLiAwLTI1NSBldGMpLgo+ID4gPiAKPiA+ID4gVGhlIGk5
MTUgYmVoYXZpb3VyIGlzIHRoYXQgWUNiQ3IgaXMgYWx3YXlzIGxpbWl0ZWQgcmFuZ2UsCj4gPiA+
IFJHQiBjYW4gZWl0aGVyIGJlIGZ1bGwgb3IgbGltaXRlZCByYW5nZSBkZXBlbmRpbmcgb24gdGhl
IAo+ID4gPiAiQnJvYWRjYXN0IFJHQiIgcHJvcGVydHkgYW5kIG90aGVyIHJlbGF0ZWQgZmFjdG9y
cy4KPiA+IAo+ID4gU28gZmFyIHRoZSBIRE1JIHN0YXRlIGhhcyBib3RoIHRoZSBmb3JtYXQgYW5k
IHF1YW50aXphdGlvbiByYW5nZSBhcwo+ID4gZGlmZmVyZW50IGZpZWxkcy4gSSdtIG5vdCBzdXJl
IHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhlIHJhbmdlIGluIHRoZQo+ID4gZm9ybWF0IGZpZWxkLCBt
YXliZSBvbmx5IG1lbnRpb24gaXQncyBub3QgcGFydCBvZiB0aGUgZm9ybWF0IGJ1dCBoYXMgYQo+
ID4gZmllbGQgb2YgaXRzIG93bj8KPiAKPiBJIHRoaW5rIHdlIG9ubHkgaGF2ZSBpdCBmb3IgUkdC
IChvbiBzb21lIGRyaXZlcnMgb25seT8pLiBGb3IgWUNiQ3IKPiBJIHRoaW5rIHRoZSBhc3N1bXB0
aW9uIGlzIGxpbWl0ZWQgcmFuZ2UgZXZlcnl3aGVyZS4KPiAKPiBCdXQgSSdtIG5vdCByZWFsbHkg
Y29uY2VybmVkIGFib3V0IGRvY3VtZW50aW5nIHN0cnVjdCBtZW1iZXJzLgo+IFdoYXQgSSdtIHRh
bGtpbmcgYWJvdXQgaXMgdGhlICp1YXBpKiBkb2NzLiBTdXJlbHkgdXNlcnNwYWNlCj4gd2lsbCB3
YW50IHRvIGtub3cgd2hhdCB0aGUgbmV3IHByb3BlcnR5IGFjdHVhbGx5IGRvZXMgc28gdGhlCj4g
dWFwaSBuZWVkcyB0byBiZSBkb2N1bWVudGVkIHByb3Blcmx5LiBBbmQgZG93biB0aGUgbGluZSBz
b21lCj4gbmV3IGRyaXZlciBtaWdodCBhbHNvIGltcGxlbWVudCB0aGUgd3JvbmcgYmVoYXZpb3Vy
IGlmIHRoZXJlCj4gaXMgbm8gY2xlYXIgc3BlY2lmaWNhdGlvbi4KPiAKPiBTbyBJJ20gdGhpbmtp
bmcgKG9yIHBlcmhhcHMgaG9waW5nKSB0aGUgcnVsZSBtaWdodCBiZSBzb21ldGhpbmcgbGlrZToK
PiAtIFlDYkNyIGxpbWl0ZWQgcmFuZ2UgCj4gLSBSR0IgZnVsbCByYW5nZSBpZiAiQnJvYWRjYXN0
IFJHQiIgcHJvcGVydHkgaXMgbm90IHByZXNlbnQKPiAtIFJHQiBmdWxsIG9yIGxpbWl0ZWQgcmFu
Z2UgYmFzZWQgb24gdGhlICJCcm9hZGNhc3QgUkdCIiBwcm9wZXJ0eQo+ICAgaWYgaXQncyBwcmVz
ZW50Cj4gCj4gSSB0aGluayB0aGUgIkJyb2FkY2FzdCBSR0IiIHByb3BlcnR5IGl0c2VsZiBtaWdo
dCBhbHNvIGJlIGxhY2tpbmcKPiBwcm9wZXIgdWFwaSBkb2NzLCBzbyB0aGF0IG1heSBuZWVkIHRv
IGJlIHJlbWVkaWVkIGFzIHdlbGwuCj4gCj4gCgpBbHJpZ2h0LCBzbyBpbiB2MTIgSSdsbCBkbyB0
aGUgZm9sbG93aW5nOgoKLSBBZGQgYSBsaW5lIHRvIGFsbCBZQ0JDUiBjb25uZWN0b3IgZm9ybWF0
cyB0aGF0IHNwZWNpZmllcyB0aGV5J3JlCiAgbGltaXRlZCByYW5nZSBhcyBsb25nIGFzIEJyb2Fk
Y2FzdCBSR0IgaXMgbGltaXRlZC4gV2hldGhlciBpdCdzIGxpbWl0ZWQKICByYW5nZSB3aGVuIEJy
b2FkY2FzdCBSR0IgaXMgZnVsbCBpcyBwdXJwb3NlZnVsbHkgbGVmdCB1bmRlZmluZWQuCiAgSW4g
dGhlIGZ1dHVyZSwgd2UgY2FuIGV4cGFuZCB0aGlzIHRvIHN0YXRlIHRoZXkncmUgbGltaXRlZCBy
YW5nZSBieQogIGRlZmF1bHQgdW5sZXNzIHNvbWUgb3RoZXIgcHJvcGVydHkgaXMgc2V0LiBJZiB3
ZSdyZSBub3QgcmUtdXNpbmcKICBCcm9hZGNhc3QgUkdCIGZvciB0aGF0LCB0aGlzIHdpbGwgd29y
ayBvdXQgZmluZSwgYmVjYXVzZSB1c2VycyB3aG8KICBkb24ndCBrbm93IGFib3V0IHRoZSBldmVu
dHVhbCBuZXcgcHJvcGVydHkgd29uJ3QgaGF2ZSB0aGlzIGJlaGF2aW91cgogIGNoYW5nZWQuIElm
IHdlIGRvIHJlLXVzZSAiQnJvYWRjYXN0IFJHQiIgZm9yIHRoYXQsIHRoZW4gb25seSB1c2Vycwog
IHJlbHlpbmcgb24gdGhpbmdzIHdlIGV4cGxpY2l0bHkgbGVmdCB1bmRlZmluZWQgd2lsbCBnZXQg
c3VycHJpc2UKICBmdWxsIHJhbmdlIFlDQkNSLgotIEFkZCBhIGxpbmUgdG8gdGhlIFJHQiBjb25u
ZWN0b3IgZm9ybWF0IHRoYXQgc3BlY2lmaWVzIGl0cyByYW5nZQogIGRlcGVuZHMgb24gdGhlICJC
cm9hZGNhc3QgUkdCIiBwcm9wZXJ0eQoKVGhpcyBpcyBhIGJpdCBvZiBhIG1lc3MsIGJlY2F1c2Ug
aXQncyBlbnRpcmVseSByZWFzb25hYmxlIHRoYXQgYQpmdXR1cmUgWUNCQ1IgcmFuZ2UgcHJvcGVy
dHkgd291bGQgd2FudCB0byBkZWZhdWx0IHRvIGZ1bGwgcmFuZ2UKc28gdGhhdCB1c2VycyBnZXQg
dGhlIG1vc3QgY29sb3Igb3V0IG9mIHRoZWlyIG1vbml0b3JzLiBCdXQgd2l0aAp0aGlzIGRlc2Ny
aXB0aW9uIG9mIHRoZSBjb25uZWN0b3IgY29sb3IgZm9ybWF0cywgd2UgY2FuJ3QgZG8gdGhhdC4K
CklmIHRoZXJlIGFyZSBhbHRlcm5hdGUgc3VnZ2VzdGlvbnMsIEknbSBvcGVuIGZvciB0aGVtLiBX
ZSBjYW4ndApyZWFsbHkgcmVuYW1lICJCcm9hZGNhc3QgUkdCIiBidXQgaWYgSSBoYWQgYSB0aW1l
IG1hY2hpbmUsIHRoYXQnZApiZSBteSBmaXJzdCBjaG9pY2UuCgpLaW5kIHJlZ2FyZHMsCk5pY29s
YXMgRnJhdHRhcm9saQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

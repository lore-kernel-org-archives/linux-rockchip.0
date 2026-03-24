Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F9FFEC0F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9asLs2t8CjTlFATBfFBrQldd4gb4JjBaUJGHs115/M=; b=WeFgDyJhPnuVKU
	Xpy5ck1/8eaMuK7Nfen9/6HcBUYN7fDccT/gtScSDrBIoO4XO4CN9gYdiXvAt+Er1LTy3Sfmufrl+
	oUSQlX99lyoBY5Yq5sFZY9XdqRBAYpr4ZTyCeUP6ImmnXHtRyDkr/u70fLMav3Ri2xFeZZZRJRLRN
	J2Yb1s7+GjYPE9I0WTqirirdSFzsq1Wl6fPqqnAR9+ZtQ6GaagojkvJjV33vSbggkHXlBoisO8hQr
	qQfUCTBughhdcljHhFhNAf+77ANZnZfkYaCf9ovDlN8CfTGFONR8b8txq3p9ZRMcVUS35Ps2PvzaY
	9mTuCeHtf9UlwVYnsGgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w579g-000000027gV-0WI7;
	Tue, 24 Mar 2026 19:11:08 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w579d-000000027g1-39WE;
	Tue, 24 Mar 2026 19:11:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774379422; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=JwmfU3nI64lANcTkOJ2pptWtxs1wPlS9WAKzNUHw+UmfXiMj6E76AJuUGE1dUuUB9KFdm4poJkc3/4iweEnXYg39pe+B+E0RawYrt7N+GHbSgTSPoUN0808n6nIp72tssVMND5WVVKzksaEAJqUNTa+pBJZ/JilUNrURP5JPwdQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774379422; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oIHhgYRTZYTwgPpGgsACesVAZLnr0SI2o+pjUNHNbec=; 
	b=XKnKaF7lYeRKqvW1sR5dSc3xOJtNoj8KO64AF/R2Bt7kj+XePRPL6DWo3ezLa0ifxii/Pwi6RKyqtj0MnHXIBxQBJ1H9FKHRowaC9lzDkWi62V2uixSkk/rCNrsYojyNPM+wpNEpSlCRYupfsCzcCkQBz8cjM7Uib9S/P9bUfgw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774379422;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=oIHhgYRTZYTwgPpGgsACesVAZLnr0SI2o+pjUNHNbec=;
	b=XjbgTY7MCveOU54UWyjfIY6w858uZYvJ0pY1cuI9G1qSVXsiM+jNqczIX3O+kNZr
	FezgxnSjsqcdP8RjZn8+GEt2o6KC+kfWQM5EJR0LQ8+to1BezR8iKwhkw1rFdzwfwju
	CA5g5dnFUKnLmIkgFD4Fcq0PsWPU0APg17ufDRQM=
Received: by mx.zohomail.com with SMTPS id 1774379421185170.28810178052595;
	Tue, 24 Mar 2026 12:10:21 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
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
Date: Tue, 24 Mar 2026 20:10:11 +0100
Message-ID: <23910073.EfDdHjke4D@workhorse>
In-Reply-To: <acLDPYuaVI2-12JX@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_121105_821921_C2A49A1C 
X-CRM114-Status: GOOD (  27.03  )
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

T24gVHVlc2RheSwgMjQgTWFyY2ggMjAyNiAxODowMDo0NSBDZW50cmFsIEV1cm9wZWFuIFN0YW5k
YXJkIFRpbWUgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIFR1ZSwgTWFyIDI0LCAyMDI2IGF0
IDA1OjAxOjA3UE0gKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+ICtlbnVtIGRy
bV9jb25uZWN0b3JfY29sb3JfZm9ybWF0IHsKPiA+ICsJLyoqCj4gPiArCSAqIEBEUk1fQ09OTkVD
VE9SX0NPTE9SX0ZPUk1BVF9BVVRPOiBUaGUgZHJpdmVyIG9yIGRpc3BsYXkgcHJvdG9jb2wKPiA+
ICsJICogaGVscGVycyBzaG91bGQgcGljayBhIHN1aXRhYmxlIGNvbG9yIGZvcm1hdC4gQWxsIGlt
cGxlbWVudGF0aW9ucyBvZiBhCj4gPiArCSAqIHNwZWNpZmljIGRpc3BsYXkgcHJvdG9jb2wgbXVz
dCBiZWhhdmUgdGhlIHNhbWUgd2F5IHdpdGggIkFVVE8iLCBidXQKPiA+ICsJICogZGlmZmVyZW50
IGRpc3BsYXkgcHJvdG9jb2xzIGRvIG5vdCBuZWNlc3NhcmlseSBoYXZlIHRoZSBzYW1lICJBVVRP
Igo+ID4gKwkgKiBzZW1hbnRpY3MuCj4gPiArCSAqCj4gPiArCSAqIEZvciBIRE1JLCAiQVVUTyIg
cGlja3MgUkdCLCBidXQgZmFsbHMgYmFjayB0byBZQ2JDciA0OjI6MCBpZiB0aGUKPiA+ICsJICog
YmFuZHdpZHRoIHJlcXVpcmVkIGZvciBmdWxsLXNjYWxlIFJHQiBpcyBub3QgYXZhaWxhYmxlLCBv
ciB0aGUgbW9kZQo+ID4gKwkgKiBpcyBZQ2JDciA0OjI6MC1vbmx5LCBhcyBsb25nIGFzIHRoZSBt
b2RlIGFuZCBvdXRwdXQgYm90aCBzdXBwb3J0Cj4gPiArCSAqIFlDYkNyIDQ6MjowLgo+ID4gKwkg
Kgo+ID4gKwkgKiBGb3IgZGlzcGxheSBwcm90b2NvbHMgb3RoZXIgdGhhbiBIRE1JLCB0aGUgcmVj
dXJzaXZlIGJyaWRnZSBjaGFpbgo+ID4gKwkgKiBmb3JtYXQgc2VsZWN0aW9uIHBpY2tzIHRoZSBm
aXJzdCBjaGFpbiBvZiBicmlkZ2UgZm9ybWF0cyB0aGF0IHdvcmtzLAo+ID4gKwkgKiBhcyBoYXMg
YWxyZWFkeSBiZWVuIHRoZSBjYXNlIGJlZm9yZSB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSAiY29s
b3IKPiA+ICsJICogZm9ybWF0IiBwcm9wZXJ0eS4gTm9uLUhETUkgYnJpZGdlcyBzaG91bGQgdGhl
cmVmb3JlIGVpdGhlciBzb3J0IHRoZWlyCj4gPiArCSAqIGJ1cyBvdXRwdXQgZm9ybWF0cyBieSBw
cmVmZXJlbmNlLCBvciBhZ3JlZSBvbiBhIHVuaWZpZWQgYXV0byBmb3JtYXQKPiA+ICsJICogc2Vs
ZWN0aW9uIGxvZ2ljIHRoYXQncyBpbXBsZW1lbnRlZCBpbiBhIGNvbW1vbiBzdGF0ZSBoZWxwZXIg
KGxpa2UKPiA+ICsJICogaG93IEhETUkgZG9lcyBpdCkuCj4gPiArCSAqLwo+ID4gKwlEUk1fQ09O
TkVDVE9SX0NPTE9SX0ZPUk1BVF9BVVRPID0gMCwKPiA+ICsKPiA+ICsJLyoqCj4gPiArCSAqIEBE
Uk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9SR0I0NDQ6IFJHQiBvdXRwdXQgZm9ybWF0Cj4gPiAr
CSAqLwo+ID4gKwlEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9SR0I0NDQsCj4gPiArCj4gPiAr
CS8qKgo+ID4gKwkgKiBARFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0NDQ6IFlDYkNy
IDQ6NDo0IG91dHB1dCBmb3JtYXQgKGllLgo+ID4gKwkgKiBub3Qgc3Vic2FtcGxlZCkKPiA+ICsJ
ICovCj4gPiArCURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDQ0LAo+ID4gKwo+ID4g
KwkvKioKPiA+ICsJICogQERSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1lDQkNSNDIyOiBZQ2JD
ciA0OjI6MiBvdXRwdXQgZm9ybWF0IChpZS4KPiA+ICsJICogd2l0aCBob3Jpem9udGFsIHN1YnNh
bXBsaW5nKQo+ID4gKwkgKi8KPiA+ICsJRFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0
MjIsCj4gPiArCj4gPiArCS8qKgo+ID4gKwkgKiBARFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRf
WUNCQ1I0MjA6IFlDYkNyIDQ6MjowIG91dHB1dCBmb3JtYXQgKGllLgo+ID4gKwkgKiB3aXRoIGhv
cml6b250YWwgYW5kIHZlcnRpY2FsIHN1YnNhbXBsaW5nKQo+ID4gKwkgKi8KPiA+ICsJRFJNX0NP
Tk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0MjAsCj4gCj4gU2VlbXMgbGlrZSB0aGlzIHNob3Vs
ZCBkb2N1bWVudCB3aGF0IHRoZSBxdWFudGl6YXRpb24gcmFuZ2UKPiBzaG91bGQgYmUgZm9yIGVh
Y2ggZm9ybWF0Lgo+IAoKSSBkb24ndCB0aGluayBzbz8gSWYgeW91IHdhbnQgcGVyLWNvbXBvbmVu
dCBiaXQgZGVwdGggdmFsdWVzLApEUk1fRk9STUFUXyogZGVmaW5lcyB3b3VsZCBiZSB0aGUgYXBw
cm9wcmlhdGUgdmFsdWVzIHRvIHVzZS4gVGhpcwplbnVtIGlzIG1vcmUgYWJzdHJhY3QgdGhhbiB0
aGF0LCBhbmQgaXMgdGhlcmUgdG8gY29tbXVuaWNhdGUKWVVWIHZzLiBSR0IgYW5kIGNocm9tYSBz
dWJzYW1wbGluZywgd2l0aCBiaXQgZGVwdGggYmVpbmcgaGFuZGxlZApieSBvdGhlciBwcm9wZXJ0
aWVzLgoKSWYgeW91IG1lYW4gdGhlIGZhY3RvciB1c2VkIGZvciBzdWJzYW1wbGluZywgdGhlbiB0
aGF0J2Qgb25seSBiZQpyZWxldmFudCBpZiBZQ0JDUjQxMCB3YXMgc3VwcG9ydGVkIHdoZXJlIG9u
ZSBjaHJvbWEgcGxhbmUgaXNuJ3QKaGFsdmVkIGJ1dCBxdWFydGVyZWQgaW4gcmVzb2x1dGlvbi4g
SSBzdXNwZWN0IDQ6MTowIHdpbGwgbmV2ZXIKYmUgYWRkZWQ7IG5vIGRpZ2l0YWwgZGlzcGxheSBw
cm90b2NvbCBzdGFuZGFyZCBzdXBwb3J0cyBpdCB0byBteQprbm93bGVkZ2UsIGFuZCBob3BlZnVs
bHkgbm9uZSBldmVyIHdpbGwuCgo+ID4gKwo+ID4gKwkvKioKPiA+ICsJICogQERSTV9DT05ORUNU
T1JfQ09MT1JfRk9STUFUX0NPVU5UOiBOdW1iZXIgb2YgdmFsaWQgY29ubmVjdG9yIGNvbG9yCj4g
PiArCSAqIGZvcm1hdCB2YWx1ZXMgaW4gdGhpcyBlbnVtCj4gPiArCSAqLwo+ID4gKwlEUk1fQ09O
TkVDVE9SX0NPTE9SX0ZPUk1BVF9DT1VOVCwKPiA+ICt9Owo+ID4gKwo+ID4gKy8qKgo+ID4gKyAq
IGRybV9jb25uZWN0b3JfY29sb3JfZm9ybWF0X3ZhbGlkIC0gVmFsaWRhdGUgZHJtX2Nvbm5lY3Rv
cl9jb2xvcl9mb3JtYXQgdmFsdWUKPiA+ICsgKiBAZm10OiB2YWx1ZSB0byBjaGVjayBhZ2FpbnN0
IGFsbCB2YWx1ZXMgb2YgJmVudW0gZHJtX2Nvbm5lY3Rvcl9jb2xvcl9mb3JtYXQKPiA+ICsgKgo+
ID4gKyAqIENoZWNrcyB3aGV0aGVyIHRoZSBwYXNzZWQgaW4gdmFsdWUgb2YgQGZtdCBpcyBvbmUg
b2YgdGhlIGFsbG93YWJsZSB2YWx1ZXMgaW4KPiA+ICsgKiAmZW51bSBkcm1fY29ubmVjdG9yX2Nv
bG9yX2Zvcm1hdC4KPiA+ICsgKgo+ID4gKyAqIFJldHVybnM6ICV0cnVlIGlmIGl0J3MgYSB2YWxp
ZCB2YWx1ZSBmb3IgdGhlIGVudW0sICVmYWxzZSBvdGhlcndpc2UuCj4gPiArICovCj4gPiArc3Rh
dGljIGlubGluZSBib29sIF9fcHVyZQo+ID4gK2RybV9jb25uZWN0b3JfY29sb3JfZm9ybWF0X3Zh
bGlkKGVudW0gZHJtX2Nvbm5lY3Rvcl9jb2xvcl9mb3JtYXQgZm10KQo+ID4gK3sKPiA+ICsJc3dp
dGNoIChmbXQpIHsKPiA+ICsJY2FzZSBEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9BVVRPOgo+
ID4gKwljYXNlIERSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1JHQjQ0NDoKPiA+ICsJY2FzZSBE
Uk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQ0NDoKPiA+ICsJY2FzZSBEUk1fQ09OTkVD
VE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQyMjoKPiA+ICsJY2FzZSBEUk1fQ09OTkVDVE9SX0NPTE9S
X0ZPUk1BVF9ZQ0JDUjQyMDoKPiA+ICsJCXJldHVybiB0cnVlOwo+ID4gKwlkZWZhdWx0Ogo+ID4g
KwkJcmV0dXJuIGZhbHNlOwo+ID4gKwl9Cj4gPiArfQo+ID4gKwo+ID4gIGNvbnN0IGNoYXIgKgo+
ID4gIGRybV9oZG1pX2Nvbm5lY3Rvcl9nZXRfb3V0cHV0X2Zvcm1hdF9uYW1lKGVudW0gZHJtX291
dHB1dF9jb2xvcl9mb3JtYXQgZm10KTsKPiA+ICAKPiA+IEBAIC0xMTI5LDYgKzEyMTcsMTMgQEAg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgewo+ID4gIAkgKi8KPiA+ICAJZW51bSBkcm1fY29s
b3JzcGFjZSBjb2xvcnNwYWNlOwo+ID4gIAo+ID4gKwkvKioKPiA+ICsJICogQGNvbG9yX2Zvcm1h
dDogU3RhdGUgdmFyaWFibGUgZm9yIENvbm5lY3RvciBwcm9wZXJ0eSB0byByZXF1ZXN0Cj4gPiAr
CSAqIGNvbG9yIGZvcm1hdCBjaGFuZ2Ugb24gU2luay4gVGhpcyBpcyBtb3N0IGNvbW1vbmx5IHVz
ZWQgdG8gc3dpdGNoCj4gPiArCSAqIGJldHdlZW4gUkdCIHRvIFlVViBhbmQgdmljZS12ZXJzYS4K
PiA+ICsJICovCj4gPiArCWVudW0gZHJtX2Nvbm5lY3Rvcl9jb2xvcl9mb3JtYXQgY29sb3JfZm9y
bWF0Owo+ID4gKwo+ID4gIAkvKioKPiA+ICAJICogQHdyaXRlYmFja19qb2I6IFdyaXRlYmFjayBq
b2IgZm9yIHdyaXRlYmFjayBjb25uZWN0b3JzCj4gPiAgCSAqCj4gPiBAQCAtMjEyNyw2ICsyMjIy
LDEyIEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yIHsKPiA+ICAJICovCj4gPiAgCXN0cnVjdCBkcm1f
cHJvcGVydHkgKmNvbG9yc3BhY2VfcHJvcGVydHk7Cj4gPiAgCj4gPiArCS8qKgo+ID4gKwkgKiBA
Y29sb3JfZm9ybWF0X3Byb3BlcnR5OiBDb25uZWN0b3IgcHJvcGVydHkgdG8gc2V0IHRoZSBzdWl0
YWJsZQo+ID4gKwkgKiBjb2xvciBmb3JtYXQgc3VwcG9ydGVkIGJ5IHRoZSBzaW5rLgo+ID4gKwkg
Ki8KPiA+ICsJc3RydWN0IGRybV9wcm9wZXJ0eSAqY29sb3JfZm9ybWF0X3Byb3BlcnR5Owo+ID4g
Kwo+ID4gIAkvKioKPiA+ICAJICogQHBhdGhfYmxvYl9wdHI6Cj4gPiAgCSAqCj4gPiBAQCAtMjYx
MCw2ICsyNzExLDkgQEAgYm9vbCBkcm1fY29ubmVjdG9yX2hhc19wb3NzaWJsZV9lbmNvZGVyKHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gPiAgCQkJCQlzdHJ1Y3QgZHJtX2VuY29k
ZXIgKmVuY29kZXIpOwo+ID4gIGNvbnN0IGNoYXIgKmRybV9nZXRfY29sb3JzcGFjZV9uYW1lKGVu
dW0gZHJtX2NvbG9yc3BhY2UgY29sb3JzcGFjZSk7Cj4gPiAgCj4gPiAraW50IGRybV9jb25uZWN0
b3JfYXR0YWNoX2NvbG9yX2Zvcm1hdF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAo+ID4gKwkJCQkJICAgICAgIHVuc2lnbmVkIGxvbmcgc3VwcG9ydGVkX2NvbG9yX2Zv
cm1hdHMpOwo+ID4gKwo+ID4gIC8qKgo+ID4gICAqIGRybV9mb3JfZWFjaF9jb25uZWN0b3JfaXRl
ciAtIGNvbm5lY3Rvcl9saXN0IGl0ZXJhdG9yIG1hY3JvCj4gPiAgICogQGNvbm5lY3RvcjogJnN0
cnVjdCBkcm1fY29ubmVjdG9yIHBvaW50ZXIgdXNlZCBhcyBjdXJzb3IKPiA+IAo+IAo+IAoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

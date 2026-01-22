Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55803D3EE61
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 13:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvg6A7zUWJoriRa/e5VKI2RaIOrrLmNUKufM1kF9tEg=; b=2EVZHng+9JaTuG
	UO70HyQyXrjh6i06Qtp9ssoHv9KXrzTFIHsrGSSNUMZIiWme5l+EINZysjsgZj9sNo7sUZcpqQ7FF
	mFUvU6p4ilt4nphOjOJ1sgDmEQWL7sGcj9eJZpw8noBDwugjPyKSQ0DzdwNPj0sntmQnDLBbkILBX
	/I1icbrdiP9TWIvPGa0nvvZvfQrkIOGyKYKzK1Og3eLM7/7nvInIw6gglgFlc97/Mk5tfD50DYVig
	tqagz9Yirx2KL7vDeb/sFMOTLCXbET22Y+j5d1AX99ktUZYZDuQAQq2yhqc7tgxsayeOImVNlWQtH
	ves6NgYy42l6lr2cA9kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viuIx-000000076IJ-1UT6;
	Thu, 22 Jan 2026 13:00:57 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viuIq-000000076HE-3gBc;
	Thu, 22 Jan 2026 13:00:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769086792; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VKqPDXZqQscCYPdjRAFzVjNUl2wWtTJSvTiRTzEYXbg2KRiiyrzw7Fgd5F4aj/GqLRkPG52NFbg+LSpLjs4GAECVbS01LsWvA9Fz1NjwIAPPjcU/3BNCDvAgEzXUnKfZB2evUSGJlSirmL7GTIXm02Roe2I5pcvUy99ppcqfscg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769086792; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uaYzvb2XfnnkbyKx6FP5LwKsEl3/GXRkx9jsqA5CXcg=; 
	b=RJCKftJsR+YMsCXvoJUwTAO3XJ8vrGzxjCCYZQmDVjdkydhhqR4Bgvb/ZHdXIutEzxgIJnul+AxHTbyPdvbqJo6hzUNsBlNrvzLsDYiCWTGUDpqGZqeaDwo+5XzzCEUSynNz4SiSmXQzIFLwIW+bzQeySP1wgm4RvmR24fr4xfU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769086792;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=uaYzvb2XfnnkbyKx6FP5LwKsEl3/GXRkx9jsqA5CXcg=;
	b=XQ+af+yjMhxPFVDC94pM4PlfhBu+gM6eH/bwFiy44r2PfvdSy4/Aodursm5Hdrqi
	VZ1oIeM9xzg5jXHXTAll2xKeZgInWMdf2dKrQIFjeVJqLYGJlLr9PJTsgJ/NoOlwVW6
	ezT5oPGKFoHngWSi9Nrm67krvXYabnOVwbijhWko=
Received: by mx.zohomail.com with SMTPS id 1769086791692511.35700158955376;
	Thu, 22 Jan 2026 04:59:51 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Andy Yan <andyshrk@163.com>
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
 Jonathan Corbet <corbet@lwn.net>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v7 10/22] drm/rockchip: vop2: Fix YUV444 output
Date: Thu, 22 Jan 2026 13:59:41 +0100
Message-ID: <6631107.DvuYhMxLoT@workhorse>
In-Reply-To: <7ab32c86.7542.19be4d21f69.Coremail.andyshrk@163.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
 <20260121-color-format-v7-10-ef790dae780c@collabora.com>
 <7ab32c86.7542.19be4d21f69.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_050049_025495_8A1F279E 
X-CRM114-Status: GOOD (  20.25  )
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

T24gVGh1cnNkYXksIDIyIEphbnVhcnkgMjAyNiAwOToyODo1NCBDZW50cmFsIEV1cm9wZWFuIFN0
YW5kYXJkIFRpbWUgQW5keSBZYW4gd3JvdGU6Cj4gCj4gSGVsbG8gTmljb2xhc++8jAo+IAo+IEF0
IDIwMjYtMDEtMjEgMjI6NDU6MTcsICJOaWNvbGFzIEZyYXR0YXJvbGkiIDxuaWNvbGFzLmZyYXR0
YXJvbGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPllVVjQ0NCAoYWthIFlDYkNyNDQ0KSBvdXRw
dXQgaXNuJ3Qgd29ya2luZyBxdWl0ZSByaWdodCBvbiBSSzM1ODguIFRoZQo+ID5yZXN1bHRpbmcg
aW1hZ2Ugb24gdGhlIGRpc3BsYXksIHdoaWxlIGlkZW50aWZ5aW5nIGl0c2VsZiBhcyBZVVY0NDQs
IGhhcwo+ID5zb21lIGNvbXBvbmVudHMgc3dhcHBlZCwgZXZlbiBhZnRlciBhZGRpbmcgdGhlIG5l
Y2Vzc2FyeSBEUk0gZm9ybWF0cyB0bwo+ID50aGUgY29udmVyc2lvbiBmdW5jdGlvbnMuCj4gPgo+
ID5KdWRnaW5nIGJ5IGRvd25zdHJlYW0sIHRoaXMgaXMgYmVjYXVzZSBZVVY0NDQgYWxzbyBuZWVk
cyBhbiByYiBzd2FwCj4gPnBlcmZvcm1lZCBpbiB0aGUgQUZCQyBjYXNlLgo+ID4KPiA+QWRkIHRo
ZSBEUk0gZm9ybWF0cyB0byB0aGUgYXBwcm9wcmlhdGUgc3dpdGNoIHN0YXRlbWVudHMsIGFuZCBh
ZGQgYQo+ID5mdW5jdGlvbiBmb3IgY2hlY2tpbmcgd2hldGhlciBhbiByYiBzd2FwIG5lZWRzIHRv
IGJlIHBlcmZvcm1lZCBpbiB0aGUKPiA+QUZCQyBjYXNlLgo+ID4KPiA+Rml4ZXM6IDYwNGJlODU1
NDdjZSAoImRybS9yb2NrY2hpcDogQWRkIFZPUDIgZHJpdmVyIikKPiA+U2lnbmVkLW9mZi1ieTog
Tmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiA+
LS0tCj4gPiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE5
ICsrKysrKysrKysrKysrKysrKysKPiA+IDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCsp
Cj4gPgo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+
ID5pbmRleCBlYzNiNGZkZTEwZGIuLjQ2OWM2M2RkOTdkNSAxMDA2NDQKPiA+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+KysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+QEAgLTE3Niw2ICsxNzYsNyBA
QCBzdGF0aWMgZW51bSB2b3AyX2RhdGFfZm9ybWF0IHZvcDJfY29udmVydF9mb3JtYXQodTMyIGZv
cm1hdCkKPiA+IAljYXNlIERSTV9GT1JNQVRfQVJHQjIxMDEwMTA6Cj4gPiAJY2FzZSBEUk1fRk9S
TUFUX1hCR1IyMTAxMDEwOgo+ID4gCWNhc2UgRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMDoKPiA+Kwlj
YXNlIERSTV9GT1JNQVRfVlVZMTAxMDEwOgo+ID4gCQlyZXR1cm4gVk9QMl9GTVRfWFJHQjEwMTAx
MDsKPiA+IAljYXNlIERSTV9GT1JNQVRfWFJHQjg4ODg6Cj4gPiAJY2FzZSBEUk1fRk9STUFUX0FS
R0I4ODg4Ogo+ID5AQCAtMTg0LDYgKzE4NSw3IEBAIHN0YXRpYyBlbnVtIHZvcDJfZGF0YV9mb3Jt
YXQgdm9wMl9jb252ZXJ0X2Zvcm1hdCh1MzIgZm9ybWF0KQo+ID4gCQlyZXR1cm4gVk9QMl9GTVRf
QVJHQjg4ODg7Cj4gPiAJY2FzZSBEUk1fRk9STUFUX1JHQjg4ODoKPiA+IAljYXNlIERSTV9GT1JN
QVRfQkdSODg4Ogo+ID4rCWNhc2UgRFJNX0ZPUk1BVF9WVVk4ODg6Cj4gPiAJCXJldHVybiBWT1Ay
X0ZNVF9SR0I4ODg7Cj4gPiAJY2FzZSBEUk1fRk9STUFUX1JHQjU2NToKPiA+IAljYXNlIERSTV9G
T1JNQVRfQkdSNTY1Ogo+ID5AQCAtMjI1LDYgKzIyNyw3IEBAIHN0YXRpYyBlbnVtIHZvcDJfYWZi
Y19mb3JtYXQgdm9wMl9jb252ZXJ0X2FmYmNfZm9ybWF0KHUzMiBmb3JtYXQpCj4gPiAJY2FzZSBE
Uk1fRk9STUFUX0FSR0IyMTAxMDEwOgo+ID4gCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoK
PiA+IAljYXNlIERSTV9GT1JNQVRfQUJHUjIxMDEwMTA6Cj4gPisJY2FzZSBEUk1fRk9STUFUX1ZV
WTEwMTAxMDoKPiA+IAkJcmV0dXJuIFZPUDJfQUZCQ19GTVRfQVJHQjIxMDEwMTA7Cj4gPiAJY2Fz
ZSBEUk1fRk9STUFUX1hSR0I4ODg4Ogo+ID4gCWNhc2UgRFJNX0ZPUk1BVF9BUkdCODg4ODoKPiA+
QEAgLTIzMyw2ICsyMzYsNyBAQCBzdGF0aWMgZW51bSB2b3AyX2FmYmNfZm9ybWF0IHZvcDJfY29u
dmVydF9hZmJjX2Zvcm1hdCh1MzIgZm9ybWF0KQo+ID4gCQlyZXR1cm4gVk9QMl9BRkJDX0ZNVF9B
UkdCODg4ODsKPiA+IAljYXNlIERSTV9GT1JNQVRfUkdCODg4Ogo+ID4gCWNhc2UgRFJNX0ZPUk1B
VF9CR1I4ODg6Cj4gPisJY2FzZSBEUk1fRk9STUFUX1ZVWTg4ODoKPiAKPiBIb3cgZGlkIHlvdSB0
ZXN0IHRoaXMgZm9ybWF0PyBJdCBzZWVtcyB0b29scyBsaWtlIG1vZGV0ZXN0IGRvbuKAmXQgc3Vw
cG9ydCB0ZXN0aW5nIHRoaXMgcGF0dGVybi4KPiAKCkhpIEFuZHksCgp1c2luZyB0aGUgcmVzdCBv
ZiB0aGlzIHNlcmllcywgd2hpY2ggaW1wbGVtZW50cyB0aGUgImNvbG9yIGZvcm1hdCIKRFJNIHBy
b3BlcnR5LCBhbmQgdGhlIGNvcnJlc3BvbmRpbmcgd2VzdG9uIE1SIHRoYXQgbWFrZXMgdXNlIG9m
IGl0WzFdLgoKSSBjcmVhdGUgYSB+Ly5jb25maWcvd2VzdG9uLmluaSB3aXRoIHRoZSBmb2xsb3dp
bmcgY29udGVudHM6CgogICAgW291dHB1dF0KICAgIG5hbWU9SERNSS1BLTEKICAgIGNvbG9yLWZv
cm1hdD15dXY0NDQKClRoaXMgd2lsbCBtYWtlIFdlc3RvbiB0cnkgdG8gc2V0IHRoZSBvdXRwdXQg
Zm9ybWF0IHRvIDEwLWJpdCBZVVY0NDQuIFRvCmxpbWl0IGl0IHRvIDgtYml0LCB5b3UgY2FuIGFk
ZCBgbWF4LWJwYz04YC4gVGhlIG1vbml0b3IncyBFRElEIG5lZWRzIHRvCnJlcG9ydCBZVVY0NDQg
c3VwcG9ydCwgb3RoZXJ3aXNlIHRoYXQgV2VzdG9uIHZlcnNpb24gd29uJ3QgbGV0IHlvdSBzZXQK
dGhpcyBwcm9wZXJ0eS4KCkxpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy93YXls
YW5kL3dlc3Rvbi8tL21lcmdlX3JlcXVlc3RzLzE4NTkgWzFdCgpLaW5kIHJlZ2FyZHMsCk5pY29s
YXMgRnJhdHRhcm9saQoKPiAKPiAKPiA+IAkJcmV0dXJuIFZPUDJfQUZCQ19GTVRfUkdCODg4Owo+
ID4gCWNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6Cj4gPiAJY2FzZSBEUk1fRk9STUFUX0JHUjU2NToK
PiA+QEAgLTI3MCw2ICsyNzQsMTkgQEAgc3RhdGljIGJvb2wgdm9wMl93aW5fcmJfc3dhcCh1MzIg
Zm9ybWF0KQo+ID4gCX0KPiA+IH0KPiA+IAo+ID4rc3RhdGljIGJvb2wgdm9wMl9hZmJjX3JiX3N3
YXAodTMyIGZvcm1hdCkKPiA+K3sKPiA+Kwlzd2l0Y2ggKGZvcm1hdCkgewo+ID4rCWNhc2UgRFJN
X0ZPUk1BVF9OVjI0Ogo+ID4rCWNhc2UgRFJNX0ZPUk1BVF9OVjMwOgo+ID4rCWNhc2UgRFJNX0ZP
Uk1BVF9WVVk4ODg6Cj4gPisJY2FzZSBEUk1fRk9STUFUX1ZVWTEwMTAxMDoKPiA+KwkJcmV0dXJu
IHRydWU7Cj4gPisJZGVmYXVsdDoKPiA+KwkJcmV0dXJuIGZhbHNlOwo+ID4rCX0KPiA+K30KPiA+
Kwo+ID4gc3RhdGljIGJvb2wgdm9wMl9hZmJjX3V2X3N3YXAodTMyIGZvcm1hdCkKPiA+IHsKPiA+
IAlzd2l0Y2ggKGZvcm1hdCkgewo+ID5AQCAtMTI5MSw2ICsxMzA4LDcgQEAgc3RhdGljIHZvaWQg
dm9wMl9wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ID4gCQkg
LyogSXQncyBmb3IgaGVhZCBzdHJpZGUsIGVhY2ggaGVhZCBzaXplIGlzIDE2IGJ5dGUgKi8KPiA+
IAkJc3RyaWRlID0gQUxJR04oc3RyaWRlLCBibG9ja193KSAvIGJsb2NrX3cgKiAxNjsKPiA+IAo+
ID4rCQlyYl9zd2FwID0gdm9wMl9hZmJjX3JiX3N3YXAoZmItPmZvcm1hdC0+Zm9ybWF0KTsKPiA+
IAkJdXZfc3dhcCA9IHZvcDJfYWZiY191dl9zd2FwKGZiLT5mb3JtYXQtPmZvcm1hdCk7Cj4gPiAJ
CS8qCj4gPiAJCSAqIFRoaXMgaXMgYSB3b3JrYXJvdW5kIGZvciBjcmF6eSBJQyBkZXNpZ24sIENs
dXN0ZXIKPiA+QEAgLTEzMDgsNiArMTMyNiw3IEBAIHN0YXRpYyB2b2lkIHZvcDJfcGxhbmVfYXRv
bWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiA+IAkJCXZvcDJfd2luX3dyaXRl
KHdpbiwgVk9QMl9XSU5fQUZCQ19FTkFCTEUsIDEpOwo+ID4gCQl2b3AyX3dpbl93cml0ZSh3aW4s
IFZPUDJfV0lOX0FGQkNfRk9STUFULCBhZmJjX2Zvcm1hdCk7Cj4gPiAJCXZvcDJfd2luX3dyaXRl
KHdpbiwgVk9QMl9XSU5fQUZCQ19VVl9TV0FQLCB1dl9zd2FwKTsKPiA+KwkJdm9wMl93aW5fd3Jp
dGUod2luLCBWT1AyX1dJTl9BRkJDX1JCX1NXQVAsIHJiX3N3YXApOwo+ID4gCQkvKgo+ID4gCQkg
KiBPbiByazM1NjYvOCwgdGhpcyBiaXQgaXMgYXV0byBnYXRpbmcgZW5hYmxlLAo+ID4gCQkgKiBi
dXQgdGhpcyBmdW5jdGlvbiBpcyBub3Qgd29yayB3ZWxsIHNvIHdlIG5lZWQKPiA+Cj4gCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

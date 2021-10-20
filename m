Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E47BAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 14:07:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F29B600D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 14:07:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9F29B600D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DguYN4GqNNPlrGH7GpMCXTp2n18FAn7Ga4ZYzvsnAfY=; b=HxJBAVbgu6avYkbCI7BRtARUcw
	jS0X3irW91FwdR7HLMIoGei1DRNzzy/GY1SppPBUJ0NBzeXXlRE0a8ZIO1U9reyvabzRrND1p8aV0
	KHZZm7yyne+2VvIPCzjot2c347sru0wHJgpH/8RfC1GA5rsLtyz5yeIM/0SGQNT8iMXQfGLjrN7cD
	UF/c3aXFlw2/u9To78c35bM63eyduyLPM6DRZElByBAZfbV0tnW9t/rrIz8wG2hcmz+TYBda5UZMx
	lLaLXJN6N6PxUVv7rKDX8RpLPeJC0iUY4HZCEAR49WMZylCBFQfQj5ZOSxtWo/NxwAOnPZWvlDMS6
	F7orqfBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdCFQ-004hw4-KC; Wed, 20 Oct 2021 14:07:16 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdCFD-004htd-F6; Wed, 20 Oct 2021 14:07:05 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B2AF321A7E;
 Wed, 20 Oct 2021 14:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1634738819; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TacpC2ZKlyo4vcGubsH+1dX4BvMBRCBLB/BmT9oB4nI=;
 b=U/Jt70N2sLvo8USn3MeftEqGfbZ86sLPVSMoSTAoBJGUxgCqZRj+Vb6beLDKLx6e64Pe4D
 9YH1PoVKxC1VnurNbs6kJQpVGe808b9WpuTimiXXAGxs8kB63rcjeMWypHTYvC7QqAkMa+
 Uj1XlhrbuaEPWMVNe8oIiMA+SijZ1cg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1634738819;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TacpC2ZKlyo4vcGubsH+1dX4BvMBRCBLB/BmT9oB4nI=;
 b=BWTKex8w4YB5LAyVaM8TKqIEOTycyiHjmoeRCCJY5X9/jroHBC8NlrcbXCs0Nx6pwqM7sC
 6HxSTpoYVyXhDgBA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7029213B55;
 Wed, 20 Oct 2021 14:06:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id tB6WGYMicGG1EQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Wed, 20 Oct 2021 14:06:59 +0000
Message-ID: <b855b3fb-73bb-74e4-3bb7-b7ae59f135d0@suse.de>
Date: Wed, 20 Oct 2021 16:06:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: drm/rockchip: Implement mmap as GEM object function
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, hjc@rock-chips.com, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org
References: <20210624095502.8945-1-tzimmermann@suse.de>
 <7e0c55c3-604f-6948-fce2-a7c1df17a4a5@gmail.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <7e0c55c3-604f-6948-fce2-a7c1df17a4a5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_070703_853888_0BE12E0B 
X-CRM114-Status: GOOD (  22.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0222932649509936568=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0222932649509936568==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HNHYISfFaGBfS2hbOdpeSNCR"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------HNHYISfFaGBfS2hbOdpeSNCR
Content-Type: multipart/mixed; boundary="------------8Km82e0Q3tzemvaUk096IWZh";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Alex Bee <knaerzche@gmail.com>, hjc@rock-chips.com, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Message-ID: <b855b3fb-73bb-74e4-3bb7-b7ae59f135d0@suse.de>
Subject: Re: drm/rockchip: Implement mmap as GEM object function
References: <20210624095502.8945-1-tzimmermann@suse.de>
 <7e0c55c3-604f-6948-fce2-a7c1df17a4a5@gmail.com>
In-Reply-To: <7e0c55c3-604f-6948-fce2-a7c1df17a4a5@gmail.com>

--------------8Km82e0Q3tzemvaUk096IWZh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTkuMTAuMjEgdW0gMTY6MDIgc2NocmllYiBBbGV4IEJlZToNCj4gDQo+IEFt
IDI0LjA2LjIxIHVtIDExOjU1IHNjaHJpZWIgVGhvbWFzIFppbW1lcm1hbm46DQo+PiBNb3Zp
bmcgdGhlIGRyaXZlci1zcGVjaWZpYyBtbWFwIGNvZGUgaW50byBhIEdFTSBvYmplY3QgZnVu
Y3Rpb24gYWxsb3dzDQo+PiBmb3IgdXNpbmcgRFJNIGhlbHBlcnMgZm9yIHZhcmlvdXMgbW1h
cCBjYWxsYmFja3MuDQo+Pg0KPj4gVGhlIHJlc3BlY3RpdmUgcm9ja2NoaXAgZnVuY3Rpb25z
IGFyZSBiZWluZyByZW1vdmVkLiBUaGUgZmlsZV9vcGVyYXRpb25zDQo+PiBzdHJ1Y3R1cmUg
Zm9wcyBpcyBub3cgYmVpbmcgY3JlYXRlZCBieSB0aGUgaGVscGVyIG1hY3JvDQo+PiBERUZJ
TkVfRFJNX0dFTV9GT1BTKCkuDQo+IA0KPiBBbHNvDQo+IA0KPiAgwqDCoMKgIFRlc3RlZC1i
eTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+DQo+IA0KPiBvbiBSSzMxODgvUksz
MDY2LCBpLmUuIG9uIFNvQ3Mgdy9vIElPTU1VIGZvciB2b3AuDQo+IA0KPiBDb3VsZCBzb21l
b25lIHBpY2sgdGhpcyB1cCBmb3IgcmV2aWV3L21lcmdpbmc/DQoNClllcywgcGxlYXNlISBJ
J3ZlIGJlZW4gd2FpdGluZyBmb3IgbW9udGhzLiBBbmQgdGhlcmUgYXJlIG9ubHkgMiBvciAz
IA0KZHJpdmVycycgbW1hcCBmdW5jdGlvbnMgbGVmdCB0byBjb252ZXJ0Lg0KDQpCZXN0IHJl
Z2FyZHMNClRob21hcw0KDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBBbGV4Lg0KPiANCj4+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0K
Pj4gVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPg0KPj4gLS0t
DQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jwqDC
oCB8IDEzICstLS0tLQ0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9mYmRldi5jIHzCoCAzICstDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jwqDCoCB8IDQ0ICsrKysrLS0tLS0tLS0tLS0tLS0NCj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmjCoMKgIHzCoCA3
IC0tLQ0KPj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA1MiBkZWxl
dGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyANCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9kcnYuYw0KPj4gaW5kZXggYjczMGI4ZDVkOTQ5Li4yZTNhYjU3M2E4MTcg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2Rydi5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2Rydi5jDQo+PiBAQCAtMjA4LDE2ICsyMDgsNyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9k
cm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikNCj4+IMKgwqDCoMKgwqAgZHJtX2Rldl9w
dXQoZHJtX2Rldik7DQo+PiDCoCB9DQo+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29w
ZXJhdGlvbnMgcm9ja2NoaXBfZHJtX2RyaXZlcl9mb3BzID0gew0KPj4gLcKgwqDCoCAub3du
ZXIgPSBUSElTX01PRFVMRSwNCj4+IC3CoMKgwqAgLm9wZW4gPSBkcm1fb3BlbiwNCj4+IC3C
oMKgwqAgLm1tYXAgPSByb2NrY2hpcF9nZW1fbW1hcCwNCj4+IC3CoMKgwqAgLnBvbGwgPSBk
cm1fcG9sbCwNCj4+IC3CoMKgwqAgLnJlYWQgPSBkcm1fcmVhZCwNCj4+IC3CoMKgwqAgLnVu
bG9ja2VkX2lvY3RsID0gZHJtX2lvY3RsLA0KPj4gLcKgwqDCoCAuY29tcGF0X2lvY3RsID0g
ZHJtX2NvbXBhdF9pb2N0bCwNCj4+IC3CoMKgwqAgLnJlbGVhc2UgPSBkcm1fcmVsZWFzZSwN
Cj4+IC19Ow0KPj4gK0RFRklORV9EUk1fR0VNX0ZPUFMocm9ja2NoaXBfZHJtX2RyaXZlcl9m
b3BzKTsNCj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2RyaXZlciByb2NrY2hpcF9k
cm1fZHJpdmVyID0gew0KPj4gwqDCoMKgwqDCoCAuZHJpdmVyX2ZlYXR1cmVzwqDCoMKgID0g
RFJJVkVSX01PREVTRVQgfCBEUklWRVJfR0VNIHwgRFJJVkVSX0FUT01JQywNCj4+IEBAIC0y
MjYsNyArMjE3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyIHJvY2tjaGlw
X2RybV9kcml2ZXIgDQo+PiA9IHsNCj4+IMKgwqDCoMKgwqAgLnByaW1lX2hhbmRsZV90b19m
ZMKgwqDCoCA9IGRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2ZkLA0KPj4gwqDCoMKgwqDCoCAu
cHJpbWVfZmRfdG9faGFuZGxlwqDCoMKgID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUs
DQo+PiDCoMKgwqDCoMKgIC5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlwqDCoMKgID0gcm9j
a2NoaXBfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSwNCj4+IC3CoMKgwqAgLmdlbV9wcmlt
ZV9tbWFwwqDCoMKgwqDCoMKgwqAgPSByb2NrY2hpcF9nZW1fbW1hcF9idWYsDQo+PiArwqDC
oMKgIC5nZW1fcHJpbWVfbW1hcMKgwqDCoMKgwqDCoMKgID0gZHJtX2dlbV9wcmltZV9tbWFw
LA0KPj4gwqDCoMKgwqDCoCAuZm9wc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAmcm9ja2No
aXBfZHJtX2RyaXZlcl9mb3BzLA0KPj4gwqDCoMKgwqDCoCAubmFtZcKgwqDCoCA9IERSSVZF
Ul9OQU1FLA0KPj4gwqDCoMKgwqDCoCAuZGVzY8KgwqDCoCA9IERSSVZFUl9ERVNDLA0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJk
ZXYuYyANCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYmRl
di5jDQo+PiBpbmRleCAyZmRjNDU1YzRhZDcuLmQ4NDE4ZGQzOWQwZSAxMDA2NDQNCj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYw0KPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYmRldi5jDQo+
PiBAQCAtNyw2ICs3LDcgQEANCj4+IMKgICNpbmNsdWRlIDxkcm0vZHJtLmg+DQo+PiDCoCAj
aW5jbHVkZSA8ZHJtL2RybV9mYl9oZWxwZXIuaD4NCj4+IMKgICNpbmNsdWRlIDxkcm0vZHJt
X2ZvdXJjYy5oPg0KPj4gKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW1lLmg+DQo+PiDCoCAjaW5j
bHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4NCj4+IMKgICNpbmNsdWRlICJyb2NrY2hp
cF9kcm1fZHJ2LmgiDQo+PiBAQCAtMjQsNyArMjUsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlw
X2ZiZGV2X21tYXAoc3RydWN0IGZiX2luZm8gKmluZm8sDQo+PiDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5wYXI7DQo+PiDCoMKgwqDCoMKgIHN0
cnVjdCByb2NrY2hpcF9kcm1fcHJpdmF0ZSAqcHJpdmF0ZSA9IHRvX2RybV9wcml2YXRlKGhl
bHBlcik7DQo+PiAtwqDCoMKgIHJldHVybiByb2NrY2hpcF9nZW1fbW1hcF9idWYocHJpdmF0
ZS0+ZmJkZXZfYm8sIHZtYSk7DQo+PiArwqDCoMKgIHJldHVybiBkcm1fZ2VtX3ByaW1lX21t
YXAocHJpdmF0ZS0+ZmJkZXZfYm8sIHZtYSk7DQo+PiDCoCB9DQo+PiDCoCBzdGF0aWMgY29u
c3Qgc3RydWN0IGZiX29wcyByb2NrY2hpcF9kcm1fZmJkZXZfb3BzID0gew0KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgDQo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMNCj4+IGlu
ZGV4IDc5NzFmNTc0MzZkZC4uNjNlYjczYjYyNGFhIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYw0KPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYw0KPj4gQEAgLTI0MCwxMiAr
MjQwLDIyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2dlbV9vYmplY3RfbW1hcChzdHJ1
Y3QgDQo+PiBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPj4gwqDCoMKgwqDCoCBpbnQgcmV0Ow0K
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqID0gdG9f
cm9ja2NoaXBfb2JqKG9iaik7DQo+PiArwqDCoMKgIC8qDQo+PiArwqDCoMKgwqAgKiBTZXQg
dm1fcGdvZmYgKHVzZWQgYXMgYSBmYWtlIGJ1ZmZlciBvZmZzZXQgYnkgRFJNKSB0byAwIGFu
ZCANCj4+IG1hcCB0aGUNCj4+ICvCoMKgwqDCoCAqIHdob2xlIGJ1ZmZlciBmcm9tIHRoZSBz
dGFydC4NCj4+ICvCoMKgwqDCoCAqLw0KPj4gK8KgwqDCoCB2bWEtPnZtX3Bnb2ZmID0gMDsN
Cj4+ICsNCj4+IMKgwqDCoMKgwqAgLyoNCj4+IMKgwqDCoMKgwqDCoCAqIFdlIGFsbG9jYXRl
ZCBhIHN0cnVjdCBwYWdlIHRhYmxlIGZvciBya19vYmosIHNvIGNsZWFyDQo+PiDCoMKgwqDC
oMKgwqAgKiBWTV9QRk5NQVAgZmxhZyB0aGF0IHdhcyBzZXQgYnkgDQo+PiBkcm1fZ2VtX21t
YXBfb2JqKCkvZHJtX2dlbV9tbWFwKCkuDQo+PiDCoMKgwqDCoMKgwqAgKi8NCj4+ICvCoMKg
wqAgdm1hLT52bV9mbGFncyB8PSBWTV9JTyB8IFZNX0RPTlRFWFBBTkQgfCBWTV9ET05URFVN
UDsNCj4+IMKgwqDCoMKgwqAgdm1hLT52bV9mbGFncyAmPSB+Vk1fUEZOTUFQOw0KPj4gK8Kg
wqDCoCB2bWEtPnZtX3BhZ2VfcHJvdCA9IA0KPj4gcGdwcm90X3dyaXRlY29tYmluZSh2bV9n
ZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3MpKTsNCj4+ICvCoMKgwqAgdm1hLT52bV9wYWdl
X3Byb3QgPSBwZ3Byb3RfZGVjcnlwdGVkKHZtYS0+dm1fcGFnZV9wcm90KTsNCj4+ICsNCj4+
IMKgwqDCoMKgwqAgaWYgKHJrX29iai0+cGFnZXMpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0ID0gcm9ja2NoaXBfZHJtX2dlbV9vYmplY3RfbW1hcF9pb21tdShvYmosIHZtYSk7DQo+
PiDCoMKgwqDCoMKgIGVsc2UNCj4+IEBAIC0yNTcsMzkgKzI2Nyw2IEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfZHJtX2dlbV9vYmplY3RfbW1hcChzdHJ1Y3QgDQo+PiBkcm1fZ2VtX29iamVj
dCAqb2JqLA0KPj4gwqDCoMKgwqDCoCByZXR1cm4gcmV0Ow0KPj4gwqAgfQ0KPj4gLWludCBy
b2NrY2hpcF9nZW1fbW1hcF9idWYoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosDQo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEp
DQo+PiAtew0KPj4gLcKgwqDCoCBpbnQgcmV0Ow0KPj4gLQ0KPj4gLcKgwqDCoCByZXQgPSBk
cm1fZ2VtX21tYXBfb2JqKG9iaiwgb2JqLT5zaXplLCB2bWEpOw0KPj4gLcKgwqDCoCBpZiAo
cmV0KQ0KPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7DQo+PiAtDQo+PiAtwqDCoMKg
IHJldHVybiByb2NrY2hpcF9kcm1fZ2VtX29iamVjdF9tbWFwKG9iaiwgdm1hKTsNCj4+IC19
DQo+PiAtDQo+PiAtLyogZHJtIGRyaXZlciBtbWFwIGZpbGUgb3BlcmF0aW9ucyAqLw0KPj4g
LWludCByb2NrY2hpcF9nZW1fbW1hcChzdHJ1Y3QgZmlsZSAqZmlscCwgc3RydWN0IHZtX2Fy
ZWFfc3RydWN0ICp2bWEpDQo+PiAtew0KPj4gLcKgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iajsNCj4+IC3CoMKgwqAgaW50IHJldDsNCj4+IC0NCj4+IC3CoMKgwqAgcmV0ID0g
ZHJtX2dlbV9tbWFwKGZpbHAsIHZtYSk7DQo+PiAtwqDCoMKgIGlmIChyZXQpDQo+PiAtwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4+IC0NCj4+IC3CoMKgwqAgLyoNCj4+IC3CoMKg
wqDCoCAqIFNldCB2bV9wZ29mZiAodXNlZCBhcyBhIGZha2UgYnVmZmVyIG9mZnNldCBieSBE
Uk0pIHRvIDAgYW5kIA0KPj4gbWFwIHRoZQ0KPj4gLcKgwqDCoMKgICogd2hvbGUgYnVmZmVy
IGZyb20gdGhlIHN0YXJ0Lg0KPj4gLcKgwqDCoMKgICovDQo+PiAtwqDCoMKgIHZtYS0+dm1f
cGdvZmYgPSAwOw0KPj4gLQ0KPj4gLcKgwqDCoCBvYmogPSB2bWEtPnZtX3ByaXZhdGVfZGF0
YTsNCj4+IC0NCj4+IC3CoMKgwqAgcmV0dXJuIHJvY2tjaGlwX2RybV9nZW1fb2JqZWN0X21t
YXAob2JqLCB2bWEpOw0KPj4gLX0NCj4+IC0NCj4+IMKgIHN0YXRpYyB2b2lkIHJvY2tjaGlw
X2dlbV9yZWxlYXNlX29iamVjdChzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCANCj4+ICpy
a19vYmopDQo+PiDCoCB7DQo+PiDCoMKgwqDCoMKgIGRybV9nZW1fb2JqZWN0X3JlbGVhc2Uo
JnJrX29iai0+YmFzZSk7DQo+PiBAQCAtMzAxLDYgKzI3OCw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3RfZnVuY3MgDQo+PiByb2NrY2hpcF9nZW1fb2JqZWN0X2Z1
bmNzID0gew0KPj4gwqDCoMKgwqDCoCAuZ2V0X3NnX3RhYmxlID0gcm9ja2NoaXBfZ2VtX3By
aW1lX2dldF9zZ190YWJsZSwNCj4+IMKgwqDCoMKgwqAgLnZtYXAgPSByb2NrY2hpcF9nZW1f
cHJpbWVfdm1hcCwNCj4+IMKgwqDCoMKgwqAgLnZ1bm1hcMKgwqDCoCA9IHJvY2tjaGlwX2dl
bV9wcmltZV92dW5tYXAsDQo+PiArwqDCoMKgIC5tbWFwID0gcm9ja2NoaXBfZHJtX2dlbV9v
YmplY3RfbW1hcCwNCj4+IMKgwqDCoMKgwqAgLnZtX29wcyA9ICZkcm1fZ2VtX2NtYV92bV9v
cHMsDQo+PiDCoCB9Ow0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fZ2VtLmggDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZ2VtLmgNCj4+IGluZGV4IDVhNzBhNTZjZDQwNi4uNDdjMTg2MWVlY2Uw
IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9nZW0uaA0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9nZW0uaA0KPj4gQEAgLTM0LDEzICszNCw2IEBAIHJvY2tjaGlwX2dlbV9wcmltZV9pbXBv
cnRfc2dfdGFibGUoc3RydWN0IA0KPj4gZHJtX2RldmljZSAqZGV2LA0KPj4gwqAgaW50IHJv
Y2tjaGlwX2dlbV9wcmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1
Y3QgDQo+PiBkbWFfYnVmX21hcCAqbWFwKTsNCj4+IMKgIHZvaWQgcm9ja2NoaXBfZ2VtX3By
aW1lX3Z1bm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IA0KPj4gZG1h
X2J1Zl9tYXAgKm1hcCk7DQo+PiAtLyogZHJtIGRyaXZlciBtbWFwIGZpbGUgb3BlcmF0aW9u
cyAqLw0KPj4gLWludCByb2NrY2hpcF9nZW1fbW1hcChzdHJ1Y3QgZmlsZSAqZmlscCwgc3Ry
dWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOw0KPj4gLQ0KPj4gLS8qIG1tYXAgYSBnZW0gb2Jq
ZWN0IHRvIHVzZXJzcGFjZS4gKi8NCj4+IC1pbnQgcm9ja2NoaXBfZ2VtX21tYXBfYnVmKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsNCj4+IC0NCj4+IMKgIHN0cnVjdCBy
b2NrY2hpcF9nZW1fb2JqZWN0ICoNCj4+IMKgwqDCoMKgwqAgcm9ja2NoaXBfZ2VtX2NyZWF0
ZV9vYmplY3Qoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgdW5zaWduZWQgaW50IA0KPj4gc2l6
ZSwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBh
bGxvY19rbWFwKTsNCg0KLS0gDQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVy
IERldmVsb3Blcg0KU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpNYXhm
ZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCihIUkIgMzY4MDksIEFHIE7D
vHJuYmVyZykNCkdlc2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVuZMO2cmZmZXINCg==

--------------8Km82e0Q3tzemvaUk096IWZh--

--------------HNHYISfFaGBfS2hbOdpeSNCR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmFwIoIFAwAAAAAACgkQlh/E3EQov+Bq
IhAAvXeEFgO7sTunc9iEU4BDOhmnA2ByQ0N0lFJdV6ExMcUBb+Fs1I7OwYOx7/9zLrV+FWJOAkik
Y4seSryEGjUymD9NFyXeVNYWqfYNgVmQ09rROOL5PZ6hQ2uLrhVA4m3RoiMyLulK1y7sOe08HCKh
6sfstOYAkJbP5IQ8yWV+F9tzut5xo4HdxGvgPijEqJSInyrmcncOgnlFmj9FlkUv1rWLtIktLG+h
orJbsh191DsxLiMC9qQDNMl3seLxmuzQ4Yy+VYqgGV2LAlIofrZctJWOPoZ8frEe4kULYGNKwITN
3vh3ADTHOS64iSoOZjAAv8eG/FV90z+A0dS2f1AH4MymtAPRelCr6FYCxNrtzj1hU7A7tJGFVzEb
w8TNkKSJaOwnrZWqruDRZldJrIx1MZOZ3afMz6vNCYL83E4eqM1PSKDfGWTJ2xqDGhIvGlIqqwmh
+NY2ikZB6Qd1m3yPT9Vox1pWWSmJr+6lF3VBLGqksTdQPCHScaql1sp9Xl52HfkoV7dfiFrt9avu
mYvlYYWBOJnAjnzbvrg6pFRcYVxlo2VJTUkwb9mzRNvXWG2WlZWdbamNITqFzGg7vMzryecu0RVN
RMoU6IDd1nC4zgmRhgXEi3uD7ZMGsZlxC3yyMerHFM8o9hRRXGm0pK4AsbI6md+Q+YeQpQUFhonH
wHY=
=/GFx
-----END PGP SIGNATURE-----

--------------HNHYISfFaGBfS2hbOdpeSNCR--


--===============0222932649509936568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0222932649509936568==--


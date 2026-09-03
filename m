Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC17DC624D7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHI35z49PmbE0rOxX2nHE6hngp3uo1uDzzWrWEO1Cfs=; b=L0okb70aOzr4uK
	FBFFiU0K80UbMLYbIFynYMuA7hSgSkSbrqj9es3MjOoeykE1TTg8f6At8SVlNJJd0qmjsCZzcNBAL
	LmovFKw5DR3/k8tSDZJnHwZWAlknQ4JemQSPl9FSZJcATcTI6xXLFfkmaHaurPvVlnGkKxwov9LmC
	//eZfr7/OcLbRo0mGYNqHa2Uz3bvvVBP7BosimagPwJURaV1gBasGrDfk6zZplxYSSMqEQ9j+kS5p
	T9RBEFdiR4X2CvSxa8SwbnkBuEfsVB1PBCSCahq6KXlk6t6EJVD5qxUSyj4D/nMBUlwACVultvqYA
	wVP6KUx/4vMpMR+Q33mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EIz-00000000ZoE-1l7h;
	Thu, 03 Sep 2026 20:45:05 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EIw-00000000ZmA-44n2
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 20:45:04 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6a615ab11b5so25724a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 13:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788468300; x=1789073100; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=X3guYpEVe0jojtjWvcu73KPb7DZ8REKqlzshck7w5p0=;
        b=rLh2n31A1pRphJCMXf43KMRoepA8ooAidn/Pl2fXMGKyiO9jsc7gWgGJjqMnBUFgsB
         AiLDhrHVlp8W+J/9C/7FiDJyF6O8FyVoCutdRxIL+mHwmobUVUaKNkMupxc4EFzTC6Z2
         6hG34KymSkI0VCqcKWeQ/9OGenWgm4UyyrMcpXcISgW8ceLrfNLrQGDwHMVfryW0U733
         YVIurqMT82wZy834FMdxssz6o3z4I6ggrdY4/MvqURHaBF7VB9DsmxD6HBuGiCtaIKQg
         Bv6f0eD3+VrYj+6wS31mXiSAW1X3eiokszAP6YwqMHwsgyrl9cDfvlE8GZtwBS1rVrPd
         cEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788468300; x=1789073100;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X3guYpEVe0jojtjWvcu73KPb7DZ8REKqlzshck7w5p0=;
        b=On+cKKxtbZwXF2AUA59lrb2P80cySykvbcgcTKXju1DuvuBmPk8L9CWsZCGxqty0EL
         wMgy1bm6L524U2xYCrYrmiwONj8ODOI39JIMrwOgs9xSsG9wUNyKHrrCelk60+YJqkDY
         Cvt/GMUVcswaJUAUQZP/n/vOLMN3aDeu4cTGTeq4eBw5JDKF3v3NVCBAA2nYl2snYGER
         QyMikbgRmnOvzI9RC3x8DxkiVJZsHAmwnMywQ2f9V+OAP6r9bQQLy76xndm/vYvUuN8v
         2CJNdAz8FazbsWxauyH6awUDNKKznc1823pGlr8Vv/WDArR0CocnDIrwhHZlxvBUb17/
         1hLg==
X-Forwarded-Encrypted: i=1; AKwUvByR2IwDjvfFKHU98upCbTnk5DSlBqKVEZjWM6n0LE/6HWT5t/Wsn3YkmdZcJl/sAQzZWbFDhMFACpdnRsZPEg==@lists.infradead.org
X-Gm-Message-State: AFuF++kIk51FHwQiFWj3O/NptlqQr2oCEP4iIa0bUMjhU3YJc+1vt8kQ
	1RuujmznX8IZ4lxt9y4GwGFA8y6hGq+bAGqj97ECLGC1LVqr2cBb1LOJ
X-Gm-Gg: AYBFou1xApOWuIE26/OIE6jX/rEKOoMeqlTaRPW3elg6JZm7JOXeD3AkUgjlsJcjkpF
	h+qOg68b8PLZ5Ouv8mn1vf7jJWhbqeIA5vsa42au1+q6PIN7mYeOBXeAztwwBPI80vgGBwqmgnJ
	EKaL66dTvZCcDO92sifmhLWBBkD/foc2vSvOT1bY78nmr0t5KB20XaORUsDEN/Gqky6DLQ901EV
	XRFXTJ7olBGzgrXIbuq/VkIRgGNxEecHFnJO+QVmoQByUAHolbQ8QHP1p2V/Gv96ipdtlG+RKvJ
	2D6+5z3BsxW/sg4UK5jfapkwgGCheS1ynZSVlfT7mzihqV+FiEsDBp4Vq4q7ymhVLelLON/HqVB
	/85onf13W4MUg+CbCbJWNtY3hknjLh0hLcJRWpXP8xHZHvUQbWFlgBQQtRAsVKx140ssQCfxnu/
	VXfHKDp7Gyyz5Ml1RAoSr5/7TagGYY1MOL+FW2opZYkgsweyjjRWkrRpL8LVrDznzIuYgm8quT5
	OJY8lF3o4fn+wub64ndyrrolDtxRgJyJNlGCA==
X-Received: by 2002:a05:6402:1d48:b0:6a0:d411:930d with SMTP id 4fb4d7f45d1cf-6a7e8d9b328mr180296a12.2.1788468300064;
        Thu, 03 Sep 2026 13:45:00 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a7e68a6a1dsm233448a12.7.2026.09.03.13.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 13:44:59 -0700 (PDT)
Message-ID: <afde7cfa-bd1e-40d2-9315-d3d88abb7606@gmail.com>
Date: Thu, 3 Sep 2026 22:44:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/rockchip: rk3066_hdmi: convert to
 devm_drm_bridge_alloc() API
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?H=C3=BCseyin_BIYIK?= <boogiepop@gmx.com>
References: <20260824-drm-v2-1-7f9273c6020b@gmail.com>
 <2814844.6tgchFWduM@diego>
Content-Language: en-US, ar-EG
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <2814844.6tgchFWduM@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_134503_032500_8B9857F8 
X-CRM114-Status: GOOD (  20.57  )
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

SGksCgpPbiA5LzMvMjYgMTc6MTIsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIE1vbnRhZywg
MjQuIEF1Z3VzdCAyMDI2LCAxMjoyMToxOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIEpvaGFuIEpvbmtlciB2aWEgQjQgUmVsYXk6Cj4+IEZyb206IEjDvHNleWluIEJJWUlL
IDxib29naWVwb3BAZ214LmNvbT4KPj4KPj4gVGhlIGZ1bmN0aW9uIGRldm1fZHJtX2JyaWRnZV9h
bGxvYygpIGlzIHRoZSBuZXcgQVBJIGZvciBhbGxvY2F0aW5nIERSTSBicmlkZ2VzLgo+PiBUaGlz
IGNvbnZlcnNpb24gd2FzIG1pc3NlZCBkdXJpbmcgdGhlIGluaXRpYWwgY29udmVyc2lvbiBvZiBh
bGwgYnJpZGdlcyB0bwo+PiB0aGUgbmV3IEFQSS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSMO8c2V5
aW4gQklZSUsgPGJvb2dpZXBvcEBnbXguY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25r
ZXIgPGpieDYyNDRAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yazMwNjZfaGRtaS5jIHwgOCArKysrLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2
Nl9oZG1pLmMKPj4gaW5kZXggZjI4ZDZhODgzZTA5Li4zOWM2NWVlMDdjYWEgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCj4+IEBAIC03MDMsNyArNzAzLDYgQEAg
cmszMDY2X2hkbWlfcmVnaXN0ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc3RydWN0IHJrMzA2
Nl9oZG1pICpoZG1pKQo+PiAgCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywgTlVMTCk7Cj4+ICAK
Cj4+ICAJaGRtaS0+YnJpZGdlLmRyaXZlcl9wcml2YXRlID0gaGRtaTsKCkNhbiB0aGlzIGJlIHJl
bW92ZWQ/ClNlZSBsaW5rL2NvbW1lbnQgYmVsb3cuCgoKPj4gLQloZG1pLT5icmlkZ2UuZnVuY3Mg
PSAmcmszMDY2X2hkbWlfYnJpZGdlX2Z1bmNzOwo+PiAgCWhkbWktPmJyaWRnZS5vcHMgPSBEUk1f
QlJJREdFX09QX0RFVEVDVCB8Cj4+ICAJCQkgICBEUk1fQlJJREdFX09QX0VESUQgfAo+PiAgCQkJ
ICAgRFJNX0JSSURHRV9PUF9IRE1JIHwKPj4gQEAgLTc0Nyw5ICs3NDYsMTAgQEAgc3RhdGljIGlu
dCByazMwNjZfaGRtaV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFz
dGVyLAo+PiAgCWludCBpcnE7Cj4+ICAJaW50IHJldDsKPj4gIAo+PiAtCWhkbWkgPSBkZXZtX2t6
YWxsb2MoZGV2LCBzaXplb2YoKmhkbWkpLCBHRlBfS0VSTkVMKTsKPj4gLQlpZiAoIWhkbWkpCj4+
IC0JCXJldHVybiAtRU5PTUVNOwo+PiArCWhkbWkgPSBkZXZtX2RybV9icmlkZ2VfYWxsb2MoZGV2
LCBzdHJ1Y3QgcmszMDY2X2hkbWksIGJyaWRnZSwKPj4gKwkJCQkgICAgICZyazMwNjZfaGRtaV9i
cmlkZ2VfZnVuY3MpOwo+PiArCWlmIChJU19FUlIoaGRtaSkpCj4+ICsJCXJldHVybiBQVFJfRVJS
KGhkbWkpOwo+IAoKPiBJZiBJJ20gcmVhZGluZyB0aGluZ3MgY29ycmVjdGx5LCB0aGUgcGFydHMg
aW4gcmszMDY2X2hkbWlfcmVnaXN0ZXIgc2V0dGluZwo+IGhkbWktPmJyaWRnZS5kcml2ZXJfcHJp
dmF0ZSAoc2hvdWxkIHVzZSB0aGUgY29udGFpbmVyIGZpZWxkIG9mIHN0cnVjdAo+IGRybV9icmlk
Z2UgaW5zdGVhZCkgCgpUaGUgZHJpdmVyX3ByaXZhdGUgbGluZSB3YXMgYWRkZWQgd2l0aCB0aGlz
IHBhdGNoOgoKW1BBVENIXSBkcm0vcm9ja2NoaXA6IHJrMzA2Nl9oZG1pOiBzd2l0Y2ggdG8gZHJt
IGJyaWRnZQpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA0MjgxMDIzMDkuMTUwMTk4
Ni0xLWFuZHlzaHJrQDE2My5jb20vCgphbmQgaGRtaS0+YnJpZGdlLmZ1bmNzIGFyZSByZWR1bmRh
bnQgYnkgdGhpcyBjaGFuZ2U/CgpOb3QgcmVkdW5kYW50LCBqdXN0IGZ1bmNzIGFyZSBhdHRhY2hl
ZCBpbiBhIGNvbW1vbiBmdW5jdGlvbiBfX2Rldm1fZHJtX2JyaWRnZV9hbGxvYygpCgpodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ny4yLjIvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9k
cm1fYnJpZGdlLmMjTDM4MwoKdm9pZCAqX19kZXZtX2RybV9icmlkZ2VfYWxsb2Moc3RydWN0IGRl
dmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwgc2l6ZV90IG9mZnNldCwKCQkJICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9icmlkZ2VfZnVuY3MgKmZ1bmNzKQp7Cgl2b2lkICpjb250YWluZXI7CglzdHJ1Y3Qg
ZHJtX2JyaWRnZSAqYnJpZGdlOwoJaW50IGVycjsKCglpZiAoIWZ1bmNzKSB7CgkJZGV2X3dhcm4o
ZGV2LCAiTWlzc2luZyBmdW5jcyBwb2ludGVyXG4iKTsKCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKCX0KCgljb250YWluZXIgPSBremFsbG9jKHNpemUsIEdGUF9LRVJORUwpOwoJaWYgKCFjb250
YWluZXIpCgkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CgoJYnJpZGdlID0gY29udGFpbmVyICsg
b2Zmc2V0OwoJSU5JVF9MSVNUX0hFQUQoJmJyaWRnZS0+bGlzdCk7CglicmlkZ2UtPmNvbnRhaW5l
ciA9IGNvbnRhaW5lcjsKCWJyaWRnZS0+ZnVuY3MgPSBmdW5jczsKCWtyZWZfaW5pdCgmYnJpZGdl
LT5yZWZjb3VudCk7CgoJZXJyID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgZHJtX2Jy
aWRnZV9wdXRfdm9pZCwgYnJpZGdlKTsKCWlmIChlcnIpCgkJcmV0dXJuIEVSUl9QVFIoZXJyKTsK
CglyZXR1cm4gY29udGFpbmVyOwp9CkVYUE9SVF9TWU1CT0woX19kZXZtX2RybV9icmlkZ2VfYWxs
b2MpOwoKPT09PT09PT09PT0KCk90aGVyIGV4YW1wbGUgZnJvbSBzdGk6CgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvY2U5YzZhYTMtNTM3Mi00NjhmLWE0YmYtNWEyNjEyNTllNDU5QHNhbXN1
bmcuY29tLwoKPj4+PiBJdCBsb29rcyBsaWtlIHlvdSBkb24ndCBzZXQgYnJpZGdlLT5kcml2ZXJf
cHJpdmF0ZSBhbnltb3JlLiBJcyBpdCBvbiBwdXJwb3NlPwo+Pj4gVGhpcyBsb29rcyBjb3JyZWN0
IHRvIG1lLiBJbiBjdXJyZW50IGNvZGUsIGRyaXZlcl9wcml2YXRlIGlzIHVzZWQgdG8KPj4+IGhv
bGQgYSBwb2ludGVyIHRvIHRoZSBkcml2ZXIgcHJpdmF0ZSBzdHJ1Y3QgKHN0cnVjdAo+Pj4gYW5h
bG9naXhfZHBfZGV2aWNlKS4gV2l0aCBkZXZtX2RybV9icmlkZ2VfYWxsb2MoKSBjb250YWluZXJf
b2YoKSBpcyBub3cKPj4+IGVub3VnaCwgbm8gcG9pbnRlciBpcyBuZWVkZWQuIFdpdGggdGhlIHBh
dGNoIGFwcGxpZWQsIGRyaXZlcl9wcml2YXRlCj4+PiBiZWNvbWVzIHVudXNlZC4KPj4gVGhlbiB3
ZSBzaG91bGQgcmVtb3ZlIGl0IGZyb20gdGhlIHN0cnVjdHVyZSBpZiBpdCdzIHVudXNlZC4KCgpk
cm0vc3RpOiBoZG1pOiBjb252ZXJ0IHRvIGRldm1fZHJtX2JyaWRnZV9hbGxvYygpIEFQSQpodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0Lz9pZD1hYzQ1MzE0MjRkOTA3ZjM5ODNlOTE5YTdiZGEyYjkwZWEwY2VkZTRm
Cgo9PT09PT09PT09PT0KClRoaXMgc2VyaWUgd2FzIG1pc3NpbmcgYSBmZXcgYnJpZGdlcyB0b28g
bWFueS4KCmRybTogY29udmVydCBhbGwgYnJpZGdlcyB0byBkZXZtX2RybV9icmlkZ2VfYWxsb2Mo
KQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0ODIyOS8KCj09PT0K
ClBsZWFzZSBhZHZpc2Ugd2hhdCBjaGFuZ2VzIGFyZSBuZWVkZWQ/ClJLMzA2Nl9oZG1pIGlzIGJy
b2tlbiBzaW5jZSBzb21ld2hlcmUgMjAyNS0wNS4KCkpvaGFuCgoKPiAKPiAKPiBIZWlrbwo+IAo+
IAo+IAo+PiAgCj4+ICAJaGRtaS0+ZGV2ID0gZGV2Owo+PiAgCWhkbWktPmRybV9kZXYgPSBkcm07
Cj4+Cj4+IC0tLQo+PiBiYXNlLWNvbW1pdDogMjcwOWRkNWFlMzJmMDgyOGYzODYzMjdjNzZiYmE5
ZjM5ZjYzYTFjNgo+PiBjaGFuZ2UtaWQ6IDIwMjYwODI0LWRybS1lNDY4OWY2NWFiOGMKPj4KPj4g
QmVzdCByZWdhcmRzLAo+Pgo+IAo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

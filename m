Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56171C47E49
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 09:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A60RhRaBhApmJcvj13BEVTTaAAlHCWACrfa5uEpHoI=; b=QQwD3p4FRmVm4z
	Br9edtaOCppcIPZ8FCB4JfjtpG+66RWIkZ+GFG4bH4anD4gg8jhdRz4h3wOkho9ryQOvc/2ptwXjL
	3BrEBYN9mk4rYCh2lBaNuyM8Qcqufti4oXX5xY0pEHIVZmgeE3Q0muB3n/FB6mZx2Frzqxe87GzpS
	5LXg+Rh7SKBuLP+fW4TlOIGca2GzJh7wx9C4vqRBv/7xE95lgSBuBf3FnlYN+/9e/5hNqW3OUoQYB
	cJsrU4BAhoxYICZZgTEHr+9JYqC1Qvc3xSFZWysI3bTDuUl8F+X5YXiiM37spaTFHHAphVXE73WUP
	A7gvY1+bL4ACthXqpyLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSZkK-002INO-2D;
	Wed, 24 Jan 2024 09:40:36 +0000
Received: from forward501b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d501])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSZkG-002IKs-0V
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 09:40:35 +0000
Received: from mail-nwsmtp-smtp-production-main-81.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-81.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:5da3:0:640:8139:0])
	by forward501b.mail.yandex.net (Yandex) with ESMTP id 78C0861427;
	Wed, 24 Jan 2024 12:40:18 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-81.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id FeP8xM9oCSw0-tAQ2TBMr;
	Wed, 24 Jan 2024 12:40:17 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1706089217; bh=TdjvEzF9jVygdn01MqhB1dSKqKyYHG7CGfPsh6+QX2M=;
	h=In-Reply-To:Cc:References:To:From:Subject:Date:Message-ID;
	b=ke/H2ct2DrdVKkEyDm3aAFiHVVDIK/feQYkkT/8SVgxQg1moKmlyUvcuNmhXuJI+t
	 Fe16e9E98XOkpUr95bjahG9wBBir26dK38iIAI8tSnM+tDzf4zoA2/PfRq9wO8F0kK
	 +Mns/UIHdXHSiNKFjYaK4Eh67fbXchjAVxD30CYE=
Authentication-Results: mail-nwsmtp-smtp-production-main-81.myt.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <b03fc42e-653a-49b2-8835-6cfb7a7bb39e@yandex.com>
Date: Wed, 24 Jan 2024 10:40:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 kernel@pengutronix.de
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
 <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
 <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
 <5swqcqpc5zwa3bfhuoyjnymozyzy3lgurnbsurebybj2c7fck3@ycwk2ugo2ouf>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <5swqcqpc5zwa3bfhuoyjnymozyzy3lgurnbsurebybj2c7fck3@ycwk2ugo2ouf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_014032_742437_14A342C1 
X-CRM114-Status: GOOD (  20.16  )
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

Ck9uIDEvMjQvMjQgMDk6MjYsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEhlbGxvIEpvaGFu
LAo+Cj4gT24gU3VuLCBKYW4gMDcsIDIwMjQgYXQgMTE6MzA6MTRBTSArMDEwMCwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPj4gT24gMDcvMDEvMjAyNCAwMDoyNSwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4+PiBPbiBTYXQsIEphbiAwNiwgMjAyNCBhdCAxMDoyNToxMFBNICswMTAwLCBK
b2hhbiBKb25rZXIgd3JvdGU6Cj4+Pj4gT24gMS82LzI0IDE4OjEwLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+Pj4+PiBPbiAwNi8wMS8yMDI0IDE1OjI2LCBVd2UgS2xlaW5lLUvDtm5pZyB3
cm90ZToKPj4+Pj4+IFRoaXMgZml4ZXMgdGhlIGR0YnNfY2hlY2sgZXJyb3IKPj4+Pj4+Cj4+Pj4+
PiAJYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTA4LWVsZ2luLXIxLmR0YjogcHdtQDEw
MjgwMDMwOiAnaW50ZXJydXB0cycgZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOiAn
cGluY3RybC1bMC05XSsnCj4+Pj4+PiAJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy9wd20vcHdtLXJvY2tjaGlwLnlhbWwjCj4+Pj4+Pgo+Pj4+Pj4gaW4gc2V2
ZXJhbCBkZXZpY2UgdHJlZXMuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWlu
ZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPj4+Pj4gQWNrZWQtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPj4+
PiBOQUsKPj4+Pgo+Pj4+IFRoZXJlJ3MgYSByZWFzb24gd2h5IHRoaXMgaXNuJ3QgaW1wbGVtZW50
ZWQgYmVmb3JlOgo+Pj4+Cj4+Pj4gW1JGQyBQQVRDSCB2MSAxLzJdIGR0LWJpbmRpbmdzOiBwd206
IHJvY2tjaGlwOiBhZGQgaW50ZXJydXB0cyBwcm9wZXJ0eSA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvZWQzZGYyYzgtZmZiNS0xNzIzLTBlZDctM2EyNzIxOTcyODUyQGdt
YWlsLmNvbS8jcj4KPj4+Pgo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tj
aGlwL2VkM2RmMmM4LWZmYjUtMTcyMy0wZWQ3LTNhMjcyMTk3Mjg1MkBnbWFpbC5jb20vCj4+Pj4K
Pj4+PiBbUEFUQ0ggMS8xXSBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDogQWRkIGRlc2NyaXB0
aW9uIGZvciByazM1ODggPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIw
MjIwOTAxMTM1NTIzLjUyMTUxLTEtc2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbS8jcj4K
Pj4+Pgo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzY2YjViNjE2
LWFlOWYtYTFhYS1lMmI1LTQ1MGY1NzBjZmNkZEBnbWFpbC5jb20vCj4+Pj4KPj4+PiBbUEFUQ0gg
djEgMDMvMTFdIGR0LWJpbmRpbmdzOiBwd206IHJvY2tjaGlwOiBhZGQgcm9ja2NoaXAscmszMTI4
LXB3bSA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvZjVkZDBlZTQtZDk3
ZS1kODc4LWZmZGUtYzA2ZTliMjMzZTM4QGdtYWlsLmNvbS8+Cj4+Pj4KPj4+PiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC85NDZkOGFjMi02ZmYyLTA5M2EtYWQzYy1hYTc1
NWUwMGQxZGRAYXJtLmNvbS8KPj4+Pgo+Pj4+Cj4+Pj4gT24gaG93IHRvIGNvcnJlY3RseSBtb2Rl
bCB0aGUgRFQgd2l0aCBjb21tb24gaW50ZXJydXB0cyAsIFBXTSBhbmQgb25lIHNob3QgYXMgYSBz
b3J0IG9mIE1GRCBldGMgdGhlcmUncyBubyBjb25zZW5zdXMgeWV0Lgo+Pj4+Cj4+Pj4gTGVhZiBp
dCBhcyBpdCBpcyB0aWxsIHNvbWVvbmUgbWFkZSBhIHdvcmtpbmcgZHJpdmVyIGRlbW8sIHNvIHRo
YXQgdGhlIGNvZGVyIGlzIGZyZWUgdG8gbW9kZWwgYSBEVCBzb2x1dGlvbiB0aGF0IGZpdHMgdG8g
aGltL2hlci4KPj4+IEhhdmluZyB0aGUgd2FybmluZ3MgdW50aWwgdGhpcyBoYXBwZW5zIGlzIGJh
ZCB0aG91Z2guIElmIGRlc2NyaWJpbmcgdGhlCj4+PiBpcnFzIGluIHRoZSBzY2hlbWEgaXMgY29u
c2lkZXJlZCB3cm9uZywgd2Ugc2hvdWxkIHJlbW92ZSB0aGUgaW50ZXJydXB0cwo+Pj4gcHJvcGVy
dGllcyBmcm9tIHRoZSBkZXZpY2UgdHJlZSBzb3VyY2VzLgo+PiBJIHRoaW5rIHRoZSBwcmV2aW91
cyB0aHJlYWQgbWl4ZXMgYmluZGluZ3Mgd2l0aCBkcml2ZXIuIERvZXMgdGhlCj4+IGhhcmR3YXJl
IGhhdmUgaW50ZXJydXB0PyBZZXM/IEFkZCBpdCB0byB0aGUgYmluZGluZ3MuIE5vPyBEb24ndCBh
ZGQgaXQuCj4+Cj4+IEhvd2V2ZXIgSm9oYW4ncyByZXBseSBpcyBzYXlpbmcgc29tZXRoaW5nIGFi
b3V0IGRyaXZlciwgc28gaG93IGlzIGl0Cj4+IHJlbGF0ZWQ/Cj4gRm9sbG93aW5nIEtyenlzenRv
ZidzIGFyZ3VtZW50YXRpb24gSSdtIGluY2xpbmVkIHRvIGFwcGx5IHRoZSBwYXRjaAo+IGRlc3Bp
dGUgSm9oYW4ncyBvYmplY3Rpb24gYXMgdGhlIGlycXMgYXJlIGFscmVhZHkgZGVzY3JpYmVkIGlu
IHRoZQo+IGRldmljZSB0cmVlcyBhbmQgbm90IGhhdmluZyB0aGVtIGluIHRoZSBiaW5kaW5nIG9u
bHkgYWRkcyB3YXJuaW5ncyB0bwo+IHRoZSBkdCBjaGVja3MuClRoZSBpbnRlcnJ1cHRzIGFyZSBj
b21tb24gaW50ZXJydXB0cyBmb3IgYSBncm91cCBvZiA0IFBXTSBjaGFubmVscyEKClRoZSBuYW1l
IFBXTSBjaGFubmVscyBpcyBzb21ld2hhdCBjb25mdXNpbmcuCgpJdCBoYXMgdmFyaW91cyBtb2Rl
cyBub3QgcmVsYXRlZCB0byBQV00KCgpGcm9tIFJvY2tjaGlwIFJLMzM2OCBUUk0gVjIuMC5wZGY6
CgoKQ29udGludW91cyBNb2RlOgpObyBpbnRlcnJ1cHRzLgoKCk9uZS1zaG90IE1vZGU6CmFuIGlu
dGVycnVwdCBpcyBhc3NlcnRlZCB0byBpbmZvcm0gdGhhdCB0aGUgb3BlcmF0aW9uIGhhcyBiZWVu
IGZpbmlzaGVkCgpSZWZlcmVuY2UgbW9kZToKCmFzc2VydHMgYW4gaW50ZXJydXB0IHdoZW4gdGhl
IHBvbGFyaXR5IG9mIHRoZSBpbnB1dCB3YXZlZm9ybSBjaGFuZ2VzLgoKQWxzbyBJUgoKPT09CgpQ
V01fSU5UU1RTMHgwMDA0MCBXMHgwMDAwMDAwMCBJbnRlcnJ1cHQgU3RhdHVzIFJlZ2lzdGVyClBX
TV9JTlRfRU4weDAwMDQ0IFcweDAwMDAwMDAwIEludGVycnVwdCBFbmFibGUgUmVnaXN0ZXIKUFdN
X0ZJRk9fQ1RSTDB4MDAwNTAgVzB4MDAwMDAwMDAKUFdNIENoYW5uZWwgMyBGSUZPIE1vZGUgQ29u
dHJvbCBSZWdpc3RlcgpQV01fRklGT19JTlRTVFMweDAwMDU0IFcweDAwMDAwMDAwIEZJRk8gSW50
ZXJydXB0cyBTdGF0dXMgUmVnaXN0ZXIKCgo9PT0KwqDCoMKgIHB3bTA6IHB3bUBmZjY4MDAwMCB7
CsKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzY4LXB3bSIsICJyb2Nr
Y2hpcCxyazMyODgtcHdtIjsKwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweGZmNjgwMDAwIDB4
MCAweDEwPjsKwqDCoMKgIH07CgrCoMKgwqAgcHdtMTogcHdtQGZmNjgwMDEwIHsKwqDCoMKgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzNjgtcHdtIiwgInJvY2tjaGlwLHJrMzI4
OC1wd20iOwrCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwIDB4ZmY2ODAwMTAgMHgwIDB4MTA+OwrC
oMKgwqAgfTsKCsKgwqDCoCBwd20yOiBwd21AZmY2ODAwMjAgewrCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM2OC1wd20iLCAicm9ja2NoaXAscmszMjg4LXB3bSI7CsKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwweDAgMHhmZjY4MDAyMCAweDAgMHgxMD47CsKgwqDCoCB9OwoK
wqDCoMKgIHB3bTM6IHB3bUBmZjY4MDAzMCB7CsKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszMzY4LXB3bSIsICJyb2NrY2hpcCxyazMyODgtcHdtIjsKwqDCoMKgwqDCoMKg
wqAgcmVnID0gPDB4MCAweGZmNjgwMDMwIDB4MCAweDEwPjsKwqDCoMKgIH07Cgo9PT0KClRoZSBp
bnRlcnJ1cHQgcmVnaXN0ZXJzIGFyZSBsb2NhdGVkIG91dHNpZGUgdGhlIFBXTSByYW5nZSBhbmQg
aGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIFBXTSBkcml2ZXIuCkFkZGluZyB0aGVtIHRvIGEg
UFdNIGJpbmRpbmcgaXMganVzdCBib2d1cy4KVGhleSBhcmUgYSBsZWZ0IG92ZXIgZnJvbSB0aGUg
bWFudWZhY3R1cmVyIHRyZWUgdGhhdCB1c2UgdGhlbSBpbiBhIElSIGRldGVjdGlvbiBkcml2ZXIu
CkhlaWtvIGtlZXBzIHRoZW0gYmVjYXVzZSBzb21lb25lIG91dHNpZGUgbWFpbmxpbmUga2VybmVs
IG1pZ2h0IHVzZSB0aGVtPwpUaGV5IHNob3VsZCBiZSByZW1vdmVkIGFuZCByZW1vZGVsZWQgaW4g
YSBuZXcgc29ydCBvZiBNRkQgbm9kZSB0aGF0IGhhbmRsZXMgYWxsIG9wZXJhdGluZyAzIG1vZGVz
LgoKCkpvaGFuCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

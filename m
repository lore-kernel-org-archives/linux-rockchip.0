Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB991606A333
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 22:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RA7c/YpC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=e8agXrda
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gJcHNtT0fzcv/8t1ut4HOTYwUqW/x1Q9lWtcP19KUkw=; b=RA7c/YpCfnwslW3ZIEGKeo6Hlf
	407QMgsVeyjw8xig4U0/z2QHZPFwKYI7n37gIhsDp6LUnobWLVRgzLFaIeLYvJhw9kTqaZFal8OOx
	RV7Wf5mmEGcKI6YPA6mR8KRzcBD31aBxX2Qj6uk6T8fvn7qe5sQeQrJHnEJ1esfI1lkELjuoGEKmT
	Y9L6A914FPzKRY/xDASfdCGHmUaGZ+wOiyMJovblCvPDrU7+x4/7/6VogkA7qbstYLXGR7D8jgtlF
	WTH6FmDvLILXUR+LoPkKDMkvQse9S1FeQX3F5tj4EHZVYtLFFBNzdliqIjhTEzpyWVgOH4m2fSouf
	xYZZ8zVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONLj-00000003trv-2BGd;
	Tue, 03 Nov 2026 22:51:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONLh-00000003trM-1Obc;
	Tue, 03 Nov 2026 22:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=o7HXQPomhFEfrYFjVcsrdsok+Tx5KNS+/so3Un5/lrc=; b=e8agXrdauKRx9EGxkmib/g9VuU
	mDkazXkDbRhtV8JTfmGehKVWbki2agxMfivjwj3H4Z7DrWaQ87OgZlnjv96V405f70UM8mEHiCoEK
	TLd4STOnPAShQ8B5UpqgNF77zT0/kgRPw/bgf1mBJTSHL5/ItZgiw07vjqZMz8ri84ErO7Sqn5uY8
	BjeUx54xkn3O/6fjaNdEbOCVTI2mJDProM+XKVHiSN1FuQdZXYUhw8KhN0mtqJkPCyJOTIMjnsun+
	Ct9vIUE/vopzPCY8Sep1G/z0WMU8T4JLlqhKjt5CTs/Lcr32soSSG4RSYht1Z/bG5OHaAT0LNrfFx
	R/xopxBA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v15 03/15] accel/rocket: wait for a running IRQ handler before
 resetting a core
Date: Tue, 03 Nov 2026 23:50:58 +0100
Message-ID: <3311623.TQGk6oTFT5@diego>
In-Reply-To: <20261101082307.151957-4-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-4-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_145125_394860_A8A583EC 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.1 (--)
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

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjI6NTUgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IGRybV9zY2hlZF9zdG9wKCkgZG9lcyBu
b3Qgd2FpdCBmb3IgYSB0aHJlYWRlZCBoYW5kbGVyIHRoYXQgaXMgYWxyZWFkeQo+IHJ1bm5pbmcu
IENhbGwgc3luY2hyb25pemVfaXJxKCkgYWZ0ZXIgaXQsIG91dHNpZGUgam9iX2xvY2ssIHdoaWNo
IHRoZQo+IGhhbmRsZXIgdGFrZXMuCj4gCj4gQmVmb3JlIHRoZSBzeW5jLCBtYXNrIHRoZSBibG9j
aydzIGludGVycnVwdCBhbmQgY2xlYXIgaXRzIHJhdyBzdGF0dXMsIHNvCj4gdGhhdCBhbiBhY3Rp
dmUgY29yZSBjYW5ub3Qgc2lnbmFsIGEgY29tcGxldGlvbiBhZnRlciBpdC4gRG8gdGhhdCB1bmRl
cgo+IGpvYl9sb2NrLCBzaW5jZSByb2NrZXRfam9iX2h3X3N1Ym1pdCgpIGFybXMgdGhlIHNhbWUg
bWFzayB1bmRlciB0aGF0IGxvY2ssCj4gYW5kIG9ubHkgd2hlbiBwbV9ydW50aW1lX2dldF9pZl9h
Y3RpdmUoKSByZXR1cm5zIGEgcG9zaXRpdmUgY291bnQ6IHRoZQo+IHJlc2V0IGhvbGRzIG5vIHJ1
bnRpbWUgUE0gcmVmZXJlbmNlLCBhbmQgd2l0aCB0aGUgZG9tYWluIGRvd24gYSByZWdpc3Rlcgo+
IGFjY2VzcyB0YWtlcyBhbiBhc3luYyBTRXJyb3IuCj4gCj4gSWdvciBQYXVub3ZpYydzIGluZHVj
ZWQtcmVzZXQgcnVucyBvbiBSSzM1ODgsIGluY2x1ZGluZyBhIHR3by10YXNrIGpvYiB0aGF0Cj4g
cHV0cyBod19zdWJtaXQoKSBvbiB0aGUgSVJRIHRocmVhZCwgZm91bmQgbm8gZmF1bHQ7IGFzIGhl
IHB1dCBpdCwgInRoaXMKPiBkb2VzIG5vdCBzaG93IHRoZSByYWNlIGlzIGNsb3NlZCIuCj4gCj4g
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwODE5MDczNTMwLjYwODctMS1y
b3lhbG5ldDAyNkBnbWFpbC5jb20vCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
L0NBRVdQU0g1bXhUYlVrTm91eG02eWVjTVpZdkRvd3F1aHZZdmhhWFE4SG9NdEhENVUxZ0BtYWls
LmdtYWlsLmNvbS8KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MTIx
MTM3MTcuNjgxOS0xLXJveWFsbmV0MDI2QGdtYWlsLmNvbS8KPiBMaW5rOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjA5MTYxMzI4MjQuMTM1MjctMS1yb3lhbG5ldDAyNkBnbWFpbC5j
b20vCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTE5MTAzNDIyLjE0
ODgzNC0xLXJveWFsbmV0MDI2QGdtYWlsLmNvbS8KPiBTdWdnZXN0ZWQtYnk6IElnb3IgUGF1bm92
aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKaWF4aW5nIEh1IDxn
YWhpbmdAZ2FoaW5nd29vLmNvbT4KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0
MDI2QGdtYWlsLmNvbT4gIyBSSzM1ODgsIHRocmVlIGNvcmVzLCBpbmR1Y2VkIHJlc2V0LCBKT0Jf
VElNRU9VVF9NUz0yCj4gLS0tCj4gIGRyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyB8
IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDY4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
YWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9q
b2IuYwo+IGluZGV4IDAzZTVmMDk0ZjYwYi4uNWIyYWJmNDBiNjE4IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9qb2IuYwo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcm9j
a2V0L3JvY2tldF9qb2IuYwo+IEBAIC00MDEsOSArNDAxLDc0IEBAIHJvY2tldF9yZXNldChzdHJ1
Y3Qgcm9ja2V0X2NvcmUgKmNvcmUsIHN0cnVjdCBkcm1fc2NoZWRfam9iICpiYWQpCj4gIAlkcm1f
c2NoZWRfc3RvcCgmY29yZS0+c2NoZWQsIGJhZCk7Cj4gIAo+ICAJLyoKPiAtCSAqIFJlbWFpbmlu
ZyBpbnRlcnJ1cHRzIGhhdmUgYmVlbiBoYW5kbGVkLCBidXQgd2UgbWlnaHQgc3RpbGwgaGF2ZQo+
IC0JICogc3R1Y2sgam9icy4gTGV0J3MgbWFrZSBzdXJlIHRoZSBQTSBjb3VudGVycyBzdGF5IGJh
bGFuY2VkIGJ5Cj4gLQkgKiBtYW51YWxseSBjYWxsaW5nIHBtX3J1bnRpbWVfcHV0X25vaWRsZSgp
LgoKQWxzbywgd2h5IGFyZSB5b3UgY2hhbmdpbmcgdGhlIG9yaWdpbmFsIGNvbW1lbnQgaGVyZT8K
VGhlIG5ldyB3b3JkaW5nIGJlbG93LCBkb2VzIHNheSBlc3NlbnRpYWxseSB0aGUgc2FtZSBhbmQg
eW91J3JlIGNoYW5naW5nCml0IGFnYWluIHRoZSBuZXh0IHBhdGNoLgoKWy4uLl0KCj4gKwkvKgo+
ICsJICogTm8gaGFuZGxlciBpcyBydW5uaW5nIG5vdywgYnV0IHdlIG1pZ2h0IHN0aWxsIGhhdmUg
c3R1Y2sgam9icy4gTGV0J3MKPiArCSAqIG1ha2Ugc3VyZSB0aGUgUE0gY291bnRlcnMgc3RheSBi
YWxhbmNlZCBieSBtYW51YWxseSBjYWxsaW5nCj4gKwkgKiBwbV9ydW50aW1lX3B1dF9ub2lkbGUo
KS4KPiAgCSAqLwo+ICAJc2NvcGVkX2d1YXJkKG11dGV4LCAmY29yZS0+am9iX2xvY2spIHsKPiAg
CQlpZiAoY29yZS0+aW5fZmxpZ2h0X2pvYikKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB867606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 16:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k5J/c7Hb;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=f9LFcXvY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Kyb4/F8+4h7dKzHr9LgtOcvYZg2jGeTnlFKIysp1AkA=; b=k5J/c7HbRyYKTf67NOspnMvkBP
	y4he2NNm1Txp6AvH2Fk2vvuZBUWvMcEc90oanHauvnG33DgdX/zSLwLM5LVmgsntWh9TTezHtEtzy
	RG1Aqnrn7wqYgnN6zB36IRZqTc+777/wy5UMeTmeH0aydDnyTwnI9ALixzF4paXWzzej2vIYdiJdQ
	UhL7z+C0TPA7NgiuFmx+ar1/N8oYCrDWBm24IPxp9wmbrZuTFuSA4rJHmJgskFemXBet2HYvcdw0D
	mQ4gNEBYCPeJnWerX4us0uLNoah8k6Yv67GgZG0C4xBrXLUeUKb/uO7r/OxhX+S2Qrj+MCk5eEzJo
	Vg6/aasQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRXNb-0000000AY7t-3jB6;
	Thu, 12 Nov 2026 16:10:27 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRXNX-0000000AY56-1SRm
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 16:10:26 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 027D6609F1
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 17:10:12 +0100 (CET)
Received: (qmail 9224 invoked by uid 990); 12 Nov 2026 16:10:12 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Thu, 12 Nov 2026 17:10:12 +0100
Message-ID: <13dd3297-f264-4cfb-b8ac-b05c53d3c820@lausen.nl>
Date: Thu, 12 Nov 2026 17:10:06 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] pmdomain: rockchip: Manage the RK3576 GPU domain
 supply
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: ulfh@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, detlev.casanova@collabora.com,
 finley.xiao@rock-chips.com, zhangqing@rock-chips.com, inindev@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, gahing@gahingwoo.com
References: <20261019092417.391522-1-leonard@lausen.nl>
 <20261019092417.391522-2-leonard@lausen.nl>
 <CAPx+jO-9BqNgA1Nx2TiHX=BS6cJMmETepYsiujBCeeb3wPt1bQ@mail.gmail.com>
Content-Language: en-US
From: Leonard Lausen <leonard@lausen.nl>
In-Reply-To: <CAPx+jO-9BqNgA1Nx2TiHX=BS6cJMmETepYsiujBCeeb3wPt1bQ@mail.gmail.com>
X-Rspamd-Bar: -
X-Rspamd-Report: SUSPICIOUS_RECIPS(1.5) BAYES_HAM(-2.999905) XM_UA_NO_VERSION(0.01) MIME_GOOD(-0.1)
X-Rspamd-Score: -1.589905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=6Bq9skfW1p6CvrhTcRQngnvs1JbfcWRTcyvjApbE79k=;
	b=f9LFcXvYXYLJ6LKsYRYU0/74LbfOdjzkKFjcsco/PWpx9sJwNbRIduzRv26MuDj+gDOcgmh1R2
	lA7YzyvTarn0W8RaqGzE4g0aB5D4K2Ojo0xZ85sk0fRLlME4IeP1Fs1OmwA1JYcUYNNsVnyWAEFN
	sCmj+itYuCK8X7d4Yxc/GB2iw63A7/2Uc/ffpz6pfmfxWkpjBWshuNygy425mCMDTp1to9v1EpVA
	9eXid+2WSfnXEwyB0y53bOX+nlY+QVUHrPCfKxaY0eiHhBnv3GCREEtB9lrLnbj5TKvoY844R91k
	5pLR9f+2akWQxHG6HPUg+x8OL2eWydAIgF1fNYxqiQuQyF3BVl86flWYzFoAZseVKesV8/jWmwXl
	wl0/lAdkYgGLKkzhHiTZActWAqK3flQQLliggPBZAAhqBvlQTcmVzWYXhbH/S+m0W9UFpqlob4hk
	xKdXacopb/lN6944nO+CyTTKQinGvI/lnDqjaq6uSjeV/U32HAv+Z7Jly2mw8zTiVntDM900PHFd
	3xGcix27TEuWKwX0ET6urawGSuGAxRONBshGOKBWN5YQEM6TDsd08pWBrPxPSRKakrX66XzXHUUo
	/bXtrLZGxxsuHxQFL+Sdc9XlGHVu2YgeoZs2zrCMWQBpgtP8x3Uhlm/ZkapxN4Lr4EQeR1xLGHH7
	Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_081023_558874_BEFD40B3 
X-CRM114-Status: GOOD (  11.47  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gMTIuMTEuMjYgdW0gMTY6MTkgc2NocmllYiBVbGYgSGFuc3NvbjoKPiBPbiBNb24sIE9jdCAx
OSwgMjAyNiBhdCAxMToyNOKAr0FNIExlb25hcmQgTGF1c2VuIDxsZW9uYXJkQGxhdXNlbi5ubD4g
d3JvdGU6Cj4+Cj4+IE9uIHRoZSBOYW5vUGkgTTUsIGJvb3QgaGFuZ3MgZHVyaW5nIFBhbmZyb3N0
IGluaXRpYWxpemF0aW9uLiBCZWZvcmUgdGhpcwo+PiBmaXgsIGJvb3RpbmcgcmVxdWlyZWQgYmxh
Y2tsaXN0aW5nIFBhbmZyb3N0IG9uIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lLgo+PiBMb2FkaW5n
IFBhbmZyb3N0IGFmdGVyIGJvb3QgcmVwb3J0cyBhIEdQVSBwb3dlci1kb21haW4gYWNrbm93bGVk
Z21lbnQKPj4gdGltZW91dDoKPj4KPj4gICAgZmFpbGVkIHRvIGdldCBhY2sgb24gZG9tYWluICdn
cHUnLCB2YWw9MHgxMTNmZgo+Pgo+PiBBZGQgcmVndWxhdG9yIHN1cHBvcnQgdG8gdGhlIFJLMzU3
NiBkb21haW4gZGVzY3JpcHRvcnMgYW5kIG1hcmsgdGhlIEdQVQo+PiBkb21haW4gYXMgcmVndWxh
dG9yLWRlcGVuZGVudC4gVGhpcyBsZXRzIHRoZSBleGlzdGluZyBSb2NrY2hpcAo+PiBwb3dlci1k
b21haW4gcmVndWxhdG9yIGhhbmRsaW5nIG1hbmFnZSB0aGUgR1BVIGRvbWFpbiBzdXBwbHkuCj4+
Cj4+IEEgY29ycmVzcG9uZGluZyBkb21haW4tc3VwcGx5IHByb3BlcnR5IGlzIG5lZWRlZCBpbiB0
aGUgYm9hcmQgRFQuCj4+Cj4+IFRoZSByZWd1bGF0b3ItY2FwYWJsZSBkZXNjcmlwdG9ycyBhcmUg
YmFzZWQgb24gdGhlIHJlZ3VsYXRvciBzdXBwb3J0IGluCj4+IEppYXhpbmcgSHUncyBwZW5kaW5n
IFJLMzU3NiBOUFUgZW5hYmxlbWVudCBzZXJpZXMsIHdpdGhvdXQgaXRzIE5QVSBzZXR0bGUKPj4g
ZGVsYXkgY2hhbmdlcy4KPj4KPj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjYwOTI0MTAyMTM1LjkyMjE3LTEwLWdhaGluZ0BnYWhpbmd3b28uY29tLwo+PiBGaXhlczogY2Zl
ZTFiNTA3NzU4ICgicG1kb21haW46IHJvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3IgUkszNTc2IFNv
QyIpCj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgTGF1c2VuIDxsZW9uYXJkQGxhdXNlbi5ubD4K
PiAKPiBTbyB0aGlzIHNob3VsZCBiZSBhcHBsaWVkIGFzIGEgZml4IGFuZCB0YWdnZWQgZm9yIHN0
YWJsZSBrZXJuZWxzLCByaWdodD8KSGkgVWZmZSwKCk5vIGNvbmNlcm5zIG9uIGJhY2twb3J0aW5n
IGZyb20gbXkgc2lkZS4gSSB3YXMgcHJldmlvdXNseSBydW5uaW5nIDYuMTkgCmFuZCBoYWQgdG8g
ZGlzYWJsZSBwYW5mcm9zdCB0byBhdm9pZCB0aGUgYm9vdCBoYW5nIGZpeGVkIGhlcmUuIEkgCnZh
bGlkYXRlZCB0aGUgZml4IG9ubHkgb24gNy4zIGhvd2V2ZXIuIElmIHlvdSBwcmVmZXIgb25seSBh
cHBseWluZyB0byAKbmV4dCwgaXQgYWxzbyB3b3JrcyBmb3IgbWUuCgpCZXN0IHJlZ2FyZHMKTGVv
bmFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

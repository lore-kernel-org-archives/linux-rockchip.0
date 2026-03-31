Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26C6BFF60D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 08:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aaKdlUvjiF6D0nOEXV0PBdd57oPqNupEPBQlAjHeFU=; b=axU2WxL+f3A4kR
	YZO8tQWpPH5ClmoHS3X4rrqQDSA+eFlt01yi0nS1IkiDqnWZ+ei6DgLRAIKscRfoc/7VXvwkCX4HE
	JuL9wFQlrMm1WwdukPQmnTmoT454GVSXB/KdfEPmv74z91IeymBtntEnRN0xJpAE4qncBZ/Kv05Yl
	K2SVf891oTZAP6UM0YKqXckx6mPU+omrRTUbE5owCmC0A2GIUSLK+3Lh8mwmpkhmocC2pEmxIWtjn
	5IhC7i8AyU7oKhgqevNmi2oWs2CDB1kvv4b1pvn/6dXMi4ZICY/Fits29rtPgUDcQd95M09j1Uikz
	7jhidlv9fA6q9RbsRVBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7U6Y-0000000CYGk-3Olv;
	Tue, 31 Mar 2026 08:05:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7U6W-0000000CYFo-3rAs
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 08:05:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C8134375E
	for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 08:05:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1538C2BCB3
	for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774944339;
	bh=TruZ+9hVD5QZCOIHd09PcJj54yMY9GXjQYch8VrW8R8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=RBVZhI0WwRy9yMPbK0MNcoQ/g377WQMcZ/m1PkFH703Ijk7xCLssQJwYXSlxvdSpI
	 pESO96lvxET33LQG3RNgiIU07ZSvnGfpE0a9Hsz75+Ej/ukM0zGWDxA6R/GFl7onTZ
	 nk6ZyB8wuSdwt76PUhQRYHeFGnhvsB5/CsHaJVNM+1+mXYxEpa/oyUwkHERIe8+Se5
	 BRpaqhxUzBaKlwOzs4ZIursHJMFuU9hxrMVAd/3sGkIVVYReC7af4/wlsMqHS0TVq1
	 d9Ux8Xl6GnzQJ0TuDaNtmB6RMGPQqRbJn/pTz7OX6vcOqsI2PDGErSLoPHxug/PJ3b
	 ORtJXXwBswTrQ==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5a12cd0bd79so6372213e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 01:05:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRmQfUfIkt0wIXbnBBR64R6UQSHSwY+Beisa5gSeaa2TNywhRKaF64tIqRYHqFN0J3cqoZsCf68VdJZRj9OQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwLwpAneNM0xr2nzWAnqSdK5PLZyBhkGdBovh6wGQRve0/R6iu
	EGEO3ywr/gSoFzcCh8BwqxcXvPRBgqZ37ncyrw5amgEzwAhek1hFtC8FEAblYlco3OseCoxU/hl
	wglTI1bBJTVovh1TdSXLHInu1gHmSN9Vq204EfWjXvQ==
X-Received: by 2002:a05:6512:39d6:b0:59f:6923:1cb1 with SMTP id
 2adb3069b0e04-5a2ab5fa0b1mr5294875e87.8.1774944338596; Tue, 31 Mar 2026
 01:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 31 Mar 2026 10:05:26 +0200
X-Gmail-Original-Message-ID: <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
X-Gm-Features: AQROBzCo8RcGlll-TwJeW4R3EP8LQfhE8vczB9UIqzQOWRLUVWnb9pXCBy5CUzw
Message-ID: <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, ye.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_010540_979218_94F8A31E 
X-CRM114-Status: GOOD (  16.65  )
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

T24gTW9uLCBNYXIgMzAsIDIwMjYgYXQgMTE6NTPigK9BTSBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGRyaXZlciBpcyB1c2VkIG9uIGRldmljZSB0
cmVlIGJhc2VkIHBsYXRmb3JtLiBVc2UgZHluYW1pYwo+IEdQSU8gbnVtYmVyc3BhY2UgYmFzZSB0
byBzdXBwcmVzcyB0aGUgd2FybmluZzoKPgo+IGdwaW8gZ3Bpb2NoaXAwOiBTdGF0aWMgYWxsb2Nh
dGlvbiBvZiBHUElPIGJhc2UgaXMgZGVwcmVjYXRlZCwgdXNlIGR5bmFtaWMgYWxsb2NhdGlvbi4K
PiBncGlvIGdwaW9jaGlwMTogU3RhdGljIGFsbG9jYXRpb24gb2YgR1BJTyBiYXNlIGlzIGRlcHJl
Y2F0ZWQsIHVzZSBkeW5hbWljIGFsbG9jYXRpb24uCj4gZ3BpbyBncGlvY2hpcDI6IFN0YXRpYyBh
bGxvY2F0aW9uIG9mIEdQSU8gYmFzZSBpcyBkZXByZWNhdGVkLCB1c2UgZHluYW1pYyBhbGxvY2F0
aW9uLgo+IGdwaW8gZ3Bpb2NoaXAzOiBTdGF0aWMgYWxsb2NhdGlvbiBvZiBHUElPIGJhc2UgaXMg
ZGVwcmVjYXRlZCwgdXNlIGR5bmFtaWMgYWxsb2NhdGlvbi4KPiBncGlvIGdwaW9jaGlwNDogU3Rh
dGljIGFsbG9jYXRpb24gb2YgR1BJTyBiYXNlIGlzIGRlcHJlY2F0ZWQsIHVzZSBkeW5hbWljIGFs
bG9jYXRpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNo
aXBzLmNvbT4KPiAtLS0KPgo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncGlvL2dwaW8t
cm9ja2NoaXAuYwo+IGluZGV4IGFjMWI5MzkuLjA4ZWE2NDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlw
LmMKPiBAQCAtNTgyLDcgKzU4Miw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb2xpYl9yZWdp
c3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4gICAgICAgICBiYW5rLT5ncGlv
X2NoaXAgPSByb2NrY2hpcF9ncGlvbGliX2NoaXA7Cj4KPiAgICAgICAgIGdjID0gJmJhbmstPmdw
aW9fY2hpcDsKPiAtICAgICAgIGdjLT5iYXNlID0gYmFuay0+cGluX2Jhc2U7Cj4gKyAgICAgICBn
Yy0+YmFzZSA9IC0xOwo+ICAgICAgICAgZ2MtPm5ncGlvID0gYmFuay0+bnJfcGluczsKPiAgICAg
ICAgIGdjLT5sYWJlbCA9IGJhbmstPm5hbWU7Cj4gICAgICAgICBnYy0+cGFyZW50ID0gYmFuay0+
ZGV2Owo+IC0tCj4gMi43LjQKPgoKSSB0YWtlIGl0IHlvdSBrbm93IGZpcnN0LWhhbmQgdGhhdCBu
b2JvZHkgZGVwZW5kcyBvbiB0aGUgcHJlZGVmaW5lZApHUElPIG51bWJlcmluZyBmb3IgdGhpcyBk
cml2ZXI/IElmIHNvLCBJIGNhbiBxdWV1ZSBpdCBmb3IgdjcuMS4KCkJhcnQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

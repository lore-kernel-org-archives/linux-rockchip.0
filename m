Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF5BD47CC3
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 10:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPrNX2jVzGVwDC5ykHCaFe45OHvu1IAueSglJT/OttI=; b=P+PlfrwdM/D7qo
	7J6bC6UaZqLYWSxxhfGrjnDqBRzF20/fQH1wg8/ovovEvfYTNgRbDu1KpDpSElq+/pQOymj+DXkBY
	ckL9nOZQP7HO312MrJaGlCpK1QozCV3bEDxetyysE9BZfBcRcPt/MhE/4S/flLI1td8pkPjfoPDXc
	LicnTK2ER6yEaQ3DK3MVx0MjXa+CYTrVgCW1ER2iju66XQ/E+ogmrZxQrIrjk0/H24V5ZTrwN/JAz
	v8UFchZVB+NsaSB1PmubFCPKinkjlCqMm+6hP0KMvYw1tMSPVeHRZ/b6e5OW2+IPbB87M/53dVKPO
	0GCO/mws4QlJgGioqnaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgh3z-0000000DxSD-1tWZ;
	Fri, 16 Jan 2026 10:28:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgh3x-0000000DxRf-0SDp
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 10:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GVzSHRUEj/E6nV+rHedhrqKBXQLAnvBfWRGUtGolWvE=; b=gQAPVs7ZTCDzkRDgbYPwlnKf8G
	ZrHj01SD5bH3OmUWcRtvx4MtDS7vSh9MMVZT8427Pf7is5diyHDlRx7X0umes/9JE8Nf4t3MSe/wh
	9940jR5s+gSPVXv3oZq1HhqeIIZLf8Ywy+g8Afx+YayqX03VT6kmk2idKk+Fw4VsTh1YXjinSHMYD
	hrTMrqSzF7Y3jR0qQCtZ92gFAeStAfBL11GNujRlvDJ4C3yAWlLLJbBwFVEWYVLY1opUpuqWf3S48
	ECjuGGCNjHX03flsZwBT4drAhqyFgCkMLYJ36PpmQdA5zcXCBjn9l75IA6ZDnYpTQpHFMeDN2qzLk
	vjlNuMCQ==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vgh3t-002brq-Ht; Fri, 16 Jan 2026 11:28:14 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 3/5] mmc: dw_mmc-rockchip: Fix runtime PM support for internal
 phase support
Date: Fri, 16 Jan 2026 11:28:13 +0100
Message-ID: <15381717.O6BkTfRZtg@diego>
In-Reply-To: <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
 <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_022817_172426_708DD2F0 
X-CRM114-Status: GOOD (  22.78  )
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

QW0gRnJlaXRhZywgMTYuIEphbnVhciAyMDI2LCAwMTo1NTozMCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBSSzM1NzYgaXMgdGhlIGZpcnN0IHBsYXRm
b3JtIHRvIGludHJvZHVjZSBpbnRlcm5hbCBwaGFzZSBzdXBwb3J0LCBhbmQKPiBzdWJzZXF1ZW50
IHBsYXRmb3JtcyBhcmUgZXhwZWN0ZWQgdG8gYWRvcHQgYSBzaW1pbGFyIGRlc2lnbi4gSW4gdGhp
cwo+IGFyY2hpdGVjdHVyZSwgcnVudGltZSBzdXNwZW5kIHBvd2VycyBvZmYgdGhlIGF0dGFjaGVk
IHBvd2VyIGRvbWFpbiwgd2hpY2gKPiByZXNldHMgcmVnaXN0ZXJzLCBpbmNsdWRpbmcgdmVuZG9y
LXNwZWNpZmljIG9uZXMgc3VjaCBhcyBTRE1NQ19USU1JTkdfQ09OMCwKPiBTRE1NQ19USU1JTkdf
Q09OMSwgYW5kIFNETU1DX01JU0NfQ09OLiBUaGVzZSByZWdpc3RlcnMgbXVzdCBiZSBzYXZlZCBh
bmQKPiByZXN0b3JlZCwgYSByZXF1aXJlbWVudCB0aGF0IGZhbGxzIG91dHNpZGUgdGhlIHNjb3Bl
IG9mIHRoZSBkd19tbWMgY29yZS4KPiAKPiBGaXhlczogNTk5MDM0NDFmNWU0ICgibW1jOiBkd19t
bWMtcm9ja2NoaXA6IEFkZCBpbnRlcm5hbCBwaGFzZSBzdXBwb3J0IikKPiBTaWduZWQtb2ZmLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiBUZXN0ZWQtYnk6IE1hcmNv
IFNjaGlycm1laXN0ZXIgPG1zY2hpcnJtZWlzdGVyQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHYz
OiBOb25lCj4gQ2hhbmdlcyBpbiB2MjogTm9uZQo+IAo+ICBkcml2ZXJzL21tYy9ob3N0L2R3X21t
Yy1yb2NrY2hpcC5jIHwgMzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyBiL2RyaXZlcnMv
bW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBpbmRleCA4NzkxODhmLi4yZmUwODk2IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiArKysgYi9kcml2
ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gQEAgLTM2LDYgKzM2LDggQEAgc3RydWN0
IGR3X21jaV9yb2NrY2hpcF9wcml2X2RhdGEgewo+ICAJaW50CQkJZGVmYXVsdF9zYW1wbGVfcGhh
c2U7Cj4gIAlpbnQJCQludW1fcGhhc2VzOwo+ICAJYm9vbAkJCWludGVybmFsX3BoYXNlOwo+ICsJ
aW50ICAgICAgICAgICAgICAgICAgICAgc2FtcGxlX3BoYXNlOwo+ICsJaW50ICAgICAgICAgICAg
ICAgICAgICAgZHJ2X3BoYXNlOwo+ICB9Owo+ICAKPiAgLyoKPiBAQCAtNTczLDkgKzU3NSw0MyBA
QCBzdGF0aWMgdm9pZCBkd19tY2lfcm9ja2NoaXBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAlkd19tY2lfcGx0Zm1fcmVtb3ZlKHBkZXYpOwo+ICB9Cj4gIAo+ICtzdGF0
aWMgaW50IGR3X21jaV9yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2
KQo+ICt7Cj4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2
aWNlKGRldik7Cj4gKwlzdHJ1Y3QgZHdfbWNpICpob3N0ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEo
cGRldik7Cj4gKwlzdHJ1Y3QgZHdfbWNpX3JvY2tjaGlwX3ByaXZfZGF0YSAqcHJpdiA9IGhvc3Qt
PnByaXY7Cj4gKwo+ICsJaWYgKHByaXYtPmludGVybmFsX3BoYXNlKSB7Cj4gKwkJcHJpdi0+c2Ft
cGxlX3BoYXNlID0gcm9ja2NoaXBfbW1jX2dldF9waGFzZShob3N0LCB0cnVlKTsKPiArCQlwcml2
LT5kcnZfcGhhc2UgPSByb2NrY2hpcF9tbWNfZ2V0X3BoYXNlKGhvc3QsIGZhbHNlKTsKPiArCX0K
PiArCj4gKwlyZXR1cm4gZHdfbWNpX3J1bnRpbWVfc3VzcGVuZChkZXYpOwo+ICt9Cj4gKwo+ICtz
dGF0aWMgaW50IGR3X21jaV9yb2NrY2hpcF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gK3sKPiArCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0Zm9ybV9k
ZXZpY2UoZGV2KTsKPiArCXN0cnVjdCBkd19tY2kgKmhvc3QgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0
YShwZGV2KTsKPiArCXN0cnVjdCBkd19tY2lfcm9ja2NoaXBfcHJpdl9kYXRhICpwcml2ID0gaG9z
dC0+cHJpdjsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gZHdfbWNpX3J1bnRpbWVfcmVzdW1l
KGRldik7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJaWYgKHByaXYtPmlu
dGVybmFsX3BoYXNlKSB7Cj4gKwkJcm9ja2NoaXBfbW1jX3NldF9waGFzZShob3N0LCB0cnVlLCBw
cml2LT5zYW1wbGVfcGhhc2UpOwo+ICsJCXJvY2tjaGlwX21tY19zZXRfcGhhc2UoaG9zdCwgZmFs
c2UsIHByaXYtPmRydl9waGFzZSk7Cj4gKwkJbWNpX3dyaXRlbChob3N0LCBNSVNDX0NPTiwgTUVN
X0NMS19BVVRPR0FURV9FTkFCTEUpOwo+ICsJfQo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiAr
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyBkd19tY2lfcm9ja2NoaXBfZGV2X3Bt
X29wcyA9IHsKPiAgCVNZU1RFTV9TTEVFUF9QTV9PUFMocG1fcnVudGltZV9mb3JjZV9zdXNwZW5k
LCBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZSkKPiAtCVJVTlRJTUVfUE1fT1BTKGR3X21jaV9ydW50
aW1lX3N1c3BlbmQsIGR3X21jaV9ydW50aW1lX3Jlc3VtZSwgTlVMTCkKPiArCVJVTlRJTUVfUE1f
T1BTKGR3X21jaV9yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIGR3X21jaV9yb2NrY2hpcF9ydW50
aW1lX3Jlc3VtZSwgTlVMTCkKPiAgfTsKPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIGR3X21jaV9yb2NrY2hpcF9wbHRmbV9kcml2ZXIgPSB7Cj4gCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

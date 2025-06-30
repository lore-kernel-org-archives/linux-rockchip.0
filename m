Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12E44C83029
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 17:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXSpZMCn2XMjk8rp1sNoHDh85tmZP2TTn2Ojv/IMAVA=; b=mm/gm1A57h/V4R
	Jr91zZQ5tccMUeQQ6El1lZW83q+PBTWg0cXeY/UIsepLLARG+VIJD6y16ufNEbMI/Z9GXFCulEKJR
	0g0DfV1MwnqEZhzo4zBJ5/PH0IhBArxhCdbML9XLngfhXkiP2yA0X+Eaais3oWL651fQp4/d+XaOq
	qmaLprMNKmlBk9bewWUuaMQTyVe6zg+l+1/YjB5hJSpEiymFNT6kMq5kfmvGgC6Dl0d4Nt3dGt498
	U1EurysEcmDPhAZ8VjbsG364/YrGUV1qsaz5OPeNoBhFJvwq3/jFTp3nGcpYy8hFoX8dLQy+gEJUm
	xmtwIaY9uHAgXLNpKS2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWIgq-000000037ay-2J3X;
	Mon, 30 Jun 2025 17:53:12 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWHcR-00000002ydQ-2bzC;
	Mon, 30 Jun 2025 16:44:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751301858; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZKG1pUuIE3SbInx6lum+enVMNuGIW0ZN6xW94yLOaTmRBa72DDWfve2rMRITUUjXPs1k+A9aTnMOS4pLz8C2/feqkshU55AShExQXiZDCq1WxS2CSTyxKWqaN3CeMFAt5uPNtr5uMNi3cu8MM8CgYAZlVZSCIb3iHobJPCGSM24=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751301858; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PzDU9nqyjpEDS4lSPx+RFrm4zapOV2CV9JDtSEwn19Y=; 
	b=bvCepyT3rZsZlQALMYOAUCFNg4Hx8XFD+GNdKB17X09K6zFoi9thSvnKiwOg6xfczIPB4X8aD8Jd9M1j/ZOch89bir+uvvOjyi20jkhDZ2YdAlznC9qIQOSxSFAhPPbesavDrr0wDYnaVafsfuSMYw4NirgqzGaKL+xT02zaNWI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751301858;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=PzDU9nqyjpEDS4lSPx+RFrm4zapOV2CV9JDtSEwn19Y=;
	b=GrnR8y0hL1DqLSOlikB5obbZISVLcVPNmo97EfbOwJBhnPyKxiV6sWXTqSWjma1E
	mSIGx/s3Xmlj2KciJ3Vjyt115le/iQm06OBpCUz7JDRVymU/X/MqAj6LHYJvggpbOaM
	M0CsArhsYoIvqdEmwflkPHuI3opxO+gvj3Sd6p9Y=
Received: by mx.zohomail.com with SMTPS id 1751301856714404.94728450710375;
	Mon, 30 Jun 2025 09:44:16 -0700 (PDT)
Message-ID: <05a7c67f-d1fa-4ad4-a794-cc081cd04abc@collabora.com>
Date: Mon, 30 Jun 2025 18:44:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, jgg@ziepe.ca
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <9d247bec-d206-495e-b8d6-23a7c3cc0882@suswa.mountain>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <9d247bec-d206-495e-b8d6-23a7c3cc0882@suswa.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_094435_703842_4E97635A 
X-CRM114-Status: GOOD (  10.71  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDMwLzA2LzIwMjUgw6AgMTg6MTMsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPiBIaSBC
ZW5qYW1pbiwKPgo+IGtlcm5lbCB0ZXN0IHJvYm90IG5vdGljZWQgdGhlIGZvbGxvd2luZyBidWls
ZCB3YXJuaW5nczoKPgo+IGh0dHBzOi8vZ2l0LXNjbS5jb20vZG9jcy9naXQtZm9ybWF0LXBhdGNo
I19iYXNlX3RyZWVfaW5mb3JtYXRpb25dCj4KPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9p
bnRlbC1sYWItbGtwL2xpbnV4L2NvbW1pdHMvQmVuamFtaW4tR2FpZ25hcmQvZHQtYmluZGluZ3Mt
dmVuZG9yLXByZWZpeGVzLUFkZC1WZXJpc2lsaWNvbi8yMDI1MDYyMy0yMzQ3MzQKPiBiYXNlOiAg
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3JvYmgvbGlu
dXguZ2l0IGZvci1uZXh0Cj4gcGF0Y2ggbGluazogICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI1MDYyMzE1MzkzMS4xNTg3NjUtNC1iZW5qYW1pbi5nYWlnbmFyZCU0MGNvbGxhYm9yYS5j
b20KPiBwYXRjaCBzdWJqZWN0OiBbUEFUQ0ggdjQgMy81XSBpb21tdTogQWRkIHZlcmlzaWxpY29u
IElPTU1VIGRyaXZlcgo+IGNvbmZpZzogYWxwaGEtcmFuZGNvbmZpZy1yMDczLTIwMjUwNjI3ICho
dHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyNTA2MjkvMjAyNTA2Mjkw
NzExLlQwSE9yNXdTLWxrcEBpbnRlbC5jb20vY29uZmlnKQo+IGNvbXBpbGVyOiBhbHBoYS1saW51
eC1nY2MgKEdDQykgOC41LjAKPgo+IElmIHlvdSBmaXggdGhlIGlzc3VlIGluIGEgc2VwYXJhdGUg
cGF0Y2gvY29tbWl0IChpLmUuIG5vdCBqdXN0IGEgbmV3IHZlcnNpb24gb2YKPiB0aGUgc2FtZSBw
YXRjaC9jb21taXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdzCj4gfCBSZXBvcnRlZC1ieTog
a2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gfCBSZXBvcnRlZC1ieTogRGFuIENh
cnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPgo+IHwgQ2xvc2VzOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjUwNjI5MDcxMS5UMEhPcjV3Uy1sa3BAaW50ZWwuY29tLwo+Cj4g
c21hdGNoIHdhcm5pbmdzOgo+IGRyaXZlcnMvaW9tbXUvdnNpLWlvbW11LmM6NjU3IHZzaV9pb21t
dV9wcm9iZSgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAnZXJyJy4KPgo+IHZpbSArL2Vy
ciArNjU3IGRyaXZlcnMvaW9tbXUvdnNpLWlvbW11LmMKPgo+IDE1ZWE3MmQ1NDAxZmI3IEJlbmph
bWluIEdhaWduYXJkIDIwMjUtMDYtMjMgIDYzOSAgc3RhdGljIGludCB2c2lfaW9tbXVfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBH
YWlnbmFyZCAyMDI1LTA2LTIzICA2NDAgIHsKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBHYWln
bmFyZCAyMDI1LTA2LTIzICA2NDEgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+
IDE1ZWE3MmQ1NDAxZmI3IEJlbmphbWluIEdhaWduYXJkIDIwMjUtMDYtMjMgIDY0MiAgCXN0cnVj
dCB2c2lfaW9tbXUgKmlvbW11Owo+IDE1ZWE3MmQ1NDAxZmI3IEJlbmphbWluIEdhaWduYXJkIDIw
MjUtMDYtMjMgIDY0MyAgCWludCBlcnI7Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25h
cmQgMjAyNS0wNi0yMyAgNjQ0Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAy
NS0wNi0yMyAgNjQ1ICAJaW9tbXUgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmlvbW11KSwg
R0ZQX0tFUk5FTCk7Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0y
MyAgNjQ2ICAJaWYgKCFpb21tdSkKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBHYWlnbmFyZCAy
MDI1LTA2LTIzICA2NDcgIAkJcmV0dXJuIC1FTk9NRU07Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFt
aW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjQ4Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2Fp
Z25hcmQgMjAyNS0wNi0yMyAgNjQ5ICAJaW9tbXUtPmRldiA9IGRldjsKPiAxNWVhNzJkNTQwMWZi
NyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NTAKPiAxNWVhNzJkNTQwMWZiNyBCZW5q
YW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NTEgIAlpb21tdS0+cmVncyA9IGRldm1fcGxhdGZv
cm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBH
YWlnbmFyZCAyMDI1LTA2LTIzICA2NTIgIAlpZiAoSVNfRVJSKGlvbW11LT5yZWdzKSkKPiAxNWVh
NzJkNTQwMWZiNyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NTMgIAkJcmV0dXJuIC1F
Tk9NRU07Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjU0
Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjU1ICAJaW9t
bXUtPm51bV9jbG9ja3MgPSBkZXZtX2Nsa19idWxrX2dldF9hbGwoZGV2LCAmaW9tbXUtPmNsb2Nr
cyk7Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjU2ICAJ
aWYgIChpb21tdS0+bnVtX2Nsb2NrcyA8IDApCj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2Fp
Z25hcmQgMjAyNS0wNi0yMyBANjU3ICAJCXJldHVybiBlcnI7Cj4KPiBzL2Vyci9pb21tdS0+bnVt
X2Nsb2Nrcy8KCkkgd2lsbCBmaXggdGhhdCBpbiBuZXh0IHZlcnNpb24gYnV0IEkgd2lsbCB3YWl0
IGZvciBtb3JlCmNvbW1lbnRzL3JldmlldyBiZWZvcmUgc2VuZCBpdC4KClJlZ2FyZHMsCkJlbmph
bWluCgo+Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjU4
Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjU5ICAJZXJy
ID0gY2xrX2J1bGtfcHJlcGFyZShpb21tdS0+bnVtX2Nsb2NrcywgaW9tbXUtPmNsb2Nrcyk7Cj4g
MTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjYwICAJaWYgKGVy
cikKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NjEgIAkJ
cmV0dXJuIGVycjsKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIz
ICA2NjIKPiAxNWVhNzJkNTQwMWZiNyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NjMg
IAlpb21tdS0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiAxNWVhNzJkNTQwMWZi
NyBCZW5qYW1pbiBHYWlnbmFyZCAyMDI1LTA2LTIzICA2NjQgIAlpZiAoaW9tbXUtPmlycSA8IDAp
Cj4gMTVlYTcyZDU0MDFmYjcgQmVuamFtaW4gR2FpZ25hcmQgMjAyNS0wNi0yMyAgNjY1ICAJCXJl
dHVybiBpb21tdS0+aXJxOwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

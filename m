Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C56A1C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 21:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccYvogHKDowrP6qHjbB9Xg/Tmva1f0dZl+DbwHcYVrA=; b=mFLoPnnRz5HyiT
	wYOl3x9Ye1E3Vqk2J5bbkq74OZC4X5lwT2uWEEsVBkKfTOZo5BtQqxcclJ/X0uYq3iwTsTCdBeFIY
	6FQqmYTL55Dpe3Zne7SYBAqJ66hpbhrVlL4J0zwDRtV5/XAQcykMtZRFN4lgewMHuFhObZoQTGZ4/
	aiIt69uKJ//LTh+A9UuCZg1HT6oNWVpqA1VxMPhEDVQoyg2NT81v0mGci2Hv7x13AZlaKlHPGD/Kq
	d9piNqECwvKSGPNzjW2I+18XbCaBg52sZc0ubqYDRazP2DIYxKtxfy2I5XuQH7quAspwAAOXp3Clx
	cUiQElnPReX+JxqSSJ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0TtO-002Sp3-2m;
	Tue, 07 Nov 2023 21:45:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0TtL-002Sob-2p
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 21:45:49 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A5AB16607401;
	Tue,  7 Nov 2023 21:45:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699393546;
	bh=DtbLU0wHZ0G0WvnrPIsVpEezzlIwBSG/DKHMXei+PGE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=eDdNhy3HAVeIpimFOnx++8cKWFrOm9CuaBvSj80xx0LAPNSeKgT/18S86QDq7bwTn
	 jcPzgBoWwClqBB9s+zxh/h+i65DmZ4gbTJ6z7L7lj/tuUj94neeSVP8S+ux5ME3ibF
	 t8yRibvqDJWn0lW/6bK332c/k2jn/1Sf5T9du8SRCFebsQJ079BZ0T/xhS+FmBw8Go
	 nzQzy4Z6rNbrvVeHkdLlQ3Bp91G2Wu6cPp8H0l05uTJtaWT7YVlY97W7431ebm2RGn
	 BsZqZ7rfx1MkSLmbNCLECiO1UMhQEMllZ9mGhQ+ss+3JsFSHms4HDu46Wb5sDrqBhN
	 NlffeoLIyPGMA==
Message-ID: <ebbecd2d2ecda8b3d94939a6408ef6dad6c6e6fe.camel@collabora.com>
Subject: Re: [PATCH v4 03/11] media: rkvdec: h264: Use bytesperline and
 buffer height as virstride
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 16:45:33 -0500
In-Reply-To: <20231105165521.3592037-4-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-4-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_134548_039020_7799221A 
X-CRM114-Status: GOOD (  13.26  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IFVzZSBieXRlc3BlcmxpbmUgYW5kIGJ1ZmZlciBoZWlnaHQgdG8gY2Fs
Y3VsYXRlIHRoZSBzdHJpZGVzIGNvbmZpZ3VyZWQuCj4gCj4gVGhpcyBkb2VzIG5vdCByZWFsbHkg
Y2hhbmdlIGFueXRoaW5nIG90aGVyIHRoYW4gZW5zdXJpbmcgdGhlCj4gYnl0ZXNwZXJsaW5lIHRo
YXQgaXMgc2lnbmFsZWQgdG8gdXNlcnNwYWNlIG1hdGNoZXMgd2hhdCBpcyBjb25maWd1cmVkCj4g
aW4gSFcuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNl
PgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KCj4gLS0tCj4gdjQ6Cj4gLSBObyBjaGFuZ2UKPiAKPiB2MzoKPiAtIFJlbW92ZSB1
bm5lY2Vzc2FyeSB5dXZfdmlyc3RyaWRlICs9Cj4gCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLWgyNjQuYyB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+IGluZGV4IDRmYzE2N2I0MmNmMC4uN2ExZTc2ZDQy
M2RmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgy
NjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+
IEBAIC04OTYsOSArODk2LDkgQEAgc3RhdGljIHZvaWQgY29uZmlnX3JlZ2lzdGVycyhzdHJ1Y3Qg
cmt2ZGVjX2N0eCAqY3R4LAo+ICAJZG1hX2FkZHJfdCBybGNfYWRkcjsKPiAgCWRtYV9hZGRyX3Qg
cmVmZXJfYWRkcjsKPiAgCXUzMiBybGNfbGVuOwo+IC0JdTMyIGhvcl92aXJzdHJpZGUgPSAwOwo+
IC0JdTMyIHZlcl92aXJzdHJpZGUgPSAwOwo+IC0JdTMyIHlfdmlyc3RyaWRlID0gMDsKPiArCXUz
MiBob3Jfdmlyc3RyaWRlOwo+ICsJdTMyIHZlcl92aXJzdHJpZGU7Cj4gKwl1MzIgeV92aXJzdHJp
ZGU7Cj4gIAl1MzIgeXV2X3ZpcnN0cmlkZSA9IDA7Cj4gIAl1MzIgb2Zmc2V0Owo+ICAJZG1hX2Fk
ZHJfdCBkc3RfYWRkcjsKPiBAQCAtOTA5LDE2ICs5MDksMTYgQEAgc3RhdGljIHZvaWQgY29uZmln
X3JlZ2lzdGVycyhzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LAo+ICAKPiAgCWYgPSAmY3R4LT5kZWNv
ZGVkX2ZtdDsKPiAgCWRzdF9mbXQgPSAmZi0+Zm10LnBpeF9tcDsKPiAtCWhvcl92aXJzdHJpZGUg
PSAoc3BzLT5iaXRfZGVwdGhfbHVtYV9taW51czggKyA4KSAqIGRzdF9mbXQtPndpZHRoIC8gODsK
PiAtCXZlcl92aXJzdHJpZGUgPSByb3VuZF91cChkc3RfZm10LT5oZWlnaHQsIDE2KTsKPiArCWhv
cl92aXJzdHJpZGUgPSBkc3RfZm10LT5wbGFuZV9mbXRbMF0uYnl0ZXNwZXJsaW5lOwo+ICsJdmVy
X3ZpcnN0cmlkZSA9IGRzdF9mbXQtPmhlaWdodDsKPiAgCXlfdmlyc3RyaWRlID0gaG9yX3ZpcnN0
cmlkZSAqIHZlcl92aXJzdHJpZGU7Cj4gIAo+ICAJaWYgKHNwcy0+Y2hyb21hX2Zvcm1hdF9pZGMg
PT0gMCkKPiAgCQl5dXZfdmlyc3RyaWRlID0geV92aXJzdHJpZGU7Cj4gIAllbHNlIGlmIChzcHMt
PmNocm9tYV9mb3JtYXRfaWRjID09IDEpCj4gLQkJeXV2X3ZpcnN0cmlkZSArPSB5X3ZpcnN0cmlk
ZSArIHlfdmlyc3RyaWRlIC8gMjsKPiArCQl5dXZfdmlyc3RyaWRlID0geV92aXJzdHJpZGUgKyB5
X3ZpcnN0cmlkZSAvIDI7Cj4gIAllbHNlIGlmIChzcHMtPmNocm9tYV9mb3JtYXRfaWRjID09IDIp
Cj4gLQkJeXV2X3ZpcnN0cmlkZSArPSAyICogeV92aXJzdHJpZGU7Cj4gKwkJeXV2X3ZpcnN0cmlk
ZSA9IDIgKiB5X3ZpcnN0cmlkZTsKPiAgCj4gIAlyZWcgPSBSS1ZERUNfWV9IT1JfVklSU1RSSURF
KGhvcl92aXJzdHJpZGUgLyAxNikgfAo+ICAJICAgICAgUktWREVDX1VWX0hPUl9WSVJTVFJJREUo
aG9yX3ZpcnN0cmlkZSAvIDE2KSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
